INSERT INTO vehiculos (marca, modelo, patente, anio, precio) VALUES
('Toyota', 'Corolla', 'AC123AA', 2020, 10000.00),
('Honda', 'Civic', 'AD456AB', 2019, 8000.00);


INSERT INTO clientes (nombre, apellido, dni, telefono, direccion) VALUES
('Simon', 'Martinez', '12345678', '555-1234', 'Calle Falsa 123'),
('Maria', 'Gomez', '87654321', '555-5678', 'Avenida Siempre Viva 456');


INSERT INTO alquileres (id_cliente, id_vehiculo, fecha_inicio, fecha_fin, monto_total) VALUES
(1, 1, '2026-09-01', '2026-09-10', 90000.00),
(2, 2, '2026-09-15', '2026-09-20', 40000.00);


INSERT INTO pagos (id_alquiler, fecha_pago, monto_pago, metodo_pago) VALUES
(1, '2026-09-01', 90000.00, 'Tarjeta de Crédito'),
(2, '2026-09-15', 40000.00, 'Efectivo');
