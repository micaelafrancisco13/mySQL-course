-- subqueries can also be used in the SELECT clause
SELECT invoice_id,
       invoice_total,
       (SELECT AVG(invoice_total)
        FROM invoices)                            as invoice_average,
       ((SELECT invoice_average) - invoice_total) as difference
FROM invoices
