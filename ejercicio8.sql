/*Primero ponemos un DROP para que elimine y vuelva a cargar la base de datos 
en caso de que ya esxista*/
DROP DATABASE IF EXISTS ta14_ejercicio8;

/*Creamos la base de datos*/
CREATE DATABASE ta14_ejercicio8;

/*Entramos en la base de datos*/
USE ta14_ejercicio8;

/*Creamos la primera tabla que no tiene ninguna clave foránea*/
CREATE TABLE piezas(
codigo INT auto_increment,
nombre nvarchar(100),
primary key(codigo)
);

/*Creamos la segunda tabla que no tiene ninguna clave foránea*/
CREATE TABLE proveedores(
id char(4),
nombre nvarchar(100),
primary key(id)
);

/*Creamos la tercera tabla que tiene clave foránea que no deje eliminar
pero que si actualizada actualice en cascata*/
CREATE TABLE suministra(
codigo_pieza int,
id_proveedor char(4),
precio int,
primary key(codigo_pieza, id_proveedor),
foreign key(codigo_pieza) references piezas(codigo)
on delete cascade on update cascade,
foreign key(id_proveedor) references proveedores(id)
on delete cascade on update cascade
);