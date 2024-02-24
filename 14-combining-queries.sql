# UNION

SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state IN ('IL','IN','MI');

SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_name = 'Fun4All';

SELECT cust_name, cust_contact, cust_email, cust_state
FROM Customers
WHERE cust_state IN ('IL','IN','MI')
UNION
SELECT cust_name, cust_contact, cust_email, cust_state
FROM Customers
WHERE cust_name = 'Fun4All';

SELECT cust_name, cust_contact, cust_email, cust_state
FROM Customers
WHERE cust_state IN ('IL','IN','MI')
   OR cust_name = 'Fun4All';

# UNION ALL -- do not remove duplicates

SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state IN ('IL','IN','MI')
UNION ALL
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_name = 'Fun4All';

# SORTING UNION RESULTS

SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state IN ('IL','IN','MI')
UNION
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_name = 'Fun4All'
ORDER BY cust_name, cust_contact;