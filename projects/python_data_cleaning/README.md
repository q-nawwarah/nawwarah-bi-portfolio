# Sales Performance Analysis: From Python Pipeline to Business Insights

## 📌 Executive Summary

This project demonstrates a complete **ETL (Extract, Transform, Load)** pipeline using Python to convert raw financial data into a clean, analysis-ready dataset. By bridging the gap between messy raw exports and structured data, this project enables stakeholders to identify high-value segments, optimize profit margins, and understand seasonal sales volatility.

**The final output is a validated, "business-ready" CSV optimized for BI tools like Power BI, Tableau, or Excel.**

---

## 🛠️ Technical Stack

* **Language:** Python 3.x
* **Libraries:**
* `Pandas`: Data manipulation and structural cleaning.
* `Matplotlib`: Exploratory visual analysis.


**Source Data:** (dataset_financial2014_raw.xlsx)

---

## 📉 Business Key Performance Indicators (KPIs)

To provide value beyond basic numbers, the following metrics were engineered:

1. **Sales Volume:** Total revenue generated across global markets.
2. **Profitability Analysis:** Identification of net profit after COGS and discounts.
3. **Profit Margin (%):** Efficiency metric calculated as:
         `Profit margin = net profit/total sales`
4. **Seasonality Trends:** Monthly performance tracking to identify Q4 peaks.

---

## ⚙️ Data Engineering Process

### 1. Data Governance & Cleaning

Raw data often contains "noise" that breaks BI dashboards. I implemented the following:

* **Normalization:** Converted column headers to `snake_case` and removed leading/trailing spaces to ensure seamless SQL/Power BI integration.
* **Handling Nulls:** Identified and removed 45 records with missing `discount_band` data to maintain high data integrity for margin calculations.
* **Type Casting:** Ensured `date` objects were converted to `datetime64` for accurate time-series analysis.

### 2. Feature Engineering

Added business context to the raw figures:

* Extracted **Month** and **Year** attributes for granular filtering.
* Calculated **Profit Margin** to highlight which products are most "efficient," not just high-revenue.

---

## 📊 Exploratory Data Analysis (EDA) Highlights

Before exporting to BI tools, I conducted a preliminary analysis to validate data trends:

* **Q4 Momentum:** Sales show a significant upward trend toward the end of the fiscal year, suggesting a need for increased inventory in October–December.
* **Margin Volatility:** While sales are high, profit margins fluctuate, indicating that high "Discount Bands" may be eroding net gains in certain segments.

---

## 🚀 Impact & BI Readiness

The resulting dataset, `financial_sample_2014_clean.csv`, is structured for immediate use in professional BI environments:

* **Power BI:** Ready for Star Schema modeling.
* **Standardized:** All currency and unit fields are validated for aggregation.
* **Scalable:** The Python script can be reused for 2015+ data with zero manual formatting
