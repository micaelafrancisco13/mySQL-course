USE sql_store;

-- we use the UNION operator to combine multiple rows

-- the first SELECT statement returns a single row, the order with id = 1,
-- and the second SELECT statement returns all the rest of the rows
SELECT order_id,
       order_date,
       'Active' AS status
FROM orders
WHERE order_date >= '2019-01-01'
UNION
-- the UNION operator combines the two SELECT statements' results into one result set
SELECT order_id,
       order_date,
       'Archived' AS status
FROM orders
WHERE order_date < '2019-01-01'

-- NOTES:
-- 1) in the example above, only one table is used, but you can
-- also combine records from multiple queries against different
-- tables
-- 2) the no. of columns each SELECT query returns should be identical
-- otherwise, a result error is thrown
