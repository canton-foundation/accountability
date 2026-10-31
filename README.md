# Accountability

The Canton Accountability process supports transparent review and resolution of Featured App compliance matters.

This repository is used to submit **Featured App reinstatement requests** through GitHub Pull Requests.

---

## Overview

The Accountability process helps ensure that Featured Apps operate in line with Canton ecosystem rules, guidance, and governance expectations.

This process may be used when a Featured App has been paused or otherwise subject to review and seeks reinstatement.

The process is designed to:

* Provide a clear path for reinstatement requests
* Collect the information needed for committee review
* Allow on-chain activity to be verified using public data
* Support consistent treatment across Featured Apps
* Maintain transparency for the ecosystem

Completing a reinstatement request does not require technical expertise. The on-chain figures requested can be drawn from the public explorers listed below, and ecosystem partners may assist where help is needed to collect or interpret the data.

---

## What This Repository Is For

This repository is used for:

* Featured App reinstatement requests
* Appeals or disputes regarding the basis of a pause
* Compliance follow-up where reinstatement has occurred but requirements remain outstanding
* Supporting documentation for accountability review

Each request should explain:

* What led to the pause
* What corrective measures were taken
* What has changed to prevent recurrence
* The basis on which the application will operate in compliance going forward

The committee assesses the request as a whole. Figures are requested at specific points, but no single section replaces the full review.

---

## Who Should Submit

A request may be submitted by:

* The Featured App operator
* The organization responsible for the Featured App
* An authorized representative of the applicant

If another party is submitting on behalf of the applicant, that relationship should be stated clearly in the request.

---

## How to Submit a Reinstatement Request

All reinstatement requests are submitted by Pull Request.

### Step 1: Review the PR Template

Use the Featured App Reinstatement Request template located at:

```text
.github/pull_request_template.md
```

The template requests:

* Applicant details
* On-chain identifiers
* Basis of the pause
* Cause of the issue
* Corrective measures
* Any data discrepancies
* Basis for continued compliance
* Shared participant node information, if applicable
* Locking status
* Any asset issuer exception request, if applicable

Where a field does not apply, state `N/A` with a brief reason.

---

### Step 2: Create Your Request

1. Fork this repository
2. Create a new branch
3. Add your completed reinstatement request as a Markdown file under:

```text
reinstatement/<your-app-name>-<YYYY-MM-DD>.md
```

Use the application name and submission date in the file name.

Example:

```text
reinstatement/example-app-2026-06-25.md
```

---

### Step 3: Open a Pull Request

Use the following title format:

```text
Reinstatement Request: <App Name>
```

Once submitted, your request will enter the review process.

---

## Review Process

The review process generally includes:

1. **Completeness review**
   The submission is checked for required fields, identifiers, and supporting information.

2. **Data verification**
   On-chain identifiers, reward weight, fees, burns, locking status, and other figures are reviewed against available public sources.

3. **Committee review**
   The committee reviews the cause, corrective measures, and basis for continued compliance.

4. **Follow-up questions**
   The committee may request clarifications or additional data through the Pull Request.

5. **Decision**
   The committee determines whether reinstatement should proceed, whether conditions must be satisfied first, or whether further action is required.

Reinstatement is not finalized until all applicable requirements, including locking requirements, have been verified.

---

## What Makes a Strong Request

Strong reinstatement requests typically include:

* A clear explanation of the cause of the issue
* Correct on-chain PartyIds and identifiers
* Reward weight and fee figures that can be independently verified
* A clear calculation of any excess reward weight
* Evidence that excess amounts were burned, where required
* Specific corrective measures with effective dates
* A compliance rule the application now follows
* Monitoring designed to detect future issues early
* Clear separation of functions where required
* Complete locking information under CIP-0116

---

## Locking Requirement

Reinstatement is subject to the CIP-0116 lock requirement:

* **5,000,000 CC** for Featured Apps
* **25,000,000 CC** for Issuer applications

Funds do not need to be locked at the time of initial submission, but they must be segregated and available. Verification must occur before reinstatement is finalized.

The lock may be held by the applicant or by a third party, but the lock must be attributable to the Featured App being reinstated.

---

## Public Sources and Explorers

The figures requested in the reinstatement template can be collected from public block explorers and ecosystem tools.

Common sources include:

* CCView: https://ccview.io/
* Cantonloop Lighthouse: https://lighthouse.cantonloop.com/
* Transparent Scan: https://transparentscan.xyz/
* RIZEScore by T-RIZE: https://www.t-rize.io/
* Canton ecosystem directory: https://www.cantonecosystem.com/

Where sources diverge, explain which source you relied on and why in the reinstatement request.

The Foundation may also provide monitoring query support on request.

---

## Confidentiality

Submissions through this repository are public unless otherwise stated.

Do not include confidential, proprietary, or sensitive information in a public Pull Request unless it is necessary for review and appropriate to disclose publicly.

If private coordination is needed, contact the Foundation before submitting.

---

## Questions

For private questions about a reinstatement request or the submission process:

Email: **[accountability-ops@lists.sync.global](mailto:accountability-ops@lists.sync.global
)**

For broader ecosystem discussion:

Email: **[accountability@lists.sync.global](mailto:accountability@lists.sync.global

---

## Goal

The goal of this process is to support fair, transparent, and consistent accountability review while allowing applications that have corrected issues to return to good standing.
