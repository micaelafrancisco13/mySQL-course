USE sql_store;

-- SELECT clause specifies specific columns
-- but when used with the symbol *, all columns are specified
-- the FROM clause specifies which table must be selected
SELECT *
FROM customers -- shows the entire "customers" table
-- WHERE customer_id = 7
ORDER BY first_name
