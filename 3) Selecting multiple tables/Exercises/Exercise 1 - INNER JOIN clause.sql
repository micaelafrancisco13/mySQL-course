USE sql_store;

-- Objective:
-- write a query that returns the following columns
-- order_id, product_id, name, quantity, unit_price
-- HINT: join the two tables, order_items and products together

-- we want to see the product name of the order item

SELECT oi.order_id,
       oi.product_id,
       p.name,
       oi.quantity,
       oi.unit_price
FROM order_items oi
         JOIN products p
              ON oi.product_id = p.product_id
