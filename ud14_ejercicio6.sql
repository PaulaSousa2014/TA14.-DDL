-- Elimina y la BBDD en el caso de que exista
DROP DATABASE IF EXISTS ud14_ejercicio6;

-- Creamos la BBDD
CREATE DATABASE ud14_ejercicio6;

USE ud14_ejercicio6;

-- Creamos la tabla peliculas, almacena informacion sobre peliculas
CREATE TABLE peliculas (
    -- Columna 'codigo de la película' PRIMARY KEY
    cod_pelicula INT,   
    nombre VARCHAR(100),
    
    -- Columna calificacion por edades
    calificacion_edad INT,
    -- Columna 'cod_pelicula' como PRIMARY KEY
    PRIMARY KEY (cod_pelicula)
);

-- Creamos la tabla salas, almacena informacion sobre salas y las peliculas
CREATE TABLE salas (
    -- Columna 'codigo de la sala' PRIMARY KEY AUTO_INCREMENT
    cod_sala INT AUTO_INCREMENT,    
    nombre VARCHAR(100),
    
    -- Columna 'clave foranea' de la pelicula (referencia a la tabla peliculas)
    pelicula INT,
    
    -- Columna 'cod_sala' como clave primaria PRIMARY KEY
    PRIMARY KEY (cod_sala),
    -- Columna pelicula como clave foranea que hace referencia a la tabla peliculas
    -- con eliminacion y actualizacion en cascada
    FOREIGN KEY (pelicula) REFERENCES peliculas(cod_pelicula) ON DELETE CASCADE ON UPDATE CASCADE
);
