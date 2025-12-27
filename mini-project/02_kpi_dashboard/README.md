# KPI Dashboard — Financial Sample (2014)

## 📌 Objective
Create an executive KPI dashboard showing **Revenue vs Target**, Profit, Margin, and month-over-month movement for 2014.

## 📁 Dataset
- `Financial_Sample_2014.xlsx` — cleaned sales data for 2014 (placed in `/data/`).
- `Revenue_Targets.xlsx` — monthly target table for 2014 (placed in `/data/`).

## 🧩 Data Model
- Fact: `Financials` (sales, profit, date, product, country)
- Dim: `Date table` (calendar for 2014)
- Targets: `Targets_2014` (Period = yyyy-MM or Month Short)
- Relationships:
  - `Date[Date]` → `Financials[Date]` (1 → many)
  - `Date[Month]/[Period]` → `Targets[Month]/[Period]` (1 → many)

## 🛠 Tools & Skills
- Power BI Desktop (Data cleaning in Power Query; Data modeling)
- DAX (measure creation: Total Sales, Total Profit, Profit Margin, Sales vs Target, MoM)
- Storytelling: What → So What → Now What

## 📊 Key Measures (short list)
- `Total Sales`  
- `Total Profit`  
- `Profit Margin %`  
- `Target Sales`  
- `Sales Variance`, `Sales Variance %`  
- `Revenue Prev Month`, `MoM Growth %`

(See `docs/dax-formulas.md` for full measure definitions.)

## 📸 Output Screenshot
- ![Sales vs Target Dashboard](Dashboard Sales vs Target.png)

## 🧠 Key Insights (not update yet)
- Revenue exceeded target in 7 of 12 months, with strong performance in October and December.
- Profit margin averaged ~14.1% for 2014.
- Recommend reviewing discount levels in July–September to protect margins.

## 🔗 Files
- `/data/Financial_Sample_2014.xlsx`
- `/data/Revenue_Targets.xlsx`
- `/output_screenshot/dashboard_screenshot.png`
- `/docs/dax-formulas.md`
- `KPI_Dashboard_Financial_Sample.pbix` 

_Last updated: October 2025_
