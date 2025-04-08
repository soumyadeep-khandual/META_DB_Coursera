# NUMERIC FUNCTIONS
## AGGREGATE FUNCTIONS
use with group by:
- SUM()
- AVG()
- MAX()
- MIN()
- COUNT()
## MATH FUNCTIONS
- ROUND()
- MOD()
- CEIL()
- FLOOR()

# STRING FUNCTIONS
- CONCAT()
- SUBSTR()
- UCASE()
- LCASE()
- FORMAT() : The FORMAT function formats the number passed into a format like '#,###,###.##', rounded to the specified number of decimal places. It returns the result as a string. `SELECT FORMAT(number_to_be_formatted, number_of_decimal_places);`

# DATE FUNCTIONS
- CURRENT_DATE()
- CURRENT_TIME()
- DATE_FORMAT()
- DATEDIFF()
- ADDDATE(date, INTERVAL expr unit) or ADDDATE(date, days)
- QUARTER(date): The QUARTER function is also a very versatile function that returns the quarter of the year for the given date. The return value is in the range 1 to 4, or NULL if date is NULL.

# COMPARISION FUNCTIONS
- GREATEST()
- LEAST()
- ISNULL()
- COALESCE(value1, value2, ...): takes several arguments and returns the first non-NULL argument. In case all arguments are NULL, the COALESCE function returns NULL.

# CONTROL-FLOW FUNCTIONS
- CASE(): IF ELSE equivalent
```sql
CASE expression
    WHEN value1 THEN result1
    WHEN value2 THEN result2
    ...
    [ELSE result_else]
END
```
- IFNULL(evaluated_expression, alternative_value): accepts two arguments and returns the first argument if it is not NULL. Otherwise, the IFNULL function returns the second argument. 


# STORED PROCEDURES
[like python functions]
create reusable code that can be invoked and executed efficiently.So, instead of typing the same code repeatedly, you can save your blocks of code in a stored procedure as a prepared query that you can use whenever needed.

```sql
--  returns all records from the Products table.
CREATE PROCEDURE GetProductsDetails ()
SELECT * FROM Products;
-- calling procedure
CALL GetProductsDetails ();

--  returns all records from the Products table where price is LEQ inputPrice.
CREATE PROCEDURE GetProductsLessThanPrice (inputPrice INT) 
SELECT * FROM Products WHERE Price <= inputPrice;
-- calling procedure
CALL GetProductsLessThanPrice (50);
```
