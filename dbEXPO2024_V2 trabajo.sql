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

CREATE USER 'PirmeroUusario'@'localhost' IDENTIFIED BY 'contraseña';
GRANT ALL PRIVILEGES ON Quiropractica_especifica.* TO 'PirmeroUusario'@'localhost';

INSERT INTO tb_clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, usuario_cliente, contrasenia_cliente) VALUES
('Juan', 'Pérez', '12345678-9', 'juan.perez@example.com', '123456789', '1980-05-10', 'juanperez', 's3cur3p@ssw0rd1'),
('Ana', 'González', '23456789-0', 'ana.gonzalez@example.com', '234567890', '1992-12-01', 'anagonzalez', 'Str0ngP@ss2'),
('Carlos', 'López', '34567890-1', 'carlos.lopez@example.com', '345678901', '1985-07-23', 'carloslopez', 'T0ughP@ss3'),
('Luisa', 'Martínez', '45678901-2', 'luisa.martinez@example.com', '456789012', '1990-03-15', 'luisamartinez', 'S@f3P@ss4'),
('Javier', 'Fernández', '56789012-3', 'javier.fernandez@example.com', '567890123', '1978-09-08', 'javierfernandez', 'M@sterP@ss5'),
('María', 'Rodríguez', '67890123-4', 'maria.rodriguez@example.com', '678901234', '1983-11-25', 'mariarodriguez', 'P@ssw0rd6'),
('Pedro', 'Hernández', '78901234-5', 'pedro.hernandez@example.com', '789012345', '1987-01-30', 'pedrohernandez', 'G00dP@ss7'),
('Sofía', 'Díaz', '89012345-6', 'sofia.diaz@example.com', '890123456', '1995-06-14', 'sofiadiaz', 'N1c3P@ss8'),
('Ricardo', 'Morales', '90123456-7', 'ricardo.morales@example.com', '901234567', '1972-08-20', 'ricardomorales', 'W0wP@ss9'),
('Camila', 'Ruiz', '01234567-8', 'camila.ruiz@example.com', '012345678', '1991-04-17', 'camilaruiz', 'Tr1ckyP@ss10');

INSERT INTO tb_cargos (tipo_cargo) VALUES
('Quiropráctico'),
('Acupunturista'),
('Recepcionista'),
('Gerente de Clínica'),
('Terapeuta Físico'),
('Especialista en Masajes'),
('Enfermero'),
('Asistente Administrativo'),
('Técnico en Radiología'),
('Especialista en Nutrición');

INSERT INTO tb_empleados (nombre_empleado, apellido_empleado, dui_empleado, correo_empleado, telefono_empleado, nacimiento_empleado, id_cargo) VALUES
('Luis', 'Gómez', '12345678-9', 'luis.gomez@example.com', '123456789', '1990-05-15', 1),  
('María', 'Lopez', '23456789-0', 'maria.lopez@example.com', '234567890', '1985-08-21', 2),  
('Carlos', 'Rodríguez', '34567890-1', 'carlos.rodriguez@example.com', '345678901', '1992-03-10', 3),  
('Ana', 'Hernández', '45678901-2', 'ana.hernandez@example.com', '456789012', '1980-12-15', 4),  
('Javier', 'Martínez', '56789012-3', 'javier.martinez@example.com', '567890123', '1991-06-30', 5), 
('Lucía', 'Fernández', '67890123-4', 'lucia.fernandez@example.com', '678901234', '1989-01-05', 6), 
('Pedro', 'Sánchez', '78901234-5', 'pedro.sanchez@example.com', '789012345', '1978-09-14', 7),  
('Sofía', 'Jiménez', '89012345-6', 'sofia.jimenez@example.com', '890123456', '1987-11-22', 8),  
('Ricardo', 'Ruiz', '90123456-7', 'ricardo.ruiz@example.com', '901234567', '1975-07-18', 9), 
('Camila', 'Castro', '01234567-8', 'camila.castro@example.com', '012345678', '1983-02-26', 10);


INSERT INTO tb_niveles_usuarios (nombre_nivel_usuario) VALUES
('Administrador del Sistema'),  
('Médico Quiropráctico'),
('Acupunturista'),  
('Recepcionista'),  
('Gerente de Clínica'), 
('Terapista Físico'),  
('Enfermero/a'), 
('Asistente Administrativo'),  
('Técnico en Radiología'),  
('Paciente');  

INSERT INTO tb_usuarios (nombre_usuario, contrasenia, id_empleado, id_nivel_usuario) VALUES
('usuario_luismedico', 'password1', 1, 2),
('usuario_anaadmin', 'password2', 4, 1),  
('usuario_carlosacu', 'password3', 2, 3), 
('usuario_luisarecep', 'password4', 3, 4),
('usuario_javiertf', 'password5', 5, 5),  
('usuario_mariaem', 'password6', 6, 6),  
('usuario_pedroenf', 'password7', 7, 7),  
('usuario_sofiasec', 'password8', 8, 8),  
('usuario_ricardotecnico', 'password9', 9, 9),  
('usuario_camilanut', 'password10', 10, 10);

