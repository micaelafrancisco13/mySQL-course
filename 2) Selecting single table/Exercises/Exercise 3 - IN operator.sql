USE sql_store;

-- Objectives:
-- return products with qty in stock equal to 49, 38, 72

SELECT *
FROM products
WHERE quantity_in_stock IN (49, 38, 72)
