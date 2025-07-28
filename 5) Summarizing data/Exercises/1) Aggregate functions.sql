USE sql_invoicing;

-- Objective:
-- write a query against the Invoices table that returns the ff:
-- date_range, total_sales, total_payments, what_we_expect (total_sales - total_payments)
-- note that the date_range must have 3 records:
-- first half of 2019, second half of 2019, entire 2019

SELECT 'First half of 2019'               AS date_range,
       SUM(invoice_total)                 AS total_sales,
       SUM(payment_total)                 AS total_payments,
       SUM(invoice_total - payment_total) AS what_we_expect
FROM invoices
WHERE invoice_date
          BETWEEN '2019-01-01' AND '2019-06-30'
UNION
SELECT 'Second half of 2019'              AS date_range,
       SUM(invoice_total)                 AS total_sales,
       SUM(payment_total)                 AS total_payments,
       SUM(invoice_total - payment_total) AS what_we_expect
FROM invoices
WHERE invoice_date
          BETWEEN '2019-07-01' AND '2019-12-31'
UNION
SELECT 'Entire 2019'                      AS date_range,
       SUM(invoice_total)                 AS total_sales,
       SUM(payment_total)                 AS total_payments,
       SUM(invoice_total - payment_total) AS what_we_expect
FROM invoices
WHERE invoice_date
          BETWEEN '2019-01-01' AND '2019-12-31'
