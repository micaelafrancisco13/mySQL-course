USE sql_invoicing;

-- what if you only want to return the total
-- sales which are greater than 500?

SELECT client_id,
       SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY client_id
HAVING total_sales > 500
-- line 10 returns only the total_sales per client
-- that is greater than 500

-- NOTE:
-- with the WHERE clause, we can filter data before the records
-- are grouped, and with the HAVING clause, we filter data after
-- the records are grouped
-- with the WHERE clause, we can select any column whether they are
-- included on the clause or not, in contrast, the column you
-- used with the HAVING clause has to be part of the column for
-- the SELECT clause

-- the following are invalid:
-- 1) total_sales have not yet been grouped, so it
--    is an unknown column
-- WHERE total_sales > 500
-- GROUP BY client_id

-- 2) an example of a syntax error
-- GROUP BY client_id
-- WHERE total_sales > 500
