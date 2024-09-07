create database bd_tiendas;
use bd_tiendas;
-- Crear tabla tiendas
CREATE TABLE tiendas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    nit VARCHAR(50) NOT NULL,
    direccion VARCHAR(200),
    telefono VARCHAR(20),
    ciudad VARCHAR(100),
    pais VARCHAR(100)
);

-- Crear tabla empleados
CREATE TABLE empleados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    puesto VARCHAR(100),
    salario DECIMAL(10, 2),
    tienda_id INT,
    FOREIGN KEY (tienda_id) REFERENCES tiendas(id) ON DELETE CASCADE
);

-- Crear tabla proveedores
CREATE TABLE proveedores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    contacto VARCHAR(100),
    telefono VARCHAR(15),
    email VARCHAR(100)
);

-- Crear tabla inventarios
CREATE TABLE inventarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    producto VARCHAR(100) NOT NULL,
    cantidad INT NOT NULL,
    tienda_id INT,
    proveedor_id INT,
    FOREIGN KEY (tienda_id) REFERENCES tiendas(id) ON DELETE CASCADE,
    FOREIGN KEY (proveedor_id) REFERENCES proveedores(id) ON DELETE CASCADE
);

