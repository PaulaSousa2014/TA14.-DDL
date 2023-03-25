drop database if exists Academias;
create database Academias;

Use	Academias;
create table profesores(
	nombre varchar(50) UNIQUE,
    apellido1 varchar(50),
    apellido2 varchar(50),
    dni varchar(9),
    direccion varchar(100),
    titulo varchar(60),
    gana float NOT NULL,
    PRIMARY KEY(dni)
);
create table cursos(
	nombre_curso varchar(60) UNIQUE,
    cod_curso int,
    dni_profesor varchar(9),
    maximo_alumnos int,
    fecha_inicio datetime,
    fecha_final datetime,
    num_horas int NOT NULL,
    PRIMARY KEY(cod_curso),
	FOREIGN KEY(dni_profesor) REFERENCES profesores(dni)
);
create table alumnos(
	nombre varchar(50),
    apellido1 varchar(50),
    apellido2 varchar(50),
    dni varchar(9),
    direccion varchar(100),
    sexo char,
    fecha_nacimiento datetime,
    curso varchar(60) NOT NULL,
    PRIMARY KEY(dni),
    FOREIGN KEY(curso) REFERENCES cursos(nombre_curso)
);


