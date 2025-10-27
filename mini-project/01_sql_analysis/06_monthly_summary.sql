-- 06_monthly_summary.sql
-- Purpose: Aggregate new cases and deaths by month
-- Dataset: Our World in Data- Covid-19 (owid_covid_data)
-- Author: Nawwarah
-- Date: October 2025

SELECT 
  EXTRACT(YEAR FROM date) AS year,
  EXTRACT(MONTH FROM date) AS month,
  SUM(new_cases) AS Total_new_cases,
  SUM(new_deaths) AS Total_new_deaths
FROM imperial-legacy-460710-q4.COVID19.owid_civid19
WHERE location = 'Malaysia'
GROUP BY year, month
ORDER BY year, month;
