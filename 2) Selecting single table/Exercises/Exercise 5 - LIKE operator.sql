USE sql_store;

-- OBJECTIVE:
-- 1) return customers whose address contains the word TRAIL or AVENUE
-- 2) return customers whose phone numbers end with 9

-- for number 1
SELECT *
FROM customers
WHERE address LIKE '%trail%'
   OR address LIKE '%avenue%';

-- for number 2
SELECT *
FROM customers
WHERE phone LIKE '%9'
