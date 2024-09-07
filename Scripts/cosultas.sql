-- Obtener todas las tiendas
SELECT * FROM bd_tiendas.tiendas;

-- Obtener el nombre y la ciudad de todas las tiendas
SELECT nombre, ciudad FROM tiendas;

-- Buscar una tienda específica por su NIT
SELECT * FROM tiendas WHERE nit = '123456789';

-- Obtener las tiendas de una ciudad específica
SELECT * FROM tiendas WHERE ciudad = 'Ciudad X';

--  Obtener inventario, productos, tienda y proveedor
SELECT 
    i.producto, 
    i.cantidad, 
    t.nombre AS tienda, 
    t.ciudad, 
    p.nombre AS proveedor, 
    p.telefono AS proveedor_telefono
FROM 
    inventarios i
JOIN 
    tiendas t ON i.tienda_id = t.id
JOIN 
    proveedores p ON i.proveedor_id = p.id
WHERE 
    i.cantidad > 50         -- Condición: Mostrar solo productos con más de 50 unidades en stock
    AND t.ciudad = 'Ciudad X';  -- Condición: Mostrar solo tiendas en 'Ciudad X'

