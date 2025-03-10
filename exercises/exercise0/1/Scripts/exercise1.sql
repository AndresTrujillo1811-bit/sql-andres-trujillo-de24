-- hemnet data exercises

-- b) Make a wildcard selection to checkout the data
SELECT * FROM main.hemnet_data;

-- returns the whole hemnet data 


-- c) Find out how many rows there are in the table
SELECT COUNT(*) AS count_rows FROM main.hemnet_data;

-- returns 500 rows as result 


-- d) Describe the table that you have ingested to see the columns and data types.
DESC TABLE hemnet_data;


-- e) Find out the 5 most expensive homes sold.
SELECT address, commune, final_price FROM main.hemnet_data ORDER BY final_price DESC LIMIT 5;

-- returns the 5 most expensive homes sold, as Sångmöstigen 3 in Stockholm have the highest price with 31,100,000 kr


-- f) Find out the 5 cheapest homes sold.
SELECT address, commune, final_price FROM main.hemnet_data ORDER by final_price LIMIT 5; 

-- returns the cheapest homes sold, as Småbrukarvägen 46C in Spånga have the lowest price with 1,490,000 kr 


-- g) Find out statistics on minimum, mean, median and maximum prices of homes sold.
SELECT MIN(final_price) AS min, MEDIAN(final_price) AS median, AVG(final_price) AS average, MAX(final_price) AS max FROM main.hemnet_data;

-- returns the minimun, median, average and maxiumun prices of homes sold. 


--  Find out statistics on minimum, mean, median and maximum prices of price per area.
SELECT MIN(price_per_area) AS min, MEDIAN(price_per_area) AS median, MAX(price_per_area) AS max FROM main.hemnet_data;

-- same result on g), but with the price per area. 


-- i) How many unique communes are represented in the dataset.
SELECT COUNT(DISTINCT commune) AS unique_communes FROM main.hemnet_data;

-- returns 178 unique communes as result


-- j) How many percentage of homes cost more than 10 million?
SELECT COUNT(*)/500*100 FROM main.hemnet_data WHERE final_price > 10000000

-- returns a 36.4% of homes 


