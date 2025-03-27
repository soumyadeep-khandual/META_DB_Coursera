-- create sql database named cm_devices
CREATE DATABASE IF NOT EXISTS cm_devices;

-- select the cm_devices database.
USE cm_devices;

-- create customers table task1
CREATE TABLE IF NOT EXISTS customers (
    Username CHAR(9),
    FullName VARCHAR(100),
    Email VARCHAR(255)
);

-- create customers table task2
CREATE TABLE IF NOT EXISTS feedback (
    FeedbackID CHAR(8),
    FeedbackType VARCHAR(100),
    FeedbackComment VARCHAR(500)
);

-- show the all table.
SHOW TABLES;

-- show columns of tables we created
SHOW COLUMNS FROM customers;
SHOW COLUMNS FROM feedback;