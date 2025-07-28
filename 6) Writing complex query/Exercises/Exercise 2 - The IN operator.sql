-- select all the clients who don't have invoices

SELECT client_id
FROM clients
WHERE client_id NOT IN (SELECT DISTINCT client_id
                        FROM invoices);