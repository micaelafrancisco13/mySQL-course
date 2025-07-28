USE sql_invoicing;

-- let's say we want to group our data per state and city

SELECT C.state,
       C.city,
       SUM(invoice_total) AS total_sales
FROM invoices I
         JOIN clients C
              USING (client_id)
GROUP BY state, city

-- returns the total sales for each state and city combination
-- when GROUP BY clause is used, we get one record for each state and city combination
