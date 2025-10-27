-- 01_quick_sanity_check.sql
-- Purpose: Confirm columns available (date, new_cases, total_cases, population, etc.)
-- Dataset: Our World in Data - Covid-19 (owid_covid_data)
-- Author: Nawwarah
-- Date: October 2025

SELECT *
FROM `imperial-legacy-460710-q4.COVID19.owid_civid19` 
WHERE location = 'Malaysia'
LIMIT 10;
