USE sql_store;

SELECT *
FROM customers
WHERE points > 3000
-- WHERE state = "VA" returns customers who reside in Virginia
-- WHERE state != "va" returns customers not residing in Virginia
-- "!-" is equivalent to "<>"

-- WHERE birth_date > "1990-01-01" returns customers born after the January 1, 1990
-- WHERE order_date >= "2019-01-01"
