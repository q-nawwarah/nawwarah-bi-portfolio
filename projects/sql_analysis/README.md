## 🔎 Recruiter Snapshot (30-second read)

**Goal:**  
Identify high-risk COVID-19 periods in Malaysia and evaluate the impact of national vaccination rollout using SQL and Power BI.

**Tools:**  
SQL (Google BigQuery), Power BI

**Key Insights:**  
- Peak healthcare strain occurred during Aug 2021 despite declining CFR
- Case Fatality Rate remained significantly lower post-vaccination
- A consistent ~14-day infection-to-death lag provides early warning for capacity planning

**Business Value:**  
Demonstrates how BI can support ICU capacity planning, vaccination prioritization, and early risk detection during public health crises.

# 🇲🇾 Malaysia COVID-19: Risk & Resilience Analysis

### Business Intelligence Project | SQL (BigQuery) · Power BI

## Project Overview
This project analyzes Malaysia’s COVID-19 trajectory using Google BigQuery to produce a Risk-to-Resilience Business Intelligence report. The objective is to evaluate periods of healthcare strain and measure the impact of the National COVID-19 Immunisation Programme (PICK) on pandemic outcomes.

The project simulates a BI Resource Allocation Report designed to support healthcare decision-makers in:
- Identifying high-risk periods
- Anticipating healthcare system stress
- Informing vaccination and capacity planning strategies

## Executive Summary

Malaysia experienced its most severe COVID-19 case surge during the mid-2021 Delta wave, reaching record-high daily infection levels. However, despite extreme case volumes, case fatality rates (CFR) remained significantly lower compared to the early stages of the pandemic.

The analysis indicates that vaccination coverage, improved clinical response, and system preparedness contributed to increased healthcare resilience, reducing mortality risk even during peak system strain.

## Business Problem (Situation)
At the height of the pandemic, healthcare administrators faced urgent decisions regarding:
- ICU bed and workforce allocation
- Surge capacity planning
- Vaccine and booster prioritization

This project simulates how a Business Intelligence dashboard could be used to:
- Identify when the healthcare system was under the greatest strain
- Assess how outcomes evolved before and after national vaccination rollout
- Detect early warning signals for future public health emergencies

## Key Insights (Results)
### Case Trends & System Pressure
Malaysia’s daily COVID-19 cases peaked in August 2021, representing the period of maximum healthcare system pressure.

<img width="368" height="67" alt="Screenshot 2026-01-15 131640" src="https://github.com/user-attachments/assets/b32312f8-e9d2-4d00-a806-a6a2064effdb" />

- Total new cases by date:
<img width="1445" height="293" alt="Screenshot 2026-01-15 131146" src="https://github.com/user-attachments/assets/f96feee1-817b-4138-a982-33efadf096b1" />


### Case Fatality Rate (CFR) Evolution
CFR exhibited a sustained downward trend from mid-2020 into early-2021. Notably, during the Delta wave — despite record infection levels — CFR remained substantially lower than during the early pandemic phase.
- Temporal Trends in CFR
<img width="1455" height="292" alt="Screenshot 2026-01-15 131125" src="https://github.com/user-attachments/assets/c0d23df0-4290-4d4c-b578-11deafe79880" />
- This reflects increased healthcare resilience driven by vaccination uptake and improved treatment protocols.

### High Risk Period Identification
The analysis identifies specific high-risk windows where the healthcare system faced compounded stress. These flagged periods align closely with known ICU utilization surges during mid-2021, demonstrating how proxy indicators can be used for operational risk monitoring.
<img width="1449" height="445" alt="Screenshot 2026-01-15 164037" src="https://github.com/user-attachments/assets/2b1b05e3-5093-47a7-9742-afdd6ceefd88" />

- `Regional Benchmarking`: Malaysia’s peak COVID-19 vaccination coverage in 2021 exceeded Indonesia by approximately 250% and Thailand by over 400%, highlighting a significantly higher level of population protection. `(09_regional_comparison.sql)`.
<img width="1446" height="566" alt="Screenshot 2026-01-15 132852" src="https://github.com/user-attachments/assets/6dad1aba-0fc6-45e7-bbfe-f45e53553f49" />

### Impact of PICK: Pre vs Post Vaccination
A pre- and post-vaccination comparison shows:
- Lower average CFR post-PICK
- Improved outcomes despite higher case volumes
This provides quantitative evidence that Malaysia’s vaccination program materially improved pandemic resilience.
<img width="1439" height="453" alt="Screenshot 2026-01-15 164451" src="https://github.com/user-attachments/assets/638b1706-b437-4bae-a4d6-86ae93900668" />

### Infection-to-Death Lag Signal
A lag analysis comparing new cases to deaths occurring ~14 days later reveals a consistent delay between infection spikes and severe outcomes.
This lag represents a critical planning window for:
- ICU capacity scaling
- Workforce mobilization
- Emergency resource allocation

### Regional Benchmarking
Malaysia’s peak COVID-19 vaccination coverage in 2021 exceeded Indonesia by approximately 250% and Thailand by over 400%, highlighting a significantly higher level of population protection. `(09_regional_comparison.sql)`.
<img width="1446" height="566" alt="Screenshot 2026-01-15 132852" src="https://github.com/user-attachments/assets/6dad1aba-0fc6-45e7-bbfe-f45e53553f49" />

## Technical Implementation (Action)
### Data Architecture
- Built a modular SQL pipeline (13 scripts) in Google BigQuery
- Scripts cover:
  - Data validation and integrity checks
  - Rolling averages and cumulative metrics
  - Monthly and peak-period aggregation
  - High-risk period flagging
  - Pre vs Post vaccination comparison
  - Infection-to-death lag analysis
  - BI-ready data exports

### Advanced SQL Techniques
- Window Functions (AVG() OVER, LEAD())
- Safe arithmetic handling (SAFE_DIVIDE, NULLIF)
- Modular, reusable query design aligned with BI workflows

### BI Visualization
- SQL outputs connected directly to Power BI
- Dashboards designed for:
  - Trend monitoring
  - Risk period detection
  - Executive-level decision support

## Strategic Recommendations
Based on the analytical findings, the following actions are recommended:
- Healthcare Capacity Planning
  - Maintain a “Warm-Base” ICU capacity capable of scaling by ~20% within 14 days
  - This recommendation is derived from observed infection-to-death lag patterns

- Targeted Vaccination Strategy
  - Prioritize booster deployment in regions where the infection-to-death lag is shortest
  - Use lag-based indicators as early warning signals rather than relying solely on case counts

## Data Source & Limitations
- Data Source
  - Our World in Data (OWID) COVID-19 Dataset (2020–2021)

## Key Limitations
- Global Aggregation Bias
  - OWID aggregates multiple sources and may not reflect real-time national reporting nuances.

- Limited Granularity
  - Hospital-level and state-level metrics (ICU beds, admissions) are not available in this dataset.

- Testing Policy Effects
  - Changes in testing strategies over time affect reported case numbers.

## Future Enhancements
- Migrate SQL pipeline to Malaysia Ministry of Health (KKMNow) datasets
- Enable state-level and hospital-level analysis
- Integrate ICU utilization and admission metrics
