USE sql_store;

-- Objective:
-- Get all the orders placed this year (assume the year is 2019)

SELECT *
FROM orders
WHERE order_date >= '2019-01-01'
