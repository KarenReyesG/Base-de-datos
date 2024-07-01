--Consulta Calcular la cantidad total de productos en stock por sucursal.

SELECT 
    s.nombre AS sucursal,
    SUM(st.cantidad) AS cantidad_total
FROM 
    Stock st
JOIN 
    Sucursal s ON st.Sucursal_Id = s.id
GROUP BY 
    s.nombre;