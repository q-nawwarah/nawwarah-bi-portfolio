-- 08_death_rate.sql
-- Purpose:Compute mortality rate
-- Dataset: Our World in Data- Covid-19 (owid_covid_data)
-- Author: Nawwarah
-- Date: October 2025

SELECT 
  date,
  SAFE_DIVIDE(total_deaths, total_cases) * 100 AS death_rate_percent
FROM imperial-legacy-460710-q4.COVID19.owid_civid19
WHERE location = 'Malaysia'
AND total_cases IS NOT NULL
ORDER BY date;
