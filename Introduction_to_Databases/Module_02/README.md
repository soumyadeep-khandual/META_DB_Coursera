# COMMON SQL SYNTAX

## Data Definition Language (DDL)
The SQL DDL category provides commands for defining, deleting and modifying tables in a database.

### CREATE
Purpose: To create the database or tables inside the database
```
CREATE TABLE table_name (column_name1 datatype(size), column_name2 datatype(size), column_name3 datatype(size));
```

### DROP
Purpose: To delete a database or a table inside the database. 
```
DROP TABLE table_name;
```

### ALTER
Purpose: To change the structure of the tables in the database such as changing the name of a table, adding a primary key to a table, or adding or deleting a column in a table.

ADD column:
```
ALTER TABLE table_name 
ADD (column_name datatype(size));
```
ADD a PRIMARY KEY to a table:
```
ALTER TABLE table_name 
ADD primary key (column_name);
```

### TRUNCATE
Purpose: To remove all records from a table, which will empty the table but not delete the table itself. 

```
TRUNCATE TABLE table_name;
```

## Data Query Language (DQL)

### SELECT
Purpose: To retrieve data from tables in the database.
```
--Retrieve all data from a table
SELECT * FROM table_name;
```

## Data Manipulation Language (DML)

### INSERT
Purpose: To add records of data into an existing table. 
```
INSERT INTO table_name 
(column1, column2, column3) 
VALUES 
(value1, value2, value3);
```

### UPDATE
Purpose: To modify or update data contained within a table in the database. 
```
UPDATE table_name 
SET column1 = value1, column2 = value2
WHERE condition;
```
### DELETE
Purpose: To delete data from a table in the database.
```
DELETE FROM table_name
WHERE condition;
```

### INSERT INTO SELECT
Purpose: used to copy data from one table to another. It allows you to insert records into a table by selecting data from another table.
```
INSERT INTO target_table (column1, column2, column3, ...)
SELECT column1, column2, column3, ...
FROM source_table
WHERE condition;
```