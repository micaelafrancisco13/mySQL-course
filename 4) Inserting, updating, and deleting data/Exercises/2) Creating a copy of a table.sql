USE sql_invoicing;

-- Objective:
-- create a table copy of Invoices table where all the
-- columns are the same, except for the ff:
-- 1) the client_id must be replaced by the column client_name
-- or client
-- 2) copy only the invoices that do have a payment

CREATE TABLE invoices_archived AS
SELECT I.invoice_id,
       I.number,
       C.name AS client,
       I.invoice_total,
       I.payment_total,
       I.invoice_date,
       I.due_date,
       I.payment_date
FROM invoices I
         JOIN clients C
              USING (client_id)
WHERE payment_date IS NOT NULL
