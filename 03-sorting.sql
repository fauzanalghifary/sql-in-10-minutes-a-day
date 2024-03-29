# SORTING

SELECT prod_name
FROM Products
ORDER BY prod_name;

SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY prod_price, prod_name;

SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY 2, 3;

# SORTING DIRECTION

SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY prod_price DESC;

SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY prod_price DESC, prod_name;