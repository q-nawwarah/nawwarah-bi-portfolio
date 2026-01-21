# Sales Overview Dashboard (Tableau)

## 👀 Recruiter Snapshot (30-Second Read)

**What this project shows**  
An interactive **Tableau dashboard** analyzing Superstore’s sales performance (2014–2017), built on data prepared in **Google BigQuery**.

**What I did**
- Prepared and validated sales data in BigQuery  
- Designed KPI-driven visualizations in Tableau  
- Analyzed sales, profit, order volume, and regional performance  
- Identified product concentration and seasonal trends  
- Applied business storytelling to translate data into insights  

**Why it matters**  
This project demonstrates the ability to **turn structured data into executive-level insights**, supporting decisions around product focus, regional strategy, and revenue growth.

**Tools**  
Google BigQuery | Tableau Public | GitHub

---

## 📌 Project Overview

This Tableau dashboard provides a comprehensive view of **Superstore’s sales performance from 2014 to 2017**, focusing on revenue, profit, order behavior, product performance, and regional trends.

The dataset was **cleaned and prepared in Google BigQuery**, then connected directly to Tableau for visualization and analysis.

---

## 📖 Business Storytelling (What → So What → Now What)

**What**
- Total Sales show steady growth over time
- Technology is the primary driver of revenue and profit
- The West region consistently outperforms other regions

**So What**
- Stable Average Order Value (AOV) suggests consistent customer spending behavior
- Revenue concentration in Top 10 Products highlights both opportunity and risk
- Seasonal patterns indicate predictable demand cycles

**Now What**
- Double down on high-performing Technology products
- Expand successful strategies from the West region to other regions
- Review product concentration and discount strategies to sustain profit growth

---

## 📊 Key Metrics

| Metric | Description | Calculation |
|------|------------|------------|
| Total Orders | Number of unique orders | `COUNTD([Order ID])` |
| Total Sales | Total revenue | `SUM([Sales])` |
| Average Order Value (AOV) | Sales per order | `SUM([Sales]) / COUNTD([Order ID])` |
| Total Profit | Net profit after cost | `SUM([Profit])` |
| MoM % Change | Month-over-month sales growth | LOD + `DATEADD()` |

---

## 📈 Visualizations Included

- **KPI Cards** – Total Sales, Orders, AOV, Profit, MoM %  
- **Monthly Sales Trend** – Time-series line chart  
- **Top 10 Products by Sales** – Product performance analysis  
- **Sales by Region** – Regional comparison (map / bar chart)  

---

## 🧠 Key Insights

- Technology category is the strongest contributor to both sales and profit  
- The West region leads in overall performance, indicating regional strength  
- Sales show cyclical peaks in mid-year and year-end periods  
- Revenue concentration among top products suggests optimization opportunities  

---

## 🛠 Tools & Technologies

- **Google BigQuery** – Data storage, cleaning, and preprocessing  
- **Tableau Public** – Interactive dashboard design and analysis  
- **GitHub** – Project documentation and version control  

---

## 📸 Dashboard Preview

![Sales Overview Dashboard](sales_overview_dashboard.png)

---

## 🎯 Business Value

This dashboard enables stakeholders to:
- Monitor core sales and profit KPIs at a glance  
- Identify high-performing regions and product categories  
- Understand seasonality and revenue concentration risks  
- Support data-driven decisions for growth and optimization  

---

## 🚀 Next Steps

- Add profit margin and discount impact analysis  
- Drill down into customer segments for deeper insights  
- Extend analysis to forecast future sales trends  
