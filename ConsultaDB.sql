DROP DATABASE if EXISTS db_quiropractica_especifica;

CREATE DATABASE db_quiropractica_especifica;

USE db_quiropractica_especifica;

CREATE TABLE tb_clientes(
id_cliente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre_cliente VARCHAR (50) NOT NULL,
apellido_cliente VARCHAR (50) NOT NULL,
dui_cliente VARCHAR (10) NOT NULL, 
correo_cliente VARCHAR (100) NOT NULL,
telefono_cliente VARCHAR (9) NOT NULL, 
nacimiento_cliente DATE NOT NULL,
usuario_cliente varchar(50) not null unique,
contrasenia_cliente varchar(500) not null unique
); 
CREATE TABLE tb_cargos (
id_cargo INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
tipo_cargo VARCHAR (50) NOT NULL
);

 
CREATE TABLE tb_empleados(
id_empleado INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre_empleado VARCHAR (50) NOT NULL,
apellido_empleado VARCHAR (50) NOT NULL,
dui_empleado VARCHAR (10) NOT NULL, 
correo_empleado VARCHAR (100) NOT NULL,
telefono_empleado VARCHAR (9) NOT NULL,
nacimiento_empleado DATE NOT NULL,
id_cargo 	int,
FOREIGN KEY (id_cargo) REFERENCES tb_cargos (id_cargo)
); 

create table tb_niveles_usuarios(
id_nivel_usuario	int auto_increment primary key,
nombre_nivel_usuario	varchar(50) unique
);

create table tb_usuarios(
id_usuario	int auto_increment key,
nombre_usuario	varchar(50) unique not null,
contrasenia		varchar(500) not null,
id_empleado INT ,
FOREIGN KEY (id_empleado) REFERENCES tb_empleados (id_empleado),
id_nivel_usuario INT ,
FOREIGN KEY (id_nivel_usuario) REFERENCES tb_niveles_usuarios (id_nivel_usuario)
);

CREATE TABLE tb_servicios(
id_servicio INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
tipo_servicio VARCHAR (45) NOT NULL,
descripcion_servicio VARCHAR (250) NOT NULL
);

CREATE TABLE tb_conceptos (
id_concepto INT  AUTO_INCREMENT PRIMARY KEY,
info_concepto VARCHAR (250) NOT NULL,
ubicacion_clinica VARCHAR (255) NOT NULL,
redes_sociales VARCHAR (255) NOT NULL,
fotografia VARCHAR (250)
);

 CREATE TABLE tb_fotos (
id_foto INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
imagen VARCHAR (250) NOT NULL,
id_concepto int,
FOREIGN KEY (id_concepto) REFERENCES tb_conceptos (id_concepto)
);

CREATE TABLE tb_sesiones (
id_sesion INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
id_cliente int NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES tb_clientes (id_cliente),
sesiones_cliente VARCHAR (50) NOT NULL,
molestias_cliente VARCHAR (100) NULL,
antecedentes_cliente VARCHAR (50) NULL,
id_servicio	int,
foreign key (id_servicio) references tb_servicios (id_servicio)
);

CREATE TABLE tb_tratamientos (
id_tratamiento INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
fecha_inicio_tratamiento DATE,
tipo_de_tratamiento VARCHAR (75) NOT NULL,
duracion_estimada VARCHAR (50) NOT NULL,
notas_adicionales VARCHAR (250) NOT NULL,
id_sesion	int,
foreign key (id_sesion) references tb_sesiones (id_sesion)
);

CREATE TABLE tb_citas(
id_cita INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
id_cliente INT ,
FOREIGN KEY (id_cliente) REFERENCES tb_clientes (id_cliente), 
id_servicio int, 
FOREIGN KEY (id_servicio) REFERENCES tb_servicios (id_servicio),
id_tratamiento	int,
FOREIGN KEY (id_tratamiento) REFERENCES tb_tratamientos (id_tratamiento),
id_concepto INT,
FOREIGN KEY (id_concepto) REFERENCES tb_conceptos (id_concepto)
);

CREATE TABLE tb_valoraciones (
id_valoracion INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
valoracion VARCHAR (250) NOT NULL,
id_cita	int,
foreign key (id_cita)  references tb_citas (id_cita)
);

CREATE TABLE tb_expedientes (
id_expediente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
antecedentes_cliente VARCHAR (50) NULL,
id_sesion int,
FOREIGN KEY (id_sesion) REFERENCES tb_sesiones (id_sesion), 
id_empleado	int,
FOREIGN KEY (id_empleado) REFERENCES tb_empleados (id_empleado),
id_cita	int,
foreign key (id_cita) references tb_citas (id_cita)
);
