# Featured App Reinstatement Request

## Summary

* Featured App name: Yapper Agent
* Organization: Yapper Agent
* Date of pause, UTC: 2026-10-29 18:28 UTC (30 Oct 2026, 01:28 UTC+7)
* Link to pause announcement: https://lists.sync.global/g/tokenomics-announce/message/400
* Current stage:

  * [x] Freshly paused, seeking reinstatement
  * [ ] Mid-appeal, disputing the basis of the pause
  * [ ] Already reinstated, lock outstanding
* Primary basis of pause:

  * [ ] Claimed rewards exceeded paid fees
  * [ ] Own or related-party activity was marked
  * [ ] Multiple functions operated under one PartyId
  * [ ] CIP-0116 lock outstanding
  * [x] Other: "Tokenomics recommends revoking Featured Application status for the applications listed below for free traffic abuse."

---

## Key On-Chain Identifiers

* Featured App PartyId(s): yapp-apps::122021ba12f7efa39e2a35ef041c84873097bad7e22e722087f4146daf8ef6092280 (hosted on yapperagent-validator-1)
* Party receiving app rewards:

  * yapp-apps::122021ba12f7efa39e2a35ef041c84873097bad7e22e722087f4146daf8ef6092280 (six weekly payouts, 2 Sep to 7 Oct 2026)
  * 33fe536e1172d21212a1a36679eb9157::1220b5f21b8cd875a80d1094afe4c060ad0669b04025f1b21e69f2d7835d6e19ce8a (reward wallet, payouts on 12 Oct and 21 Oct 2026)
* Validator node PartyId(s):

  * yapperagent-validator-1 (since May 2026): yapperagent-validator-1::122021ba12f7efa39e2a35ef041c84873097bad7e22e722087f4146daf8ef6092280
  * yapperagent-validator-2 (from 23 Sep 2026): yapperagent-validator-2::1220517cdae2be189627df7a3da4ab0776d748b03ef059f732d9da77177736a10d6f
  * yapperagent-validator-3 (from 23 Sep 2026): yapperagent-validator-3::1220de6d4afc0266438b1063ac95fd5c12ac72b2d59346399fc6207edea4f2402c6c

---

## Applicant Position

* Our understanding of the basis for the pause: The pause relates to "free traffic abuse" attributed to our Featured App. Our app is registered as `yapp-apps`, hosted on validator-1, which actively buys traffic: 67,914.29 CC burned across 250 purchases over the last 90 days (8 Aug to 5 Nov 2026). We believe the "free traffic" referred to is the use of the venue tag by validators 2 and 3 with a CIP-56 asset issuer, and the rewards we received from that asset issuer.
* For the committee's consideration:

  * Validators 2 and 3, which used our app tag, are outside the Featured App scope. The Featured App party (yapp-apps) did not flush markers or claim coupons for transactions on them, as shown by that party's compliance, which has not exceeded 115% since 23 Sep 2026 (source: https://ccview.io/featured-apps/).
  * We would like to understand how the separation between the Featured App and these validators is considered in assessing Featured App status.
