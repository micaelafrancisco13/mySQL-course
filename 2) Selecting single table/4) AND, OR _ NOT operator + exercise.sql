USE sql_store;

-- Notes:
-- When AND operator is used, both the conditions must be true

-- For OR operator, at least one of the condition is true

-- NOT operator negates a condition statement, for instance,
-- NOT (birth_date > "1990-01-01" OR points > 1000) is
-- equivalent to (birth_date <= "1990-01-01" AND points <= 1000)

-- Objective:
-- from the order_items table, get the items for order #6
-- where the total price > 30 
-- total price = unit price * qty

SELECT *
FROM order_items
WHERE order_id = 6
  AND (unit_price * quantity) > 30
