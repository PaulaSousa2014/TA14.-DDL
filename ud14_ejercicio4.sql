-- Elimina y la BBDD en el caso de que exista
DROP DATABASE IF EXISTS ud14_ejercicio4;

-- Creamos la BBDD
CREATE DATABASE ud14_ejercicio4;

USE ud14_ejercicio4;

-- Creamos la tabla departamentos, con ´cod_departamento´ como PRIMARY KEY
CREATE TABLE departamentos (
    cod_departamento INT,
    nombre VARCHAR(100),    
    presupuesto INT,
    PRIMARY KEY (cod_departamento)
);

-- Creamos la tabla empleados, con 'dni' como PRIMARY KEY
CREATE TABLE empleados (   
    dni VARCHAR(8),    
    nombre VARCHAR(100),    
    apellidos VARCHAR(255),
    
    -- Columna 'clave foranea' del departamento (referencia a la tabla departamentos)
    departamento INT,
    
    -- 'dni' como clave primaria
    PRIMARY KEY (dni),
    
    -- Columna departamento como 'clave foranea' que hace referencia a la tabla departamentos
    -- Eliminacion y actualizacion en cascada
    FOREIGN KEY (departamento) REFERENCES departamentos(cod_departamento) ON DELETE CASCADE ON UPDATE CASCADE
);
