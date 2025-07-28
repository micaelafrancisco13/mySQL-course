USE sql_store;

-- Objective:
-- return a table with the ff. columns
-- customer_id, first_name, points, badge

-- if points < 2000 -> bronze
SELECT customer_id,
       first_name AS customer,
       points,
       'Bronze'   AS badge
FROM customers
WHERE points < 2000

UNION -- if points >= 2000 and points <= 3000 -> silver
SELECT customer_id,
       first_name AS customer,
       points,
       'Silver'   AS badge
FROM customers
WHERE points BETWEEN 2000 AND 3000

UNION -- if points > 3000 -> gold
SELECT customer_id,
       first_name AS customer,
       points,
       'Gold'     AS badge
FROM customers
WHERE points > 3000

ORDER BY points DESC;
