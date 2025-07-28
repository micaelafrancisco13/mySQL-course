USE sql_store;

-- Objective:
-- return all the products which has the columns: name, unit_price, and new_price

SELECT name,
       unit_price,
       (unit_price * 1.1) AS "new_price"
FROM products
