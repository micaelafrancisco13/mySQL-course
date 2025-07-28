USE sql_store;

-- Return all customers, whether they have orders or not.
-- For those who do have orders, return all their orders,
-- regardless of whether the orders have a shipper or not.

SELECT C.customer_id,
       C.first_name,
       O.order_id,
       S.name AS shipper
FROM customers C
         LEFT JOIN orders O
                   ON C.customer_id = O.customer_id
         LEFT JOIN shippers S
                   ON O.shipper_id = S.shipper_id
