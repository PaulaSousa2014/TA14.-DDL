/*Primero ponemos un DROP para que elimine y vuelva a cargar la base de datos 
en caso de que ya esxista*/
DROP DATABASE IF EXISTS ta14_ejercicio1;

/*Creamos la base de datos*/
CREATE DATABASE ta14_ejercicio1;

/*Entramos en la base de datos*/
USE ta14_ejercicio1;

/*Creamos la primera tabla que no tiene ninguna clave foránea*/
CREATE TABLE estacion(
identificador MEDIUMINT UNSIGNED NOT NULL,
latitud VARCHAR(14) NOT NULL,
longitud VARCHAR(15) NOT NULL,
altitud MEDIUMINT NOT NULL,
primary key(identificador)
);

/*Creamos la tabla muestra*/
CREATE TABLE muestra(
identificadorestacion MEDIUMINT UNSIGNED NOT NULL,
fecha DATE NOT NULL,
temperaturaminima TINYINT,
temperaturamaxima TINYINT,
precipitaciones SMALLINT UNSIGNED,
humedadminima TINYINT UNSIGNED,
humedadmaxima TINYINT UNSIGNED,
velocidadminima SMALLINT UNSIGNED,
velocidadmaxima SMALLINT UNSIGNED,
KEY (identificadorestacion),
FOREIGN KEY (identificadorestacion)
REFERENCES estacion (identificador)
ON DELETE NO ACTION
ON UPDATE CASCADE
);