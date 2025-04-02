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
- SELF-JOIN :

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

# GROUP BY

