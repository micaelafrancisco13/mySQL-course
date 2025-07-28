USE sql_store;

SELECT *
FROM customers
WHERE last_name LIKE 'b%'
-- last names that start with B
-- WHERE last_name LIKE "brush%" -- last names that start with Brush
-- WHERE last_name LIKE "%b%" -- last names that contain letter B
-- WHERE last_name LIKE "%y" -- last names that end with Y
-- WHERE last_name LIKE "_____y" -- last names with 6 chars and end with Y
-- WHERE last_name LIKE "b_____y" -- last names with 6 chars that start with B and end with Y

-- NOTES:
-- % represents any number of characters
-- _ represents a single character
