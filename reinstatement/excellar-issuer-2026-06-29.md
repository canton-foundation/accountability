Featured App Reinstatement Request
Summary
This document sets out your request for reinstatement: what led to the pause, the corrective measures taken and the basis on which your application will operate in compliance going forward. Figures are requested at specific points, but the committee assesses the request as a whole.
Completing this document does not require technical expertise. The on-chain figures requested can be drawn from the public explorers listed in section 8, and the ecosystem partners referenced there can assist where help is needed to collect or interpret them. Where a field does not apply, state N/A with a brief reason.
Submit as a pull request adding reinstatement/excellar-issuer-2026-06-29.md.

1. Applicant details
Organisation name: Excellar International SAC Ltd.
Link to the tokenomics-list email announcing the pause: https://lists.sync.global/g/tokenomics/message/1079
Date of pause (UTC): 22-Apr-2026
Does your application share a participant node with other Featured Apps? If yes, complete section 7. No

2. On-chain identifiers
List exactly as they appear on-chain; any discrepancy prevents verification.
Party identifier of the Featured App: excellar-issuer::12203d1e36930ee0e3fbb898add7e222a47ae9d2a5f0f6187e3a446ea32f871ce2ca
Party (or parties) of the validator node: excellar-validator-2::12203d1e36930ee0e3fbb898add7e222a47ae9d2a5f0f6187e3a446ea32f871ce2ca
Any further parties used to submit transactions and markers: 
The compliance transactions were submitted to the Canton ledger by a genuine third party. Specifically, fulcrum-point::1220b75e7270e4e28e72b1ae678a3cd64194d32593924d2f76daebd5bc7024249064 was the submitting participant on the sanctions-screening and Travel Rule transactions. It was a separate, contractually engaged party operating its own Canton participant on its own validator. Excellar-issuer appeared on these transactions only as a confirming signatory. Fulcrum-point bore the direct traffic burn for the submissions.
Operationally, fulcrum-point was contracted to share yield with primary USDXLR holders. In each round, fulcrum-point initiated the yield distribution by submitting compliance transactions to the ledger: sanctions screening and Travel Rule records, both scoped to the specific holders being addressed. Once those succeeded, excellar-issuer (as asset issuer) submitted the yield transfer to the KYC'd holders.
For context, the broader yield distribution design, including fulcrum-point's role in submitting yield transactions each round, was discussed with the Committee at a Tokenomics office hours meeting in February. The specific on-chain compliance architecture was not part of that discussion.
Asset issuers: confirm the issuer party performs no other function (wallet, exchange, market making, lending, payment processing), as the guidance requires.
Confirmed

3. Basis of the pause
State your understanding of the basis for the pause, then the underlying figures:
The pause was based on the principle that claimed reward weight should not exceed paid fees. We set one marker per transaction for the primary asset activity: two markers for the two compliance checks, and one for the asset transfer. The principle is only breached if the compliance transactions are not treated as issuer transactions.


Reward weight claimed over the period, in USD (the activity markers submitted, each one dollar of reward weight): 14,894,688.0 CC
Fees paid over the same period, in USD (traffic purchased to support activity): 9,885,929.5 CC
Period covered (start and end, UTC): Mar 15th to Apr 23rd

We are providing the actual CC earned and burned because of the CC price fluctuation.
The principle is that claimed reward weight should not exceed paid fees. Where it did, that ratio forms the basis of the pause.
If you consider the pause-notice figures incorrect, give your own calculation and identify where the original diverges. Corrective action after the pause does not affect its validity, so complete this only where raising a genuine calculation issue.

4. Cause
Describe the specific mechanism behind the issue, meaning what your systems actually did. A soft launch or testing phase does not identify a cause.
Complete the relevant part:
If paused for claimed rewards exceeding paid fees:
The process or automation that generated the excess markers, and its rule:
We were setting markers for the automated on-chain compliance checks on primary USDXLR transactions, since those checks were part of the asset transactions. One marker per on-chain compliance check was set.
Why it produced more reward weight than paid fees supported:
The on-chain compliance transactions were treated as part of the primary asset transactions, since any primary transaction on the asset requires verifying that the recipient is whitelisted and not on any sanctions list, among other checks. Markers were set on these compliance transactions in line with our reading of Section 8 of the Featured App Marker Guidance in effect at the time, which provides:
"Asset issuers are permitted to submit markers for on-ledger activity involving their asset, even if they incur no direct fees for that activity. Asset Issuers may submit 1 marker per transaction submitted by 3rd parties/transaction originator/venue. Asset Issuers may only submit 1 marker even when the 3rd party batches many asset movements into a single transaction."
If paused for marking own or related-party activity:
The activity marked, its approximate volume and period:
How own activity is now distinguished from genuine third-party use:
If paused on structural grounds (issuer combining functions on one party):



5. Corrective measures
List each measure, its effect and the date or round it applied from. Each should be verifiable on-chain using the identifiers in section 2. For marker automation, state the rule the system now follows.
Markers on USDXLR transactions (mint, burn, and transfer) are now managed entirely by the DA Registry.
Compliance automation for primary transactions has been moved to a separate non-issuer Party ID.
Corrective measures were applied on April 23, 2026.

