

-- a) Select all the exercises in this course --

-- returns all the exercises
SELECT * FROM main.sql_course;


-- b) Select all the lectures in this course --

-- returns all the lectures
SELECT * FROM main.sql_course WHERE content_type = 'exercise';


-- c) Select all records for week 48 --

-- returns all records for week 48
SELECT * FROM main.sql_course WHERE content_type = 'lecture';


-- d) Select all records for week 47-49 --

-- returns all records for week 48
SELECT * FROM main.sql_course WHERE week = 48;


-- e) How many lectures are in the table? --

-- returns the amount of lectures between week 47 and 49
SELECT * FROM main.sql_course WHERE week BETWEEN 47 AND 49;


-- f) How many other content are there? -- 

-- returns the amount of content. 
SELECT COUNT(content_type) from main.sql_course WHERE content_type = 'lecture';


-- g) Which are the unique content types in this table? --

-- returns the only content type 
SELECT COUNT(content_type) from main.sql_course WHERE NOT content_type = 'lecture';


-- h) Delete the row with content 02_setup_duckdb and add it again. --  
SELECT COUNT(DISTINCT content_type) from main.sql_course;


-- i) You see that 02_setup_duckdb comes in the end of your table, even though the week is 46. 
-- Now make a query where you sort the weeks in ascending order.
SELECT DISTINCT content_type FROM main.sql_course;