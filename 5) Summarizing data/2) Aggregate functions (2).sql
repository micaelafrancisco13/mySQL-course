USE sql_invoicing;

SELECT MAX(invoice_total)       AS maximum,
       MIN(invoice_total)       AS minimum,
       AVG(invoice_total)       AS average,
       SUM(invoice_total * 1.1) AS sum, -- values can also be mathematical expressions
       COUNT(*)                 AS total_number_of_records
FROM invoices
WHERE invoice_date >= '2019-07-01'
-- returns only the invoices for the year's second half

-- by default, aggregate functions take duplicate values; should duplicates
-- be excluded, you have to use the DISTINCT keyword:
-- COUNT(DISTINCT client_id) AS total-number_of_records
-- note that the client_id for line 14 is a foreign key that allows duplicates

-- on line 6, the expression is first evaluated before it's summated
