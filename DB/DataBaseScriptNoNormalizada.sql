CREATE DATABASE db1p2;
USE db1p2;

CREATE TABLE temporal (
	gid VARCHAR(256) NULL,
	establecim VARCHAR(256) NULL,
	nombre VARCHAR(256) NULL,
	latlones_2 VARCHAR(256) NULL,
	latlones_3 VARCHAR(256) NULL,
	departamen VARCHAR(256) NULL,
	escuela VARCHAR(256) NULL,
	x_geo VARCHAR(256) NULL,
	y_geo VARCHAR(256) NULL,
	nombre_dep VARCHAR(256) NULL,
	nombre_mun VARCHAR(256) NULL,
	nivel VARCHAR(256) NULL,
	direccion VARCHAR(256) NULL,
	telefono VARCHAR(256) NULL,
	genero VARCHAR(256) NULL,
	horarios VARCHAR(256) NULL,
	estatuto_a VARCHAR(256) NULL,
	ubicuacion VARCHAR(256) NULL,
	role VARCHAR(256) NULL,
	estado VARCHAR(256) NULL,
	lengua VARCHAR(256) NULL,
	apertura VARCHAR(256) NULL
);

CREATE TABLE apertura(
	id INT NOT NULL AUTO_INCREMENT,
	nombre  VARCHAR(256),
	PRIMARY KEY(id)
);

CREATE TABLE lengua(
	id INT NOT NULL AUTO_INCREMENT,
	nombre  VARCHAR(256),
	PRIMARY KEY(id)
);

CREATE TABLE estado(
	id INT NOT NULL AUTO_INCREMENT,
	nombre  VARCHAR(256),
	PRIMARY KEY(id)
);

CREATE TABLE genero(
	id INT NOT NULL AUTO_INCREMENT,
	nombre  VARCHAR(256),
	PRIMARY KEY(id)
);

CREATE TABLE estatuto(
	id INT NOT NULL AUTO_INCREMENT,
	nombre  VARCHAR(256),
	PRIMARY KEY(id)
);

CREATE TABLE role(
	id INT NOT NULL AUTO_INCREMENT,
	nombre  VARCHAR(256),
	PRIMARY KEY(id)
);

CREATE TABLE ubicacion(
	id INT NOT NULL AUTO_INCREMENT,
	nombre  VARCHAR(256),
	PRIMARY KEY(id)
);

CREATE TABLE horario(
	id INT NOT NULL AUTO_INCREMENT,
	nombre  VARCHAR(256),
	PRIMARY KEY(id)
);

CREATE TABLE departamento(
	id INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(256),
	PRIMARY KEY(id)
);

CREATE TABLE municipio(
	id INT NOT NULL AUTO_INCREMENT,
	departamento INT NOT NULL,
	nombre VARCHAR(256),
	PRIMARY KEY(id),
	CONSTRAINT fk_municipio_departamento FOREIGN KEY(departamento) REFERENCES departamento(id)
);

CREATE TABLE nivel(
	id INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(256),
	PRIMARY KEY(id)
);

CREATE TABLE establecimiento(
	id INT NOT NULL,
	escuela INT NOT NULL,
	establecimiento VARCHAR(256),
	nombre VARCHAR(256),
	PRIMARY KEY(id),
	CONSTRAINT fk_establecimiento_escuela FOREIGN KEY(escuela) REFERENCES escuela(id)
);

CREATE TABLE escuela(
	id INT NOT NULL,
	municipio INT NOT NULL,
	ubicacion INT NOT NULL,
	nivel INT NOT NULL,
	horario INT NOT NULL,
	role INT NOT NULL,
	estatuto INT NOT NULL,
	genero INT NOT NULL,
	lengua INT NOT NULL,
	apertura INT NOT NULL,
	estado INT NOT NULL,
	latlones_2 VARCHAR(256),
	latlones_3 VARCHAR(256),
	direccion VARCHAR(256),
	x_geo VARCHAR(256),
	y_geo VARCHAR(256),
	direccion VARCHAR(256),
	telefono VARCHAR(256),
	PRIMARY KEY(id),
	CONSTRAINT fk_escuela_municipio FOREIGN KEY(municipio) REFERENCES municipio(id),
	CONSTRAINT fk_escuela_ubicacion FOREIGN KEY(ubicacion) REFERENCES ubicacion(id),
	CONSTRAINT fk_escuela_nivel FOREIGN KEY(nivel) REFERENCES nivel(id),
	CONSTRAINT fk_escuela_horario FOREIGN KEY(horario) REFERENCES horario(id),
	CONSTRAINT fk_escuela_role FOREIGN KEY(role) REFERENCES role(id),
	CONSTRAINT fk_escuela_estatuto FOREIGN KEY(estatuto) REFERENCES estatuto(id),
	CONSTRAINT fk_escuela_genero FOREIGN KEY(genero) REFERENCES genero(id),
	CONSTRAINT fk_escuela_lengua FOREIGN KEY(lengua) REFERENCES lengua(id),
	CONSTRAINT fk_escuela_apertura FOREIGN KEY(apertura) REFERENCES apertura(id),
	CONSTRAINT fk_escuela_estado FOREIGN KEY(estado) REFERENCES estado(id)
);