USE sql_store;

SELECT last_name,  -- column
       first_name, -- column
       points,     -- column
       (points + 10) * 100 AS "discount factor"
-- "AS", short for "alias" is used to change a column's name
-- the expression used in ALIAS clause can be a column name,
-- a mathematical expression or even a number literal
FROM customers -- table
