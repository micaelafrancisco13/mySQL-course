USE sql_store;

-- when you are comparing an attribute with a range of
-- values, you can use the BETWEEN operator

SELECT *
FROM customers
WHERE points BETWEEN 1000 AND 3000
-- line 8 can be re-written as WHERE points >= 1000 AND points <= 3000