INSERT INTO tb_servicios (tipo_servicio, descripcion_servicio) VALUES
('Ajuste Quiropráctico', 'Realineación de la columna vertebral y otros ajustes del sistema músculo-esquelético.'),
('Acupuntura', 'Inserción de agujas finas en puntos específicos para aliviar el dolor y mejorar el equilibrio energético.'),
('Terapia de Masaje', 'Técnicas de masaje para reducir el estrés muscular y promover la relajación.'),
('Terapia Física', 'Tratamiento para rehabilitación de lesiones y mejoras de movilidad.'),
('Terapia de Ventosas', 'Uso de ventosas para mejorar la circulación y aliviar tensiones musculares.'),
('Terapia con Ultrasonido', 'Uso de ultrasonido para estimular tejidos profundos y promover la curación.'),
('Electroterapia', 'Aplicación de pequeñas corrientes eléctricas para reducir el dolor y estimular la recuperación.'),
('Consulta Nutricional', 'Asesoramiento en dieta y nutrición para mejorar la salud general.'),
('Terapia con Ondas de Choque', 'Uso de ondas acústicas para tratar diversas afecciones musculo-esqueléticas.'),
('Terapia con Kinesiología', 'Evaluación y tratamiento del movimiento corporal para mejorar la función y la coordinación.');

INSERT INTO tb_conceptos (info_concepto, ubicacion_clinica, redes_sociales, fotografia) VALUES
('Clínica especializada en quiropráctica y acupuntura.', 'Av. Siempre Viva 123, Springfield', '@clinica_salud en Twitter, Facebook, Instagram', 'fotografia1.jpg');

INSERT INTO tb_fotos (imagen, id_concepto) VALUES
('imagen1.jpg', 1), 
('imagen2.jpg', 1),  
('imagen3.jpg', 1), 
('imagen4.jpg', 1),  
('imagen5.jpg', 1), 
('imagen6.jpg', 1), 
('imagen7.jpg', 1), 
('imagen8.jpg', 1),  
('imagen9.jpg', 1),  
('imagen10.jpg', 1);

INSERT INTO tb_sesiones (id_cliente, sesiones_cliente, molestias_cliente, antecedentes_cliente, id_servicio) VALUES
(1, 'Sesión 1', 'Dolor de espalda', 'Ninguno', 1),  
(2, 'Sesión 2', 'Estrés y ansiedad', 'Alergias', 2),  
(3, 'Sesión 3', 'Dolor de cuello', 'Lesión antigua', 3),
(4, 'Sesión 4', 'Dolor de hombros', 'Tendinitis', 4),  
(5, 'Sesión 5', 'Dolor lumbar', 'Ninguno', 5),  
(6, 'Sesión 6', 'Contracturas musculares', 'Cirugía pasada', 6),  
(7, 'Sesión 7', 'Dolor de rodilla', 'Artritis', 7),  
(8, 'Sesión 8', 'Dolor de cadera', 'Desgaste articular', 8),  
(9, 'Sesión 9', 'Dolor de pie', 'Fractura pasada', 9), 
(10, 'Sesión 10', 'Dolor de muñeca', 'Ninguno', 10);

INSERT INTO tb_tratamientos (fecha_inicio_tratamiento, tipo_de_tratamiento, duracion_estimada, notas_adicionales, id_sesion) VALUES
('2023-11-01', 'Ajuste Quiropráctico', '30 minutos', 'Terapia para mejorar el dolor lumbar.', 1),
('2023-11-02', 'Acupuntura', '45 minutos', 'Sesión para reducir el estrés y la ansiedad.', 2),
('2023-11-03', 'Terapia de Masaje', '60 minutos', 'Masaje para aliviar la tensión en el cuello.', 3),
('2023-11-04', 'Terapia Física', '30 minutos', 'Tratamiento para aliviar el dolor de hombros.', 4),
('2023-11-05', 'Terapia de Ventosas', '30 minutos', 'Uso de ventosas para mejorar la circulación.', 5),
('2023-11-06', 'Terapia con Ultrasonido', '45 minutos', 'Ultrasonido para aliviar contracturas.', 6),
('2023-11-07', 'Electroterapia', '30 minutos', 'Terapia eléctrica para aliviar el dolor de rodilla.', 7),
('2023-11-08', 'Consulta Nutricional', '60 minutos', 'Consulta para mejorar la alimentación.', 8),
('2023-11-09', 'Terapia con Ondas de Choque', '30 minutos', 'Uso de ondas de choque para tratar el dolor de pie.', 9),
('2023-11-10', 'Terapia con Kinesiología', '45 minutos', 'Evaluación de la movilidad de la muñeca.', 10);

INSERT INTO tb_citas (id_cliente, id_servicio, id_tratamiento, id_concepto) VALUES
(1, 1, 1, 1),  
(2, 2, 2, 1),  
(3, 3, 3, 1),  
(4, 4, 4, 1),  
(5, 5, 5, 1),  
(6, 6, 6, 1),  
(7, 7, 7, 1),  
(8, 8, 8, 1),  
(9, 9, 9, 1),  
(10, 10, 10, 1);

INSERT INTO tb_valoraciones (valoracion, id_cita) VALUES
('Excelente servicio y atención.', 1),  
('El tratamiento fue muy efectivo.', 2),
('Ambiente agradable y profesional.', 3),
('El masaje fue increíble.', 4),  
('Satisfecho con la acupuntura.', 5),  
('Gran equipo de profesionales.', 6),  
('Los resultados fueron muy buenos.', 7),  
('Volvería sin duda.', 8),  
('El servicio de fisioterapia fue excelente.', 9),  
('Atención muy personalizada.', 10);

INSERT INTO tb_expedientes (antecedentes_cliente, id_sesion, id_empleado, id_cita) VALUES
('Asma', 1, 1, 1),  
('Diabetes', 2, 2, 2),  
('Hipertensión', 3, 3, 3),
('Alergias', 4, 4, 4),  
('Cirugía previa', 5, 5, 5), 
('Ninguno', 6, 6, 6),  
('Artritis', 7, 7, 7),  
('Fractura previa', 8, 8, 8),  
('Problemas cardíacos', 9, 9, 9),
('Lesión deportiva', 10, 10, 10);