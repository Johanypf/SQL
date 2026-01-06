SELECT Users.name, dni.dni_number FROM Users
RIGHT JOIN dni
ON Users.user_id = dni.user_id ;




SELECT Users.name, lenguages.name FROM Users_lenguages
RIGHT JOIN Users ON Users_lenguages.user_id = Users.user_id
RIGHT JOIN lenguages ON Users_lenguages.language_id = lenguages.lenguage_id;
