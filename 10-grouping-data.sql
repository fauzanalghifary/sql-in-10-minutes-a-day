# GROUP BY

SELECT *
FROM Products
ORDER BY vend_id;

SELECT DISTINCT vend_id, AVG(prod_price)
FROM Products
ORDER BY vend_id;

SELECT vend_id, MAX(prod_price)
FROM Products
GROUP BY vend_id
ORDER BY vend_id;

SELECT vend_id, COUNT(*) AS num_prods
FROM Products
GROUP BY vend_id;

# HAVING

SELECT cust_id, COUNT(*) AS orders
FROM Orders
GROUP BY cust_id
HAVING COUNT(*) >= 2;

SELECT vend_id, COUNT(*) AS num_prods
FROM Products
GROUP BY vend_id
HAVING COUNT(*) >= 2;

SELECT vend_id, COUNT(*) AS num_prods_yang_di_atas_empat_dollar
FROM Products
WHERE prod_price >= 4
GROUP BY vend_id
HAVING COUNT(*) >= 2;

# GROUPING AND SORTING

SELECT order_num, COUNT(*) AS items
FROM OrderItems
GROUP BY order_num
HAVING COUNT(*) >= 3;


SELECT order_num, COUNT(*) AS items
FROM OrderItems
GROUP BY order_num
HAVING COUNT(*) >= 3
ORDER BY items, order_num;


/*
SELECT
FROM
JOIN ... ON ...
WHERE
GROUP BY
HAVING
ORDER BY
LIMIT
OFFSET
*/