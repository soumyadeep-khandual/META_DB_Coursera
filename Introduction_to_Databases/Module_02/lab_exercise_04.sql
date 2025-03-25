-- create sql database named cm_devices
CREATE DATABASE IF NOT EXISTS cm_devices;

-- select the cm_devices database.
USE cm_devices;

CREATE TABLE IF NOT EXISTS invoice (
    CustomerName VARCHAR(50),
    OrderDate DATE,
    ProductQuantity INT,
    TotalPrice DECIMAL
);

CREATE TABLE IF NOT EXISTS contact (
    AccountNumber INT,
    PhoneNumber INT,
    Email VARCHAR(255)
);

SHOW COLUMNS FROM invoice;
SHOW COLUMNS FROM contact;