USE sql_invoicing;

-- a function is a piece of code that can be reused
-- aggregate functions take a series of values and aggregate
-- them to produce a single value
-- some examples are the ff:
-- MAX(), MIN(), AVG(), SUM(), COUNT()
-- aggregate functions only operate on non-null values

-- for numeric values (line 11 to 20)
SELECT MAX(invoice_total)   AS highest_invoice_total,
       MIN(invoice_total)   AS lowest_invoice_total,
       SUM(invoice_total)   AS sum,
       AVG(invoice_total)   AS average,
       COUNT(invoice_total) AS number_of_invoices,
       COUNT(payment_date)  AS number_of_payments,
       -- to get the total number of records, irrespective of null values:
       COUNT(*)             AS total_number_of_records
FROM invoices

-- MAX(payment_date) AS latest -- returns the latest date a payment is done
