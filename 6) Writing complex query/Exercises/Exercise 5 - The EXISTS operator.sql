-- find all the products that have never been ordered
SELECT *
FROM products p
WHERE NOT EXISTS (SELECT product_id
                  FROM order_items oi
                  WHERE oi.product_id = p.product_id)

-- using a subquery
SELECT *
FROM products
WHERE product_id NOT IN (SELECT DISTINCT product_id
                         FROM order_items)