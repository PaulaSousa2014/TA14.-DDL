/*Primero ponemos un DROP para que elimine y vuelva a cargar la base de datos 
en caso de que ya esxista*/
DROP DATABASE IF EXISTS ta14_ejercicio5;

/*Creamos la base de datos*/
CREATE DATABASE ta14_ejercicio5;

/*Entramos en la base de datos*/
USE ta14_ejercicio5;

/*Creamos la primera tabla que no tiene ninguna clave foránea
establecemos que es auto incrementable (identity)*/
CREATE TABLE almacenes(
codigo int AUTO_INCREMENT NOT NULL,
lugar nvarchar(100),
capacidad int,
PRIMARY KEY(codigo) 
);

/*Creamos la segunda tabla que tiene clave foránea que al eliminar ponga null
pero que si actualizada actualice en cascata*/
CREATE TABLE cajas(
num_referencia char(5) ,
contenido nvarchar(100),
valor int,
almacen int NULL,
primary key(num_referencia),
foreign key(almacen) references almacenes(codigo)
on delete set null on update cascade
);

