## Featured App Reinstatement Request

### Summary

This document sets out your request for reinstatement: what led to the pause, the corrective measures taken and the basis on which your application will operate in compliance going forward. Figures are requested at specific points, but the committee assesses the request as a whole.
Completing this document does not require technical expertise. The on-chain figures requested can be drawn from the public explorers listed in section 8, and the ecosystem partners referenced there can assist where help is needed to collect or interpret them. Where a field does not apply, state N/A with a brief reason.
Submit as a pull request adding `reinstatement/<your-app-name>-<YYYY-MM-DD>.md`.

## 1. Applicant details

- Organisation name:
- Link to the tokenomics-list email announcing the pause:
- Date of pause (UTC):
- Your current stage (select one):
  - Freshly paused, seeking reinstatement
  - Mid-appeal, disputing the basis of the pause
  - Already reinstated, lock outstanding (complete sections 2 and 10 only)
- Does your application share a participant node with other Featured Apps? If yes, complete section 8.


## 2. On-chain identifiers

List exactly as they appear on-chain; any discrepancy prevents verification.

- Party identifier(s) of the Featured App, one line per party where the application runs more than one:
- Party receiving app rewards:
- Party (or parties) of the validator node:
- Any further parties used to submit transactions:

Separation of functions: where your application performs more than one major function (asset issuance, wallet, DEX, custody, lending, payment processing), confirm each function operates under a separate PartyId, as section 10 of the guidance requires. This applies to all multi-function applications, not only asset issuers. For asset issuers, separation of the issuer party is mandatory.
- Functions performed and the party each operates under:
- Confirmation of separation, or the structure being adopted to achieve it:


## 3. Basis of the pause

State your understanding of the basis for the pause, then the underlying figures.

Reward weight is requested in two forms. State both, and explain any difference:
- Reward weight submitted over the period, in USD (the activity markers actually submitted, each one dollar of reward weight):
- Reward weight you contend is eligible over the period, in USD, with the basis for any difference from the submitted figure:
- Fees paid over the same period, in USD (traffic purchased to support activity):
- Period covered (start and end, UTC):

Per-party breakdown: where your application runs more than one Featured App party, give reward weight and fees paid for each party separately, since each party is measured against its own fees.
- Per party: party identifier, reward weight submitted, fees paid, resulting ratio:

The principle is that claimed reward weight should not exceed paid fees. Where it did, that ratio forms the basis of the pause.

If you consider the pause-notice figures incorrect, give your own calculation and identify where the original diverges. Corrective action after the pause does not affect its validity, so complete this only where raising a genuine calculation issue.


## 4. Cause

Describe the specific mechanism behind the issue, meaning what your systems actually did. A soft launch or testing phase does not identify a cause.

Complete the relevant part:

If paused for claimed rewards exceeding paid fees:
- The process or automation that generated the excess markers, and its rule:
- Why it produced more reward weight than paid fees supported:

If paused for marking own or related-party activity:
- The activity marked, its approximate volume and period:
- How own activity is now distinguished from genuine third-party use:

If paused on structural grounds (multiple functions on one party):
- The functions that shared the party:
- The structure being adopted:


## 5. Corrective measures

List each measure, its effect and the date or round it applied from. Each should be verifiable on-chain using the identifiers in section 2. For marker automation, state the rule the system now follows.

Burning of excess: the excess reward weight that gave rise to the pause must be burned. State the quantity of excess to be burned, with the calculation and supporting data showing how it was derived, and provide the transaction hash in which the burn was carried out.
- Excess quantity burned, with calculation and supporting data:
- Transaction hash of the burn:

## 6. Data discrepancies

Complete only if your figures rely on, or are disputed by, a difference between explorers or data sources. A discrepancy between sources is a data issue and not in itself evidence of an overage.
- The explorer or source in question:
- What it misclassifies or reports differently:
- The corrected figure and how it was derived:
- The second source corroborating the corrected figure:


## 7. Basis for continued compliance

This section carries the most weight. Set out:
- The function your application serves for the network and its users:
- The compliance rule the application now operates under, stated as a commitment:
- The monitoring in place to detect future deviation before it becomes an enforcement matter:
- Whether you rely on any prior committee guidance relevant to this request, from whom it came, and whether it was communicated formally (ruling, official channel) or informally:
- Whether you consent to a follow-up review a defined period after reinstatement (recommended):

Evidence of genuine usage may be included (active wallet counts, third-party transaction volumes, integrations).


## 8. Shared participant node

Separate parties on one participant: where co-located applications run under distinct PartyIds, coverage can be attributed to each party from the data. State each party's reward weight and attributable fees so each ratio can be read individually.
- All Featured App parties on the participant, with each party's reward weight and attributable fees:

Multiple functions on one party: where more than one function runs under a single PartyId, neither the markers nor the traffic can be separated by function, so no per-function ratio exists. This requires separation into distinct parties, as section 10 of the guidance requires. Confirm separation, or state the structure being adopted to achieve it.
- Functions sharing a single party, and the separation being adopted:

Asset issuers sharing a party with other functions must separate them. Confirm this is done, or state the exception relied upon.


## 9. Sources and explorers
The figures requested above can be collected from public block explorers. Where sources diverge, state which you have relied on and why in section 6.
- CCView: [https://ccview.io/](https://ccview.io/)
- Cantonloop Lighthouse: [https://lighthouse.cantonloop.com/](https://lighthouse.cantonloop.com/)
- Transparent Scan: [https://transparentscan.xyz/](https://transparentscan.xyz/)
- RIZEScore by T-RIZE (beta): [https://www.t-rize.io/](https://www.t-rize.io/)
- GSF monitoring query: available from the Foundation on request.
- Canton ecosystem directory, to find entities in the ecosystem that can assist with collecting data: [https://www.cantonecosystem.com/](https://www.cantonecosystem.com/)

## 10. Locking

Reinstatement is subject to the CIP-0116 lock: 5 million CC for featured apps, 25 million CC for issuers. Funds need not be locked at submission but must be segregated and available. Verification precedes reinstatement.

- Amount segregated:
- Who holds the lock: the applicant, or a third party (name them):
- The executed lock instrument and its current status (for example signed, or pending signature). Reinstatement is not finalised until it shows complete:
- Location of the funds (party or address for verification):
- Confirmation the lock will be completed as a condition of reinstatement:

## 11. Exception request (asset issuers only)

Complete only if requesting an exception to the rule against marking use of your own asset within your own venue. Decided case by case; a complete submission is required. Include:
- The exact exception requested:
- The circumstances, stated factually:
- Why granting it would not undermine the purpose of the rule:
- Where the excess resulted from a software defect rather than a policy choice, the proposed remedy: burning the excess markers, or redistributing their value across the featured app pool at the relevant time.

