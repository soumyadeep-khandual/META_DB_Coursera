CREATE DATABASE IF NOT EXISTS little_lemon;

USE little_lemon;

CREATE TABLE
    Starters (
        StarterName VARCHAR(100) NOT NULL PRIMARY KEY,
        Cost Decimal(3, 2),
        StarterType VARCHAR(100) DEFAULT 'Mediterranean'
    );

-- Task 1: Use the REPLACE statement to insert a new data record with the following details. 
-- The ‘StarterName’ = Cheese bread
-- The ‘Cost’ = 9.50 and 
-- The ‘StarterType’ = Indian 
REPLACE INTO Starters (StarterName, Cost, StarterType) VALUES ("Cheese bread ", 9.50, "Indian");

-- Task 2: Use the REPLACE statement to change the cost of the Cheese bread from $9.50 to $9.75.
REPLACE INTO Starters (StarterName, Cost, StarterType) VALUES ("Cheese bread", 9.75, "Indian");

