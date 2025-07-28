USE sql_store;

-- Objective:
-- to those customers who have more than 3000 points,
-- update their comment column and set it as 'Gold customer'

UPDATE orders
SET comments = 'Gold customer'
WHERE customer_id IN (SELECT customer_id
                      FROM customers
                      WHERE points > 3000)
