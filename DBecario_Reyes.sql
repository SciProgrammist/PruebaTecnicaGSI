
--Creacion de Base de Datos
CREATE DATABASE DBecario_Reyes;
GO
--Se hace uso de la base de datos
USE DBecario_Reyes;
GO

--Se crea la tabla de t_reclamos
CREATE TABLE t_reclamos (
	idReclamo INT PRIMARY KEY IDENTITY(1,1),
	nombreProveedor VARCHAR(50) NOT NULL,
	direccionProveedor VARCHAR(100) NOT NULL,
	nombresConsumidor VARCHAR(50) NOT NULL,
	apellidosConsumidor VARCHAR(50) NOT NULL,
	DUI VARCHAR(10) NOT NULL,
	detalleReclamo VARCHAR(250) NOT NULL,
	montoReclamado DECIMAL(18,2) NULL,
	telefono VARCHAR(10) NULL,
	fechaIngreso DATETIME NOT NULL DEFAULT GETDATE()
);
GO


/*Insercion de Datos*/
--Para la prueba de la consulta propuesta en la prueba de han agregado 10 reclamos, 4 de los cuales validan la consulta de prueba.
INSERT INTO t_reclamos 
    (nombreProveedor, direccionProveedor, nombresConsumidor, apellidosConsumidor, DUI, DetalleReclamo, montoReclamado, telefono, fechaIngreso) 
VALUES
    ('Proveedor A', 'Calle 1, San Salvador', 'Carlos', 'Ramirez', '12345678-9', 'Producto defectuoso', 30.50, '77778888', GETDATE()),
    ('Proveedor B', 'Calle 2, Santa Tecla', 'Ana', 'Lopez', '23456789-0', 'Entrega tardía', 50.00, '66667777', GETDATE()),
    ('Proveedor C', 'Calle 3, Soyapango', 'Luis', 'Gomez', '34567890-1', 'Mal servicio', 10.00, '55556666', GETDATE()),
    ('Proveedor D', 'Calle 4, Mejicanos', 'Maria', 'Perez', '45678901-2', 'No recibí el producto', 100.75, '44445555', GETDATE()),
    ('Proveedor E', 'Calle 5, Santa Ana', 'Jose', 'Martinez', '56789012-3', 'Cobro indebido', NULL, '33334444', GETDATE()),
    ('Proveedor F', 'Calle 6, San Miguel', 'Carmen', 'Diaz', '67890123-4', 'Calidad deficiente', 20.00, '22223333', GETDATE()),
    ('Proveedor G', 'Calle 7, Usulután', 'Pedro', 'Castro', '78901234-5', 'Producto no coincide con descripción', 75.25, '11112222', GETDATE()),
    ('Proveedor H', 'Calle 8, La Libertad', 'Raul', 'Reyes', '89012345-6', 'Reembolso no procesado', NULL, NULL, GETDATE()),
    ('Proveedor I', 'Calle 9, Chalatenango', 'Fernanda', 'Ortiz', '90123456-7', 'Demasiado caro', 15.75, '99990000', GETDATE()),
    ('Proveedor J', 'Calle 10, San Vicente', 'Esteban', 'Hernandez', '01234567-8', 'Producto con defectos ocultos', 5.00, '88889999', GETDATE());
GO


/*Consulta que muestra los reclamos con montos mayores a $25*/
SELECT * FROM t_reclamos WHERE montoReclamado > 25;
