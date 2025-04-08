# REPLACE INTO
The REPLACE INTO statement attempts to insert a new record or modify an existing record. In both cases, it checks whether the unique key of the proposed record already exists in the table. Suppose a value of NO or FALSE is returned. In that case, the REPLACE statement inserts the record similar to the INSERT INTO statement.

Suppose the key value already exists in the table (in other words, a duplicate key). In that case, the REPLACE statement deletes the existing record of data and replaces it with a new record of data. This happens regardless of whether you use the first or the second REPLACE statement syntax.

```sql
REPLACE INTO table_name (column1name, column2name, ...) 
VALUES (value1, value2, ...);

REPLACE INTO table_name SET column1name = value, column2name = value, ... ;
```

# CONSTRAINTS
Applying constraints on data in a relational database controls the type of data stored in a table. This will force MySQL to decline processes that violate the specified rules.

There are three main types of constraints that can be applied in MySQL.
- Key Constraints : For example, each table must have a primary key that maintains table integrity. The primary key ensures no duplications of records in the same table and it is not allowed to contain null values. 

- Domain Constraints : Domain constraints refer to special rules defined for the values that can be stored for a certain column. To apply this, you must specify what data values are allowed and which ones should be rejected. 

- Referential Integrity Constraints : referential integrity requires that a foreign key value must have a matching primary key value to link the records of different related tables. 

# ON UPDATE CASCADE / ON DELETE CASCADE
ON UPDATE CASCADE, if the value of the referenced column (usually the primary key) in the parent table is updated, the corresponding values in the child table (the table with the foreign key) will be automatically updated to match the new value.

ON DELETE CASCADE, if a row in the parent table (the table being referenced) is deleted, all corresponding rows in the child table (the table with the foreign key) will be automatically deleted as well.

```sql
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50) UNIQUE
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id) ON UPDATE CASCADE ON DELETE CASCADE
);
```
# CHECK
The CHECK constraint is used to define a condition that must be true for all values in a column. It helps enforce data integrity by ensuring that the data entered into a column meets specific criteria.
```sql
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2),
    discount_percentage DECIMAL(5, 2) CHECK (discount_percentage >= 0 AND discount_percentage <= 100)
);
```

# ALTER TABLE
ALTER TABLE is used to:
- Adding, modifying, or dropping columns.
- Adding or dropping constraints (PRIMARY KEY, FOREIGN KEY, UNIQUE, CHECK).
- Renaming a table.
- Changing the table's storage engine.
- And much more.

```sql
-- add a column
ALTER TABLE employees
ADD COLUMN phone_number VARCHAR(20);

-- modify a column
ALTER TABLE employees
MODIFY COLUMN first_name VARCHAR(100) NOT NULL;

-- change column name
ALTER TABLE employees
CHANGE COLUMN phone_number mobile_number VARCHAR(25);

-- drop column
ALTER TABLE employees
DROP COLUMN mobile_number;

-- You can use the CHANGE command with the ALTER statement to rename a column.
ALTER TABLE table_name 
CHANGE from_column to_column datatype;

```

# COPY TABLE
You can create a new table with the exact same structure as an existing table using the CREATE TABLE LIKE statement. COPY STRUCTURE NO DATA

```sql
CREATE TABLE new_table_name LIKE original_table_name;
```

To create a new table with the same structure and all the data from an existing table, you can combine CREATE TABLE AS SELECT.

```sql
CREATE TABLE new_table_name AS
SELECT * FROM original_table_name; 
```
Copying Table Structure and a Subset of Data
```sql
CREATE TABLE new_table_name AS
SELECT * FROM original_table_name
WHERE condition;
```


# SUBQUERIES
A subquery, also known as an inner query or a nested query, is a query embedded inside another SQL query.

Subqueries can appear in various parts of a main SQL statement, most commonly in:
- WHERE clause: To filter rows based on the result of the subquery.
- SELECT list: To retrieve a single value calculated by the subquery (must return a single row and a single column).
- FROM clause: To treat the result set of the subquery as a temporary table (requires aliasing).
- HAVING clause: To filter groups based on the result of the subquery.


Types of Subqueries:

- Scalar Subqueries: These return a single value (one row and one column). They are often used in the SELECT list or with comparison operators in the WHERE or HAVING clauses.   

- Column Subqueries: These return a single column but can return multiple rows. They are often used with operators like IN, NOT IN, ANY, SOME, or ALL in the WHERE or HAVING clauses.

- Table Subqueries: These return a result set with one or more columns and one or more rows. They are typically used in the FROM clause and must be given an alias.

- Correlated Subqueries: These depend on the outer query for their values. The inner query is executed once for each row processed by the outer query.

```sql
-- scalar
SELECT employee_name, salary, (
        SELECT department_name 
        FROM departments 
        WHERE departments.department_id = employees.department_id
    ) AS department
FROM employees;

-- column
SELECT employee_name
FROM employees
WHERE department_id IN (
    SELECT department_id 
    FROM departments 
    WHERE department_name IN ('Sales', 'Marketing')
);

--table
SELECT avg_salary_by_dept.department_name, AVG(avg_salary_by_dept.avg_salary) AS overall_avg_salary
FROM (
    SELECT d.department_name, AVG(e.salary) AS avg_salary
    FROM employees e
    JOIN departments d ON e.department_id = d.department_id
    GROUP BY d.department_name
)
AS avg_salary_by_dept;

--correlated
SELECT e1.employee_name
FROM employees e1
WHERE e1.salary > (
    SELECT AVG(e2.salary) 
    FROM employees e2 
    WHERE e2.department_id = e1.department_id
);
```

# VIRTUAL TABLES / VIEWS
A View in MySQL is a stored query that acts as a virtual table. It doesn't store data itself; instead, it presents the results of a predefined SQL query as if it were a regular table. You can query a view just like you would query a base table.

```sql
CREATE VIEW sales_employees AS
SELECT first_name, last_name, salary
FROM employees
WHERE department = 'Sales';


CREATE VIEW customer_order_details AS
SELECT 
c.customer_id, c.first_name, c.last_name, c.city, 
o.order_id, o.order_date, o.total_amount
FROM customers AS c
INNER JOIN orders AS o ON c.customer_id = o.customer_id;
```

