USE sql_store;

-- joining two tables with a composite primary key

SELECT *
FROM orders o,
     customers c
WHERE o.customer_id = c.customer_id
-- FROM Orders O
-- JOIN Customers C
-- 	ON O.customer_id = C.customer_id
-- line 6 to 8 is identical to line 9 to 11
-- line 6 to 8 is also called implicit join syntax

-- NOTE:
-- Implicit syntax is not recommended to use
-- because once the WHERE clause is not executed,
-- cross-join can happen
