# Sales Performance Analysis (Python → BI-Ready Dataset)

## 👀 Recruiter Snapshot (30-Second Read)

**What this project shows**  
An end-to-end **data preparation and analysis workflow** that transforms raw financial sales data into a **clean, BI-ready dataset**.

**What I did**
- Cleaned and standardized raw sales data for reliable analysis  
- Resolved missing values affecting profitability metrics  
- Engineered business metrics such as **profit margin** and **monthly trends**  
- Validated seasonal performance through exploratory analysis  
- Delivered a structured dataset ready for Power BI, Tableau, or Excel  

**Why it matters**  
Accurate dashboards depend on clean data. This project demonstrates the ability to produce **trusted datasets** that reduce downstream BI rework and support confident decision-making.

**Tools**  
Python (Pandas, Matplotlib) | Google Colab

---

## 📌 Project Overview

This project focuses on **cleaning, preparing, and analyzing financial sales data using Python**.  
The objective is to convert a messy raw dataset into a **business-ready format** that can be directly consumed by BI tools.

Rather than building dashboards, this project emphasizes **data quality, structure, and validation**, which are critical foundations for reliable KPI reporting.

---

## 📁 Dataset

- **Source:** `dataset_financial2014_raw.xlsx`  
- **Scope:** Global sales data for 2014  
- **Note:** This is a **sample/dummy dataset** used for learning and portfolio demonstration purposes and may not reflect real-world business performance.

---

## 🛠 Tools & Skills

**Language**
- Python 3.x

**Libraries**
- Pandas – data cleaning, transformation, and feature engineering  
- Matplotlib – exploratory data analysis (EDA)

**Key Skills Demonstrated**
- Data cleaning & standardization  
- Feature engineering  
- Exploratory data analysis  
- Business-focused insight generation  
- BI-ready data preparation  

---

## ⚙️ Data Cleaning & Preparation

To ensure downstream BI tools can aggregate metrics correctly, the following steps were applied:

- **Column Standardization**
  - Normalized column names (snake_case, lowercase, trimmed spaces)
- **Missing Value Handling**
  - Identified and removed 45 records with missing `discount_band` values to protect margin calculations
- **Data Type Validation**
  - Converted date fields to `datetime` for time-series analysis
- **Structural Validation**
  - Verified numeric fields for sales, profit, and costs were aggregation-safe

---

## 🧩 Feature Engineering

Additional business metrics were created to enhance analytical value:

- **Profit Margin**
  - Calculated as `profit / sales` to evaluate efficiency, not just revenue
- **Time Attributes**
  - Extracted month information to support seasonality analysis and BI filtering

---

## 📊 Exploratory Data Analysis (EDA)

Before exporting the dataset, exploratory analysis was conducted to validate trends and detect anomalies:

- **Monthly Sales Trend**
  - Revealed strong revenue momentum toward year-end
- **Monthly Profit Trend**
  - Showed fluctuations in profitability despite overall positive performance
- **Margin Variability**
  - Indicated potential discount or cost pressures in certain periods

These checks ensure the dataset reflects **logical and explainable business patterns** before visualization.

---

## 🧠 Key Insights

- Sales performance peaked toward **Q4**, indicating strong year-end demand  
- Profit remained positive across most months but showed **volatility**  
- Profit margin variation suggests opportunities for **cost or discount optimization**

---

## 🚀 Output & BI Readiness

**Final Output**
- `dataset_financial2014_clean.csv`

**Why this dataset is BI-ready**
- Clean schema and standardized columns  
- Validated metrics for sales, profit, and margins  
- Time-based attributes suitable for KPI and trend analysis  
- Ready for **Star Schema modeling** in Power BI or Tableau  

This dataset can be immediately used to build:
- Revenue & profit KPIs  
- Monthly performance trends  
- Margin analysis by product, segment, or country  

---

## 🎯 Next Steps

- Load the cleaned dataset into **Power BI** for KPI dashboard development  
- Extend the pipeline for **multi-year data**  
- Automate validation checks for recurring financial reporting


