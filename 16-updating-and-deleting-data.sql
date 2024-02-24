# UPDATING DATA

UPDATE Customers
SET cust_email = 'kim@thetoystore.com'
WHERE cust_id = 1000000005;

UPDATE Customers
SET cust_contact = 'Sam Roberts',
    cust_email = 'sam@toyland.com'
WHERE cust_id = 1000000006;

UPDATE Customers
SET cust_email = NULL
WHERE cust_id = 1000000005;

# DELETING DATA

DELETE FROM Customers
WHERE cust_id = 1000000006;