USE sql_store;

-- instead of combining multiple conditions using the OR operator,
-- we can use the IN operator

SELECT *
FROM customers
WHERE state IN ('VA', 'FL', 'GA')
-- line 8 is the same as WHERE (state = "VA") OR (state = "FL") OR (state = "GA")
-- returns customers residing either in Virginia, Florida, or Georgia
