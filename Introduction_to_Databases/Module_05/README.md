# Graded Assignment Solution

## PART 1

```
CREATE DATABASE SportsClub;
USE SportsClub;

CREATE TABLE Players (playerID INT, playerName VARCHAR(50), age INT, PRIMARY KEY(playerID));

INSERT INTO Players (playerID, playerName, age) 
VALUES (1, "Jack", 25);

INSERT INTO Players 
    (playerID, playerName, age) 
VALUES 
    (2, "Karl", 20),
    (3, "Mark", 21),
    (4, "Andrew", 22);

SELECT playerName
FROM Players
WHERE playerID = 2;

SELECT playerName FROM Players;

UPDATE Players
SET age = 22
WHERE playerID = 3;

DELETE FROM Players WHERE playerID = 4;

SELECT playerID % 2 FROM Players;

SELECT name FROM Players WHERE age > 25;

FOREIGN KEY (departmentID) REFERENCES Department (departmentID);
```
