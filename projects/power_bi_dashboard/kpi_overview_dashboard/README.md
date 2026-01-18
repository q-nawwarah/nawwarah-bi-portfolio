# 📊 KPI Dashboard — Financial Sample (2014)

## 👀 Recruiter Snapshot (30‑second read)

**What this shows**
An executive‑ready **Power BI KPI dashboard** analyzing **2014 sales performance vs monthly targets**, profitability, margin health, and month‑over‑month trends.

**Why it matters**
Demonstrates strong **data modeling, DAX problem‑solving, and business insight validation**, including resolving a real‑world target‑vs‑actual modeling issue.

**Skills proven**
Power BI • DAX (KPIs, time intelligence, TREATAS) • Data modeling • Executive dashboards • BI troubleshooting

**Outcome**
Clear visibility into revenue over‑performance, seasonal trends, and margin behavior to support faster, data‑driven management decisions.

---

## 🔍 Project Overview

This project delivers an **executive‑level KPI dashboard** built in **Power BI**, designed to evaluate:

* Revenue vs **monthly targets**
* Profit and Profit Margin trends
* Month‑over‑Month (MoM) growth
* Country‑level sales contribution

The dashboard is built using a **What → So What → Now What** storytelling approach, ensuring insights are actionable rather than purely descriptive.

---

## 🎯 Objective

To create a **decision‑ready financial performance dashboard** that allows stakeholders to:

* Quickly assess whether revenue targets are being met
* Identify high‑performing months and markets
* Monitor margin health across the year
* Detect seasonal and mid‑year performance patterns

---

## 📁 Dataset

**Financial_Sample_2014.xlsx**
Cleaned transactional sales data for 2014.

**Revenue_Targets.xlsx**
Monthly revenue targets defined at a **calendar‑month grain**.

📂 Stored in the `/data/` directory.

---

## 🧩 Data Model

**Fact Table**

* `Financials` — Sales, Profit, Date, Product, Country

**Dimension Table**

* `Date` — Calendar table for 2014 (with Period = YYYY‑MM)

**Target Table**

* `Targets_2014` — Monthly revenue targets

**Relationships**

* `Date[Date]` → `Financials[Date]` (1 → many)
* `Targets_2014[Period]` → `Date[Period]` (many → 1)

📌 *Due to Power BI relationship direction constraints, monthly targets are aligned to the Date dimension using DAX rather than relying solely on physical relationships.*

---

## 🛠 Tools & Skills Applied

* **Power BI Desktop**

  * Power Query (data cleaning & transformation)
  * Data modeling (date table & relationships)
* **DAX**

  * KPI measures
  * Time intelligence
  * Target alignment using `TREATAS`
* **Business Intelligence**

  * KPI framework design
  * Executive storytelling
  * Data validation & debugging

---

## 📐 Key Measures (Summary)

* Total Sales
* Total Profit
* Profit Margin %
* Target Sales (monthly)
* Sales Variance
* Sales Variance %
* Revenue (Previous Month)
* MoM Growth %

📄 Full DAX definitions available in:
`/docs/dax-formulas.md`

---

## 📊 Dashboard Highlights

**Top KPIs**

* **Total Sales:** $92.31M
* **Total Profit:** $13.02M
* **Average Profit Margin:** 14.1%

**Key Visuals**

* Monthly **Sales vs Target** (dynamic target line by month)
* Profit trend analysis across the year
* Sales contribution by country
* Tabular variance breakdown for executive review

📸 Dashboard Screenshot

![Sales KPI Dashboard](dashboard_screenshot.png)

---

## 🧠 Key Insights

* Revenue **exceeded monthly targets in all 12 months** of 2014, with the strongest over‑performance in **October and December**, indicating pronounced Q4 seasonality.
* Profit remained resilient throughout the year, averaging **~14.1%**, despite sales volatility.
* Mid‑year months (July–September) show softer performance relative to Q4 peaks, suggesting potential pricing or demand‑mix effects.

---

## 💼 Business Value

This dashboard delivers **direct decision‑making value** for leadership and commercial teams:

* **Accurate target accountability**
  Monthly targets are correctly aligned with actuals, ensuring trustworthy Sales vs Target evaluation.

* **Faster executive reporting**
  Replaces static spreadsheets with a single, interactive KPI view for monthly performance reviews.

* **Early performance detection**
  MoM tracking highlights slowdowns or accelerations early, enabling proactive action.

* **Margin protection**
  Profit and margin visibility helps identify periods of potential discount pressure.

* **Scalable BI foundation**
  Reusable data model and measures allow easy extension to YoY analysis or future periods.

---

## 📌 Business Recommendations

* Introduce **seasonal or stretch targets** to better reflect Q4 demand spikes.
* Review discount and pricing strategies during mid‑year months to protect margins.
* Prioritize high‑performing markets (United States & Canada) for growth initiatives.

---

## 👤 Author

**Nawwarah Yusof**
Data Analyst | Power BI & Business Intelligence

📌 *This project demonstrates end‑to‑end BI development, from data modeling and DAX troubleshooting to executive‑ready storytelling.*
