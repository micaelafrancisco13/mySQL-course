USE sql_store;

-- the SELECT DISTINCT statement returns only different
-- values in the result set, meaning, no duplications
SELECT DISTINCT state
FROM customers
  