-- Insertar datos en la tabla tiendas
INSERT INTO tiendas (nombre, nit, direccion, telefono, ciudad, pais)
VALUES ('Tienda 1', '123456789', 'Calle 123', '555-1234', 'Ciudad X', 'País Y');

INSERT INTO tiendas (nombre, nit, direccion, telefono, ciudad, pais)
VALUES ('Tienda 2', '987654321', 'Avenida 456', '555-5678', 'Ciudad Y', 'País Z');

-- Insertar datos en la tabla empleados
INSERT INTO empleados (nombre, puesto, salario, tienda_id)
VALUES ('Empleado 1', 'Gerente', 1500.00, 1);

INSERT INTO empleados (nombre, puesto, salario, tienda_id)
VALUES ('Empleado 2', 'Cajero', 900.00, 1);

-- Insertar datos en la tabla proveedores
INSERT INTO proveedores (nombre, contacto, telefono, email)
VALUES ('Proveedor 1', 'Contacto 1', '555-9876', 'contacto1@ejemplo.com');

INSERT INTO proveedores (nombre, contacto, telefono, email)
VALUES ('Proveedor 2', 'Contacto 2', '555-1234', 'contacto2@ejemplo.com');

-- Insertar datos en la tabla inventarios
INSERT INTO inventarios (producto, cantidad, tienda_id, proveedor_id)
VALUES ('Producto A', 50, 1, 1);

INSERT INTO inventarios (producto, cantidad, tienda_id, proveedor_id)
VALUES ('Producto B', 100, 1, 2);
