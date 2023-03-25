/*Primero ponemos un DROP para que elimine y vuelva a cargar la base de datos 
en caso de que ya esxista*/
DROP DATABASE IF EXISTS ta14_ejercicio2;

/*Creamos la base de datos*/
CREATE DATABASE ta14_ejercicio2;

/*Entramos en la base de datos*/
USE ta14_ejercicio2;

/*Creamos la primera tabla que no tiene ninguna clave foránea*/
CREATE TABLE editorial(
claveeditorial SMALLINT NOT NULL,
nombre VARCHAR(60),
direccion VARCHAR(60),
telefono VARCHAR(15),
PRIMARY KEY (claveeditorial)
);

/*Creamos la tabla libros*/
CREATE TABLE libro (
clavelibro INT NOT NULL,
titulo VARCHAR(60),
idioma VARCHAR(15),
formato VARCHAR(15),
claveeditorial SMALLINT,
PRIMARY KEY (clavelibro),
KEY(claveeditorial),
FOREIGN KEY (claveeditorial) REFERENCES editorial (claveeditorial) 
ON DELETE SET NULL 
ON UPDATE CASCADE
);

/*Creamos tabla tema*/
CREATE TABLE tema(
clavetema SMALLINT NOT NULL,
nombre VARCHAR(40),
PRIMARY KEY (clavetema)
);

/*Creamos tabla autor*/
CREATE TABLE autor(
claveautor INT NOT NULL,
nombre VARCHAR(60),
PRIMARY KEY (claveautor)
);

/*Creamos tabla ejemplar*/
CREATE TABLE ejemplar(
claveejemplar INT NOT NULL,
clavelibro INT NOT NULL,
numeroorden SMALLINT NOT NULL,
edicion SMALLINT,
ubicacion VARCHAR(15),
categoria CHAR,
PRIMARY KEY (claveejemplar),
FOREIGN KEY (clavelibro) REFERENCES libro(clavelibro)
ON DELETE CASCADE
ON UPDATE CASCADE
);

/*Creamos la tabla socio*/
CREATE TABLE socio(
clavesocio INT NOT NULL,
nombre VARCHAR(60),
direccion VARCHAR(60),
telefono varchar(15),
categoria CHAR,
PRIMARY KEY (clavesocio)
);

/*Creamos la tabla prestamo*/
CREATE TABLE prestamo(
clavesocio INT,
claveejemplar INT,
numeroorden SMALLINT,
fecha_prestamo DATE NOT NULL,
fecha_devolucion DATE DEFAULT NULL,
notas BLOB,
FOREIGN KEY (clavesocio) REFERENCES socio(clavesocio)
ON DELETE SET NULL
ON UPDATE CASCADE,
FOREIGN KEY (claveejemplar) REFERENCES ejemplar(claveejemplar)
ON DELETE SET NULL
ON UPDATE CASCADE
);

/*Creamos la tabla trata_sobre*/
CREATE TABLE trata_sobre(
clavelibro INT NOT NULL,
clavetema SMALLINT NOT NULL,
FOREIGN KEY (clavelibro) REFERENCES libro (clavelibro)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (clavetema) REFERENCES tema (clavetema)
ON DELETE CASCADE ON UPDATE CASCADE
);

/*Creamos la tabla escrito_por*/
CREATE TABLE escrito_por(
clavelibro INT NOT NULL,
claveautor INT NOT NULL,
FOREIGN KEY (clavelibro) REFERENCES libro(clavelibro)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (claveautor) REFERENCES autor(claveautor)
ON DELETE CASCADE ON UPDATE CASCADE
);