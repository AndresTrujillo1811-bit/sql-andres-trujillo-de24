
-- returns all the products and prices
SELECT * FROM synthetic.sales_jan
UNION
SELECT * FROM  synthetic.sales_feb;

-- note only one monitor, returns the table without the duplicated product name and price.
SELECT product_name, amount FROM synthetic.sales_jan
UNION
SELECT product_name, amount FROM synthetic.sales_feb;


-- note two monitors, returns the table 
SELECT product_name, amount FROM synthetic.sales_jan
UNION ALL
SELECT product_name, amount FROM synthetic.sales_feb;


-- note only row of monitor and 300 exist in both result sets 
SELECT product_name, amount FROM synthetic.sales_jan
INTERSECT
SELECT product_name, amount FROM synthetic.sales_feb;

SELECT product_name, amount FROM synthetic.sales_jan
EXCEPT
SELECT product_name, amount FROM synthetic.sales_feb;

-- empty set because different dates in monitor
SELECT * FROM synthetic.sales_jan
INTERSECT
SELECT * FROM synthetic.sales_feb;