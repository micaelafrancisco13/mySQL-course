USE sql_invoicing;

-- to update a single row, use the UPDATE statement
-- update the payment_total and payment_date of invoice_id = 3

UPDATE invoices
SET payment_total = (invoice_total * .5), -- we use comma to add more columns to update
    payment_date  = due_date
WHERE invoice_id = 3
