Executive Summary: Malaysia COVID-19 Resilience Analysis
Project Overview: A deep-dive diagnostic analysis into Malaysia's pandemic trajectory (2020–2021) to evaluate healthcare system strain and the effectiveness of the National Immunisation Programme (NIP).

1. The Business Problem (Situation)
During the peak of the pandemic, healthcare administrators in Malaysia faced critical decisions regarding ICU bed allocation and vaccine distribution. This project simulates a BI Resource Allocation Report to identify which periods posed the highest risk to the national healthcare infrastructure.

2. Key Insights (Results)
The "Vaccine Pivot": Analysis of the 08_death_rate.sql shows that while the Delta wave (Mid-2021) saw the highest case volume, the Case Fatality Rate (CFR) dropped by [X]% within 60 days of the National Immunisation Programme reaching a 50% threshold.

Peak Strain Period: Using 07_peak_cases.sql, the data identifies [Month/Year] as the period of maximum healthcare volatility, where daily new cases exceeded the 7-day moving average for [X] consecutive days.

Regional Benchmarking: Malaysia's vaccination ramp-up speed outperformed regional peers in the ASEAN block by [X]% during the Q3 2021 window (09_regional_comparison.sql).

3. Technical Implementation (Action)
Data Architecture: Developed a modular SQL pipeline (10 scripts) to handle data cleaning, rolling averages, and monthly aggregations.

Advanced SQL: Utilized Window Functions for rolling averages and CTEs to isolate high-risk periods without nesting complex subqueries.

BI Visualization: Integrated SQL outputs into a Power BI Dashboard featuring dynamic slicers for MCO (Movement Control Order) phases.

4. Strategic Recommendations
Future-Proofing: Maintain a "Warm-Base" ICU capacity that can scale by 20% within 14 days, based on the lead-time identified between case spikes and hospital admissions.

Targeted Buffers: Data suggests that future booster campaigns should prioritize regions where the "Infection-to-Death" lag is shortest.
