-- Consultas solicitadas:

-- 1. Obtener el precio mínimo, precio máximo y precio promedio de todos los productos.

SELECT
  MIN(precio_unitario) AS precio_minimo,
  MAX(precio_unitario) AS precio_maximo,
  AVG(precio_unitario) AS precio_promedio
FROM producto