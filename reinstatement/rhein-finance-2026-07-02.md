# Featured App Reinstatement Request

## Summary

- Featured App name: Rhein Finance
- Description: Rhein Finance is a peer-to-peer lending protocol on Canton, allowing lenders to fund collateralized loans to borrowers directly on-chain.
- Organization: Rhein Finance (Mosaic Lab)
- Date of pause, UTC: 2026-04-23 23:31:48 UTC
- Link to pause announcement: https://ccview.io/governance/007cebe62e80e1109537c3d53a4f61d22de1722f10521a539da08bffb40767960cca12122023476ec0fe68da04541ef328161f1016868233198ae0bfc62093f45b78c36ad1/
- Current stage:
    - [ ]  Freshly paused, seeking reinstatement
    - [x]  Mid-appeal, disputing the basis of the pause
    - [x]  Already reinstated, lock outstanding
- Primary basis of pause:
    - [x]  Claimed rewards exceeded paid fees
    - [ ]  Own or related-party activity was marked
    - [ ]  Multiple functions operated under one PartyId
    - [ ]  CIP-0116 lock outstanding
    - [ ]  Other:

---

## Reinstatement Request File

This Pull Request adds the completed reinstatement request at:

```
reinstatement/rhein-finance-2026-07-02.md
```

Prepared using `reinstatement/featured-app-reinstatement-request.md`.

---

## Key On-Chain Identifiers

- Featured App PartyId(s): `rheinfin-validator-1::1220d30d92d761e873a8ddef9f72307ad0a51704080ea3292df1173a6e073491ee47`
- Party receiving app rewards: Same as Featured App PartyId above
- Validator node PartyId(s): `rheinfin-validator-1::1220d30d92d761e873a8ddef9f72307ad0a51704080ea3292df1173a6e073491ee47`
- Other transaction-submitting PartyId(s), if applicable: N/A

---

## Applicant Position

- What caused the issue: A static per-operation marker calibration (Borrow ≈ $1.2 → 1 marker; Accept ≈ $1.8 → 2 markers; Repay ≈ $1.7 → 2 markers, targeting a 1:1 marker-to-traffic ratio) drifted above target because a significant share of users transacted using pre-approvals, which reduced actual on-chain traffic cost below calibrated levels — a baseline overage of roughly 20–30%. This was compounded by an edge-case bug: over a 3–4 day window preceding the compliance deadline, users repeatedly created and cancelled loan offers without completing the full transaction flow, and each partial action emitted a marker without a corresponding completed transaction. Cumulative month-to-date usage measured approximately 183% of the calculated allowance; the flagged 24-hour window measured approximately 272% (88,549 markers against $32,600 in net qualifying traffic).
    
    A supplementary internal review against CIP-47's asset-transfer standard also identified two operations generating markers for non-qualifying events: a listing action where no asset moves, and a fee-collection step that occurs within the same transaction as an already-marked repayment rather than as a separate economic event. These contributed marginally to the overage alongside the primary calibration and edge-case causes.
    
- What has been corrected: Marker submission logic was overhauled to calculate the delta between current and previous total CC consumed and submit markers proportionally at the current traffic price, tying every submission directly to realized on-chain burn in real time — eliminating both the pre-approval calibration drift and the create/cancel edge case by construction. Marker creation was also removed from the two non-qualifying operations identified above. An automated per-round check now compares marker submissions against traffic purchased in that round, alerting the compliance point of contact if the ratio deviates from tolerance.
- Date or round corrective measures took effect: 23 April 2026
- Whether the applicant disputes the pause figures:
    - [ ]  Yes
    - [x]  No

---

## Excess and Burn Status

- Excess amount identified: Not calculated in CC terms; the Committee's own measurement (~183% cumulative, ~272% within the flagged 24-hour window) is accepted as measured.
- Excess amount burned: N/A
- Burn transaction hash: N/A
- If not yet burned, explain status: No excess reward weight required burning. Marker emission was reduced within hours of the compliance notice, ahead of further minting. As stated in the 23 April 2026 appeal, Rhein Finance committed to a voluntary CC contribution to the Canton ecosystem as a good-faith measure; status of that contribution is confirmed separately with the Committee.

---

## Shared Participant Node / Party Structure

- Does the application share a participant node with other Featured Apps?
    - [ ]  Yes
    - [x]  No
- Does the application perform multiple major functions?
    - [ ]  Yes
    - [x]  No
- Separation complete:
    - [ ]  Yes
    - [ ]  No
    - [x]  Not applicable

---

## Locking Status

- Required lock amount:
    - [x]  5,000,000 CC for Featured App
    - [ ]  25,000,000 CC for Issuer
- Amount segregated: 5,000,000 CC
- Lock holder:
    - [ ]  Applicant
    - [x]  Third party
- If third party, name: Canton Strategic Holdings Inc.
- Lock status:
    - [x]  Complete
    - [ ]  Signed, pending completion
    - [ ]  Pending signature
    - [ ]  Not yet complete
- Party or address for verification: `23d169c2-0909-4c70-81d1-1922de6febaa::1220a4f78721f2968b04ec863ccfd392caf1fc19737a47635a7b5413024c5e1fac0a` — https://ccview.io/updates/122025b41116e3a15c14307886a3d7aaee00be1313e694d65a3df724396a998f73cd/

---

## Exception Request

- Is an exception requested?
    - [ ]  Yes
    - [x]  No

---

## Reviewer Notes

- This request formalizes a reinstatement already recommended by the Committee (Ryan Trinkle, Featured App Coordination) following our formal appeal submitted 23 April 2026.
- No data-source discrepancies are asserted; the Committee's own measured figures are accepted as-is.

---

## Checklist

- [x]  The completed reinstatement request file is included
- [x]  All PartyIds are listed exactly as they appear on-chain
- [x]  The basis of the pause is explained
- [x]  The cause of the issue is described
- [x]  Corrective measures are described with effective dates or rounds
- [x]  Excess reward weight and burn status are documented, if applicable
- [x]  Data discrepancies are explained, if applicable
- [x]  Shared participant node details are included, if applicable
- [x]  Party/function separation is addressed, if applicable
- [x]  CIP-0116 locking status is included
- [x]  Any exception request is clearly identified, if applicable
- [x]  Any fields that do not apply are marked `N/A` with a brief reason

## Applicant Confirmation

By submitting this request, the applicant confirms that the information provided is accurate to the best of its knowledge and that the applicant will provide clarifications or supporting information if requested by the committee.

- Name: Farrukh
- Title: Head of Engineering
- Organization: Rhein Finance (Mosaic Lab)
- Date: 3 July 2026