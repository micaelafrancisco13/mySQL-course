USE sql_store;

-- OBJECTIVE:
-- return customers born between January 1, 1990 and January 1, 2000

SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'
