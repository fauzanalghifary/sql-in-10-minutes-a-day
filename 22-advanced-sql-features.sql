# PRIMARY KEYS

CREATE TABLE Vendors
(
    vend_id        CHAR(10)    NOT NULL PRIMARY KEY,
    vend_name      CHAR(50)    NOT NULL,
    vend_address   CHAR(50)    NULL,
    vend_city      CHAR(50)    NULL,
    vend_state     CHAR(5)     NULL,
    vend_zip       CHAR(10)    NULL,
    vend_country   CHAR(50)    NULL
);

ALTER TABLE Vendors
ADD CONSTRAINT PRIMARY KEY (vend_id);

# FOREIGN KEYS

CREATE TABLE Orders
(
    order_num    INTEGER    NOT NULL PRIMARY KEY,
    order_date   DATETIME   NOT NULL,
    cust_id      CHAR(10)   NOT NULL REFERENCES Customers(cust_id)
);

ALTER TABLE Orders
ADD CONSTRAINT
FOREIGN KEY (cust_id) REFERENCES Customers (cust_id);

# UNIQUE CONSTRAINTS


# CHECK CONSTRAINTS

CREATE TABLE OrderItems
(
    order_num     INTEGER    NOT NULL,
    order_item    INTEGER    NOT NULL,
    prod_id       CHAR(10)   NOT NULL,
    quantity      INTEGER    NOT NULL CHECK (quantity > 0),
    item_price    INTEGER      NOT NULL
);

# ADD CONSTRAINT CHECK (gender LIKE '[MF]');


# INDEXES

CREATE INDEX prod_name_ind
ON Products (prod_name);

# TRIGGERS (POSTGRESQL)

# CREATE TRIGGER customer_state
# AFTER INSERT OR UPDATE
# FOR EACH ROW
# BEGIN
# UPDATE Customers
# SET cust_state = Upper(cust_state)
# WHERE Customers.cust_id = :OLD.cust_id
# END;