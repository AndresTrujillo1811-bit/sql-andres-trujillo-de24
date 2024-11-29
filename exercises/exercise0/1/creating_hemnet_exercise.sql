-- 1. a) ingest data 


-- 1. b) 
SELECT * FROM main.hemnet_data

-- testing percentage difference 
SELECT 6950000*0.07;


-- 1. c)
SELECT
    COUNT(*) AS total_rows
FROM 
    main.hemnet_data;
   
   
-- 1. d) 
DESC;

DESC TABLE hemnet_data;


-- 1. e)
SELECT
	address,
	commune,
	final_price
FROM
	main.hemnet_data
ORDER BY
	final_price DESC 
LIMIT 5;


-- 1. f)
SELECT
	address,
	commune,
	area,
	rooms,
	final_price
FROM
	main.hemnet_data
ORDER BY
	final_price DESC 
LIMIT 5;

-- explore rooms 
SELECT
	rooms,
	area,
	final_price
FROM
	main.hemnet_data
WHERE
	<= 3;


-- 1. g)
SELECT 
    MIN(final_price) AS min,
    MEDIAN(final_price) AS median,
    AVG(final_price) AS average,
    MAX(final_price) AS max
FROM
    main.hemnet_data;
   

-- 1. j) 
-- (delen/hela)*100
-- antagande 1 rad -> 1 hem
SELECT
	COUNT(*)/500*100 AS percent_over_10M 
FROM
	main.hemnet_data
WHERE
	final_price > 10000000

   
   
   
   
   



