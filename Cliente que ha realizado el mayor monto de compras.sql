--Obtener el cliente que ha realizado el mayor monto de compras

SELECT cl.nombre AS cliente, SUM(i.monto_venta) AS total_compras
FROM cliente cl
JOIN orden o ON cl.id = o.cliente_id
JOIN item i ON o.id = i.orden_id
GROUP BY cl.nombre
ORDER BY total_compras DESC
LIMIT 1;