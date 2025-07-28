USE sql_store;

-- null means the absence of a value

SELECT *
FROM customers
WHERE phone IS NULL -- returns customers without a phone number
