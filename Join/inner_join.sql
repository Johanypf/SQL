SELECT * FROM Users
INNER JOIN dni
ON Users.user_id = dni.user_id ;

SELECT * FROM Users
INNER JOIN dni
ON Users.user_id = dni.user_id ;


SELECT * FROM Users
JOIN dni
ON Users.user_id = dni.user_id 
ORDER BY AGE DESC;

SELECT * FROM Users
JOIN dni
ON Users.user_id = dni.user_id 
ORDER BY AGE ASC;

SELECT name,dni FROM Users
JOIN dni
ON Users.user_id = dni.user_id 
ORDER BY AGE ASC;

SELECT name,dni_number FROM Users
JOIN dni
ON Users.user_id = dni.user_id 
ORDER BY AGE ASC;



SELECT * FROM Users
JOIN companies
ON Users.company_id = companies.company_id;



SELECT * FROM Users_lenguages
JOIN Users ON Users_lenguages.user_id = Users.user_id
JOIN lenguages ON Users_lenguages.language_id = lenguages.lenguage_id;



SELECT Users.name, lenguages.name FROM Users_lenguages
JOIN Users ON Users_lenguages.user_id = Users.user_id
JOIN lenguages ON Users_lenguages.language_id = lenguages.lenguage_id;
