drop database if exists Accidentes;
create database Accidentes;

Use	Accidentes;
Create table accidentegeografico(
id_accidente int NOT NULL,
  PRIMARY KEY (id_accidente)
  );
  CREATE TABLE pais (
  nombrePais varchar(30) NOT NULL,
  extension float DEFAULT NULL,
  poblacion int DEFAULT NULL,
  PRIMARY KEY (nombrePais)
  );
  CREATE TABLE estar (
  nombrePais varchar(45) NOT NULL,
  id_accidente int NOT NULL,
  PRIMARY KEY (nombrePais),
  FOREIGN KEY (id_accidente) REFERENCES accidentegeografico (id_accidente) ON UPDATE RESTRICT,
  FOREIGN KEY (nombrePais) REFERENCES pais (nombrePais)ON UPDATE RESTRICT
  );
  

  CREATE TABLE lagos (
  nombreLagos varchar(45) NOT NULL,
  id_accidente int NOT NULL,
  extension float DEFAULT NULL,
  posH float DEFAULT NULL,
  posV float DEFAULT NULL,
  PRIMARY KEY (nombreLagos),
  FOREIGN KEY (id_accidente) REFERENCES accidentegeografico (id_accidente)ON UPDATE RESTRICT
);
  CREATE TABLE rios (
  nombreRio varchar(45) NOT NULL,
  id_accidente int NOT NULL,
  longitud float DEFAULT NULL,
  posH float DEFAULT NULL,
  posV float DEFAULT NULL,
  PRIMARY KEY (nombreRio),
FOREIGN KEY (id_accidente) REFERENCES accidentegeografico(id_accidente)ON UPDATE RESTRICT
  );
  CREATE TABLE montanas (
  nombreMontana varchar(45) NOT NULL,
  id_accidente int NOT NULL,
  altura float DEFAULT NULL,
  posH float DEFAULT NULL,
  posV float DEFAULT NULL,
  PRIMARY KEY (nombreMontana),
  FOREIGN KEY (id_accidente) REFERENCES accidentegeografico (id_accidente)ON UPDATE RESTRICT
  );
  CREATE TABLE localidad (
  nombreLocalidad char(40) NOT NULL,
  PRIMARY KEY (nombreLocalidad)
  );
  CREATE TABLE pasar (
  nombreLocalidad char(40) NOT NULL,
  nombreRio char(45) NOT NULL,
  PRIMARY KEY (nombreLocalidad,nombreRio),
  FOREIGN KEY (nombreLocalidad) REFERENCES localidad (nombreLocalidad)ON UPDATE RESTRICT,
  FOREIGN KEY (nombreRio) REFERENCES rios (nombreRio)ON UPDATE RESTRICT
  );
    
  


