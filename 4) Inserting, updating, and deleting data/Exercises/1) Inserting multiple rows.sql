USE sql_store;

-- Objective:
-- insert three rows in the Products table

INSERT INTO products(name, quantity_in_stock, unit_price)
VALUES ('Product1', 10, 10),
       ('Product2', 20, 15),
       ('Product3', 30, 20)
