SELECT prod_name
FROM Products;

SELECT prod_id, prod_name, prod_price
FROM Products;

SELECT *
FROM Products;

# Retrieving Distinct Rows

SELECT vend_id, prod_price
FROM Products;

SELECT DISTINCT vend_id
FROM Products;

SELECT DISTINCT vend_id, prod_price FROM Products;

SELECT vend_id, prod_price FROM Products;

# Limiting Results

SELECT prod_name
FROM Products
LIMIT 5;

SELECT prod_name
FROM Products
LIMIT 5
OFFSET 5;

# Comment

SELECT prod_name   -- this is a comment
FROM Products;

/* SELECT prod_name, vend_id
FROM Products; */
SELECT prod_name
FROM Products;