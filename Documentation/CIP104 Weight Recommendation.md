# Weight Recommendations Under CIP-0104

**Status:** Final  **For:** Tokenomics Committee

## 1. Summary

Under CIP-0104, reward weight for a transaction is divided equally among the featured apps involved in it. A transaction touching one featured app credits that app in full; a DvP settlement typically involves three — the venue and both asset issuers — and each receives approximately a third.

Because DvP transactions also cost materially more to submit, the effect is that composed settlement returns substantially less per unit of fee burned than internal movement. This paper sets out the distortion and recommends that venues settling DvP between independent assets carry a higher activity weight than apps whose transactions remain within a single system.

## 2. The Distortion

| | Internal transfer | DvP settlement |
|---|---|---|
| Cost to the submitting app | ~$0.50 | ~$2.30 |
| Featured apps involved | 1 | 3 |
| Share of reward to each | Full | Approximately one third |
| Return per dollar burned | Full | Approximately one third |

An application moving a balance within its own system earns roughly three times as much per dollar burned as one settling a trade between independent parties. Simulation results are consistent with this: applications burning a fraction of what the largest DvP venues burn are recording higher total rewards.

## 3. Assessment

Composition across independent assets, issuers and venues is the principal argument for building on a shared synchronizer. The present formula charges for it: each additional independent app a venue settles with further reduces the venue's share, while an application that issues its own asset, operates its own venue and holds its own wallet retains the full reward at approximately one fifth of the cost.

The table below applies the two structures to a DvP venue of current mainnet size over a thirty-day period. It counts protocol rewards and protocol burn only: app rewards, validator rewards and traffic fees.

| | App rewards | Validator rewards | Traffic burn | Net | Per $1 burned |
|---|---|---|---|---|---|
| **Reward price 0.61 (level observed to date)** | | | | | |
| Today (pre-CIP-0104) | 139.7M CC<br>$14.61M | 39.8M CC<br>$4.17M | –199.4M CC<br>–$20.86M | –19.9M CC<br>–$2.08M | 0.90 |
| CIP-0104, equal weight | 52.8M CC<br>$5.52M | 39.8M CC<br>$4.17M | –199.4M CC<br>–$20.86M | –106.8M CC<br>–$11.17M | 0.46 |
| CIP-0104, maximum weight (×2.3) | 121.6M CC<br>$12.72M | 39.8M CC<br>$4.17M | –199.4M CC<br>–$20.86M | –37.9M CC<br>–$3.97M | 0.81 |
| **Reward price 0.77** | | | | | |
| Today (pre-CIP-0104) | 176.3M CC<br>$18.45M | 39.8M CC<br>$4.17M | –199.4M CC<br>–$20.86M | 16.7M CC<br>$1.75M | 1.08 |
| CIP-0104, equal weight | 66.6M CC<br>$6.97M | 39.8M CC<br>$4.17M | –199.4M CC<br>–$20.86M | –93.0M CC<br>–$9.72M | 0.53 |
| CIP-0104, maximum weight (×2.3) | 153.3M CC<br>$16.03M | 39.8M CC<br>$4.17M | –199.4M CC<br>–$20.86M | –6.3M CC<br>–$0.66M | 0.97 |

A DvP settlement is a substantially larger transaction than an internal movement — roughly $2.50 to submit against roughly $0.50 — so the venue that submits it burns several times more, while under an equal split it is credited with only about a third of the weight that transaction generates. 

## 4. Recommendation 

| Transaction class | Activity weight |
|---|---|
| Simple transfer (single featured app) | 1.0 |
| DvP settlement between independent assets | 2.3 |

The submitting venue bears the entire traffic cost of a DvP settlement. Crediting each participant equally credits parties in proportion to their involvement rather than their expenditure, and involvement is free. A weight of 2.3 restores the venue to the full weight of the transaction it paid to submit.
