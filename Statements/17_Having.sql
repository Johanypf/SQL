


SELECT usuarios.nombre,
       COALESCE(SUM(pedidos.total), 0) AS total_gastado
FROM usuarios
LEFT JOIN pedidos ON usuarios.id = pedidos.usuario_id
GROUP BY usuarios.nombre
HAVING COALESCE(SUM(pedidos.total), 0) > 2000;
ß