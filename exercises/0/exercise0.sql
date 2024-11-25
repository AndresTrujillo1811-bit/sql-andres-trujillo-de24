

-- a) --
SELECT * FROM main.sql_course;

-- b) --
SELECT * FROM main.sql_course WHERE content_type = 'exercise';

-- c) --
SELECT * FROM main.sql_course WHERE content_type = 'lecture';

-- d) --
SELECT * FROM main.sql_course WHERE week = 48;

-- e) --
SELECT * FROM main.sql_course WHERE week BETWEEN 47 AND 49;

-- f) -- 
SELECT COUNT(content_type) from main.sql_course WHERE content_type = 'lecture';

-- g) --
SELECT COUNT(content_type) from main.sql_course WHERE NOT content_type = 'lecture';

-- h) -- 
SELECT COUNT(DISTINCT content_type) from main.sql_course;

-- i)
SELECT DISTINCT content_type FROM main.sql_course;