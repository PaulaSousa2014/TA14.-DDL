drop database if exists Twitter;
create database Twitter;

Use	Twitter;
Create table usuario(
	id_usuario varchar(20) NOT NULL,
    email varchar(100) NOT NULL,
    contrasena varchar(20) NOT NULL,
    biografia varchar(250) NOT NULL,
    seguidores int NOT NULL,
    seguidos int NOT NULL,
    PRIMARY KEY(id_usuario)
    );
Create table seguir(
    id_usuario1 varchar(20)NOT NULL,
    id_usuario2 varchar(20)NOT NULL,
    PRIMARY KEY(id_usuario1,id_usuario2),
	FOREIGN KEY (id_usuario1) REFERENCES usuario(id_usuario)ON UPDATE RESTRICT,
    FOREIGN KEY (id_usuario2) REFERENCES usuario(id_usuario)ON UPDATE RESTRICT
);
Create table publicaciones(
	id_publicacion int NOT NULL,
    likes int,
    retwits int,
    comentarios int,
    texto varchar(250) NOT NULL,
    id_usuario varchar(20) NOT NULL,
    PRIMARY KEY(id_publicacion),
    FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario)ON UPDATE RESTRICT
);
Create table comentarios(
	id_comentario int NOT NULL, 
    id_usuario varchar(20) NOT NULL,
    comentario varchar(250) NOT NULL,
    PRIMARY KEY (id_comentario),
    FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario)ON UPDATE RESTRICT
);




  


