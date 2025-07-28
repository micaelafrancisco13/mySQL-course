USE sql_store;

-- join multiple tables where the ff. tables are used
-- Orders, Customers, Order_statuses and the ff. columns are returned
-- order_id, order_date, first_name, last_name, status

SELECT o.order_id,
       o.order_date,
       CONCAT(c.first_name, ' ', c.last_name) AS customer,
       os.name AS status
FROM orders o
         JOIN customers c
              ON o.customer_id = c.customer_id
         JOIN order_statuses os
              ON o.status = os.order_status_id

-- BEST PRACTICE:
-- prefix the selected column as many various tables are joined
