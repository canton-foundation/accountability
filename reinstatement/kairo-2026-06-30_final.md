# Kairo Featured App Reinstatement Request

**Applicant:** Angelhack Pte Ltd | Operating Kairo

---

## 1. Applicant details

- **Organisation name:** Angelhack Pte Ltd (operating the Kairo RFQ DEX on Canton mainnet)
- **Link to the tokenomics-list email announcing the pause:** https://lists.sync.global/g/tokenomics/message/1189?p=%2C%2C%2C20%2C0%2C0%2C0%3A%3Acreated%2C%2Ckairo%2C20%2C2%2C0%2C119617380
- **Date of pause (UTC):** 2026-06-03T15:24:13.141060Z
- **Does your application share a participant node with other Featured Apps?** No. Kairo operates on its own dedicated participant nodes; there is no Featured App co-location. Section 7 therefore does not apply.

## 2. On-chain identifiers

**Party identifier of the Featured App:**

```
kairo-mainnet::12205162445638c3f71c9942b74360134b4ebc953b5bea2c25adc99bff130bffd060
```

**Party (or parties) of the validator node:**

```
angelhack-mainnet-1::12205162445638c3f71c9942b74360134b4ebc953b5bea2c25adc99bff130bffd060
```

**Any further parties used to submit transactions and markers** (swap incurs burn on these nodes; these nodes do not submit any markers as they are the liquidity providers for Kairo RFQ DEX):

```
qcpTradingPteLtd-validator-1::1220b73de17e79b85c1ac1c07a1176b6fa6c06177ebc9d1e03d71fc9020b4672180d
qcpTradingME-validator-1::1220e60b65a78f0d23a2eadc6bc55b51c52bf148b988db559fbb880964ad102df85c
primroseCapital-walletHostingMainNet-1::1220f7ecd95d1f40ba91a3a8106348d280ad1250437fce34cafd4368246fae39c806
qcp-wallet-hosting-mainnet-1::12200e37ac6b165ebd4b09c4d74476234791031a6a92e1afe5a38ef3dc2b667a4948
```

**Asset issuers — confirmation:** N/A. Kairo is not an asset issuer. The DEX routes bilateral swaps between counterparties holding pre-existing on-chain assets ($CC, $CBTC, $USDCx). No issuer function is combined with the venue, wallet, market-making, lending or payment-processing functions.

## 3. Basis of the pause

- **Reward weight claimed over the period, in USD:** Reflected in the compliance report filed 9 June 2026. The numerator (marker activity) was within tolerance throughout the affected window. The pause was driven by a denominator-side data error, not a numerator-side over-issuance.
- **Fees paid over the same period, in USD:** As above — see the compliance report and CC.view for verifiable on-chain figures. Once the two typo'd LP validator Party IDs were corrected and their purchased synchronizer traffic re-included, the FA Marker Guidance ratio sits at approximately **1.10** across the affected window — within the 1.15 precision tolerance.
- **Period covered (start and end, UTC):** 19 May 2026 – 3 June 2026

**Kairo's understanding of the basis.** On 3 June 2026, Kairo's FA Marker Guidance ratio appeared to exceed the 1.15 precision tolerance for the trailing 30-day window.

The on-paper ratio of approximately **1.4** was driven by a clerical data-entry error: two LP validator Party IDs that Kairo had submitted to CC.view on 19 May 2026 for traffic attribution contained a typo. The error caused those validators' purchased synchronizer traffic to be excluded from Kairo's attributed traffic — **understating the denominator** of the Marker Guidance ratio and inflating the ratio on paper.

Once the Party IDs were corrected and the traffic re-included (verified by @alexei.dulub on 3 June against the IDs Kairo had shared in advance), the ratio sits at approximately **1.10** across the full period — within tolerance. The corrected data is verifiable on-chain.

**This was a denominator-side data error, not a numerator-side over-issuance.** Kairo received no excess CC; network issuance per round was unaffected; no other Featured App was advantaged or disadvantaged. There is nothing to claw back and nothing to redistribute.

## 4. Cause

**Primary basis — apparent ratio above tolerance, driven by a denominator-side data error.**

**The process or automation that generated the excess markers, and its rule:** No automation generated excess markers. Kairo's marker activity for the affected window was correct and within tolerance throughout. The apparent excess in the ratio was a function of the *denominator*: synchronizer traffic purchased by Kairo's nodes and its dedicated LP validator nodes, two of which were excluded from attribution by a clerical typo at submission to CC.view.

