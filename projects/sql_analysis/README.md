# Malaysia COVID-19: Risk & Resilience Analysis
Analyzed Malaysia’s COVID-19 trajectory to identify high-risk periods and evaluate the impact of the national vaccination rollout using SQL and Power BI. The project simulates a BI Resource Allocation Report for healthcare decision-makers.

## Skills Demonstrated
SQL (Google BigQuery) • Power BI • Data Analysis • Time-Series Analysis • Risk Monitoring

## Business Impact
- Identifies high-risk periods for healthcare system strain
- Measures the effectiveness of the national vaccination program (PICK) in reducing mortality
- Provides early-warning indicators using infection-to-death lag analysis (~14 days)
- Supports ICU capacity planning, workforce allocation, and vaccination prioritization

## Technical Highlights
- Built a modular SQL pipeline for:
  - Data validation and integrity checks
  - Rolling averages and cumulative metrics
  - Peak-period aggregation and high-risk flagging
  - Pre vs post-vaccination analysis
  - Infection-to-death lag calculations
- Used advanced SQL techniques: window functions, safe arithmetic, reusable query design
- Connected SQL outputs to Power BI dashboards for executive-level monitoring and risk visualization

## Key Insights
- Peak healthcare strain: August 2021 during the Delta wave, despite declining CFR
- Case Fatality Rate (CFR): Significantly lower post-vaccination, demonstrating program impact
- Lag analysis: ~14-day infection-to-death delay enables early ICU capacity planning
- Regional benchmarking: Malaysia’s vaccination coverage in 2021 outpaced neighboring countries by 250–400%

## Outcome
- BI-ready dashboard showing risk-to-resilience metrics
- Provides actionable insights for public health administrators and hospital planners
- Establishes a quantitative framework to monitor system stress and evaluate vaccination strategies

## Dataset
- Source: [Our World in Data COVID-19 Dataset (2020–2021)]
- Scope: Malaysia national-level data
- Limitations: aggregated reporting, limited state/hospital granularity, affected by testing policy changes

### Author
Nawwarah Yusof – Data Analyst | Power BI & Business Intelligence
