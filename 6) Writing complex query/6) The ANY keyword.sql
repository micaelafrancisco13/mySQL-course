-- select clients with at least 2 invoices

SELECT *
FROM clients
WHERE client_id IN (SELECT client_id
                    FROM invoices
                    GROUP BY client_id
                    HAVING COUNT(invoice_total) >= 2)

-- another way of writing the same query is:
SELECT *
FROM clients
WHERE client_id = ANY (SELECT client_id
                       FROM invoices
                       GROUP BY client_id
                       HAVING COUNT(invoice_total) >= 2)