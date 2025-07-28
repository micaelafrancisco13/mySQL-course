USE sql_store;

-- Objective:
-- get the orders that are not yet shipped

SELECT *
FROM orders
WHERE shipped_date IS NULL
