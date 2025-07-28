USE sql_store;

SELECT *
FROM order_items oi -- "pi" and 'p' are aliases
         JOIN sql_inventory.products p -- prefixed
              ON oi.product_id = p.product_id

-- NOTE:
-- you must prefix the table that is not part of the current database
-- also, your query will be different depending on the current database
