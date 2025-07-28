-- select clients that have an invoice
-- this can be done by using a subquery or by using JOIN
-- or by using the EXISTS

-- subquery
SELET *
FROM clients
WHERE client_id IN (
    SELECT DISTINCT client_id
    FROM invoices
)

-- the EXISTS operator
SELECT *
FROM clients c
WHERE EXISTS (SELECT client_id
              FROM invoices i
              WHERE i.client_id = c.client_id)

-- BEST PRACTICE:
-- if the subquery using IN produces a large result set, it's 
-- more efficient to use the EXISTS operator as it doesn't 
-- return a result set to the outer query