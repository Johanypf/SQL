
SELECT MAX(age) FROM Users GROUP BY age;


SELECT COUNT(age),age FROM Users GROUP BY age;

SELECT COUNT(age) AS "Cantidad",age FROM Users GROUP BY age;
SELECT COUNT(age) AS "Cantidad",age FROM Users GROUP BY age order by age desc;