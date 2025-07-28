USE sql_store;

-- Objective:

-- 1) return customers whose first names contain ELKA or AMBUR
SELECT *
FROM customers
WHERE first_name REGEXP 'elka|ambur';

-- 2) return customers whose last names end with EY or ON
SELECT *
FROM customers
WHERE last_name REGEXP 'ey$|on$';

-- 3) return customers whose last names start with MY or contain the string SE
SELECT *
FROM customers
WHERE last_name REGEXP 'se|^my';

-- 4) return customers whose last names contain B followed by R or U
SELECT *
FROM customers
WHERE last_name REGEXP 'b[ru]';
