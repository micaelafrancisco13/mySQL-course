USE sql_invoicing;

-- to delete a record from a table, use the DELETE statement
-- line 7 to 11 is simplified to: WHERE client_id = 2

DELETE
FROM invoices
WHERE client_id = (SELECT client_id
                   FROM clients
                   WHERE name = 'MyWorks')

-- IMPORTANT:
-- if a condition is not specified, all the records from that table
-- are going to be deleted
