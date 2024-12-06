-- c) and d)

-- one approach is to create a new table with this content
-- and replace the old one (CREATE OR REPLACE TABLE AS ...)
SELECT
	salary_in_usd * 10.9 AS salary_sek_yearly,
	ROUND(salary_sek_yearly/12) AS salary_sek_monthly,
	*
FROM
	main.cleaned_salaries;


-- second approach -> add new cols 
SELECT
	salary_sek_monthly,
	salary_sek_yearly
FROM
	main.cleaned_salaries;

UPDATE main.cleaned_salaries
SET 
	salary_sek_yearly = salary_in_usd * 10.9,
	salary_sek_monthly = (salary_in_usd * 10.9)/12;