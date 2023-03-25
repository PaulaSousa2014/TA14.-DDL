/*Primero ponemos un DROP para que elimine y vuelva a cargar la base de datos 
en caso de que ya esxista*/
DROP DATABASE IF EXISTS ta14_ejercicio7;

/*Creamos la base de datos*/
CREATE DATABASE ta14_ejercicio7;

/*Entramos en la base de datos*/
USE ta14_ejercicio7;

/*Creamos la primera tabla que no tiene ninguna clave foránea*/
CREATE TABLE despachos(
numero int,
capacidad int,
primary key(numero)
);

/*Creamos la segunda tabla que tiene clave foránea que no deje eliminar
pero que si actualizada actualice en cascata*/
CREATE TABLE directores(
dni varchar(8),
num_apels nvarchar(255),
dni_jefe varchar(8) NULL,
despacho int NULL,
primary key(dni),
foreign key(dni_jefe) references directores(dni)
on delete set null on update cascade,
foreign key(despacho) references despachos(numero)
on delete set null on update cascade
);