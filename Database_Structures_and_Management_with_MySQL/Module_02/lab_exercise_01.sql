CREATE DATABASE IF NOT EXISTS Lucky_Shrub;
USE Lucky_Shrub;
CREATE TABLE IF NOT EXISTS Orders (
    OrderID INT NOT NULL PRIMARY KEY,
    ClientID VARCHAR(10),
    ProductID VARCHAR(10),
    Quantity INT,
    Cost DECIMAL(6,2)
);

INSERT INTO Orders (OrderID, ClientID, ProductID, Quantity, Cost) VALUES 
(1, "Cl1", "P1", 10, 500), 
(2, "Cl2", "P2", 5, 100), 
(3, "Cl3", "P3", 20, 800), 
(4, "Cl4", "P4", 15, 150), 
(5, "Cl3", "P3", 10, 450), 
(6, "Cl2", "P2", 5, 800), 
(7, "Cl1", "P4", 22, 1200), 
(8, "Cl1", "P1", 15, 150);


-- Task 1: Write a SQL REPLACE statement that inserts two new orders with the following details:

REPLACE INTO Orders (OrderID, ClientID, ProductID, Quantity, Cost) VALUES
(9, "Cl1", "P1", 10, 5000),
(10, "Cl2", "P2", 5, 100);


-- Task 2 solution: Lucky Shrub have noticed that the cost of order number 9 is $5000. 
-- This is a mistake. The order should cost $500. You must help them to change it to $500 by writing a relevant REPLACE statement. 

REPLACE INTO Orders (OrderID, ClientID, ProductID, Quantity, Cost) VALUES
(9, "Cl1", "P1", 10, 500);
