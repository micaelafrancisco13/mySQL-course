USE sql_store;

-- Objective:
-- perform a cross-join between the tables: shippers and products.
-- one for implicit syntax, and one for the explicit syntax

-- SELECT
-- 	  S.name AS shipper,
--    P.name AS product
-- FROM Products P, Shippers S

-- explicit syntax:
SELECT P.name AS product, S.name AS shipper
FROM products P
         CROSS JOIN shippers S
