DROP DATABASE if EXISTS db_quiropractica_especifica;

CREATE DATABASE db_quiropractica_especifica;

USE db_quiropractica_especifica;

CREATE TABLE tb_clientes(
id_cliente int primary key auto_increment not null,
nombre_cliente VARCHAR (50) NOT NULL,
apellido_cliente VARCHAR (50) NOT NULL,
dui_cliente VARCHAR (10) NOT NULL, 
correo_cliente VARCHAR (100) NOT NULL,
telefono_cliente VARCHAR (9) NOT NULL, 
nacimiento_cliente DATE NOT NULL
); 
 
 CREATE TABLE tb_testimonios(
 id_testimonio	int primary key auto_increment not null,
 titulo_testimonio varchar(50) not null,
 contenido_testimonio	varchar(200)not null,
 id_cliente INT ,
FOREIGN KEY (id_cliente) REFERENCES tb_clientes (id_cliente)
 );
 
CREATE TABLE tb_admin(
id_admin INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre_admin VARCHAR (50) NOT NULL,
apellido_admin VARCHAR (50) NOT NULL,
dui_admin VARCHAR (10) NOT NULL, 
correo_admin VARCHAR (100) NOT NULL,
telefono_admin VARCHAR (9) NOT NULL,
nacimiento_admin DATE NOT NULL
); 

create table tb_usuarios(
id_usuario	int auto_increment key,
nombre_usuario	varchar(50) unique not null,
contrasenia		varchar(500) not null,
foto_usuario	varchar(200),
id_admin INT ,
FOREIGN KEY (id_admin) REFERENCES tb_admin (id_admin)
);

 CREATE TABLE tb_fotos (
id_foto INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
imagen VARCHAR (250) NOT NULL
);

CREATE TABLE tb_servicios(
id_servicio INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
tipo_servicio VARCHAR (45) NOT NULL,
descripcion_servicio VARCHAR (250) NOT NULL,
id_foto INT ,
FOREIGN KEY (id_foto) REFERENCES tb_fotos (id_foto)
);

CREATE TABLE tb_beneficios (
id_beneficio	int primary key auto_increment not null,
titulo_beneficio	varchar(30),
contenido_beneficio	varchar(200),
id_servicio INT ,
FOREIGN KEY (id_servicio) REFERENCES tb_servicios (id_servicio)
);

CREATE TABLE tb_preguntas(
id_pregunta INT  AUTO_INCREMENT PRIMARY KEY,
nombre_pregunta VARCHAR (250) NOT NULL,
respuesta_pregunta VARCHAR (255) NOT NULL,
imagen_pregunta VARCHAR(100)NOT NULL,
id_cliente INT ,
FOREIGN KEY (id_cliente) REFERENCES tb_clientes (id_cliente)
);

CREATE TABLE tb_citas(
id_cita INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
fecha_cita date not null,
id_cliente INT ,
FOREIGN KEY (id_cliente) REFERENCES tb_clientes (id_cliente), 
id_servicio int, 
FOREIGN KEY (id_servicio) REFERENCES tb_servicios (id_servicio)
);



CREATE TABLE tb_tratamientos (
id_tratamiento INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
tipo_de_tratamiento VARCHAR (75) NOT NULL,
notas_adicionales VARCHAR (250),
id_cita INT,
FOREIGN KEY (id_cita) REFERENCES tb_citas(id_cita)
);

CREATE TABLE tb_comentarios(
id_comentario INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
contenido_comentario VARCHAR (250) NOT NULL,
id_cliente INT ,
FOREIGN KEY (id_cliente) REFERENCES tb_clientes (id_cliente)
);

create table tb_sistemas(
id_sistema int primary key auto_increment not null,
id_cita INT,
FOREIGN KEY (id_cita) REFERENCES tb_citas(id_cita),
id_servicio int, 
FOREIGN KEY (id_servicio) REFERENCES tb_servicios (id_servicio),
id_tratamiento int,
FOREIGN KEY (id_tratamiento) REFERENCES tb_tratamientos (id_tratamiento),
id_usuario int,
FOREIGN KEY (id_usuario) REFERENCES tb_usuarios (id_usuario)
);

