-- 03_daily_new_cases.sql
-- Purpose: Extract daily new cases
-- Dataset: Our World in Data- Covid-19 (owid_covid_data)
-- Author: Nawwarah
-- Date: October 2025

SELECT 
  date,
  new_cases AS daily_new_cases
FROM imperial-legacy-460710-q4.COVID19.owid_civid19
WHERE location = 'Malaysia'
ORDER BY date;
