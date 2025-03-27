# SQL OPERATORS

## Arithmatic

- ADD `+`
- SUB `-`
- MUL `*`
- DIV `/`
- MODULUS `%`

```
SELECT column_name1 + column_name2
FROM table_name;

SELECT column_name1 + 5
FROM table_name;

SELECT *
FROM table_name
WHERE column_name1 + column_name2 = 10;
```

## Comparison

- EQUALITY `=`
- INEQUALITY `<>` or `!=`
- GREATER THAN `>`
- LESS THAN `<`
- LEQ `<=`
- GEQ `>=`

```
-- equality
SELECT *
FROM employee
WHERE employee_id = 1;

-- inequality
SELECT *  
FROM employee 
WHERE salary <> 24000; 
```

# SORTING AND FILTERING

## ORDER BY
sort or order the results obtained when running a SQL SELECT query in `ASC` or `DESC` order.

```
SELECT * 
FROM invoices 
ORDER BY BillingCity ASC, InvoiceDate DESC;
```

## WHERE
useful when you want to filter data in a table based on a given condition in the SQL statement. The condition can be written using any of the following comparison or logical operators.
### Comparison operators
| Operator 	| Description 	|
|---	|---	|
| = 	| Checks if the values of two operands are equal or not. If yes, then condition becomes true. 	|
| != 	| Checks if the values of two operands are equal or not. If values are not equal, then condition becomes true. 	|
| <> 	| Checks if the values of two operands are equal or not. If values are not equal, then condition becomes true. 	|
| > 	| Checks if the value of the left operand is greater than the value of the right operand. If yes, then condition becomes true. 	|
| < 	| Checks if the value of left operand is less than the value of right operand. If yes, then condition becomes true. 	|
| >= 	| Checks if the value of the left operand is greater than or equal to the value of right operand. If yes, then condition becomes true. 	|
| <= 	| Check if the value of the left operand is less than or equal to the value of the right operand. If yes then condition becomes true. 	|
| !< 	| Checks if the value of the left operand is not less than the value of the right operand. If yes, then condition becomes true. 	|
| !> 	| Checks if the value of the left operand is not greater than the value of the right operand. If yes, then condition becomes true. 	|

### Logical operators
| Operator | Description |
|---|---|
| ALL | Used to compare a single value to all the values in another value set. |
| AND | Allows for the existence of multiple conditions in an SQL statement's WHERE clause. |
| ANY | Used to compare a value to any applicable value in the list as per the condition. |
| BETWEEN | Used to search for values that are within a set of values, given the minimum value and the maximum value. |
| EXISTS | Used to search for the presence of a row in a specified table that meets a certain criterion. |
| IN | Used to compare a value to a list of literal values that have been specified. |
| LIKE | Used to compare a value to similar values using wildcard operators. |
| NOT | Reverses the meaning of the logical operator with which it is used. For example: NOT EXISTS, NOT BETWEEN, NOT IN, etc. This is a negate operator. |
| OR | Used to combine multiple conditions in an SQL statement's WHERE clause. |
| IS NULL | Used to compare a value with a NULL value. |
| UNIQUE | Searches every row of a specified table for uniqueness (no duplicates). |


### Examples:
```
SELECT * 
FROM invoices 
WHERE Total > 2;

SELECT column1, column2, columnN  
FROM table_name 
WHERE [condition1] AND [condition2]...AND [conditionN];

SELECT * 
FROM invoices 
WHERE Total > 2 AND BillingCountry = 'USA';

SELECT *  
FROM invoices  
WHERE Total > 2 AND (BillingCountry = 'USA' OR BillingCountry = 'France');
```

## SELECT DISTINCT
`DISTINCT` is useful for retrieving a set of unique values when there are duplicate column values in a table. It is used with the `SELECT` statement, so it’s commonly referred to as `SELECT DISTINCT`.

- When only one column or expression is provided in the DISTINCT clause, the query will return the unique values for that column. 

- When more than one column or expression is provided in the DISTINCT clause, the query will retrieve unique combinations for those columns. 

- The DISTINCT clause doesn't ignore NULL values in DISTINCT column(s). NULL values are considered as unique values by DISTINCT. 

```
SELECT DISTINCT BillingCountry  
FROM invoices 
ORDER BY BillingCountry;

-- multiple DISTINCT keywords
SELECT DISTINCT BillingCountry, BillingCity   
FROM invoices 
ORDER BY BillingCountry, BillingCity;
```