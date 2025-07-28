USE sql_store;

-- Objective:
-- We want to see the order details with the ff. info:
-- order id, order date, customer who ordered the item,
-- shipper of the order, order status

-- IMPORTANT: also returns orders without any shipper

SELECT O.order_id,
       O.order_date,
       C.first_name AS customer,
       S.name       AS shipper,
       OS.name      AS status
FROM orders O
         JOIN customers C
              ON O.customer_id = C.customer_id
         LEFT JOIN shippers S
                   ON O.shipper_id = S.shipper_id
         JOIN order_statuses OS
              ON O.status = OS.order_status_id
