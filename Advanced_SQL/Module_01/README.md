# FUNCTIONS AND PROCEDURES

| **Functions** | **Procedures** |
|:---:|:---:|
| Created using CREATE FUNCTION command | Created using the CREATE PROCEDURE command |
| Invoked using the SELECT statement | Invoked using the CALL statement |
| Must return a single value | Outputs values via the OUT parameter |
| Takes IN parameters only | Takes IN, OUT and INOUT parameters |
| Typically encapsulates common formulas or generic business rules | Typically used to process, manipulate and modify data in the database |
| Must specify the data type of the return value | User must specify the OUT parameter type |

# DELIMITER
DELIMITER command in MySQL is primarily used when defining compound SQL statements, such as:

- Stored Procedures (CREATE PROCEDURE)
- Functions (CREATE FUNCTION)
- triggers (CREATE TRIGGER)
- events (CREATE EVENTS)

The default statement terminator in MySQL is the semicolon (;). When creating a stored procedure, function, trigger, or event, the code block within its definition often contains multiple SQL statements, each ending with a semicolon.

If these compound statements are defined using the default semicolon delimiter, the MySQL client will interpret each semicolon within the definition as the end of the entire CREATE statement prematurely. This will lead to syntax errors because the complete definition hasn't been processed yet. Temporarily changing the statement terminator from the default semicolon, ensures that the entire CREATE block (including all the SQL statements within BEGIN and END) is sent to the MySQL server as a single command.