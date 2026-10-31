## App Qualification and Guidance

**PROPOSED**

App status exists to align network rewards with real economic contribution, composability, and durable utility on the Canton Network. To encourage innovation, Application rewards are open to assets and applications of all kinds, with no constraints on the type of activity. All applications may generate 1.0 rewards weight per $1 burn generated. The process to gain App status is lightweight and can be obtained even before go-live in order to test rewards mechanics and economics on MainNet.

On top of general innovation, Canton Network incentivizes composition of high quality apps and assets. Composed transactions can generate more than 1.0 rewards weight per $1 burn generated. To avoid any abuse of these incentives, the added composition rewards are open only to Featured Applications that clear a high barrier of entry, and this category of applications is monitored tightly by the Accountability committee.

App rewards are not intended to be used outside of activity that generates user value, and Featured App status is not a mechanism to amplify rewards beyond underlying on-chain activity. Failure to adhere to this guidance may result in immediate pause of (Featured) App status, potentially without warning, while the Accountability Committee reviews usage.

Apps and Featured Apps are encouraged to be proactive in their communication to the Accountability Committee if there are any significant changes.

## 1. App Qualification Categories

App qualifications are divided into categories: 

- General/Unfeatured: Anyone can obtain this status simply by clearing the App locking requirements, and keep it absent any abuse.
- Featured Apps
- Featured Assets

Each featured category reflects a distinct role in the ecosystem and must satisfy the applicable standards below. Both the requirements and rewards rules differ by category. It’s expected that both the number of categories and the requirements will evolve with Tokenomics and Accountability governance over time. 

Standards and the bar for the Featured categories will increase over time and will be adjusted in conjunction with the Accountability and Tokenomics Committees. 

### 1.1 General/Unfeatured

The bar to entry for general App status is low:

- Lock 5m CC in line with the app locking rules.
- Fill in the app application form at the Canton Foundation.
- Supply an FA party to generate rewards, and an operational party (or validator) that generates burn for the app. These must not be used for anything else.
- Visit an Accountability open door session to present your application.
- Give access to your application to at least two members of the Accountability committee.

### 1.2 Featured Apps

Featured Apps are apps that as part of their operation move assets. This includes Wallets, trading venues (e.g DEXes, Perp exchanges, lending protocols), and Bridges.

Becoming a Featured App is fairly restrictive and hinges on a range of criteria including :

- PartyId(s) for the App Operator must be fully segregated from other functions for monitoring and accountability purposes.
- Fee handling
  - Users are charged a net-positive ledger fee. That means any rebate or rewards programs have to be structured and coordinated across venues and assets to make sure users are not incentivized to wash trade or farm.
  - Campaigns where one or multiple apps collaborate to subsidize users on a net basis can be coordinated with Accountability on a case-by-case basis.
- Integration with the broader ecosystem
  - Assets are integrated with multiple (usually 3) independent featured wallets and trading venues.
  - Wallets support multiple (usually 3) independent featured assets and trading venues.
  - Trading venues support multiple (usually 3) independent assets and wallets.
  - Correlation is an important factor. E.g. An asset that is mechanically integrated in multiple venues, but de facto only moves in one, may not clear the bar 
