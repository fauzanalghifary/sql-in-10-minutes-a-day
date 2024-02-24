# % wildcard => represents zero, one, or multiple characters

SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE 'Fish%';

SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE '%bean bag%';

SELECT prod_name
FROM Products
WHERE prod_name LIKE 'F%y';

SELECT cust_email
FROM Customers
WHERE cust_email LIKE '%'; -- only returns rows where cust_email is not NULL

# _ wildcard => represents a single character

SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE '__ inch teddy bear';

SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE '% inch teddy bear';

# [] wildcard => represents any single character within the brackets

SELECT cust_contact
FROM Customers
WHERE cust_contact LIKE '[JM]%' -- NOT SUPPORTED IN MYSQL
ORDER BY cust_contact;

SELECT cust_contact
FROM Customers
WHERE cust_contact LIKE '[^JM]%' -- NOT SUPPORTED IN MYSQL
ORDER BY cust_contact;