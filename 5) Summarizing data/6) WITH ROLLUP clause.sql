USE sql_invoicing;

-- the WITH ROLLUP clause calculates the summary
-- for each listed column group as well as the
-- entire result set
-- IMPORTANT: this clause is only available in
-- mySQL, it is not executable in other SQL clients

SELECT state,
       city,
       SUM(invoice_total) AS total_sales
FROM invoices I
         JOIN clients C
              USING (client_id)
GROUP BY state, city
WITH ROLLUP
-- summarizes each group

-- NOTE:
-- the WITH ROLLUP clause only applies to columns
-- that aggregate values
