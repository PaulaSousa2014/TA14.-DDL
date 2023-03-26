drop database if exists Guerras;
create database Guerras;

use Guerras;
create table guerra(
	nom_guerra varchar(50) not null,
    year_start int not null,
    year_finish int not null,
    pais_implicado varchar(50) not null,
    bando_victorioso varchar(50) not null,
    PRIMARY KEY(nom_guerra)
);
create table bando(
	nom_bando varchar(30),
    PRIMARY KEY(nom_bando)
    );
create table participa(
	nom_bando1 varchar(30),
    nom_bando2 varchar(30),
    nom_guerra varchar(50),
    PRIMARY KEY(nom_guerra),
     FOREIGN KEY(nom_bando1) REFERENCES bando(nom_bando),
     FOREIGN KEY(nom_bando2) REFERENCES bando(nom_bando),
     FOREIGN KEY(nom_guerra) REFERENCES guerra(nom_guerra)
     );
create table pais(
	nom_pais varchar(50),
    nom_bando varchar(30),
    PRIMARY KEY(nom_pais),
    FOREIGN KEY(nom_bando) REFERENCES bando(nom_bando)
    );
create table independecia(
	id_indepencia varchar(50),
    fecha_inicio date,
    fecha_fin date,
    nom_pais varchar(50),
    PRIMARY KEY(id_indepencia),
    FOREIGN KEY(nom_pais) REFERENCES pais(nom_pais)
    );