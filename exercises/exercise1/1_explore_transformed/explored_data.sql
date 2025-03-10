-- explore transformed table exercise

-- a) Count number of Data engineers jobs. For simplicity just go for job_title Data Engineer.
SELECT COUNT(*) AS data_engineer_count FROM main.cleaned_salaries WHERE job_title = 'Data Engineer';

-- We get 3464 data engineers jobs as result 


-- b) Count number of unique job titles in total.
SELECT COUNT(DISTINCT job_title) AS unique_titles FROM main.cleaned_salaries;

-- We get 135 unique job titles



