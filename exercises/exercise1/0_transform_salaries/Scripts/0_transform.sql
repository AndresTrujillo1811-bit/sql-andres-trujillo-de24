-- Data transformations exercises -- 

-- a) Transform employment type column based on this table
SELECT * FROM main.data_jobs;

SELECT DISTINCT employment_type FROM main.data_jobs;

SELECT
	CASE 
		WHEN employment_type = 'CT' THEN 'Contract'
		WHEN employment_type = 'FL' THEN 'Freelance'
		WHEN employment_type = 'PT' THEN 'Part time'
		WHEN employment_type = 'FT' THEN 'Full time'
		ELSE employment_type 
	END 
	AS employment_type
FROM
	main.data_jobs;

-- transformations in cleaned_salaries

UPDATE main.cleaned_salaries 
SET 
   employment_type = CASE
   	    WHEN employment_type = 'CT' THEN 'Contract'
		WHEN employment_type = 'FL' THEN 'Freelance'
		WHEN employment_type = 'PT' THEN 'Part time'
		WHEN employment_type = 'FT' THEN 'Full time'
		ELSE employment_type 
	END
FROM
	main.data_jobs;
   
SELECT DISTINCT employment_type FROM main.cleaned_salaries;

SELECT * FROM main.cleaned_salaries;


-- as result we get the updated table in cleaned salaries


-- b) Do similar for company size, but you have to figure out what the abbreviations could stand for.
SELECT * FROM main.data_jobs;

SELECT DISTINCT company_size FROM main.data_jobs;

SELECT
	CASE 
		WHEN company_size = 'S' THEN 'Small'
		WHEN company_size = 'M' THEN 'Medium'
		WHEN company_size = 'L' THEN 'Large'
		ELSE company_size 
	END 
	AS company_size 
FROM
	main.data_jobs;

-- transformations in cleaned_salaries

UPDATE main.cleaned_salaries 
SET 
   company_size = CASE
   	    WHEN company_size = 'S' THEN 'Small'
		WHEN company_size = 'M' THEN 'Medium'
		WHEN company_size = 'L' THEN 'Large'
		ELSE company_size 
	END
FROM
	main.data_jobs;
   
SELECT DISTINCT company_size FROM main.cleaned_salaries;

SELECT * FROM main.cleaned_salaries;


-- as result we get the company sizes in small, medium and large. 


-- c) and d) Make a salary column with Swedish currency for yearly and monthly salary.
SELECT salary_in_usd * 10.8 AS salary_sek_yearly, ROUND(salary_sek_yearly/12) AS salary_sek_monthly, * FROM main.cleaned_salaries;


-- we get as result the salary in sek yearly and monthly


-- e)  Make a salary_level column with the following categories: low, medium, high, insanely_high. Decide your thresholds for each category. 
-- Make it base on the monthly salary in SEK.
-- low: 53,000 kr
-- medium: 150,000 kr 
-- high: 200,000 kr 
-- insanely high: 255,000 kr


SELECT
	salary_sek_monthly,
	CASE 
		WHEN salary_sek_monthly < 53000 THEN 'low'
		WHEN salary_sek_monthly < 150000 THEN 'medium'
		WHEN salary_sek_monthly < 200000 THEN 'high'
		ELSE 'insanely high' 
	END 
	AS salary_level
FROM
	main.cleaned_salaries;

UPDATE main.cleaned_salaries
SET 
	salary_level = 	CASE 
		WHEN salary_sek_monthly < 53000 THEN 'low'
		WHEN salary_sek_monthly < 150000 THEN 'medium'
		WHEN salary_sek_monthly < 200000 THEN 'high'
		ELSE 'insanely high' 
	END;
	

SELECT
	salary_sek_monthly,
	salary_level
FROM
	main.cleaned_salaries;

-- as result we get a salary level column with categories, low, medium, high and insanely high in sek and monthly 


-- f) Choose the following columns to include in your table: experience_level, employment_type, job_title, salary_annual_sek, salary_monthly_sek, 
-- remote_ratio, company_size, salary_level
CREATE OR REPLACE TABLE main.cleaned_salaries AS (
SELECT
	experience_level,
	employment_type,
	job_title,
	salary_sek_yearly,
	salary_sek_monthly,
	remote_ratio,
	company_size,
	salary_level
FROM
	main.cleaned_salaries);

SELECT * FROM main.cleaned_salaries;


   




   







