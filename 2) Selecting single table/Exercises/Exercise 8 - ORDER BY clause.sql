USE sql_store;

-- Objective:
-- write a query that returns this table
-- order_id 	product_id 	quantity 	unit_price 	total_price
-- 	  2				1			2		9.10		18.20
-- 	  2				4			4		1.66		6.64
-- 	  2				6			2		2.94		5.88

-- we only have items for order id 2, and we sort these items based on the
-- total price (unit price * quantity) of each item
-- sort the total price in desc order

SELECT *, (unit_price * quantity) AS "total_price"
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC
