SELECT Users.name, dni.dni_number FROM Users
LEFT JOIN dni
ON Users.user_id = dni.user_id ;



SELECT * FROM Users
LEFT JOIN dni
ON Users.user_id = dni.user_id ;

SELECT usuarios.nombre, pedidos.total FROM usuarios
LEFT JOIN pedidos ON usuarios.id = pedidos.usuario_id;



SELECT usuarios.nombre, pedidos.total FROM pedidos
LEFT JOIN usuarios ON usuarios.id = pedidos.usuario_id;


SELECT usuarios.nombre, COALESCE(pedidos.total, 0) FROM usuarios
LEFT JOIN pedidos ON usuarios.id = pedidos.usuario_id;
