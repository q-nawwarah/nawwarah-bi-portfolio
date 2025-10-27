-- 05_missing_data_check.sql
-- Purpose: Identify null or negative values that need cleaning
-- Dataset: Our World in Data- Covid-19 (owid_covid_data)
-- Author: Nawwarah
-- Date: October 2025

SELECT 
  COUNTIF(new_cases IS NULL OR new_cases < 0) AS invalid_cases,
  COUNTIF(new_deaths IS NULL OR new_deaths < 0) AS invalid_deaths
FROM imperial-legacy-460710-q4.COVID19.owid_civid19
WHERE location = 'Malaysia'