* What caused the issue:

  Yapper Agent only recently joined the CIP-56 asset issuer program (cooperation began around early Aug 2026). We noticed that Yapper Agent is one of the partners with the smallest rewards (public data: https://lighthouse.cantonloop.com/party/cbtc-mainnet_partner_rewards%3A%3A1220409a9fcc5ff6422e29ab978c22c004dde33202546b4bcbde24b25b85353366c2/transfers). After that, we noticed that some asset issuers registered on Canton are "transacted by many validators without Featured App status", and this can still be seen today in public CC View data (https://ccview.io).

  On 11 Sep 2026, based on these findings, we asked the CBTC/BitSafe team whether other validators can be used under an app tag, and understood from the conversation that this is allowed. We do not regard that answer as a formal approval.

  On the basis of that understanding, we ran a private campaign in good faith, separate from the Featured App activity. After partners suggested using the backup validators, participant wallets on validators 2 and 3 (originally set up as backups) submitted CBTC transfers using our app tag. The validators are ours, but the 110 wallets on them are owned by partners. After that, we allowed partners to take part with their own validators. The number of participants started small and then grew on its own beyond our knowledge, so we do not know the exact number of participants or the other validators they may have used.

  We configured validators 2 and 3 the same way as validator-1, using an automatic top-up methodology. Both did buy traffic (including validator-2: 160.14 CC at round 114411 and 116.21 CC at round 119469; validator-3: 160.14 CC at round 114411). Beyond that, we did not monitor traffic or how participants and partners transacted on these two validators, and we acknowledge that this was outside our oversight.

* What has been corrected: The private campaign has been stopped since 27 Oct 2026.
* Whether the applicant disputes the pause figures:

  * [ ] Yes
  * [x] No

If yes, summarize the disputed calculation or source discrepancy: N/A. We agree with the CC View figures shared on 31 Oct 2026.

---

## Cause and Timeline

* Around early Aug 2026: Start of Yapper Agent's cooperation with CBTC.
* 2 Sep 2026: First CBTC partner payout (2,699.63 CC for 24 to 30 Aug).
* 9 Sep 2026: We looked into how activity under an app tag is counted and reached out to the BitSafe team to ask about it.
* 11 Sep 2026: Meeting with the CBTC/BitSafe team. We shared our screen and walked through our observations, asked how tag usage works and whether using other validators under a tag is allowed, and understood from the conversation that a tag can be used by validators other than the app's own.
* After 11 Sep 2026: Based on our observations and our understanding from the meeting, we decided to create a private campaign with partners.
* 14 Sep to 18 Oct 2026: Weekly payouts rise from 8,213.32 CC (14 to 20 Sep) to 116,895.11 CC (12 to 18 Oct), with the sharpest increase from the 21 to 27 Sep period onward. See the payout history below.
* 23 Sep 2026: The campaign starts. Validators 2 and 3 (originally set up as backups) are used for the campaign and show their first activity. 110 participant wallets are created on them. Each validator submits about 1,400 CBTC transfers per day until 26 Oct.
* Traffic: Per CC View, validators 2 and 3 consumed about 26 to 28 MB per day combined, with 5 purchases (1.3 MB, 702 CC) in total. Validator-1 consumed 14 to 16 MB per day and purchased 0.5 to 2.9 MB per day.
* 27 Oct 2026: The CBTC team asked us to explain our CBTC traffic and list the validators using our app tag. We replied the same day and began stopping the campaign.
* 27 to 30 Oct 2026: Validator-3 stopped on 27 Oct and validator-2 wound down by 30 Oct.
* 29 Oct 2026, 18:28 UTC: Featured App status paused.

---

## Excess and Burn Status

* Activity separation: We keep Yapper Agent's own activity and the private campaign separate. Yapper Agent's activity runs on validator-1 (the Featured App party), which actively buys traffic: 67,914.29 CC burned across 250 purchases over the last 90 days (8 Aug to 5 Nov 2026). The private campaign ran on validators 2 and 3, with a reward wallet that has been kept separate since the 12 Oct 2026 payout.
* Excess amount burned: None yet.
* Burn transaction hash: N/A, no burn has been made yet.
* If not yet burned, explain status: Yapper Agent actively pays burn every day for its own activity. For the private campaign activity on validators 2 and 3, we did not monitor closely. The campaign rewards have already been distributed, so a direct burn of the same amounts is not possible. We therefore put forward the remediation proposal below, which the committees may adjust.

Payout history (all weekly payouts received to date, per CC View):

| Payout date | Payout period | Amount (CC) | Received by |
| --- | --- | --- | --- |
| 2026-09-02 | 2026-08-24 to 2026-08-30 | 2,699.63 | Featured App party |
| 2026-09-09 | 2026-08-31 to 2026-09-06 | 1,149.54 | Featured App party |
| 2026-09-16 | 2026-09-07 to 2026-09-13 | 3,928.01 | Featured App party |
| 2026-09-23 | 2026-09-14 to 2026-09-20 | 8,213.32 | Featured App party |
| 2026-09-30 | 2026-09-21 to 2026-09-27 | 18,271.54 | Featured App party |
| 2026-10-07 | 2026-09-28 to 2026-10-04 | 49,427.73 | Featured App party |
| 2026-10-12 | 2026-10-05 to 2026-10-11 | 87,863.67 | Reward wallet |
| 2026-10-21 | 2026-10-12 to 2026-10-18 | 116,895.11 | Reward wallet |
| Total | | 288,448.55 | |

Reading the timeline: the first payout was made on 2 Sep 2026 (for 24 to 30 Aug). Weekly payouts stayed below 4,000 CC through the period 7 to 13 Sep. They began rising in the period 14 to 20 Sep (8,213.32 CC) and increased sharply from the period 21 to 27 Sep (18,271.54 CC; validators 2 and 3 started on 23 Sep), reaching 116,895.11 CC for 12 to 18 Oct. The first six payouts, totaling 83,689.77 CC, went to the Featured App party. The last two, totaling 204,758.78 CC, went to the new reward wallet. The total of 288,448.55 CC matches the CC View total of 288,449 CC (rounded). The larger payouts (above 15,000 CC) therefore cover only four weekly periods, from 21 Sep to 18 Oct 2026, following the start of the campaign in late September.

The reward wallet was changed (the new wallet was created on 29 Sep and has been used since the 12 Oct payout) to keep campaign rewards separate from our regular activity and to make them easier to manage and distribute. The two larger payouts went to the new wallet listed above.

Proposed remediation: We recognize that we cannot return the full amount at this time because the rewards have already been distributed to participants. In line with the feedback we received, and as part of our responsibility and compliance to the Foundation, we propose that our Featured App be reactivated so that we can keep contributing to the Canton Network. For remediation, we propose periodic deductions from our future Featured App rewards, at roughly 10% to 20% of each reward, until the total amount determined by the committees is covered. We leave the final amount to the committees, with a conservative upper bound of 272,458.05 CC (the total of the four payouts from the 21 to 27 Sep 2026 period onward). The committees may adjust the exact percentage, at a level that remains sustainable for our operations and marketing costs.

---

## Shared Participant Node / Party Structure

* Does the application share a participant node with other Featured Apps?

  * [ ] Yes
  * [x] No

If yes, confirm the reinstatement request includes per-party reward weight and attributable fees: N/A, the application does not share a participant node with other Featured Apps.

* Does the application perform multiple major functions?

  * [ ] Yes
  * [x] No

If yes, confirm whether each major function operates under a separate PartyId: N/A, the application does not perform multiple major functions.

* Separation complete:

  * [ ] Yes
  * [ ] No
  * [x] Not applicable

If not complete, summarize the separation plan: N/A, no shared node and no multiple major functions.

---

## Locking Status

Reinstatement is subject to the CIP-0116 lock requirement.

* Required lock amount:

  * [x] 5,000,000 CC for Featured App
  * [ ] 25,000,000 CC for Issuer
* Amount segregated: 5,000,000 CC
* Lock holder:

  * [ ] Applicant
  * [x] Third party
* If third party, name: A third-party lock provider
* Lock status:

  * [x] Complete
  * [ ] Signed, pending completion
  * [ ] Pending signature
  * [ ] Not yet complete
* Party or address for verification: 23d169c2-0909-4c70-81d1-1922de6febaa::12200ffe8e60d0afc0358f8bb08328a47e369c6ca6494f7fc991b448c283928db10f

---

## Basis for Continued Compliance

* Yapper Agent will not allow third-party validators to transact under its app tag.
* The private campaign using validators 2 and 3 has stopped and will not be restarted.
* We have announced the stop to our users and partners, and we will make every effort not to use the app tag for this kind of activity going forward.
* Validators 2 and 3 will be kept as backups only, and will not be used to submit transactions under Yapper's app tag.

### Consent to a follow-up review

Yes. Yapper Agent consents to a follow-up review 30 days after reinstatement, or at another reasonable interval determined by the committees.

### Evidence of genuine usage

Yapper Agent is a creator hub on Canton that connects projects that need content with creators who can deliver it. Creators sign in with X, browse and complete jobs, and are paid in CC. Clients post jobs and pay CC into escrow, which is held until the work is completed and the proof is reviewed. The platform also supports hiring creators directly, buying and selling digital products and services, and swapping CC to other tokens, and users earn YAPS points for on-platform activity.

The platform has 4,391 creators. Projects across the Canton ecosystem have run dozens of creator campaigns on it, including whitelist campaigns, NFT drops, and custom campaigns built around each project's goals. Across these creator campaigns we have recorded more than 1,000 submissions, with a completion rate above 70%.

Yapper Agent's own X posts for nine recent creator campaigns generated roughly 87,500 views, 1,800 replies, 1,000 reposts, 1,300 likes, and 230 bookmarks, supporting visibility for projects in the Canton ecosystem. Links to the posts are available on request.

Per CC View, the app's own Featured App markers have been small and steady, at about 4,000 per month since July 2026, all submitted through validator-1, which buys traffic daily.

### Additional data: validator-1 traffic purchases (90 days)

Per the validator-1 PnL export (8 Aug to 5 Nov 2026), validator-1 burned a total of 67,914.29 CC across 250 purchases, an average of about 755 CC per day (about 272 CC per purchase). Purchases were about 434 CC per day before the campaign (8 Aug to 22 Sep), about 705 CC per day during the campaign (23 Sep to 26 Oct), and about 2,399 CC per day since 27 Oct. The PnL export is available on request.

---

## Monitoring

* Daily check of traffic purchased versus consumed for each Yapper Agent validator on CC View.
* Regular check that only Yapper Agent's own validators submit transactions under the app tag.
* Responsible: the Yapper Agent team.

---

## Exception Request

* Is an exception requested?

  * [ ] Yes
  * [x] No

If yes: N/A

---

## Reviewer Notes

* The applicant agrees with the CC View figures shared on 31 Oct 2026, including the total CBTC partner rewards of 288,449 CC.
* The campaign rewards have already been distributed, so a direct burn is not possible. We have put forward a remediation proposal above, which the committees may adjust.
* CIP-0116 lock: in place and verifiable at the address listed above.
* For consideration, and as we have shared with FAAC through Dr. Amanda, Yapper Agent is preparing a token that we hope will broaden adoption on Canton. The token is on testnet and development is complete. The tokenomics (shared a few weeks ago) and the Daml contracts are being audited, and we are already in touch with an audit provider, Digital Asset, and several partners. The remaining step is registration, which was originally planned for last week but which we postponed until this situation is clearer. We understand that Featured App status and the token launch are separate matters, but clarity on the Featured App status remains important for our plans to move forward smoothly.
* Note on terms: in this document, "partners" and "participants" refer to the same parties.

---

## Checklist

Before submitting, confirm:

* [x] The completed reinstatement request file is included
* [x] All PartyIds are listed exactly as they appear on-chain
* [x] The basis of the pause is explained
* [x] The cause of the issue is described
* [x] Corrective measures are described with effective dates or rounds
* [x] Excess reward weight and burn status are documented, if applicable
* [x] Data discrepancies are explained, if applicable
* [x] Shared participant node details are included, if applicable
* [x] Party/function separation is addressed, if applicable
* [x] CIP-0116 locking status is included
* [x] Any exception request is clearly identified, if applicable
* [x] Any fields that do not apply are marked `N/A` with a brief reason

Applicant Confirmation

By submitting this request, the applicant confirms that the information provided is accurate to the best of its knowledge and that the applicant will provide clarifications or supporting information if requested by the committee.

* Name: Zamza Salim
* Title: CEO
* Organization: Yapper Agent
* Date: 6 November 2026
