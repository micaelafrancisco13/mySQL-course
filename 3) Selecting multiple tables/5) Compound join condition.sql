USE sql_store;

-- joining two tables in which the other table
-- has a composite primary key

-- the order_items table has a composite primary key:
-- order_id & product_id

-- the order_item_notes references this composite primary key

SELECT *
FROM order_items oi
         JOIN order_item_notes oin
              ON oi.order_id = oin.order_id
                  AND oi.product_id = oin.product_id