6. Basis for continued compliance
This section carries the most weight. Set out:
The function your application serves for the network and its users:
Excellar's first token, USDXLR, is a yield-bearing stablecoin issued under Bermuda's DABA license. It uses a novel design in which the yield component is separated from the stablecoin, satisfying securities-law requirements across major jurisdictions. Excellar has also received approval to launch real-world asset tokens, including tokenized delta-neutral funds denominated in BTC, ETH, and USD, each of which must comply with the applicable securities, corporate, and tax laws and regulations. In addition, it is approved to launch a token backed by a portfolio of covered calls on Canton Coin (CC). Excellar is bringing many of these products to market exclusively on the Canton Network. Each requires a significant commitment of time and capital to resolve complex legal and regulatory issues, and the licensed nature of these products safeguards both users and protocols on the network.
The compliance rule the application now operates under, stated as a commitment:
Excellar-issuer Application will comply with the rules applicable to the asset issuers in the document titled ‘Featured App Coupon Guidance - Approved.’ 
The monitoring in place to detect future deviation before it becomes an enforcement matter:
We are running cron jobs to calculate overage and other statistics to ensure the issuer is operating in compliance. The markers for USDXLR are set by DA Registry further reducing the risk of overage.
Whether you consent to a follow-up review a defined period after reinstatement (recommended): Yes
DA Registry on-chain verification — Provide the DA Registry party ID and sample post-correction markers showing they originate from DA Registry, not the issuer party. This is the claimed fix, and it needs to be verifiable.
DA Registry party ID:
auth0_007c6643538f2eadd3e573dd05b9::12205bcc106efa0eaa7f18dc491e5c6f5fb9b0cc68dc110ae66f4ed6467475d7c78e
### Sample post-correction markers (from the DA data)

| Day | Provider namespace | Submitter | Markers | Weight | Weight/marker |
| 2026-04-27 | `12205bcc…` (DA) | digitalasset-utility-validator | 1 | 1.6 | 1.6 |
| 2026-04-28 | `12205bcc…` (DA) | digitalasset-utility-validator | 3 | 3.2 | 1.1 |
| 2026-05-01 | `12205bcc…` (DA) | digitalasset-utility-validator | 25 | 45.6 | 1.8 |
| 2026-05-06 | `12205bcc…` (DA) | digitalasset-utility-validator | 3 | 4.8 | 1.6 |
| 2026-05-11 | `12205bcc…` (DA) | digitalasset-utility-validator | 2 | 4.0 | 2.0 |
| 2026-05-14 | `12205bcc…` (DA) | digitalasset-utility-validator | 23 | 427.2 | 18.6 |
Evidence of genuine usage may be included (active wallet counts, third-party transaction volumes, integrations).
USDXLR is a CIP056 token and currently held by users of Dfns, Loop, and Zoro wallets, and is offered OTC by Elk. It is currently held by 2313 wallets on the Canton network. Over 43% of wallets had activity over the last 90 days. Further note that the objective of many USDXLR holders is to earn yield. USDXLR can be swapped against CC on AMMs on Canton and is currently being launched on several other protocols. It can be traded OTC with providers such as Elk. 
It is also supported on BitGo wallet. 
It’s integrated in the workflow of a Payment Service Provider to earn interest on their float.
We are also in conversations with perp protocols interested in accepting a yield-bearing stablecoin as collateral, as well as with other AMMs and protocols that can use the yield component to build structured products on the Canton Network.

7. Shared participant node
Co-located applications draw on one pool of paid traffic, so an individual rewards-to-fees ratio cannot be read directly. State:
All Featured App parties on the participant: N/A
How shared fees should be attributed: all co-located applications as one combined figure, or a declared split with its basis. A declared split must not exceed the total fees actually paid. N/A
Asset issuers sharing a party with other functions must separate them. Confirm this is done, or state the exception relied upon.

8. Sources and explorers
The figures requested above can be collected from public block explorers. Where sources diverge, state which you have relied on and why; a discrepancy between explorers is a data issue and not in itself evidence of an overage.
CCView: CC View
Cantonloop Lighthouse: 5N Lighthouse Explorer
Transparent Scan: Canton Network dRPC — Decentralized RPC Infrastructure
RIZEScore by T-RIZE (beta): T-RIZE Group
Canton ecosystem directory, to find entities in the ecosystem that can assist with collecting data: Canton ecosystem

9. Locking
Reinstatement is subject to the CIP-0116 lock: 5 million CC for featured apps, 25 million CC for issuers. Funds need not be locked at submission but must be segregated and available. Verification precedes reinstatement.
Amount segregated: 25M CC
Location of the funds (party or address for verification): 
xl-issuer-lock::12203d1e36930ee0e3fbb898add7e222a47ae9d2a5f0f6187e3a446ea32f871ce2ca
23d169c2-0909-4c70-81d1-1922de6febaa::1220a5e6750e43fb4fb6cbc9f1c11b2607f8b8db09d877f2e2796a583c4673aa87d2
Confirmation the lock will be completed as a condition of reinstatement: Confirmed
We have arranged to lock 20M Canton Coins at a 5% annualized interest rate, with a minimum three-month term and two months' notice required for cancellation. The contract and interest payments commenced on June 19th—demonstrating our commitment to the network.

10. Exception request (asset issuers only)
Complete only if requesting an exception to the rule against marking use of your own asset within your own venue. Decided case by case; a complete submission is required. Include:
The exact exception requested: N/A
The circumstances, stated factually: N/A
Why granting it would not undermine the purpose of the rule: N/A
Where the excess resulted from a software defect rather than a policy choice, the proposed remedy: burning the excess markers, or redistributing their value across the featured app pool at the relevant time. N/A