**Why it produced more reward weight than paid fees supported:** Two LP validator Party IDs submitted to CC.view on 19 May 2026 for traffic attribution contained a typo:

```
qcpTradingPteLtd-validator-1::1220b73de17e79b85c1ac1c07a1176b6fa6c06177ebc9d1e03d71fc9020b4672180d
qcpTradingME-validator-1::1220e60b65a78f0d23a2eadc6bc55b51c52bf148b988db559fbb880964ad102df85c
```

The attribution system did not match the purchased synchronizer traffic of those validators to Kairo's denominator. The traffic was real and on-chain; only the registration that mapped it to Kairo's Featured App was misspelled. With the Party IDs corrected and the traffic re-included, the corrected ratio across the affected window is approximately **1.10** — within the 1.15 tolerance.

**Five Whys — root cause**

1. *Why was Kairo's ratio above the 1.15 tolerance?* LP validators' purchased traffic was missing from Kairo's attributed traffic, deflating the denominator.
2. *Why was that traffic missing?* The Party IDs had been submitted with a typo, so the attribution system did not match their traffic to Kairo.
3. *Why did a single typo silently exclude a validator's entire traffic contribution?* Attribution is currently submitted manually and self-reported, with no validation of submitted Party IDs against on-chain settlement at the point of entry.
4. *Why is attribution manual and self-reported?* There is no systematic channel or registry for FAs to declare and maintain validator relationships, and no automated reconciliation against the ledger.
5. *Why is there no such channel or registry?* The current participant model assumed simpler single-party FAs. There is no interim framework governing attribution for multi-party / external-validator venues (RFQ DEXs), and the native solution (CIP-0104) is not yet live.

**Root cause:** the typo is the proximate cause but is itself a symptom. The root cause is the absence of a verified, systematic attribution mechanism for multi-party Featured Apps in the interim period before CIP-0104. The metric currently depends on error-prone, unverifiable self-attestation, which is fragile in both directions: it under-counted Kairo in this instance, and — as the committee has noted — it could be over-claimed by a bad actor elsewhere.

## 5. Corrective measures

- **Corrected validator registry submitted through a single channel of record** (effective 3 June 2026). The four dedicated LP validator nodes serving Kairo's RFQ DEX are listed in Section 2, each with the verified Party ID. Verifiable on-chain.
- **Pre-reporting Party ID validation against the ledger.** Kairo will re-confirm every submitted LP validator Party ID against the ledger before each reporting period to prevent any recurrence of a clerical mismatch. The validation step is deterministic and automated.
- **Per-transaction on-chain attribution verification.** Every Kairo-routed swap exercises Daml templates from the Kairo DAR (`kairo-dex-simple-escrow`) and discloses Kairo's `FeatureAppRight` in the commit. Attribution is mechanically determined by the disclosure stamped onto each transaction — not by self-report. Activity on these validators that exercises non-Kairo templates carries no Kairo `FeatureAppRight` and accrues no attribution to Kairo, so the boundary is self-enforcing.
- **Proposed interim attribution standard for multi-party Featured Apps** (bridge until CIP-0104):
  - *Mapping* — validators that attribute to a given FA, declared through one channel/registry.
  - *Verification* — validated against on-chain settlement and the beneficiary test (`FeatureAppRight` + DAR), not self-attestation. A validator's traffic counts for an FA only where the transaction discloses that FA's `FeatureAppRight` and exercises templates from that FA's DAR.
  - *Maintenance* — timestamped, auditable updates so an error or relationship change is caught in days, not at audit time.

  Kairo asks to be held to the strict version of this standard and is happy to be the first venue tested against any draft.
- **Verification offer.** Kairo invites the committee and data providers (CC.view, Noves) to verify, per transaction, that the traffic attributed from these nodes settles through Kairo as the venue/counterparty. The ledger is the source of truth.
- **Supporting technical documentation.** A 6-slide architecture primer that describes the RFQ flow end-to-end and the FA marker attribution chain via `FeatureAppRight` + DAR, with a worked reference swap (0.1 CBTC → USDCx via QCP-LP) was shared with the Tokenomics and Accountability working groups: https://drive.google.com/drive/folders/1wW-NoR9dGc8eNYpqOVS8BIfm1GD-hKkB?usp=sharing

## 6. Basis for continued compliance

