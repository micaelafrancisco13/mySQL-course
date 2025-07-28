USE sql_invoicing;

-- what if we want to see the total sales per client?
-- we need to group data by one or more columns

SELECT client_id,
       SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY client_id
-- the total sales are accumulated per client,
-- meaning; it is grouped by client_id
-- BEST PRACTICE: all the columns in the SELECT clause must
-- be included in the GROUP BY clause
