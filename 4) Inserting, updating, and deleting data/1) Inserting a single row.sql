USE sql_store;

-- Notes:
-- INSERT INTO clause specifies a table
-- the VALUE clause specifies the values to be passed to the specified columns

-- line 9 to 20 is identical to line 25 to 26:

INSERT INTO customers (first_name,
                       last_name,
                       birth_date,
                       address,
                       city,
                       state)
VALUES ('John',
        'Smith',
        '1990-01-01',
        'address',
        'city',
        'CA')

-- by default, the primary key has the auto-increment property
-- and the rest are optional, so DEFAULT or NULL values can be passed

-- INSERT INTO Customers
-- VALUES(DEFAULT, 'John', 'Smith', '1990-01-01', NULL, 'address', 'city', 'state', DEFAULT)
