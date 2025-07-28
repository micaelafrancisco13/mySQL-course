USE sql_invoicing;

-- Objective:
-- return a table with the ff. columns:
-- date, payment_method, total_payments
-- IMPORTANT: total_payments is grouped by the 2 previous columns

SELECT P.date,
       PM.name     AS payment_method,
       SUM(amount) AS total_payments
FROM payments P
         JOIN payment_methods PM
              ON P.payment_method = PM.payment_method_id
GROUP BY date, payment_method
ORDER BY date
