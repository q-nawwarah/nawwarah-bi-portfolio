-- 10_export_clean_data.sql
-- Purpose: Prepare cleaned and aggregated data for Power BI visualization
-- Dataset: Our World in Data- Covid-19 (owid_covid_data)
-- Author: Nawwarah
-- Date: October 2025

SELECT 
  date,
  new_cases AS daily_new_cases,
  total_cases AS cumulative_cases,
  new_deaths AS daily_deaths,
  SAFE_DIVIDE(total_deaths, total_cases) * 100 AS death_rate_percent
FROM imperial-legacy-460710-q4.COVID19.owid_civid19
WHERE location = 'Malaysia'
AND new_cases IS NOT NULL
ORDER BY date;
