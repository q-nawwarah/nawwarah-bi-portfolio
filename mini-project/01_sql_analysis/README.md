# 🧠 SQL Analysis Mini Project — COVID-19 Insights (OWID Dataset)

This project is part of the **SQL Mastery (Week 1)** in the Business Intelligence learning roadmap.  
The goal is to perform **data exploration and analysis using SQL (BigQuery)** on the **Our World in Data (OWID) COVID-19 dataset**, then visualize key findings in **Power BI**.

---

## 📁 Project Structure

sql-analysis-project/
├── README.md
├── data/
│   └── owid_covid_data.csv
├── queries/
│   ├── 01_quick_sanity_check.sql
│   ├── 02_date_range.sql
│   ├── 03_daily_new_cases.sql
│   ├── 04_cumulative_cases.sql
│   ├── 05_missing_data_check.sql
│   ├── 06_monthly_summary.sql
│   ├── 07_peak_cases.sql
│   ├── 08_death_rate.sql
│   ├── 09_regional_comparison.sql
│   └── 10_export_clean_data.sql
├── results/
│   ├── csv/
│   │   ├── daily_new_cases.csv
│   │   ├── monthly_summary.csv
│   │   └── death_rate.csv
│   └── charts/
│       ├── daily_new_cases.png
│       ├── monthly_summary.png
│       └── death_rate.png
└── powerbi/
    └── covid_dashboard.pbix

---

## 🧩 Objectives

1. Explore and clean COVID-19 data using SQL on **Google BigQuery**.  
2. Analyze trends such as:
   - Daily and cumulative new cases
   - Monthly summary
   - Death rates and peak cases
   - Regional comparison  
3. Export cleaned data for visualization in **Power BI**.  
4. Present insights using clear and simple charts.

---

## 🧮 Dataset Information

**Source:** [Our World in Data (OWID) COVID-19 Dataset](https://ourworldindata.org/covid-deaths)  
**Date Range:** 2020–2021  
**Format:** CSV  
**Main Columns Used:**
- `location` — Country/region name  
- `date` — Observation date  
- `new_cases`, `total_cases`  
- `new_deaths`, `total_deaths`  
- `population`  
- `continent`

---

## 🧠 Queries Overview

| File | Description |
|------|--------------|
| 01_quick_sanity_check.sql | Check total rows, columns, and sample records |
| 02_date_range.sql | Identify date coverage (start & end dates) |
| 03_daily_new_cases.sql | Summarize daily new cases by country |
| 04_cumulative_cases.sql | Calculate cumulative total cases |
| 05_missing_data_check.sql | Detect null or missing values |
| 06_monthly_summary.sql | Aggregate monthly totals per country |
| 07_peak_cases.sql | Identify highest single-day new cases per country |
| 08_death_rate.sql | Compute death rate (total_deaths / total_cases) |
| 09_regional_comparison.sql | Compare regions/continents |
| 10_export_clean_data.sql | Export cleaned dataset to CSV for Power BI |

---

## 🧾 Sample Output

Below are **example outputs** from BigQuery results:

| country | month | total_cases | total_deaths | death_rate |
|----------|--------|--------------|---------------|-------------|
| Malaysia | 2020-03 | 2,626 | 37 | 1.41% |
| Malaysia | 2021-08 | 1,784,361 | 17,191 | 0.96% |
| Indonesia | 2021-07 | 3,331,206 | 90,552 | 2.72% |

📂 Full results in [`results/csv_output/`](./results/csv_output/)

---

## 📊 Power BI Visualization

After exporting the cleaned CSV from BigQuery, Power BI was used to visualize:
- **New cases trend (2020–2021)**  
- **Death rate by continent**  
- **Top 5 countries with highest total cases**  
- **Monthly trend comparison**

📸 Sample charts:

| Chart | Description |
|--------|--------------|
| ![New Cases Trend](./results/charts/new_cases_trend.png) | Daily new cases (2020–2021) |
| ![Death Rate by Region](./results/charts/death_rate_by_region.png) | Comparison of death rates across regions |
| ![Peak Cases Summary](./results/charts/peak_cases_summary.png) | Highest daily peaks by country |

---

## 🧰 Tools Used

| Tool | Purpose |
|------|----------|
| **Google BigQuery** | SQL analysis & data cleaning |
| **Power BI Desktop** | Visualization and dashboard creation |
| **GitHub** | Version control & portfolio showcase |

---

## 🚀 Key Insights

- COVID-19 cases **peaked globally in mid-2021**, especially in Asia.  
- Death rates varied significantly by continent — **Europe and South America had higher fatality ratios**.  
- Data gaps were observed in a few countries, highlighting inconsistent reporting early in 2020.

---

## 💡 Next Steps

- Extend analysis to 2022–2023 data for full pandemic coverage.  
- Include vaccination rate correlation with case reduction.  
- Automate ETL pipeline (BigQuery → Power BI) using scheduled queries or APIs.

---

## 📚 Author

**Nawwarah** — aspiring **Business Intelligence Analyst**  
🎓 Project part of SQL Mastery (Week 1) in BI Career Roadmap  
📧 [Your Email Here]  
🌐 [GitHub Profile Link Here]

---

✅ **Status:** Completed  
📅 **Duration:** 1 Week (SQL Mastery Phase)  
🔗 **Dataset:** OWID COVID-19 (2020–2021)

---
