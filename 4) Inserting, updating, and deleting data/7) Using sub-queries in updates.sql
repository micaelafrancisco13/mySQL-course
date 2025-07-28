USE sql_invoicing;

-- using sub-queries in performing update operation
-- line 09 to 12 is simplified to: WHERE client_id = 2

UPDATE invoices
SET payment_total = (invoice_total * .5),
    payment_date  = due_date
WHERE client_id = (SELECT client_id
                   FROM clients
                   WHERE name = 'MyWorks')

-- what if the sub-query returns multiple values?
-- line 16 to 19 is equivalent to: WHERE client_id IN (1, 3)

-- WHERE client_id IN (SELECT client_id
--                     FROM Clients
--                     WHERE state IN ('CA', 'NY'))

-- the IN operator allows you to specify multiple values in a WHERE clause
-- the IN operator is shorthand for multiple OR conditions

-- IMPORTANT:
-- before executing your UPDATE statement, run your sub-query to see
-- what records you are going to update so that you do not accidentally
-- update the records that should not be updated