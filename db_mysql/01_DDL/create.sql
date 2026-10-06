CREATE TABLE vehiculos (
    id_vehiculo INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(100),
    modelo VARCHAR(100),
    patente VARCHAR (50) NOT NULL UNIQUE,
    anio INT,
    precio DECIMAL(10,2)
);
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR (50),
    apellido VARCHAR (50),
    dni VARCHAR(20) NOT NULL UNIQUE,
    telefono VARCHAR(20),
    direccion VARCHAR (100)
);

CREATE TABLE alquileres (
    id_alquiler INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT  NOT NULL,
    id_vehiculo INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    monto_total DECIMAL (10,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_vehiculo) REFERENCES vehiculos(id_vehiculo)
);

CREATE TABLE pagos (
    id_pago INT PRIMARY KEY AUTO_INCREMENT,
    id_alquiler INT NOT NULL,
    fecha_pago DATE NOT NULL,
    monto_pago DECIMAL(10,2),
    metodo_pago VARCHAR (20),
    FOREIGN KEY (id_alquiler) REFERENCES alquileres(id_alquiler)
);