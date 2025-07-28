SELECT *
FROM products
WHERE product_id NOT IN (SELECT DISTINCT product_id
                         FROM order_items);

-- the query above is equivalent to the query below

SELECT client_id, invoice_id
FROM clients
         LEFT JOIN invoices
                   USING (client_id)
WHERE invoice_id IS NULL;