-- 09_regional_comparison.sql
-- Purpose:Compare MALAYSIA vs neighboring countries (eg. Singapore, Indonesia)
-- Dataset: Our World in Data- Covid-19 (owid_covid_data)
-- Author: Nawwarah
-- Date: October 2025

SELECT 
  location,
  SUM(new_cases) AS total_cases
FROM imperial-legacy-460710-q4.COVID19.owid_civid19
WHERE location IN ('Malaysia','Singapore', 'Indonesia', 'Thailand')
GROUP BY location
ORDER BY total_cases DESC;
