drop database if exists Grandes_Almacenes;
create database Grandes_Almacenes;

Use	Grandes_Almacenes;
create table cajeros(
	codigo int NOT NULL,
    nom_apelis nvarchar(255)NOT NULL, 
    PRIMARY KEY(codigo)
);
create table productos(
	codigo int NOT NULL,
    nombre nvarchar(100)NOT NULL,
    precio int NOT NULL,
    PRIMARY KEY(codigo)
);
create table maquina_registradoras(
	codigo int NOT NULL,
    piso int NOT NULL,
    PRIMARY KEY(codigo)
);
create table venta(
	cajero int NOT NULL,
    maquina int NOT NULL,
    producto int NOT NULL,
    PRIMARY KEY(cajero, maquina, producto),
    FOREIGN KEY(cajero) REFERENCES cajeros(codigo),
    FOREIGN KEY(maquina) REFERENCES maquina_registradoras(codigo),
    FOREIGN KEY(producto) REFERENCES productos(codigo)
);