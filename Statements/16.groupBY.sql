
SELECT MAX(age) FROM Users GROUP BY age;


SELECT COUNT(age),age FROM Users GROUP BY age;

SELECT COUNT(age) AS "Cantidad",age FROM Users GROUP BY age;
SELECT COUNT(age) AS "Cantidad",age FROM Users GROUP BY age order by age desc;






SELECT usuarios.nombre, COALESCE(SUM(pedidos.total), 0) AS total_gastado FROM usuarios
LEFT JOIN pedidos ON usuarios.id = pedidos.usuario_id
GROUP BY usuarios.nombre ;
