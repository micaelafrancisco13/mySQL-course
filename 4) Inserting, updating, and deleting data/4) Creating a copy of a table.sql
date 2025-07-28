USE sql_store;

-- let's say we want to create a copy of Orders table and
-- put all the data into the Orders_Archived table
-- to copy data from one table to another, use the syntax
-- CREATE TABLE table_name AS

CREATE TABLE orders_archived AS
SELECT *
FROM orders
-- this line is also called as "sub-query"

-- for line 9:
-- select every column of Orders table and set those columns as the columns
-- of Orders_Archived table
-- a sub-query is a SELECT statement that is part of another SQL statement
-- a sub-query can also be used in an INSERT statement (line 17 to 20)

-- INSERT INTO Orders_Archived
-- SELECT *
-- FROM Orders
-- WHERE order_date < "2019-01-01"
