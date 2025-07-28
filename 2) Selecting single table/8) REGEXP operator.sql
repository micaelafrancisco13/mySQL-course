USE sql_store;

SELECT *
FROM customers
WHERE last_name REGEXP 'field'
-- line 5 is identical to: WHERE last_name LIKE "%field%"
-- WHERE last_name REGEXP "^field" - last names that start with field
-- WHERE last_name REGEXP "field$" - last names that end with field
-- WHERE last_name REGEXP "field|mac|rose" last names that contain 1 of the 3 specified strings
-- WHERE last_name REGEXP "[gim]e" last names that contain E but before E, the last name must
-- contain at least one of the letters specified inside the bracket
-- IMPORTANT: combinations include "ge", "ie", or "me"
-- WHERE last_name REGEXP "[a-h]e" last names that contain E but before E, the last name must
-- contain at least one of the letters (a to h) specified inside the bracket

-- NOTES:
-- ^ represents the beginning string pattern
-- $ represents the end string pattern
-- | represents a multiple search pattern
