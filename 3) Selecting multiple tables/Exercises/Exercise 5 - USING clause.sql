USE sql_invoicing;

-- Objective:
-- produce the ff. columns using the USING clause
-- date, client, amount, and payment method

-- we want to see the general and common payment details:
-- payment date, client that made the payment, payment amount,
-- and payment method

SELECT P.date,
       C.name  AS client,
       P.amount,
       PM.name AS payment_method
FROM payments P
         JOIN clients C
              USING (client_id)
         JOIN payment_methods PM
              ON P.payment_method = PM.payment_method_id
