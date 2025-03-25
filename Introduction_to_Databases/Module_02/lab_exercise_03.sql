-- create sql database named cm_devices
CREATE DATABASE IF NOT EXISTS cm_devices;

-- select the cm_devices database.
USE cm_devices;

CREATE TABLE IF NOT EXISTS address (
    CustomerID INT NOT NULL,
    Street VARCHAR(50),
    Postcode CHAR(6),
    TOWN VARCHAR(50) DEFAULT 'Harrow'
);

SHOW columns FROM address;

DROP TABLE address;

CREATE TABLE IF NOT EXISTS address (
    CustomerID INT NOT NULL,
    Street VARCHAR(50),
    Postcode CHAR(6) DEFAULT 'HA30AE',
    TOWN VARCHAR(50) DEFAULT 'Harrow'
);

SHOW columns FROM address;
SHOW TABLES;