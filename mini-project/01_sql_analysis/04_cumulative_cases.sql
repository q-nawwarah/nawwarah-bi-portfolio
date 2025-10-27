-- 04_cumulative_cases.sql
-- Purpose: Build cumulative trend to validate total vs daily
-- Dataset: Our World in Data- Covid-19 (owid_covid_data)
-- Author: Nawwarah
-- Date: October 2025

SELECT 
  date,
  SUM(new_cases) OVER (ORDER BY date) AS cumulative_cases
FROM imperial-legacy-460710-q4.COVID19.owid_civid19
WHERE location = 'Malaysia'
