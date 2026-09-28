# Featured App Overage Policy

**Purpose.** This proposal introduces a standardized mechanism for handling Featured App (FA) reward overages generated outside defined program thresholds. It ensures fairness, maintains incentive alignment, and preserves ecosystem value.

## 1. Problem Statement

Under stricter Featured App guidance, several applications have exceeded acceptable reward thresholds ("overages"). Where an app is found to have artificially extracted rewards beyond legitimate activity, reinstatement may require a burn based on an estimate of excess rewards received, calculated as actual rewards minus estimated legitimate rewards.

## 2. Overage Calculation

**Basis of measurement.** Validator marker weight and USD burn stand in 1:1 correspondence — the target ratio is 1.0. Burn is denominated in USD (CC burned × CC price at time of burn, or the USD value from the burn ledger) so both terms sit on the same scale.

**Method (adopted by the Accountability Committee, July 28, 2026):**

```
excess_markers   = validator_marker_weight − USD_burn_dollars
avg_CC_per_marker = total_CC_rewards ÷ registry_marker_weight
overage_CC       = avg_CC_per_marker × excess_markers
```

Where:

* `validator_marker_weight` = the app's validator party marker weight
* `registry_marker_weight` = total marker weight across all parties, including the issuer

**Measurement period.** Measurement begins at the point the app first exceeded the 1.15 tolerance ratio and runs until the ratio returns to 1.0.

**On the 1.15 figure.** The 1.15 ratio used in Featured App monitoring is an alert threshold only. It is not an entitlement ratio and is not used to compute overage.

**Free traffic allowance.** The free traffic allowance (0.1 MB/round per FA, per Rule 2 of the FA Coupon Guidance) does not count toward the traffic denominator for purposes of computing the compliance ratio; the correct formula is `appRewardWeight / trafficPurchased`.

## 3. Reinstatement

* Reinstatement is conditional on completion of the calculated overage burn. A paused Featured App must execute the burn before reinstatement is granted.
* Burns can be executed by buying traffic for a non-existent memberId. E.g. set the memberId Text field to `overage-burn`
* Where an app can demonstrate it cannot generate the burn organically, a lump-sum burn may be accepted.
* **Asset issuers.** Issuers cannot generate burns directly; they can only forego CC rewards. Foregone rewards are not redirected to a third party — the app simply does not receive them.
* Transitional reinstatements (prior to Aug 2026) can take into account special circumstances and the app developers’ ability to pay. Going forward, this will not apply, as all apps are now on notice to retain any excess earnings.

## 4. Verification

* All figures require two independent sources: DSO on-chain data for marker weight and CC rewards, and the burn ledger for USD amounts.
* Completion is verified by the FA Workgroup against both sources.

## 5. Enforcement

* Applies uniformly across all Featured Apps and is integrated into weekly monitoring and compliance workflows.
* Locking requirements are governed by CIP-0116 (approved May 20, 2026): 5,000,000 CC locked per PartyId for non-issuer Featured Apps, 25,000,000 CC for asset issuers, maintained continuously as a condition of Featured App status.
