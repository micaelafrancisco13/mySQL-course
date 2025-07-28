USE sql_invoicing;

-- Objective:
-- return a table with the ff. columns:
-- payment_method, total
-- HINT: Payments table is used

SELECT PM.name     AS payment_method,
       SUM(amount) AS total
FROM Payments P
         JOIN Payment_Methods PM
              ON P.payment_method = PM.payment_method_id
GROUP BY PM.name
WITH ROLLUP
-- BEST PRACTICE for line 14:
-- use the actual column's name and not the alias
