USE sql_invoicing;

-- write a query that returns the following columns
-- date, invoice_id, amount, client name, payment method

-- we want to see the general and common payment details

SELECT P.date,
       P.invoice_id,
       P.amount,
       C.name,
       Pm.name AS payment_method
FROM payments P
         JOIN clients C
              ON P.client_id = C.client_id
         JOIN payment_methods Pm
              ON P.payment_method = Pm.payment_method_id
