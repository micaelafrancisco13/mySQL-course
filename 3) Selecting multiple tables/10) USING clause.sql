USE sql_store;

-- NOTE:
-- if the column name is exactly the same across the two tables
-- from the ON clause, we can replace the ON clause with the USING
-- clause

SELECT O.order_id,
       C.first_name AS customer,
       S.shipper_id AS shipper
FROM orders O
         JOIN customers C
    -- ON O.customer_id = C.customer_id
              USING (customer_id)
         LEFT JOIN shippers S
                   USING (shipper_id)

-- for tables with composite primary keys:
--  		ON OI.order_id = OIN.order_id
--  		AND OI.product_id = OIN.product_id
-- line 19 and 20 can be simplified as:
-- 			USING (order_id, product_id)
