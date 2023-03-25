drop database if exists Investigadores;
create database Investigadores;

Use	Investigadores;
create table facultad(
	codigo int NOT NULL,
    nombre nvarchar(100),
    PRIMARY KEY(codigo)
);
create table investigadores(
	dni varchar(8) NOT NULL,
    nom_apels nvarchar(255),
    facultad int NOT NULL,
    PRIMARY KEY(dni),
    FOREIGN KEY(facultad) REFERENCES facultad(codigo)ON UPDATE RESTRICT
);
create table equipos(
	num_serie char(4) NOT NULL,
    nombre nvarchar(100),
    facultad int NOT NULL,
    PRIMARY KEY(num_serie),
    FOREIGN KEY(facultad) REFERENCES facultad(codigo)ON UPDATE RESTRICT
);
create table reserva(
	dni varchar(8) NOT NULL,
    num_serie char(4) NOT NULL,
    comienzo datetime,
    fin datetime,
    PRIMARY KEY(dni, num_serie),
    KEY(num_serie,dni),
    FOREIGN KEY(dni) REFERENCES investigadores(dni)ON UPDATE RESTRICT,
    FOREIGN KEY(num_serie) REFERENCES equipos(num_serie)ON UPDATE RESTRICT
);