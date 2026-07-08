-- =====================================================================
-- Committee overage query — parameterised for Cancore's provider party.
-- Source: guidelines/featured_markers_guidelines.md (committee methodology,
--         BigQuery over the mainnet_da2_scan document-store dataset).
-- Purpose: reproduce the FULL committee formula for Q3 of the accountability
--          PR — i.e. include provider cc_transfers in the numerator and the
--          GREATEST(usd_spent, third_party_submitted) denominator, instead of
--          the marker-weight / traffic-only 1.59 we reported earlier.
--
--   overage = (marker_weight + cc_transfers) / GREATEST(usd_spent, third_party_submitted)
--
-- Cancore is a SINGLE, un-split party (provider = validator = beneficiary =
-- confirmer). That un-split state is exactly what Q4 commits to fixing; it also
-- means the simplest [fa_party] form of the query applies to us verbatim.
--
-- Where to run:
--   * mainnet_da2_scan is the GSF/DA-managed Scan export the committee itself
--     queries. If we do not have BigQuery access to it, hand this exact query +
--     our party id to the committee and ask them to run it — that removes any
--     dispute about which numerator/denominator we used.
-- =====================================================================

-- Our provider party (operator + featured-app provider, un-split).
SET fa_party = "Cancore-mainnet-1::1220076a94e0a7f0256a32ffab227db7788d8075677d8afcdaa8386df8f2fa659906";
SET provider_parties    = [fa_party];
SET beneficiary_parties = [fa_party];
SET validator_parties   = [fa_party];
SET confirmer_parties   = [fa_party];

-- Window / granularity.
--   Mode A (ramp picture, answers Q2): 24h buckets over the farming era.
--   Mode B (single lifetime number to compare with our 1.59): make ONE bucket
--          span the whole period by setting bucket_width wider than the range.
SET bucket_origin_timestamp = TIMESTAMP '2026-04-01 00:00:00.00';
SET bucket_width            = INTERVAL 24 HOUR;   -- Mode A. For Mode B use INTERVAL 200 DAY.

with
  verdicts as (
    select
      TIMESTAMP_BUCKET(timestamp_micros(record_time), bucket_width, bucket_origin_timestamp) as bucket,
      row_id as verdict_row_id,
      update_id,
      verdict_result,
      submitting_participant_uid,
    from `mainnet_da2_scan.scan_sv_1_scan_verdict_store`
  ),
  views as (
    select
      verdict_row_id,
      ( SELECT ARRAY_AGG(distinct flat_confirmers)
        FROM (
          SELECT ARRAY_CONCAT_AGG(ps) cs
          FROM (
            select JSON_VALUE_ARRAY(confirmer_groups, '$.parties') ps
            FROM UNNEST(JSON_QUERY_ARRAY(confirming_parties)) as confirmer_groups
          )
        ), UNNEST(cs) as flat_confirmers
      ) as confirmers
    from `mainnet_da2_scan.scan_sv_1_scan_verdict_transaction_view_store`
  ),
  annotated_views as (
    select *,
      ( select COUNT(*) from unnest(confirmers) as cs
        where cs in unnest(confirmer_parties)
      ) > 0 as confirmer_confirmed
    from views
  ),
  annotated_verdicts as (
    select
      bucket,
      update_id,
      submitting_participant_uid in unnest(validator_parties) as validator_submitted,
      countif(confirmer_confirmed) > 0 as confirmer_confirmed,
    from verdicts
    left join annotated_views using(verdict_row_id)
    where bucket >= bucket_origin_timestamp
      and verdict_result = 1
    GROUP BY bucket, update_id, validator_submitted
  ),
  grouped_verdicts as (
    select
      bucket,
      countif (confirmer_confirmed) as confirmer_confirmed,
      countif (validator_submitted) as validator_submitted,
      countif (confirmer_confirmed and not validator_submitted) as third_party_submitted
    from annotated_verdicts
    group by bucket
  ),

  burn as (
    select
      update_id,
      record_time,
      TIMESTAMP_BUCKET(timestamp_micros(record_time), bucket_width, bucket_origin_timestamp) as bucket,
      JSON_VALUE(create_arguments, '$.record.fields[0].value.party') as dso,
      substring(JSON_VALUE(create_arguments, '$.record.fields[1].value.text'), 6) as member_id,
      JSON_VALUE(create_arguments, '$.record.fields[2].value.text') as synchronizer_id,
      JSON_VALUE(create_arguments, '$.record.fields[3].value.int64') as migration_id,
      LAX_INT64(JSON_QUERY(create_arguments, '$.record.fields[4].value.int64')) as traffic,
      LAX_INT64(JSON_QUERY(create_arguments, '$.record.fields[5].value.int64')) as num_purchases,
      LAX_FLOAT64(JSON_QUERY(create_arguments, '$.record.fields[6].value.numeric')) as amulet_spent,
      LAX_FLOAT64(JSON_QUERY(create_arguments, '$.record.fields[7].value.numeric')) as usd_spent
    from `mainnet_da2_scan.scan_sv_1_update_history_creates`
    where template_id_entity_name = 'MemberTraffic'
  ),
  filtered_burn as (
    select * from burn
    where member_id in unnest(validator_parties)
      and burn.num_purchases = 1
      and bucket >= bucket_origin_timestamp
  ),
  grouped_burn as (
    select bucket, sum(traffic) as traffic, sum(amulet_spent) as amulet_spent, sum(usd_spent) as usd_spent
    from filtered_burn
    group by bucket
  ),

  markers as (
    select
      update_id,
      record_time,
      TIMESTAMP_BUCKET(timestamp_micros(record_time), bucket_width, bucket_origin_timestamp) as bucket,
      JSON_VALUE(create_arguments, '$.record.fields[0].value.party') as dso,
      JSON_VALUE(create_arguments, '$.record.fields[1].value.party') as provider,
      JSON_VALUE(create_arguments, '$.record.fields[2].value.party') as beneficiary,
      LAX_FLOAT64(JSON_QUERY(create_arguments, '$.record.fields[3].value.numeric')) as weight,
    from `mainnet_da2_scan.scan_sv_1_update_history_creates`
    where template_id_entity_name = 'FeaturedAppActivityMarker'
  ),
  filtered_markers as (
    select * from markers
    where (provider in unnest(provider_parties) or beneficiary in unnest(beneficiary_parties))
      and bucket >= bucket_origin_timestamp
  ),
  grouped_markers as (
    select bucket, sum(weight) as marker_weight
    from filtered_markers
    group by bucket
  ),

  transfers AS (
    SELECT
      TIMESTAMP_BUCKET(timestamp_micros(record_time), bucket_width, bucket_origin_timestamp) as bucket,
      JSON_VALUE(argument, '$.record.fields[0].value.record.fields[1].value.party') AS provider
    FROM `mainnet_da2_scan.scan_sv_1_update_history_exercises`
    WHERE choice = 'AmuletRules_Transfer'
  ),
  filtered_transfers AS (
    SELECT * FROM transfers
    WHERE bucket >= bucket_origin_timestamp
      AND provider IN UNNEST(provider_parties)
  ),
  grouped_transfers AS (
    SELECT bucket, COUNT(*) as cc_transfers
    FROM filtered_transfers
    GROUP BY bucket
  )

