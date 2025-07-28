-- subquery in the FROM clause

-- remember that all queries return a table
-- so we can use a subquery in the FROM clause
-- instead of referencing a table, we can use the result of the 
-- subquery for exercise 6
SELECT *
FROM (SELECT client_id,
             name,
             (SELECT SUM(invoice_total)
              FROM invoices
              WHERE client_id = c.client_id)           AS total_invoice,
             (SELECT AVG(invoice_total) FROM invoices) AS average_invoice,
             (SELECT total_invoice - average_invoice)  AS difference
      FROM clients c) AS sales_summary
WHERE total_invoice IS NOT NULL

-- whenever we use a subquery in the FROM clause, we must give 
-- it an alias

-- VIEWS can be used to simplify complex subqueries in the FROM 
-- clause