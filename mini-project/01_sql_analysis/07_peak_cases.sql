--07_peak_cases.sql
-- Purpose:Identify peak day and value (KPI card)
-- Dataset: Our World in Data- Covid-19 (owid_covid_data)
-- Author: Nawwarah
-- Date: October 2025

SELECT 
  date,
  MAX(new_cases) AS highest_daily_case
FROM imperial-legacy-460710-q4.COVID19.owid_civid19
WHERE location = 'Malaysia'
GROUP BY date 
ORDER BY highest_daily_case DESC
LIMIT 1;
