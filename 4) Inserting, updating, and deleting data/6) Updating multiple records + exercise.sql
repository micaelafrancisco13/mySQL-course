USE sql_store;

-- let's say we want to update records where the client_id
-- is equal to 3 or 4: WHERE client_id IN (3, 4)
-- IMPORTANT: mySQL does not allow updating multiple records,
-- however, in other mySQL's client or in your application code,
-- you are not going to get an error

-- Objective:
-- give 50 extra points for those customers that were born
-- before 1990

UPDATE customers
SET points = (points + 50)
WHERE birth_date < '1990-01-01'
