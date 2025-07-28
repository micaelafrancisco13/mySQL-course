-- find customers who have ordered lettuce (id = 3)
-- and select the customer_id, first_name, and last_name columns

-- using subquery: 
SELECT c.customer_id, c.first_name, c.last_name
FROM customers c
WHERE c.customer_id IN (SELECT o.customer_id
                        FROM order_items oi
                                 JOIN orders o USING (order_id)
                        WHERE oi.product_id = 3)

-- using join: 
SELECT DISTINCT c.customer_id, c.first_name, c.last_name
FROM customers c
         JOIN orders o USING (customer_id)
         JOIN order_items oi USING (order_id)
WHERE oi.product_id = 3