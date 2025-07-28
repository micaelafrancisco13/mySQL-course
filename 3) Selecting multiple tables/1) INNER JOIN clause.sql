USE sql_store;

-- joining 2 tables with a query that returns the columns
-- order_id, customer_id, fist_name, and last_name

SELECT order_id,
       customers.customer_id,
       first_name,
       last_name
FROM orders
-- INNER JOIN and JOIN are identical
         JOIN customers
              ON orders.customer_id = customers.customer_id

-- NOTES:
-- for ON keyword, on what basis should the two tables be combined?
-- in this case, the customer's primary key
-- JOIN keyword specifies the table that must be jointed together with the
-- table specified from the FROM clause