- Standards Compliance
  - Asset<>App integrations via standards
    - [CIP-0056](https://github.com/canton-foundation/cips/blob/main/cip-0056/cip-0056.md) or [CIP-0112](https://github.com/canton-foundation/cips/blob/main/cip-0112/cip-0112.md)
  - Wallet<>App integrations via [CIP-0103](https://github.com/canton-foundation/cips/blob/main/cip-0103/cip-0103.md), WalletConnect.
- Operational Maturity. E.g.
  - Pre-approvals supported for assets and wallet.
  - UTXO management/Auto-merging available in wallets.
- Security
  - Co-validation by at least 2 additional, independent Validators.
  - Recovery in case of lost nodes.
  - Undergo a full security audit 
    - Audit report shared with Canton Foundation Tokenomics Committee
- Open Access:
  - Sign ups must be ungated as long as network-wide scaling limits are not in the way and there are no legitimate business reasons for gating (e.g. KYC or geographic restrictions). That means by default users must be able to get invite codes automatically, or a queueing system must be in place.

Conditions for Featured status have to be met ahead of time by default. Exceptions may be made where apps present a plan with a clear delivery date to add still-missing capabilities.

### 1.3 Featured Assets

Featured Assets are high quality assets used for settlement across the ecosystem. Their criteria are roughly the same as those for Featured Apps, but with these additions:

- Locked CC must be 25m CC in line with FA locking guidance.
  - This is per asset FA party, which in turn should be considered in light of the extra rewards available for DvPs (see 2.2.3)
- The net-fee rule also applies to Featured Assets. Featured Assets may not incentivize users or counterparties of a magnitude that moving the asset in other apps becomes fee net-negative.
- Security
  - Should users hold assets in a wallet that shuts down all its validators, the Assets must be recoverable by or through the Issuer from private keys only.

### 1.5 Other/Exceptions

There may be extenuating circumstances that merit an exception to these qualifications. Regulatory restrictions and requirements are likely to reduce the thresholds required.

Exceptions will be considered on a case-by-case basis by the Tokenomics Committee.

## 2. Rewards Rules

### 2.1 General Apps and Featured Apps

All apps - both featured and unfeatured - are eligible to 1.0 rewards weight for their FA party per $1 burned by their operational party/validator.

Before CIP-0104, this is obtained by setting 1.0 marker weight per $1 burn. Post CIP-0104, this will be automated at the protocol level. 

#### 2.1.1 Timeline requirements

Markers must be submitted within two reward rounds of the burn they correspond to. If a Featured App misses this window, the opportunity to earn rewards for that activity is forfeited. The point of burn may be taken either to be the transaction that burns the CC, OR the transaction that uses the resulting traffic. For apps top up traffic little and often, this makes no difference.

Submitting markers long after fees were generated:

- Alters the Featured App reward distribution profile
- Distorts expectations for other participants
- Introduces instability into reward forecasting

Markers are intended to reflect contemporaneous economic activity.

#### 2.1.2 Tolerances

Pre-0104, there is a 15% tolerance on the marker/burn ratio. Apps that exceed 15% on a 24h basis may be paused without warning. Apps that exceed 3% on a 30d basis may be paused without warning.

#### 2.1.3 No Net-Paying Users for Activity

Featured Apps may not use rewards to net pay users for activity.

Permitted:

- Offsetting legitimate user costs
- Reducing fees
- Supporting real usage

Not permitted:

- Paying users more than their costs
- Buying artificial transaction volume
- Creating circular activity designed primarily to farm rewards

Markers must reflect organic demand, not purchased activity.

#### 2.1.4 Other Reasons for Pause/Review

Other reasons an app may be paused and/or reviewed:

- Runaway activity. Sudden unexplained spikes in activity that dilute the rewards pool significantly.
  - \>5% delta in pool impact from preceding day
  - \>100% activity delta from preceding day
- Overage optimization.
  - Clear correlation between exhausting the tolerance (15%) and app rewards per marker. The marker to burn ratio should be locked in at 1:1 exactly and spikes to 15% for an app that’s otherwise running at target ratio will be reviewed.
- Stretching tolerances.
  - The tolerances are strict. There is no elasticity for free traffic or any such.
- Sustained rewards activity without user activity.
  - Apps that are observed to continuously burn while there is no clear interaction of users with the app will come under review.

### 2.2 Featured Assets Within Featured Apps

Transactions in which Featured Assets compose within Featured Apps (Wallets, Venues, Bridges) are given a small edge:

- Transactions involving a single featured asset issuer total 1.10 rewards weight per $1 burn.
- Transactions involving two or more featured asset issuerss (including CC) may total 1.20 rewards weight per $1 burn.

The added weight (0.10/0.20) goes to the Featured Assets, except in the case of CC, in which case it goes to the Featured Venue. Of course independent apps may enter rewards sharing agreements to change that split, as long as that is not used as an incentive for extractive behaviour. 

#### 2.2.1 Non-Asset Featured Apps

Featured apps get the same 1.0 rewards weight as general apps for transactions where the designated validator(s)/operator party(/ies) bears the cost.

- Pre-CIP-0104, the app may set the 1.0 weight themselves.
- Post-0104, the protocol will assign 1.0 weight to a transaction submitted by an app and involving a featured asset.

#### 2.2.3 Featured Assets

Featured assets get rewards weight when transacted in a Featured App:

- 0.10 weight for a transaction moving a single Featured Asset (or CC).
- 0.20/N for a transaction moving N Featured Assets (or CC). 
  - Post-0104, the formula may be adjusted to 0.20\*weight(asset) where the weight(asset) is calculated according to the CIP-0104 attribution such that it adds up to 1.0 for all assets in the transaction.

In other words, the assets split the rewards between the Venue’s weight and 1.10/1.20 weight for a single/multi-asset transaction.

- Pre-CIP-0104, the assets may set the weights themselves on markers.
- Post-0104, the protocol will assign weight to a transaction submitted by a Featured App and involving a Featured Asset.

### 2.3 User-Submitted Transactions

Transactions not submitted by an app (e.g. by one of the 500 validators that are not apps) are considered user-submitted.

For user-submitted transactions, rewards are distributed to involved featured apps according to CIP-0104 formulas.

### 2.4 Pauses/Reasons For Unfeaturing

Featured apps may be paused or relegated to Unfeatured (meaning non-Featured) status for a number of reasons, but generally with a lower bar:

- All the rules for General Apps
- Activity not corresponding to genuine user activity.
  - Overinflating activity - e.g. by running unnecessary UTXO merges, or by allowing bots/wash trading.
  - Incentivized user activity, including by collusion with other featured apps/assets so that a cycle of wallets/assets/venues allows users to generate net-negative fees.
- Any other activity that is considered extractive or not in the spirit of rewarding/incentivizing genuine and valuable user activity.
  - If in doubt, check with Accountability proactively.
- Unnecessary transaction sharding/batching to optimize rewards
  - E.g. A venue mixing independent settlements of two assets to make it appear as a DvP.

## 3. Mutual Accountability

Featured Apps and Assets must keep each other mutually accountable. Featured Apps have best visibility into the practices for their Asset counterparts, and Featured Assets have best visibility into the practices, patterns, and volumes in their App counterparts.

Should one Featured App observe behaviour that indicates non-compliance with this guidance in one of their counterparts, they must report it to Accountability. In cases of non-compliance, both sides of an arrangement are going to be under scrutiny.

Featured Apps found to be rewards sharing with their counterparts are particularly likely to be considered out of compliance if they do not report non-compliance and their counterparties are found to be materially out of compliance.

## 4. Exceptions

There may be extenuating circumstances that merit an exception to this guidance. Exceptions will be considered on a case-by-case basis by the Accountability or Tokenomics Committees.

### 4.1 Featured App Weights

Accountability and Tokenomics may on an exceptional basis grant weight to an FA party. This weight - e.g. 50% - applies to the special Featured Asset rewards rules, not the basic App rewards:

- An Asset with weight 75% moving in a venue with weight 50% gets 0.0375 weight instead of 0.1 weight per $1 burn.

## 5. Forward Guidance

The Foundation and Tokenomics Committee recognize that, with any new guidance, there is potential for misuse of the Featured App designation and markers to emerge. It is important to address this proactively while allowing sufficient time to provide thoughtful and thorough guidance.

Further fair-use guidance may be issued for specific asset issuer use cases. Topics to be considered include, but are not limited to:

- TBD

## 7. Enforcement

Failure to adhere to this guidance may result in:

- Immediate pause of Featured status
- Immediate pause of App status
- Pause without prior warning
- Review by the Accountability Committee
- Potential revocation of Featured/App status

The objective is to preserve:

- Burn/Mint equilibrium
- Appropriate reward attribution
- Composability across the ecosystem
- Stability of reward distribution
- Long-term tokenomic integrity
