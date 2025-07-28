USE sql_store;

-- to insert multiple rows, enclose the value(s)
-- inside a parenthesis followed by a comma and
-- the other set of value(s) for the following row(s)

INSERT INTO shippers(name)
VALUES ('Shipper1'),
       ('Shipper2'),
       ('Shipper3')
