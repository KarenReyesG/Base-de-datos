-- Calcular el precio promedio de los productos en cada categoría

SELECT c.nombre AS categoria, AVG(p.precio_unitario) AS precio_promedio
FROM categoria c
JOIN producto p ON c.id = p.categoria_id
GROUP BY c.nombre;
