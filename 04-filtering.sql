SELECT prod_name, prod_price
FROM Products
WHERE prod_price = 3.49;

SELECT prod_name, prod_price
FROM Products
WHERE prod_price < 10;

SELECT vend_id, prod_name
FROM Products
WHERE vend_id <> 'DLL01';

SELECT vend_id, prod_name
FROM Products
WHERE vend_id != 'DLL01';

SELECT prod_name, prod_price
FROM Products
WHERE prod_price BETWEEN 5 AND 10; -- inclusive

SELECT cust_name
FROM Customers
WHERE cust_email IS NULL;

SELECT prod_name
FROM Products
WHERE prod_price IS NULL;