**The function the application serves for the network and its users:** Kairo is a request-for-quote (RFQ) decentralised exchange operating on Canton Network. A single Kairo-routed swap's value is produced by multiple independent parties acting together — Kairo's swap layer plus the liquidity-provider validators that quote into it. The LP validators are not an add-on or a workaround; they are how the venue functions. Without them, there is no liquidity and no transaction. Kairo provides Canton with a settlement-grade institutional venue — privacy-preserving, MEV-free, with atomic DVP settlement and deterministic execution (quote = settle). The architecture matches Canton's design philosophy of named parties + subtransaction privacy + atomic settlement.

**The compliance rule the application now operates under, stated as a commitment:** Kairo commits that its FA Marker Guidance ratio will remain within the 1.15 precision tolerance over any trailing 30-day window. Attribution will be mechanically determined by on-chain disclosure (`FeatureAppRight` + DAR beneficiary test), not by self-attestation. Submitted LP validator Party IDs will be pre-validated against the ledger before every reporting period. Markers are never submitted for self-transactions, related-party transactions or test transactions on mainnet.

**The monitoring in place to detect future deviation before it becomes an enforcement matter:**

- Pre-reporting validation of every submitted LP validator Party ID against the ledger; mismatch alerts before any submission to CC.view.
- Per-transaction beneficiary-test verification offered to CC.view, Noves, and the committee — every Kairo-attributed transaction can be checked against `FeatureAppRight` + DAR disclosure on-chain.
- Automated alert on FA Marker Guidance ratio deviation greater than 5% within a rolling 7-day window, with operator review before any further submission.
- Public party identifiers (Section 2) allowing third-party verification via CC.view and Cantonloop Lighthouse at any time.

**Whether you consent to a follow-up review a defined period after reinstatement:** Yes. Kairo consents to a follow-up review three months after reinstatement, covering the first full quarter post-reinstatement, with a summary submitted to Tokenomics & Accountability.

**Kairo also agrees to Tokenomics' request of:**

- Maker (0.5 bps) and Taker (10 bps) fees charged in full at time of order submission
- Maker rebate programs allowable UP TO cost reimbursement to maker
- Taker rebate programs allowable UP TO 10c of net cost for taker
- Rebates on a 30 day delay (minimum)

Our plan is to shut down the wallet service temporarily until CIP-104 and migrate users onto live external wallets (e.g. Loop, Cantex, etc.) as we're CIP-103 and wallet-connect enabled and ready to deploy external wallet SDKs.

Kairo is committed to keeping things as clean as possible so we don't run into future issues prior to CIP-104 and ensure that we're compliant with the FA framework and guidance.

## 7. Shared participant node

N/A. Kairo does not share a participant node with other Featured Apps. The validator parties listed in Section 2 are dedicated to Kairo's RFQ matching and settlement operation.

## 8. Sources and explorers

Kairo will reference **CC View** and **Cantonloop Lighthouse** as the primary sources for marker accrual and $CC burn figures. Where the two diverge on a specific transaction, Kairo will note the divergence in its reconciliation report and identify the source relied upon, treating any discrepancy as a data issue rather than evidence of an overage.

## 9. Locking

- **Amount segregated:** 5,000,000 $CC (Featured App lock requirement per CIP-0116).
- **Location of the funds (party or address for verification):**

  ```
  12204a89b2fe76790eae7d8849e70dcda918f64fc5de82dfcd51de6d97135ee963dd::12207159611cf1666abe62b24f562221e928156daa2b41cd184b6d69920dcf8e5e1b

  https://lighthouse.cantonloop.com/party/12204a89b2fe76790eae7d8849e70dcda918f64fc5de82dfcd51de6d97135ee963dd%3A%3A12207159611cf1666abe62b24f562221e928156daa2b41cd184b6d69920dcf8e5e1b
  ```
- **Confirmation the lock will be completed as a condition of reinstatement:** Confirmed and locked as seen in the Party ID above. Angelhack has segregated and locked the 5,000,000 $CC at the verifiable on-chain location for the CIP-0116 lock.

## 10. Exception request (asset issuers only)

N/A. Kairo is not an asset issuer; the DEX does not issue any token. No exception to the issuer rule is required or requested.

---

## Applicant Confirmation

By submitting this request, the applicant confirms that the information provided is accurate to the best of its knowledge and that the applicant will provide clarifications or supporting information if requested by the committee.

- **Name:** Kenneth Tay
- **Title:** Head of Special Projects
- **Organization:** Angelhack Pte Ltd
- **Date:** 30 June 2026
