SELECT Users.name, dni.dni_number FROM Users
LEFT JOIN dni
ON Users.user_id = dni.user_id ;



SELECT * FROM Users
LEFT JOIN dni
ON Users.user_id = dni.user_id ;