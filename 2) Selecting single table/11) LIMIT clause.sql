USE sql_store;

-- LIMIT clause is used to limit the number of records returned from a query

SELECT *
FROM customers
LIMIT 3
-- returns the first three customers
-- if the number passed > number of records, the query returns all
-- the number of records

-- supplying an offset:
-- LIMIT 6, 3 -- skips the first six customers and returns the following three customers
-- page 1: 1 to 3
-- page 2: 4 to 6
-- page 3: 7 to 9