# AVG

SELECT prod_price AS avg_price
FROM Products;

SELECT AVG(prod_price) AS avg_price
FROM Products;

SELECT AVG(P.prod_price) AS avg_price
FROM Products as P
WHERE P.vend_id = 'DLL01';

# COUNT

SELECT COUNT(*) AS num_cust -- count all rows
FROM Customers;

SELECT COUNT(cust_email) AS num_cust -- count only rows where cust_email is not null
FROM Customers;

# MAX

SELECT *
FROM Products;

SELECT MAX(prod_price) AS max_price
FROM Products;

# MIN

SELECT MIN(prod_price) AS min_price
FROM Products;

# SUM

SELECT *
FROM OrderItems;

SELECT SUM(quantity) AS items_ordered
FROM OrderItems
WHERE order_num = 20005;

SELECT SUM(item_price*quantity) AS total_price
FROM OrderItems
WHERE order_num = 20005;

# using DISTINCT

SELECT prod_price
FROM Products
WHERE vend_id = 'DLL01';

SELECT AVG(DISTINCT prod_price) AS avg_price
FROM Products
WHERE vend_id = 'DLL01';

# combining aggregate functions

SELECT COUNT(*) AS num_items,
       MIN(prod_price) AS price_min,
       MAX(prod_price) AS price_max,
       AVG(prod_price) AS price_avg
FROM Products;