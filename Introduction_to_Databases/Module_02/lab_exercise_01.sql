-- create sql database named cm_devices
CREATE DATABASE IF NOT EXISTS cm_devices;

-- select the cm_devices database.
USE cm_devices;

-- create table as per task 2
CREATE TABLE IF NOT EXISTS devices (
    Device_ID INT,
    Device_Name VARCHAR(50),
    Price DECIMAL
);

-- create table as per task 3 (optional)
CREATE TABLE IF NOT EXISTS stock (
    Device_ID INT,
    Quantity INT,
    Cost Decimal
);

-- show the all table.
SHOW TABLES;

-- show columns of tables we created
SHOW COLUMNS FROM devices;
SHOW COLUMNS FROM stock;