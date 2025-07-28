USE sql_store;

-- Objectives:
-- We want to determine the quantity ordered for each product in every order item.

-- IMPORTANT: output also the products who have never been ordered

SELECT P.product_id,
       P.name,
       OI.order_id,
       OI.quantity
FROM products P
         LEFT JOIN order_items OI
                   ON P.product_id = OI.product_id
