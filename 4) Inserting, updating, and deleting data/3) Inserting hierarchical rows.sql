USE sql_store;

-- this topic covers the parent-child relationship
-- parent table = Orders table
-- child table = Order_Items table
-- hence, one row in the Orders table can have one or
-- more children inside the Order_Items table
-- IMPORTANT: this exhibits the associative entity
-- one order can have multiple products, and a product
-- can belong to multiple orders

-- now, how to insert an order and all its items?
-- to insert data in multiple tables (hierarchical rows)

INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2019-01-02', 1);

INSERT INTO order_items
VALUES (LAST_INSERT_ID(), 1, 1, 2.95),
       (LAST_INSERT_ID(), 2, 1, 3.95)

-- the function LAST_INSERT_ID() returns the last ID
-- produced by the first statement above (line 15 to 16)
-- line 18 did not specify columns because all the columns
-- are to be given values
