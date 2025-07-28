-- produce this report with the ff. columns
-- client_id   name   total_sales   avg_sales   difference
SELECT client_id,
       name,
       SUM(invoice_total)                              AS total_sales,
       (SELECT AVG(invoice_total)
        FROM invoices)                                 AS average_invoice,
       (SUM(invoice_total) - (SELECT average_invoice)) AS difference
FROM invoices
         RIGHT JOIN clients
                    USING (client_id)
GROUP BY client_id, name

-- Mosh's solution
SELECT client_id,
       name,
       (SELECT SUM(invoice_total)
        FROM invoices
        WHERE client_id = c.client_id)           AS total_invoice,
       (SELECT AVG(invoice_total) FROM invoices) AS average_invoice,
       (SELECT total_invoice - average_invoice)  AS difference
FROM clients c