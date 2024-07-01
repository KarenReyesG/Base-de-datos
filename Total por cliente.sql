--Obtener el total de ventas por cliente.
SELECT 
    c.nombre AS cliente,
    SUM(i.monto_venta) AS total_ventas
FROM 
    Item i
JOIN 
    Orden o ON i.orden_id = o.id
JOIN 
    Cliente c ON o.cliente_id = c.id
GROUP BY 
    c.nombre;