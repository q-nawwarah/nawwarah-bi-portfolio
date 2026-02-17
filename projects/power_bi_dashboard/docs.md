# Project Overview
This project presents a Sales KPI Overview Dashboard built in Power BI to help stakeholders monitor financial performance across 2014.

## The dashboard focuses on:
- Actual revenue vs monthly targets
- Profit and profit margin trends
- Month‑over‑Month (MoM) movement
- Sales contribution by country
- The design follows a What → So What → Now What framework to ensure insights are actionable.

## Objective
To build a decision‑ready sales performance dashboard that allows business users to:
- Track whether monthly revenue targets are achieved
- Identify periods of under‑performance early
- Understand profitability trends across the year
- Compare performance across key markets

## Dataset
- financial_dataset.xlsx Transactional sales data for 2014, cleaned and standardized.
- financial_target_dataset.xlsx Monthly revenue targets reflecting expected seasonal variation.
\Stored in the /data/ directory\

## Data Model
- Fact Table
  - Financials — Sales, Profit, Date, Product, Country
- Dimension Table
  - Date — Calendar table (Year, Month)
  - Target Table : Targets_2014 — Monthly sales targets

## Relationships
- Date[Date] → Financials[Date] (1 → many)
- Targets_2014[Period] → Date[Period] (many → 1)
📌 Monthly targets are aligned to the Date dimension using DAX to ensure accurate Sales vs Target comparison.

## Tools & Skills Applied
- Power BI Desktop
  - Power Query (data cleaning & transformation)
  - Data modeling & relationships
  - DAX

## KPI measures
- Time intelligence (MoM)
- Sales vs Target & variance calculations
- Business Intelligence

## KPI framework design
- Data validation
- Executive‑level reporting

## Key Measures (Summary)
- Total Sales
- Total Profit
- Profit Margin %
- Target Sales (monthly)
- Sales Variance
- Sales Variance %
- Previous Month Revenue
- MoM Growth %
📄 Full DAX definitions available in /docs/dax-formulas.md

## Dashboard Highlights
Top KPIs
- Total Sales: $92.31M
- Total Profit: $13.02M
- Average Profit Margin: 14.1%

## Key Visuals
- Monthly Sales vs Target (dynamic target line)
- Profit trend line showing volatility and peaks
- Sales by country (United States, Canada, France, Germany)
- Detailed variance table highlighting over‑ and under‑performance

## Dashboard Preview
![Sales KPI Overview Dashboard](https://github.com/nawwarah-analyst/nawwarah-portfolio/blob/main/projects/power_bi_dashboard/dashboard_screenshot.png)

## Key Insights
- Revenue performance varied across the year, with both over‑ and under‑target months, providing a more realistic view of execution against plan.
- Strong sales peaks occurred in June, October, and December, indicating seasonal demand patterns.
- Several mid‑year months underperformed targets, highlighting potential pricing, demand, or discounting challenges.
- Profit margin averaged ~14.1%, remaining stable despite revenue volatility.

## Business Value
This dashboard supports management and sales leadership by:
- Improving target accountability Clear month‑level comparison between actuals and targets highlights execution gaps.
- Enabling faster performance reviews Replaces manual spreadsheets with a single interactive KPI view.
- Identifying risk periods early Under‑target months are immediately visible, enabling corrective action.
- Supporting margin awareness Profit and margin trends help balance growth with profitability.
- Providing a scalable BI foundation The model can be extended to YoY analysis, additional regions, or future targets.

## Business Recommendations
- Refine forecasting assumptions for mid‑year months where targets were missed.
- Use seasonal insights to set differentiated targets rather than flat growth expectations.
- Focus growth initiatives on consistently strong markets such as the United States and Canada.
👤 Author
Nawwarah Yusof Data Analyst | Power BI & Business Intelligence

📌 This project demonstrates end‑to‑end BI development — from data modeling and KPI design to executive‑ready insights. 
