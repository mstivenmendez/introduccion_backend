CREATE TABLE cliente (
    id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    telefono VARCHAR(100) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    email VARCHAR(250) NOT NULL
);

CREATE TABLE pago (
    id_pago INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    metodo ENUM('efectivo', 'pse') NOT NULL DEFAULT 'efectivo'
);

CREATE TABLE categoria (
    id_categoria INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre ENUM('romance', 'terror' , 'comedia' ) NOT NULL DEFAULT "romance"
);

CREATE TABLE autor (
    id_autor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_autor VARCHAR(200) NOT NULL,
    fecha_nacimiento DATETIME NOT NULL,
    nacionalidad VARCHAR(100) NOT NULL
);

CREATE TABLE editorial (
    id_iditorial INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);
CREATE TABLE inventario (
    id_inventario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    precio DECIMAL(10, 2) NOT NULL,
    cantidad_libro INT NOT NULL,
);

CREATE TABLE pedido (
    id_pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fecha_compra DATETIME NOT NULL,
    id_usuario INT NOT NULL
);

CREATE TABLE libro (
    id_libro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_libro VARCHAR(50) NOT NULL,
    paginas INT NOT NULL,
    isbn INT NOT NULL,
    publicacion DATETIME NOT NULL,
    id_editorial_fk INT NOT NULL,
    id_inventario_fk INT NOT NULL,
    FOREIGN KEY (id_editorial_fk) REFERENCES editorial(id_editorial),
    FOREIGN KEY (id_inventario_fk) REFERENCES inventario(id_inventario)
);

CREATE TABLE pedido_libro (
    id_pedido_libro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_pedido_fk INT NOT NULL,
    id_libro_fk INT NOT NULL,
    cantidad int NOT NULL,
    FOREIGN KEY (id_pedido_fk) REFERENCES pedido(id_pedido),
    FOREIGN KEY (id_libro_fk) REFERENCES libro(id_libro)
);

CREATE TABLE libro_autor ( 
    id_libro_autor INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_autor_fk INT NOT NULL,
    id_libro_fk INT NOT NULL,
    FOREIGN KEY (id_autor_fk) REFERENCES autor(id_autor),
    FOREIGN KEY (id_libro_fk) REFERENCES libro(id_libro)
);

CREATE TABLE libro_categoria (
    id_libro_categoria INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_libro_fk INT NOT NULL,
    id_categoria_fk INT NOT NULL,
    FOREIGN KEY (id_libro_fk) REFERENCES libro(id_libro),
    FOREIGN KEY (id_categoria_fk) REFERENCES categoria(id_categoria)
);

CREATE TABLE transaccion (
    id_transaccion INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_pago_fk INT NOT NULL,
    id_pedido_fk INT NOT NULL,
    fecha_pago DATETIME NOT NULL,
    pago_total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_pago_fk) REFERENCES pago(id_pago),
    FOREIGN KEY (id_pedido_fk) REFERENCES pedido(id_pedido)
);



