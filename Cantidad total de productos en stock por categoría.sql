-- Obtener la cantidad total de productos en stock por categoría:

SELECT c.nombre AS categoria, SUM(s.cantidad) AS stock_total
FROM categoria c
JOIN producto p ON c.id = p.categoria_id
JOIN stock s ON p.id = s.producto_id
GROUP BY c.nombre;