CREATE DATABASE IF NOT EXISTS bookshop;

USE bookshop;

CREATE TABLE IF NOT EXISTS customers (
    CustomerID INT,
    CustomerName VARCHAR(100),
    CustomerAddress VARCHAR(200)
);

INSERT INTO customers (CustomerID, CustomerName, CustomerAddress)
VALUES (1, "jack", "Some random place");

SELECT * FROM customers;

INSERT INTO customers (CustomerID, CustomerName, CustomerAddress)
VALUES (2, "james", "Some other random place");

SELECT * FROM customers;
