/* PROJECT: Malaysia COVID-19 Resilience Analysis
TOOLS: Google BigQuery (Standard SQL)
AUTHOR: Nawwarah Yusof
DESCRIPTION: This script covers data cleaning, wave analysis, and vaccination impact.
*/

-- =================================================================
-- TABLE OF CONTENTS
-- 1. Quick sanity check
-- 2. Date range
-- 3. Daily new cases
-- 4. Cumulative cases
-- 5. Missing data check
-- 6. Monthly summary
-- 7. Peak cases
-- 8. Death rate
-- 9. Regional comparison
-- 10. High risk periods
-- 11. Pre-post vaccination
-- 12. Cases to death lag
-- 13. Export clean data
-- =================================================================

-- 01_quick_sanity_check.sql
-- Purpose: Inspect dataset structure, validate columns, and check a few sample rows.
SELECT *
FROM `practice-project-2025-9898.covid_19.covid19_data`
WHERE location = 'Malaysia'
LIMIT 10;

-- 02_date_range.sql
SELECT
  MIN(date) AS start_date,
  MAX(date) AS end_date,
  COUNT(*) AS TotalRows
FROM
  `practice-project-2025-9898.covid_19.covid19_data`
WHERE location = 'Malaysia';

-- 03_daily_new_cases.sql
SELECT
  date,
  new_cases AS daily_new_cases,
  AVG(new_cases) OVER (ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS SevenDayMovingAverage
FROM
  `practice-project-2025-9898.covid_19.covid19_data`
WHERE location = 'Malaysia'
ORDER BY date;

-- 04_cumulative_cases.sql
SELECT
  date,
  SUM(new_cases) OVER (ORDER BY date) AS cumulative_cases
FROM
  `practice-project-2025-9898.covid_19.covid19_data`
WHERE location = 'Malaysia';

-- 05_missing_data_check.sql
SELECT
  COUNTIF(new_cases IS NULL OR new_cases < 0) AS invalid_cases,
  COUNTIF(new_deaths IS NULL OR new_deaths < 0) AS invalid_deaths
FROM
  `practice-project-2025-9898.covid_19.covid19_data`
WHERE location = 'Malaysia';

-- 06_monthly_summary.sql
SELECT
  EXTRACT(YEAR FROM date) AS year,
  EXTRACT(MONTH FROM date) AS month,
  SUM(new_cases) AS total_new_cases,
  SUM(new_deaths) AS total_new_deaths
FROM
  `practice-project-2025-9898.covid_19.covid19_data`
WHERE location = 'Malaysia'
GROUP BY year, month
ORDER BY year, month;

-- 07_peak_cases.sql
SELECT
  date,
  MAX(new_cases) AS highest_daily_case
FROM
  `practice-project-2025-9898.covid_19.covid19_data`
WHERE location = 'Malaysia'
GROUP BY date
ORDER BY highest_daily_case DESC
LIMIT 1;

-- 08_death_rate.sql
SELECT
    date, 
    total_cases, 
    total_deaths, 
    (CAST(total_deaths AS FLOAT64) / NULLIF(total_cases, 0)) * 100 AS CaseFatalityRate
FROM
  `practice-project-2025-9898.covid_19.covid19_data`
WHERE location = 'Malaysia'
ORDER BY date;

-- 09_regional_comparison.sql
SELECT 
    location, 
    MAX(total_cases_per_million) AS TotalCasesPerMillion,
    MAX(people_fully_vaccinated_per_hundred) AS VaccinationRate
FROM
  `practice-project-2025-9898.covid_19.covid19_data`
WHERE location IN ('Malaysia', 'Singapore', 'Indonesia', 'Thailand')
GROUP BY location
ORDER BY VaccinationRate DESC;

-- 10_high_risk_periods.sql
SELECT
  date,
  new_cases,
  new_deaths,
  AVG(new_cases) OVER (ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS cases_7dma,
  SAFE_DIVIDE(total_deaths, total_cases) * 100 AS cfr,
  CASE
    WHEN new_cases > 20000 AND SAFE_DIVIDE(total_deaths, total_cases) * 100 > 1.0
    THEN 'High Risk'
    ELSE 'Normal'
  END AS risk_level
FROM `practice-project-2025-9898.covid_19.covid19_data`
WHERE location = 'Malaysia'
ORDER BY date;

-- 11_pre_post_vaccination.sql
SELECT
  CASE
    WHEN date < '2021-02-24' THEN 'Pre-PICK'
    ELSE 'Post-PICK'
  END AS period,
  AVG(SAFE_DIVIDE(total_deaths, total_cases) * 100) AS avg_cfr,
  AVG(new_cases) AS avg_daily_cases
FROM `practice-project-2025-9898.covid_19.covid19_data`
WHERE location = 'Malaysia'
GROUP BY period;

-- 12_cases_to_death_lag.sql
SELECT
  date,
  new_cases,
  LEAD(new_deaths, 14) OVER (ORDER BY date) AS deaths_14_days_later
FROM `practice-project-2025-9898.covid_19.covid19_data`
WHERE location = 'Malaysia'
ORDER BY date;

-- 13_export_clean_data.sql
-- Purpose: Prepare cleaned and aggregated data for Power BI visualization
SELECT
  date,
  new_cases AS daily_new_cases,
  total_cases AS cumulative_cases,
  new_deaths AS daily_deaths,
  SAFE_DIVIDE(total_deaths, total_cases) * 100 AS death_rate_percent
FROM
  `practice-project-2025-9898.covid_19.covid19_data`
WHERE location = 'Malaysia'
AND new_cases IS NOT NULL
ORDER BY date;
