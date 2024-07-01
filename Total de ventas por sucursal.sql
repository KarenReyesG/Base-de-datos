--Calcular el total de ventas por sucursal:

SELECT s.nombre AS sucursal, SUM(o.total) AS ventas_totales
FROM sucursal s
JOIN orden o ON s.id = o.sucursal_id
GROUP BY s.nombre;