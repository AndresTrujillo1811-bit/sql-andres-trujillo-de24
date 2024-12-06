SELECT * FROM main.data_jobs;

-- EN --> Entry level
-- MI --> Mid level
-- SE --> Senior
-- EX --> Expert


SELECT 
    CASE -- goes through  conditions and returns a value when the first condition is met (like an if-then-else statement)
	   WHEN experience_level = 'SE' THEN 'Senior' 
	   WHEN experience_level = 'MI' THEN 'Mid Level'
	   WHEN experience_level = 'EX' Then 'Expert'
    END AS experience_level, --  used to mark the end of an SQL transaction.
    * EXCLUDE (experience_level)
FROM 
    main.data_jobs;
   
-- have I transformed my data?
SELECT * FROM main.data_jobs;     


UPDATE -- to persist the changes use UPDATE
     main.data_jobs
SET 
    experience_level = CASE 
	     WHEN experience_level = 'SE' THEN 'Senior' 
	     WHEN experience_level = 'MI' THEN 'Mid Level'
	     WHEN experience_level = 'EX' Then 'Expert'
	     WHEN experience_level = 'EN' THEN 'Entry Level'
    END;
   




