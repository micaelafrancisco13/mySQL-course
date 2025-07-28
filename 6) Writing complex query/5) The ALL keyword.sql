-- select invoices larger than the max invoice of client 3

SELECT *
FROM invoices
WHERE invoice_total > (SELECT MAX(invoice_total)
                       FROM invoices
                       WHERE client_id = 3)

-- another way of writing the same query is:
SELECT *
FROM invoices
WHERE invoice_total > ALL (SELECT invoice_total
                           FROM invoices
                           WHERE client_id = 3)

-- explanation:
-- the subquery returns a list of invoice_total for client_id = 3
-- the ALL keyword compares the invoice_total of the main query 
-- with all the invoice_total of the subquery
-- ex. invoice_total = 157.78 is compared with the following: 

-- 152.21, 133.87, 126.15, 167.29, and 126.38
-- 157.78 is returned IF it's greater than all the values above

-- wherever you have the ALL keyword, you can rewrite that query 
-- using the MAX() function