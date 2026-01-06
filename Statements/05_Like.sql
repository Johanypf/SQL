SELECT name  FROM Users WHERE name LIKE 'A%';

SELECT name  FROM Users WHERE name LIKE '%a';

SELECT name  FROM Users WHERE name LIKE 'A%a%' AND age > 20;
SELECT * FROM Users WHERE email LIKE "%@%";
SELECT * FROM Users WHERE email LIKE "%@%" AND age > 35;

