USE sql_store;

-- this is the default join, the inner join
-- this returns the customers who placed orders

-- SELECT
-- 	   C.customer_id,
--     C.first_name,
--     O.order_id
-- FROM Orders O
-- JOIN Customers C
-- 	ON O.customer_id = C.customer_id

-- use outer join if you want to return customers
-- whether they have placed an order or not

-- this returns all the customers whether they have an order or not
SELECT C.customer_id,
       C.first_name,
       O.order_id
FROM customers C
         LEFT JOIN orders O
             ON C.customer_id = O.customer_id

-- RIGHT OUTER JOIN and RIGHT JOIN are identical
-- OUTER and INNER keywords are optional

-- NOTE:
-- there are 2 kinds of OUTER JOIN: LEFT or RIGHT OUTER JOIN
-- when LEFT JOIN is used, all the records are returned from
-- the LEFT table whether the condition from the ON clause is true or not
-- the case is similar for the RIGHT JOIN, but returns records from
-- the RIGHT table
