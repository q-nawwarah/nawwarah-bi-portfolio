-- 02_data_range.sql
-- Purpose: Check the earliest dan latest available date for Malaysia
-- Dataset: Our World in Data- Covid-19 (owid_covid_data)
-- Author: Nawwarah
-- Date: October 2025
  
SELECT
  MIN(date) AS start_date,
  MAX(date) AS end_date
FROM `imperial-legacy-460710-q4.COVID19.owid_civid19` 
WHERE location = 'Malaysia'
