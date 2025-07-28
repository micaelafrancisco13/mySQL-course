-- select all the products that are more expensive than Lettuce or id = 3

SELECT *
FROM products
WHERE unit_price > (SELECT unit_price
                    FROM products
                    WHERE id = 3);

-- this subquery returns a single row
