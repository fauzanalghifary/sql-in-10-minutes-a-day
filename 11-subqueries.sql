# FILTERING BY SUBQUERY

SELECT order_num
FROM OrderItems
WHERE prod_id = 'RGAN01';

SELECT cust_id
FROM Orders
WHERE order_num IN (20007,20008);

SELECT cust_id
FROM Orders
WHERE order_num IN (SELECT order_num
                    FROM OrderItems
                    WHERE prod_id = 'RGAN01');


SELECT cust_name, cust_contact
FROM Customers
WHERE cust_id IN (1000000004,1000000005);

SELECT cust_name, cust_contact
FROM Customers
WHERE cust_id IN (SELECT cust_id
                  FROM Orders
                  WHERE order_num IN (SELECT order_num
                                      FROM OrderItems
                                      WHERE prod_id = 'RGAN01'));


# USING SUBQUERIES AS CALCULATED FIELDS

SELECT COUNT(*) AS orders
FROM Orders
WHERE cust_id = 1000000001;

SELECT cust_name,
       cust_state,
       (SELECT COUNT(*)
        FROM Orders
        WHERE Orders.cust_id = Customers.cust_id) AS orders
FROM Customers
ORDER BY cust_name;