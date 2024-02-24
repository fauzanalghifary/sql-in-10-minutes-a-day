# USING TABLE ALIASES

SELECT RTRIM(vend_name) + ' (' + RTRIM(vend_country) + ')'
        AS vend_title
FROM Vendors
ORDER BY vend_name;

SELECT cust_name, cust_contact
FROM Customers AS C, Orders AS O, OrderItems AS OI
WHERE C.cust_id = O.cust_id
 AND OI.order_num = O.order_num
 AND prod_id = 'RGAN01';

# SELF JOINS

SELECT cust_id, cust_name, cust_contact
FROM Customers
WHERE cust_name = (SELECT cust_name
                   FROM Customers
                   WHERE cust_contact = 'Jim Jones');


SELECT c1.cust_id, c1.cust_name, c1.cust_contact
FROM Customers AS c1, Customers AS c2
WHERE c1.cust_name = c2.cust_name
   AND c2.cust_contact = 'Jim Jones';

# NATURAL JOINS

SELECT C.*, O.order_num, O.order_date,
       OI.prod_id, OI.quantity, OI.item_price
FROM Customers AS C, Orders AS O,
     OrderItems AS OI
WHERE C.cust_id = O.cust_id
 AND OI.order_num = O.order_num
 AND prod_id = 'RGAN01';

/*
every inner join you have created thus far is actually a natural join,
and you will probably never need an inner join that is not a natural join.
*/

# example of inner join that is not a natural join

SELECT Customers.cust_id, Orders.*
FROM Customers
INNER JOIN Orders
ON Customers.cust_id = Orders.cust_id;

# OUTER JOINS

SELECT Customers.cust_id, Orders.order_num
FROM Customers
 INNER JOIN Orders ON Customers.cust_id = Orders.cust_id;

SELECT Customers.cust_id, Orders.order_num
FROM Customers
 LEFT OUTER JOIN Orders ON Customers.cust_id = Orders.cust_id;

SELECT Customers.cust_id, Orders.order_num
FROM Customers
 RIGHT OUTER JOIN Orders ON Customers.cust_id = Orders.cust_id;

# SELECT Customers.cust_id, Orders.order_num
# FROM Customers
#  FULL OUTER JOIN Orders ON Customers.cust_id = Orders.cust_id;

# JOINS WITH AGGREGATE FUNCTIONS

SELECT Customers.cust_id,
       COUNT(Orders.order_num) AS num_ord
FROM Customers
 INNER JOIN Orders ON Customers.cust_id = Orders.cust_id
GROUP BY Customers.cust_id;


SELECT Customers.cust_id,
       COUNT(Orders.order_num) AS num_ord
FROM Customers
 LEFT OUTER JOIN Orders ON Customers.cust_id = Orders.cust_id
GROUP BY Customers.cust_id;