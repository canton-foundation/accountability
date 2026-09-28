# Guidance on Composition and Related Parties

Canton Network tokenomics incentivize composed transactions, both before and after CIP-0104. A transaction is considered composed if it involves multiple independent featured applications. Independence of FAs is a somewhat qualitative measure, and this document sets out the framework on how Accountability will measure and assess relatedness.

In particular, relatedness of FA parties will be key in determining the proportion of venue transactions that represent a genuine DvP, as will be used to set FA weights according to [CIP104 Weight Recommendation](https://docs.google.com/document/d/1tdsXOBEH4wIwtTyOOH9oWR-Q8HN4Um7wL3EdgXi8pxg/edit?tab=t.0).

## Composition Incentives

[Featured App Guidance v2.0](https://docs.google.com/document/d/1NiG8oxteEprZ0PbSAIz7OWjueyQK5GiIXzvDA7M7aQw/edit?tab=t.0#heading=h.22k6ymijl3pg) distinguishes four classes of application:

- Assets
- Venues
- Bridges
- Wallets

The network currently incentivizes composition of Assets on Venues. The incentivization works differently before and after CIP-0104, but in both cases is considered at a per-tx basis, not a per-FA basis as it’s common practice for FAs to enter commercial relationships.

### Before CIP-0104

Venues set app markers for burn. Assets set app markers for the venue’s burn at a rate of min(50% tx cost in usd, $1). See [Featured App Coupon Guidance](https://docs.google.com/document/d/1KJQ-T-HiO73nYMXTogGLVSu9lo9loMVgXNOosF74758/edit?usp=drive_web&ouid=112214539147309592021) - Approved for details.

Thus we can consider three illustrative transactions:

1. An FA burns $0.5 for an internal transaction. They set 0.5 marker weight for the burn. Total burn:marker ratio is 1.0.
2. An FA burns $1 for a transaction that moves an independent asset. The burning FA sets marker weight 1.0. The asset sets marker weight 0.5. Total burn:marker ratio is 1.5.
3. An FA burns $2 for a DvP that moves two independent assets. The burning FA sets marker weight 2.0. The assets set marker weights 1.0 each. Total burn:marker ratio is 2.0.

### After CIP-0104

The network automatically attributes burn to FAs involved in transactions, with weights, to be determined in [CIP104 Weight Recommendation](https://docs.google.com/document/d/1tdsXOBEH4wIwtTyOOH9oWR-Q8HN4Um7wL3EdgXi8pxg/edit?tab=t.0) applied to the attribution.

1. A regular FA burns $0.5 for an internal transaction. Their attribution has weight 0.5. Total burn:attribution ratio is 1.0.
2. A venue with weight 2.0 burns $1 for a transaction that moves an independent asset (with weight 1.0). The basic traffic attribution is 50/50 between venue and asset. After applying weights, the venue gets attribution 1.0, the asset 0.5. Total weight:attribution ratio is 1.5.
3. A venue weight 4.0 burns $2 for a DvP that moves two independent assets, each of weight 1.0. The basic traffic attribution is 33/33/33 between venue and assets. After applying weights, the venue gets attribution 1.330, the assets 0.33. Total weight:attribution ratio is 2.0.

The weights 1.0, 2.0, 4.0 here were chosen as illustrative to get to the same rations for incentives. In reality, no venue does 100% DvPs so the weights have to be calibrated more carefully, which is the purpose of [CIP104 Weight Recommendation](https://docs.google.com/document/d/1tdsXOBEH4wIwtTyOOH9oWR-Q8HN4Um7wL3EdgXi8pxg/edit?tab=t.0).

## Related Parties

Tokenomics has previously communicated that

> Featured Applications may not submit markers for activity involving assets, wallets, venues, applications, or counterparties that are owned, controlled, operated, or otherwise affiliated with the Featured App or its related parties, as such activity is considered internal rather than ecosystem-expanding activity.

This guidance makes that meaning more specific: Composition incentives do not apply if the Asset Issuer FA is related to the Venue/Wallet/Bridge in which the asset is transacted.

For the avoidance of doubt, this is not saying that assets or apps are not reward eligible if acting on something related. They are just not eligible for additional composition incentives. For example, if entity A launches a token and a DEX, and the token trades on their own DEX, it does not count towards composition. If the token trades on someone else’s DEX, it does count towards composition.

Accountability will apply the following principles to determine which parties/validators are considered related:

1. **Same Entity:** If an Asset Issuer FA is requested by the same entity as a another FA, they are by default considered related.
2. **Correlation:** If an Asset Issuer’s transaction volume is highly concentrated in a single venue, they are by default considered to be related. Note that overall venue size is taken into consideration here so that there’s no penalty for market leaders.
3. **Exceptions:** In cases where the the defaults 1., and 2., suggest relatedness, the entity owning the asset issuer FA must make a case to Accountability for an exception.

## Tracking

The Tokenomics and Accountability Committees of the Canton Foundation track the status of Featured Applications in a Monday board: [https://canton-foundation.monday.com/boards/18420896395](https://canton-foundation.monday.com/boards/18420896395) 

As the incentives are currently between Venues and Assets, the board distinguishes Asset Isser and Non-Issuer FAs. We propose to add information to that board that identifies related, non-independent FAs to each Asset Issuer type FA. The data must be sufficient to measure composition (see Measuring Composition) both to apply guidance before CIP-0104 and to adjust weights after CIP-0104. In short, for each Asset Issuer FA party, we keep a list of related venue parties and a list of related venue validators. [Accountability Related Parties](https://docs.google.com/spreadsheets/d/1d3BJfA1HckeATAZjyAARJAMbD57bPn4msEYVrJYgOQ0/edit?gid=0#gid=0) captures this information in columns B, J, K.

## Specifics on the Principles

### Same Entity

The tracking board captures “Name of Applying Institution” and “Locking PartyIDs”, both of which give a good indication of relatedness. By default, two FAs will always be considered related if the applying institution of locking partyId matches. Matching on applying institution is not to be understood as string matching, but as clearly referring to the same entity. E.g. ”Canton Foundation” and “CF” would be considered the same.

### Correlation

[Featured App Guidance v2.0](https://docs.google.com/document/d/1NiG8oxteEprZ0PbSAIz7OWjueyQK5GiIXzvDA7M7aQw/edit?tab=t.0#heading=h.22k6ymijl3pg) recommends setting a threshold (currently 65%) of concentration in a single venue:

> No single Featured Venue or Featured Wallet may be responsible for more than 65% of activity associated with the asset on the Network.

The important addition here (which will be backported to the Tokenomics Guidance 2.0 proposal) is that we normalize over venue volume as long as the other venues have non-negligible market share compared to the venue in question.

The appendix [Calculations](https://docs.google.com/document/d/1-V1UlhmkB43zQ_ps4Hx6MhjnTnYGg7saiEjBuhEVXSw/edit?userstoinvite=thientran%40t-rize.io&sharingaction=manageaccess&role=commenter&tab=t.0#bookmark=id.6t62ns1tzucv) defines how to attribute asset volume to venues giving

- `av` = network wide asset volume,
- for venue X `av(X)` = asset volume on venue X,
- for asset A `av(A)` = asset volume of asset A,
- for asset A and venue X `av(X, A)` = volume of asset A on venue X.

From this define

- market share for venue X as `m(X) = av(X)/av`
- market share venue X of the asset A as `m(X, A) = av(X, A)/av(A)`

We consider an asset A to be correlated to a venue X if 

```
m(X, A) >= 0.65 + 0.35 * m(X)
```

The values 0.65 and 0.35 are chosen in line with draft featured app guidance. The term `0.35*m(X)` compensates for the expectation that large venues capture large market shares of assets.

An initial survey assets and venues is available here: [Accountability Asset/Venue Correlation](https://docs.google.com/spreadsheets/d/1tFADktoa8oOeJFKVA3z1gTgjwXTy3pgq14bki59Uh50/edit?gid=353804810#gid=353804810)

### Exceptions

Any venue or asset issuer that is part of a constellation that is related by default may request an exception from Accountability. The argument for an exception should hinge on the correlation incentive rewarding legitimate business that is attributive to the network, and drives real user activity and net burn.

Accountability and Tokenomics may also make exceptions the other way around, declaring parties related if there is observable behaviour where composition incentives are used to incentivize user activity that is not additive to the network and/or does not generate net burn.

## Calculations (Appendix)

### Asset and Venue Volumes

We aim to define the volumes, as relevant for burn and reward calculations, of asset movements within venues. We make the reasonable assumption that two Asset Issuer FA parties never confirm the same view. If this is incorrect, the distortion is limited.

A view V of size size(V) in a transaction tx is an asset transaction for Asset Issuer FA A, if A is a confirmer of the view. Given a time window, we calculate the asset volume for A as

```
av(A) = sum_{A confirms V} size(V)
```

The total asset volume is the sum over issuers:

```
av = sum_A av(A)
```

We attribute the view V to a venue X if there is an ancestor view of V which is confirmed by X. The asset volume of A on venue X is then

```
av(A, X) = sum_{A confirms V and V is attributable to X} size(V).
```

The total asset volume for venue X is then

```
av(X) = sum_A av(A, X)
```

### Volumes Query

A reference query for these computations is available [here](https://docs.google.com/document/d/1-V1UlhmkB43zQ_ps4Hx6MhjnTnYGg7saiEjBuhEVXSw/edit?userstoinvite=thientran%40t-rize.io&sharingaction=manageaccess&role=commenter&tab=t.3sk3cleaottk).

### Measuring Composition

This is included mostly as input for [CIP104 Weight Recommendation](https://docs.google.com/document/d/1tdsXOBEH4wIwtTyOOH9oWR-Q8HN4Um7wL3EdgXi8pxg/edit?tab=t.0).

The basic idea of measuring composition is to just say that a transaction that moves one independent asset is 1-composed, and a transaction that moves two independent assets is 2-composed, etc. and then average over an app to figure out how composed it is. But given Canton’s ability to compose and batch transactions, and to cut out any ways of gaming this, the algorithm has to be per-view.

A transaction view V is considered n-composed for a venue with FA PartyId X (`c(V, X) = n`) if 

1. The view occurs in a transaction submitted by validator P
2. The venue FA confirms the view V
3. V has sub-views V1, …, Vn confirmed by distinct Asset Issuer FAs a1, …, an
4. None of a1, …, an are related to P or V
5. No two of the Asset Issuer FAs ai are related

One way of thinking about it is simply that V1 contributes to av(X, a1) as defined above. A picture also helps get the idea. Let’s consider a DvP submitted by a DEX with a side-leg that takes a cash fee:

![](./b4ce8037-1091-457d-8e51-cb9957150ae6.png)

The DvP root is considered 2-composed as it has two descendants with independent app FAs a1 and a2. The fee leg is considered 1-composed as it has a single descendant with an independent FA a1.

For a given period of time we can now measure the composition factor of the app by averaging over size:

```
App X composition factor = sum_{V confirmed by X} (c(V, X) * size(V)) / sum_{V confirmed by X} (c(V, X) * size(V))
```
