### Note: THIS MAY BE DIFFERENT ON EACH DBMS
### https://www.w3schools.com/mysql/mysql_ref_functions.asp

# Text Manipulation Functions

SELECT vend_name, UPPER(vend_name) AS vend_name_upcase
FROM Vendors
ORDER BY vend_name;

SELECT cust_name, cust_contact
FROM Customers
WHERE cust_contact = 'Michael Green';

SELECT cust_name, cust_contact
FROM Customers
WHERE SOUNDEX(cust_contact) = SOUNDEX('Michael Green');

# Date and Time Manipulation Functions (MySQL)

SELECT order_num, order_date
FROM Orders
WHERE YEAR(order_date) = 2020;

SELECT order_num, order_date, MONTHNAME(order_date)
FROM Orders
WHERE MONTH(order_date) BETWEEN 2 AND 6;

# Numeric Manipulation Functions