-- Elimina y la BBDD en el caso de que exista
DROP DATABASE IF EXISTS ud14_ejercicio3;

-- Creamos la BBDD
CREATE DATABASE ud14_ejercicio3;

USE ud14_ejercicio3;

-- Creamos la tabla fabricantes
CREATE TABLE fabricantes (

    -- Columna codigo del fabricante 'autoincremental'
    cod_fabricante INT AUTO_INCREMENT,
    
    -- Columna nombre del fabricante
    nombre VARCHAR(100),
    
    -- cod_fabricante como 'clave primaria'
    PRIMARY KEY (cod_fabricante)
);

-- Creamos la tabla articulos
CREATE TABLE articulos (
    
    -- Columna codigo del articulo 'autoincremental'
    cod_articulo INT AUTO_INCREMENT,
    
    -- Columna nombre del artículo
    nombre VARCHAR(100),
    
    -- Columna precio del artículo
    precio INT,
    
    -- Columna 'clave foranea' del fabricante (referencia a la tabla fabricantes)
    fabricante INT,
    
    -- cod_articulo como 'clave primaria'
    PRIMARY KEY (cod_articulo),
    
    -- Columna fabricante como 'clave foranea' que hace referencia a la tabla fabricantes
    -- Eliminacion y actualizacion en cascada
    FOREIGN KEY (fabricante) REFERENCES fabricantes(cod_fabricante) ON DELETE CASCADE ON UPDATE CASCADE
);