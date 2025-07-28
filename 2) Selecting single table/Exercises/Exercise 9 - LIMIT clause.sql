USE sql_store;

-- Objective:
-- get the top 3 loyal customers, they are those whose points are highest among the rest

SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3
