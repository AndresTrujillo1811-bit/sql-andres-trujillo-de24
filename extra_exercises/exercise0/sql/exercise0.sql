-- sql course database - exercises 

-- a) Select all the exercises in this course
SELECT * FROM main.course_content WHERE content_type = 'exercise';

-- returns all the exercises from the table. 


-- b) Select all the lectures in this course
SELECT * FROM main.course_content WHERE content_type = 'lecture';

-- returns the lectures from the table


-- c) Select all records for week 48
SELECT * FROM main.course_content WHERE week = 48;

-- returns the records from week 48


-- d) Select all records for week 47-49
SELECT * FROM main.course_content WHERE week BETWEEN 47 AND 49;

-- same as week 48, but only with 47 and 49


-- e) How many lectures are in the table?
SELECT COUNT(*) AS lectures FROM main.course_content WHERE content_type = 0;

-- returns 3 lectures as result


-- f) How many other content are there?
SELECT COUNT(*) AS other_content FROM main.course_content WHERE content_type != 'lecture';

-- returns 2 other contents as result


-- g) Which are the unique content types in this table?
SELECT DISTINCT content_type FROM main.course_content;

-- returns exam and exercise as the unique content types in this table. 


-- h) Delete the row with content 02_setup_duckdb and add it again.
DELETE FROM main.course_content WHERE content = '02_setup_duckdb'; 

INSERT INTO main.course_content (content, week, content_type) VALUES
    ('02_setup_duckdb', 46, 'lecture');
   
   
-- i) You see that 02_setup_duckdb comes in the end of your table, even though the week is 46. Now make a query where you sort the weeks in ascending order.
SELECT * FROM main.course_content ORDER BY week ASC;

-- returns the weeks, content & content type in ascending order
   































