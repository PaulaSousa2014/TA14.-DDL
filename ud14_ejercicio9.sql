-- Elimina y la BBDD en el caso de que exista
DROP DATABASE IF EXISTS ud14_ejercicio9;

-- Creamos la BBDD
CREATE DATABASE ud14_ejercicio9;

USE ud14_ejercicio9;

-- Creamos la tabla cientificos, almacena informacion de los cientificos
CREATE TABLE cientificos (
    dni VARCHAR(8) PRIMARY KEY, -- PRIMARY KEY del cientifico
    NomApels NVARCHAR(255) NOT NULL
);

-- Creamos la tabla Proyecto, almacena informacion de los proyectos
CREATE TABLE Proyecto (
    id CHAR(4) PRIMARY KEY, -- PRIMARY KEY del proyecto
    Nombre NVARCHAR(255) NOT NULL, 
    Horas INT NOT NULL 
);

-- Creamos la tabla asignado_a, relaciona cientificos con proyectos
CREATE TABLE asignado_a (
    dni_cientifico VARCHAR(8) NOT NULL, -- FK, referencia al dni del cientifico
    id_proyecto CHAR(4) NOT NULL, -- FK, referencia al Id del proyecto

    PRIMARY KEY (dni_cientifico, id_proyecto), -- PK, Combinamos las dos FK

    FOREIGN KEY (dni_cientifico) REFERENCES cientificos(dni)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
        
    FOREIGN KEY (id_proyecto) REFERENCES Proyecto(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
