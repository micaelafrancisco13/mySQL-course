USE sql_store;

SELECT *
FROM customers
ORDER BY first_name
-- sorted first names in ascending order
-- ORDER BY first_name DESC -- sorted first names in descending order
-- ORDER BY state, first_name -- sorted states, and within states, the first
-- names are also sorted

-- NOTES:
-- the expression used in ORDER BY clause does not have to be a column name,
-- it can be an alias or a mathematical expression