-- Put it all together. COALESCE guards against empty-bucket NULLs so the
-- excess sum is well-defined even on days with markers-but-no-transfers etc.
SELECT
  bucket,
  if (usd_spent > third_party_submitted, "App", "Asset") as guidance_type,
  COALESCE(marker_weight, 0) as marker_weight,
  COALESCE(cc_transfers, 0)  as cc_transfers,
  COALESCE(marker_weight, 0) + COALESCE(cc_transfers, 0) as total_app_weight,
  COALESCE(usd_spent, 0) as usd_spent,
  third_party_submitted,
  GREATEST(COALESCE(usd_spent, 0), COALESCE(third_party_submitted, 0)) as denominator,
  SAFE_DIVIDE(
    COALESCE(marker_weight, 0) + COALESCE(cc_transfers, 0),
    GREATEST(COALESCE(usd_spent, 0), COALESCE(third_party_submitted, 0))
  ) as overage,
  -- Per-bucket excess weight above the 1.15 hard limit (0 when compliant).
  GREATEST(
    0,
    (COALESCE(marker_weight, 0) + COALESCE(cc_transfers, 0))
      - 1.15 * GREATEST(COALESCE(usd_spent, 0), COALESCE(third_party_submitted, 0))
  ) as excess_weight
FROM grouped_verdicts
  left join grouped_burn using (bucket)
  left join grouped_markers using (bucket)
  left join grouped_transfers using (bucket)
ORDER BY grouped_verdicts.bucket desc;

-- To get the two headline numbers for the PR, wrap the SELECT above as a CTE
-- `q` and aggregate:
--   SELECT
--     SUM(total_app_weight)                              AS total_numerator,
--     SUM(denominator)                                   AS total_denominator,
--     SUM(total_app_weight) / SUM(denominator)           AS lifetime_overage,   -- compare vs our 1.59
--     SUM(excess_weight)                                 AS excess_above_1_15   -- compare vs $88,588
--   FROM q;
-- lifetime_overage uses one pooled ratio; excess_above_1_15 is the committee's
-- per-bucket sum of overages beyond 1.15 (the stricter, enforcement number).
