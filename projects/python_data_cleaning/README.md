# Sales Performance Analysis (Python → BI-Ready Dataset)

An end-to-end **data preparation and validation** project that transforms **raw financial sales data** into a **clean, BI-ready dataset** for reliable KPI reporting and dashboard development.

---

## Business Problem

Business dashboards are only as good as the data behind them.
Raw sales data often contains:

* Inconsistent column names
* Missing values that distort profit and margin calculations
* Invalid data types that break time-series analysis

If these issues are not fixed before reporting, **KPIs become unreliable**, leading to poor business decisions.
This project simulates how a data analyst prepares **trusted financial data** before it is used in Power BI, Tableau, or Excel.

---

## Skills Demonstrated

**Python (Pandas, Matplotlib) • Data Cleaning • Feature Engineering • Exploratory Data Analysis • BI-Ready Data Preparation**

---

## How the Solution Works

The raw dataset was processed in Python using a structured data-preparation pipeline:

1. **Data Cleaning & Standardization**

   * Normalized column names for BI compatibility
   * Removed records with missing discount values that would corrupt margin calculations
   * Converted date fields to proper datetime format

2. **Data Validation**

   * Checked numeric fields (sales, profit, costs) to ensure they can be safely aggregated
   * Verified that time-series data supports month-level analysis

3. **Feature Engineering**

   * Created **Profit Margin** (`profit / sales`)
   * Extracted **month and time attributes** for seasonality and KPI analysis

4. **Exploratory Data Analysis**

   * Reviewed monthly sales, profit, and margin trends
   * Validated that business patterns were logical before exporting the dataset

---

## Key Insights

* **Sales peaked toward Q4**, showing strong year-end demand
* **Profit stayed positive**, but with noticeable month-to-month volatility
* **Profit margins varied across months**, indicating possible discount or cost pressures

These checks confirm that the dataset reflects **realistic business behavior** before being used for dashboards.

---

## Business Impact

This project ensures that downstream BI tools receive:

* **Accurate sales and profit numbers**
* **Reliable margin calculations**
* **Time-based attributes** for trend and KPI analysis

This reduces reporting errors, avoids misleading dashboards, and enables **confident decision-making** by finance and sales teams.

---

## Outcome

* Final output: `dataset_financial2014_clean.csv`
* Clean schema, validated metrics, and time-series attributes
* Ready for use in:

  * Revenue & profit dashboards
  * Monthly performance tracking
  * Margin analysis by product, region, or segment

---

## Dataset

* `dataset_financial2014_raw.xlsx` – Sample raw financial data (2014)
* Portfolio dataset for learning and demonstration purposes

---

## Author

**Nawwarah Yusof** – Data Analyst | Power BI & Business Intelligence
 project next to make them even stronger.
