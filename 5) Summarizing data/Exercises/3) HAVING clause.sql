USE sql_store;

-- Objective:
-- get the customers located in Virginia
-- who have spent more than $100

SELECT C.customer_id,
       C.first_name,
       C.last_name,
       SUM(OI.quantity * OI.unit_price) AS total_order_cost
FROM Orders O
         JOIN Customers C
              USING (customer_id)
         JOIN Order_Items OI
              USING (order_id)
WHERE C.state = "VA"
GROUP BY C.customer_id,
         C.first_name,
         C.last_name
HAVING total_order_cost > 100

-- you used HAVING to filter records by the column used in the
-- aggregate function, otherwise, you use WHERE to filter
-- records by the column not used in the aggregate function
