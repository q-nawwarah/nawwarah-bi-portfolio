# Malaysia COVID-19: Risk & Resilience Analysis
(Business Intelligence Project)

## 📌 Project Overview
This project analyzes the COVID-19 trajectory in Malaysia using Google BigQuery. The goal is to provide a "Risk-to-Resilience" report that evaluates healthcare strain and the impact of the National  COVID-19 Immunisation Programme (PICK).

## Executive Summary: Malaysia COVID-19 Resilience Analysis 

## 1. The Business Problem (Situation)
During the peak of the pandemic, healthcare administrators in Malaysia faced critical decisions regarding ICU bed allocation and vaccine distribution. This project simulates a BI Resource Allocation Report to identify which periods posed the highest risk to the national healthcare infrastructure.

## 2. Key Insights (Results)
- The `Vaccine Pivot`: Analysis of the `08_death_rate.sql` shows that while the Delta wave (Mid-2021) saw the highest case volume, the Case Fatality Rate (CFR) dropped by 60 % within 5 months of the Movement Control Order (MCO) and 5 months of the National  COVID-19 Immunisation Programme (PICK) reaching a 50% threshold.
- Total new cases by date
<img width="1445" height="293" alt="Screenshot 2026-01-15 131146" src="https://github.com/user-attachments/assets/f96feee1-817b-4138-a982-33efadf096b1" />
- Case Fatality Rate (CFR) by date
<img width="1455" height="292" alt="Screenshot 2026-01-15 131125" src="https://github.com/user-attachments/assets/c0d23df0-4290-4d4c-b578-11deafe79880" />

- `Peak Strain Period`: Using `07_peak_cases.sql`, the data identifies `August 2021` as the period of maximum healthcare volatility, where daily new cases exceeded the 7-day moving average for 4 consecutive days.
<img width="368" height="67" alt="Screenshot 2026-01-15 131640" src="https://github.com/user-attachments/assets/b32312f8-e9d2-4d00-a806-a6a2064effdb" />

- `Regional Benchmarking`: Malaysia's vaccination ramp-up speed outperformed regional peers (Indonesia & Thailand) in the ASEAN block by 75 % & 80 % during the 2021 window `(09_regional_comparison.sql)`.
<img width="1446" height="566" alt="Screenshot 2026-01-15 132852" src="https://github.com/user-attachments/assets/6dad1aba-0fc6-45e7-bbfe-f45e53553f49" />

## 3. Technical Implementation (Action)
- Data Architecture: Developed a modular SQL pipeline (10 scripts) to handle data cleaning, rolling averages, and monthly aggregations.

- Advanced SQL: Utilized Window Functions for rolling averages and CTEs to isolate high-risk periods without nesting complex subqueries.

- BI Visualization: Integrated SQL outputs into a Power BI Dashboard featuring dynamic slicers for MCO (Movement Control Order) phases.

## 4. Strategic Recommendations
- Future-Proofing: Maintain a "Warm-Base" ICU capacity that can scale by 20% within 14 days, based on the lead-time identified between case spikes and hospital admissions.

- Targeted Buffers: Data suggests that future booster campaigns should prioritize regions where the "Infection-to-Death" lag is shortest.
