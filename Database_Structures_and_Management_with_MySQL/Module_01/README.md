# MySQL

# FILTERING

- `AND` Used to combine multiple conditions; all must be true.
```sql
SELECT * FROM employees 
WHERE department = 'Sales' AND salary > 50000;
```

- `OR`
Used to combine multiple conditions; at least one must be true.
```sql
SELECT * FROM employees 
WHERE department = 'Sales' OR department = 'Marketing';
```

- `NOT`
Used to exclude rows that meet a condition.
```sql
SELECT * FROM employees 
WHERE NOT department = 'HR';
```
- `IN`
Checks if a value matches any value in a list.
```sql
SELECT * FROM employees 
WHERE department IN ('Sales', 'Marketing', 'IT');
```

- `BETWEEN`
Filters results within a range (inclusive).
```sql
SELECT * FROM employees 
WHERE salary BETWEEN 40000 AND 80000;
```

- `LIKE`
Used for pattern matching with wildcards.
    - % = any sequence of characters
    - _ = single character

```sql
SELECT * FROM employees 
WHERE name LIKE 'J%';
```

# ALIAS

The `AS` keyword in `SQL` is used to assign an alias to a column or table. This alias can make the output more readable or simplify complex queries.

```sql
SELECT first_name AS "First Name", last_name AS "Last Name"
FROM employees;

SELECT price * quantity AS "Total Cost"
FROM orders;

```

# JOINING TABLES
A join in a database links records of data between one or multiple tables based on a common column between them.  

There are four different types of joins supported in MySQL that are covered in this lesson.  

- INNER JOIN : All records present in both tables
- LEFT JOIN : All records present in left table with null values for records present in left but not right
- RIGHT JOIN : All records present in right table with null values for records present in right but not left
- SELF-JOIN : perform above join on same table.

```sql
-- INNER JOIN
SELECT C.FullName, C.PhoneNumber, B.BookingDate, B.NumberOfGuests 
FROM Customers AS C INNER JOIN Bookings AS B
ON C.CustomerID = B.CustomerID;

-- SELF JOIN
SELECT E1.FullName AS "LineManager", E2.FullName AS "EMPLOYEE" 
FROM Employees as E1 
INNER JOIN Employees AS E2 
ON E1.EmployeeID = E2.LineManagerID;
```

# UNION
The UNION operator is useful when you want to retrieve rows from multiple tables (or the same table with different conditions) and present them as a single, unified result.

There are two main variations of the UNION operator:

- UNION (or UNION DISTINCT): This operator combines the result sets and removes any duplicate rows, returning only distinct rows in the final result.
- UNION ALL: This operator also combines the result sets, but it keeps all rows, including duplicates. If a row appears in multiple input result sets, it will also appear multiple times in the final result.

```sql
SELECT column1, column2, ...
FROM table1
WHERE condition1
UNION
SELECT column1, column2, ...
FROM table2
WHERE condition2;
```
The SELECT statements involved in a UNION operation must have the same number of columns and the corresponding columns must have compatible data types.1 The column names in the final result set will usually be taken from the column names in the first SELECT statement.

# GROUP BY
The GROUP BY clause is used in conjunction with aggregate functions (like COUNT(), AVG(), SUM(), MIN(), MAX()) to group rows that have the same values in one or more specified columns. The aggregate functions are then applied to each of these groups, producing a single summary row for each group.

```sql
SELECT column1, column2, aggregate_function(column3)
FROM table_name
WHERE condition
GROUP BY column1, column2
ORDER BY column1, column2;
```

# HAVING
The HAVING clause is used to filter groups after they have been created by the GROUP BY clause. It's similar to the WHERE clause but operates on groups instead of individual rows.
```sql
SELECT department, AVG(salary) AS AverageSalary
FROM Employees
GROUP BY department
HAVING AVG(salary) > 60000;
```