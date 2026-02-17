# Malaysia COVID-19: Risk & Resilience Analysis

A **Business Intelligence** project using **SQL (Google BigQuery)** and **Power BI** to identify **high-risk COVID-19 periods** in Malaysia and measure the **impact of the national vaccination rollout (PICK)** on healthcare outcomes.

---

## Business Problem

During the COVID-19 pandemic, healthcare leaders had to make urgent decisions about:

* ICU and hospital capacity
* Workforce allocation
* Vaccine and booster prioritization

However, raw case numbers alone do not show **true system risk**. Decision-makers need to understand:

* When the healthcare system is under the **greatest strain**
* Whether vaccination is **reducing mortality risk**
* How much **early warning time** exists before deaths rise

This project simulates how a **BI dashboard** can be used to support **healthcare planning and risk monitoring**.

---

## Skills Demonstrated

**SQL (Google BigQuery) • Power BI • Time-Series Analysis • Risk Monitoring • Public Health BI**

---

## How the Solution Works

A modular **SQL pipeline** was built in BigQuery to transform raw COVID-19 data into **BI-ready risk indicators**:

* Data validation and integrity checks
* Rolling averages and cumulative metrics
* Peak-period and high-risk flagging
* **Pre- vs post-vaccination** comparisons
* **Infection-to-death lag analysis** (~14 days)

These outputs were connected to **Power BI** to create executive-level dashboards for trend monitoring, risk detection, and resilience analysis.

---

## Key Insights

* **Peak healthcare strain occurred in August 2021** during the Delta wave, even though CFR was already declining
* **Case Fatality Rate (CFR) dropped significantly after vaccination rollout**, showing improved survival despite higher case volumes
* A consistent **~14-day lag between infection spikes and deaths** provides a critical **early-warning window** for capacity planning
* Malaysia’s vaccination coverage in 2021 was **far higher than neighboring countries**, supporting stronger population protection

---

## Business Impact

This BI framework enables:

* **Early detection of healthcare stress** using leading infection indicators
* **Evidence-based validation of vaccination strategy** through CFR trends
* **Proactive ICU and workforce planning** using the 14-day lag window
* Better prioritization of vaccines and resources during future waves

It turns raw pandemic data into **operational intelligence** for healthcare decision-makers.

---

## Outcome

* **BI-ready datasets and dashboards** for risk and resilience monitoring
* Quantified impact of vaccination on mortality risk
* A **repeatable framework** for pandemic and public-health crisis analytics

---

## Dataset

* **Source:** Our World in Data COVID-19 Dataset (2020–2021)
* **Scope:** Malaysia national-level data
* **Limitations:** Aggregated reporting, limited hospital-level granularity

---

## Author

**Nawwarah Yusof** – Data Analyst | Power BI & Business Intelligence
