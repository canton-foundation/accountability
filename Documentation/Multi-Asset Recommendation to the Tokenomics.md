# Recommendation to the Tokenomics Committee

## Additional Guidance for Asset Issuers Issuing Stablecoins

**From:** Accountability Committee  | **Date:** Sept 4, 2026 · **Status:** Draft 

## 1. Summary

Accountability has observed asset issuers expanding into stablecoin issuance beyond the scope for which they were originally onboarded. We recommend four pieces of supplemental guidance: PartyId separation by asset category, an incremental 25M CC lock and disclosure per new category, mandatory separation and beneficial-entity disclosure by third-party stablecoin issuance platforms, and an abnormal activity reporting obligation.

## 2. Observations

1. A number of approved asset issuers have issued stablecoins under PartyIDs originally accepted for a specific, different asset. 
2. A number of entities have issued stablecoins through the featured asset parties of third party stablecoin platforms, intermingling them with other stablecoins.
3. Bridges have started bringing in multiple competing versions of stablecoins and other assets into the network, in each case all under one asset FA party.

In several cases the observed on-chain behavior is consistent with assets whose primary function is reward generation across venues rather than settlement of independent economic activity.

## 3. Clarification of Current Guidance

Approval is granted with reference to a specific asset and use case. By default, and unless otherwise stated in the application and/or Canton Foundation Monday board on FAs, featured asset partyIds pertain to single assets, and to assets issued and operated by the entity associated with the FA party. For the avoidance of doubt::

* **Bounded scope under a single lock.** 
   * Unless explicitly stated in the application and/or featured app status board, each 25M lock pertains to a single CIP-0056 instrument.
   * In cases where a single 25M lock has been agreed to allow for a whole class of assets to be brought to Canton, that scope must be adhered to strictly.
* **Transparent beneficial ownership.** Where a tokenization platform uses its own featured asset parties to operate assets on behalf of third parties, those assets must be segregated across distinct partyIds, and the mapping of asset to partyId must be made known to Tokenomics and Accountability.

## 4. Recommendations

**R1 — Separate PartyIDs by asset category.** Each issuer maintains a distinct PartyID per asset category (stablecoins, tokenized commodities, tokenized securities, wrapped/bridged).

**R2 — Incremental 25M CC lock and disclosure for new categories and each new asset in those categories.** Issuance in a new category requires an additional 25M CC lock at the CIP-0116 asset-issuer tier, plus written disclosure of: the asset and category, the PartyId, the legal issuing entity, and the intended use case and target venues.

**R3 — Separation and beneficial-entity disclosure by stablecoin issuance platforms.** Platforms issuing on behalf of third parties (e.g. Brale) separate all existing and future stablecoins by PartyID and disclose to Accountability the entity each was issued to. 

**R4 — Abnormal activity reporting obligation.** Stablecoin issuers report suspicious activity to Accountability: circular or wash flows between related wallets; activity concentrated in a single venue or counterparty; usage patterns indicating the asset exists primarily to generate rewards. Affirmative and ongoing, not responsive to inquiry.

**R5 — Interim weighting pending compliance.**
Effective immediately, and until R1–R4 are implemented and verified, an asset receives 0% weight where either of the following applies:

* **Scope failure (R1, R2).** The issuer has not locked and disclosed for the relevant asset category, or the asset is not separated by PartyID.
* **Beneficial-entity failure (R3).** The asset was issued by a platform on behalf of a third party and the beneficial entity without separate CC lock, partyId, and/or has not been disclosed to Accountability.
