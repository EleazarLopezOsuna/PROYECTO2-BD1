| Apertura    |    |    |
| ----------- | -- | -- |
| Columna     | id | nombre |
| Restricción | PK |  |
|             | 1  | ANUAL |
|             | 2  |  |
|             | 3  | SEMESTRAL |

| Departamento |    |    |
| ------------ | -- | -- |
| Columna      | id | nombre |
| Restricción  | PK |  |
|              | 1  | Guatemala |
|              | 2  | El Progreso |
|              | 3  | Sacatepequez |

| Direccion   |    |    |    |    |    |    |    |
| ----------- | -- | -- | -- | -- | -- | -- | -- |
| Columna     | id | Establecimiento | avenida | calle | casa | zona | Descripción |
| Restricción | PK | FK |  |  |  |  |  |
|             | 1  | 1 |  | 19 CALLE | 12-71 |  |  |
|             | 2  | 10 | 13 AVENIDA |  | 4-78 | ZONA 1 |  |
|             | 3  | 100 |  | 19 CALLE | 12-71 |  |  |

| Escuela     |    |    |    |    |    |    |    |    |    |    |    |    |
| ----------- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- |
| Columna     | id | municipio | ubicacion | nivel | horario | role | estatuto | genero | lengua | apertura | estado | escuela |
| Restricción | PK | FK | FK | FK | FK | FK | FK | FK | FK | FK | FK |  |
|             | 1  | 1 | 1 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 2990904 |
|             | 2  | 1 | 1 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 2990903 |
|             | 3  | 1 | 1 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 2990905 |

| Establecimiento |    |    |    |    |    |    |    |    |
| --------------- | -- | -- | -- | -- | -- | -- | -- | -- |
| Columna         | id | escuela | establecimiento | nombre | latlones\_2 | latlones\_3 | x\_geo | y\_geo |
| Restricción     | PK | FK |  |  |  |  |  |  |
|                 | 1  | 2010 | 00-01-0001-42 | EODP NO.20 'ANTONIO JOSE DE IRISARRI' | 1 | 42 | \-90.5539 | 14.6302 |
|                 | 2  | 2010 | 00-01-0002-42 | EODP NO.21 'GABRIELA MISTRAL' | 2 | 42 | \-90.5539 | 14.6302 |
|                 | 3  | 2011 | 00-01-0003-42 | EODP NO. 36 LA PRESIDENTA | 3 | 42 | \-90.5208 | 14.6284 |

| Estado      |    |    |
| ----------- | -- | -- |
| Columna     | id | nombre |
| Restricción | PK |  |
|             | 1  | ABIERTA |
|             | 2  | CERRADA TEMPORALMENTE |
|             | 3  | CERRADA DEFINITIVAMENTE |

| Estatuto    |    |    |
| ----------- | -- | -- |
| Columna     | id | nombre |
| Restricción | PK |  |
|             | 1  | OFICIAL |
|             | 2  | PRIVADO |
|             | 3  | MUNICIPAL |

| Genero      |    |    |
| ----------- | -- | -- |
| Columna     | id | nombre |
| Restricción | PK |  |
|             | 1  | MIXTA |
|             | 2  | HOMBRES |
|             | 3  | MUJERES |

| Horario     |    |    |
| ----------- | -- | -- |
| Columna     | id | nombre |
| Restricción | PK |  |
|             | 1  | MATUTINA |
|             | 2  | VESPERTINA |
|             | 3  | NOCTURNA |

| Lengua      |    |    |
| ----------- | -- | -- |
| Columna     | id | nombre |
| Restricción | PK |  |
|             | 1  | MONOLINGUE |
|             | 2  |  |
|             | 3  | BILINGUE |

| Municipio   |    |    |    |
| ----------- | -- | -- | -- |
| Columna     | id | Departamento | nombre |
| Restricción | PK | FK |  |
|             | 1  | 1 | GUATEMALA |
|             | 2  | 1 | SANTA CATARINA PINULA |
|             | 3  | 1 | SAN JOSE PINULA |

| Nivel       |    |    |
| ----------- | -- | -- |
| Columna     | id | nombre |
| Restricción | PK |  |
|             | 1  | PREPRIMARIA PARVULOS |
|             | 2  | PRIMARIA DE NI |
|             | 3  | PRIMARIA DE ADULTOS |

| Role        |    |    |
| ----------- | -- | -- |
| Columna     | id | nombre |
| Restricción | PK |  |
|             | 1  | PURA |
|             | 2  | ANEXA |
|             | 3  |  |

| Telefono    |    |    |    |
| ----------- | -- | -- | -- |
| Columna     | id | establecimiento | telefono |
| Restricción | PK | FK |  |
|             | 1  | 1 | 22324443 |
|             | 2  | 10 | 22511678 |
|             | 3  | 10052 | 54912913 |

| Telefonox   |    |                 |    |    |    |
| ----------- | -- | --------------- | -- | -- | -- |
| Columna     | id | establecimiento | Telefono1 | Telefono2 | Telefono3 |
| Restricción | PK | FK              |  |  |  |
|             | 1  | 1075            | 52508890 | 56877742 | 66344014 |
|             | 2  | 12379           | 8903046 | 3042010 |  |
|             | 3  | 1258            | 4991323 | 4799492 |  |

| Ubicación   |    |    |
| ----------- | -- | -- |
| Columna     | id | nombre |
| Restricción | PK |  |
|             | 1  | URBANO |
|             | 2  |  |
|             | 3  | RURAL |

### Entidad Relacion sin aplicar normalizacion
![ER sin normalizar](https://drive.google.com/uc?export=view&id=1AoLpaBI-16NeCJH6hbwNJ4xa7YavPhig)

### Entidad Relacion aplicando normalizacion
![ER con normalizacion](https://drive.google.com/uc?export=view&id=1FwmRMaGxwKqPKVUrAriURZViMCXbD9AN)

```
Se aplico la normalizacion en la tabla "Escuela" sobre los campos direccion y telefono
    - Direccion: Se separo la direccion por avenida, calle, casa, zona y descripcion
    - Telefono: Primero se separaron en telefono1, telefono2 y telefono3 estos datos fueron almacenados en la tabla "Telefonox", luego se transformaron los datos
      ingresandolos en la tabla final "Telefono" en la que se ingresa un solo telefono por fila.
```

### Creacion de base de datos
```
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

CREATE TABLE escuela(
	id INT NOT NULL AUTO_INCREMENT,
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
	escuela VARCHAR(256),
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

CREATE TABLE establecimiento(
	id INT NOT NULL AUTO_INCREMENT,
	escuela INT NOT NULL,
	establecimiento VARCHAR(256),
	nombre VARCHAR(256),
	latlones_2 VARCHAR(256),
	latlones_3 VARCHAR(256),
	x_geo VARCHAR(256),
	y_geo VARCHAR(256),
	PRIMARY KEY(id),
	CONSTRAINT fk_establecimiento_escuela FOREIGN KEY(escuela) REFERENCES escuela(id)
);

CREATE TABLE telefonox(
	id INT NOT NULL AUTO_INCREMENT,
	establecimiento INT NOT NULL,
	telefono1 VARCHAR(256),
	telefono2 VARCHAR(256),
	telefono3 VARCHAR(256),
	PRIMARY KEY(id),
	CONSTRAINT fk_telefonox_establecimiento FOREIGN KEY(establecimiento) REFERENCES establecimiento(id)
);

CREATE TABLE telefono(
	id INT NOT NULL AUTO_INCREMENT,
	establecimiento INT NOT NULL,
	telefono VARCHAR(256),
	PRIMARY KEY(id),
	CONSTRAINT fk_telefono_establecimiento FOREIGN KEY(establecimiento) REFERENCES establecimiento(id)
);

CREATE TABLE direccion(
	id INT NOT NULL AUTO_INCREMENT,
	establecimiento INT NOT NULL,
	avenida VARCHAR(256),
	calle VARCHAR(256),
	casa VARCHAR(256),
	zona VARCHAR(256),
	descripcion VARCHAR(256),
	PRIMARY KEY(id),
	CONSTRAINT fk_direccion_establecimiento FOREIGN KEY(establecimiento) REFERENCES establecimiento(id)
);
```

### Carga Masiva
```
LOAD DATA LOCAL INFILE "C:\\Users\\jared\\Downloads\\escuelas_gtm.csv" 
INTO TABLE temporal 
COLUMNS TERMINATED BY ';' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES 
(gid,establecim,nombre,latlones_2,latlones_3,departamen,escuela,x_geo,y_geo,nombre_dep,nombre_mun,nivel,direccion,
telefono,genero,horarios,estatuto_a,ubicuacion,role,estado,lengua,apertura);
```

### Carga de Modelo

##### Apertura
```
INSERT INTO apertura(nombre)
		SELECT DISTINCT apertura 
			FROM temporal;
```

##### Lengua
```
INSERT INTO lengua(nombre)
		SELECT DISTINCT lengua
			FROM temporal;
```

##### Estado
```
INSERT INTO estado(nombre)
		SELECT DISTINCT estado
			FROM temporal;
```

##### Genero
```
INSERT INTO genero(nombre)
		SELECT DISTINCT genero
			FROM temporal;
```

##### Estatuto
```
INSERT INTO estatuto(nombre)
		SELECT DISTINCT estatuto_a
			FROM temporal;
```

##### Role
```
INSERT INTO role(nombre)
		SELECT DISTINCT role
			FROM temporal;
```

##### Ubicacion
```
INSERT INTO ubicacion(nombre)
		SELECT DISTINCT ubicuacion
			FROM temporal;
```

##### Horario
```
INSERT INTO horario(nombre)
		SELECT DISTINCT horarios
			FROM temporal;
```

##### Departamento
```
INSERT INTO departamento(nombre)
		SELECT DISTINCT nombre_dep
			FROM temporal;
```

##### Nivel
```
INSERT INTO nivel(nombre)
		SELECT DISTINCT nivel
			FROM temporal;
```

##### Municipio
```
INSERT INTO municipio(departamento, nombre)
		SELECT DISTINCT departamento.id, nombre_mun
			FROM departamento, temporal
            WHERE departamento.nombre = temporal.nombre_dep;
```

##### Departamento
```
INSERT INTO departamento(nombre)
		SELECT DISTINCT nombre_dep
			FROM temporal;
```

##### Escuela
```
INSERT INTO escuela(municipio, ubicacion, nivel, horario, role, estatuto, genero, 
			lengua, apertura, estado, escuela)
		SELECT municipio.id, ubicacion.id, nivel.id, horario.id, role.id, estatuto.id, genero.id, 
			lengua.id, apertura.id, estado.id, escuela
		FROM temporal, municipio, departamento, ubicacion, nivel, horario, role, estatuto, genero, lengua, apertura, estado
		WHERE temporal.nombre_mun = municipio.nombre AND temporal.nombre_dep = departamento.nombre AND municipio.departamento = departamento.id AND
				temporal.nivel = nivel.nombre AND temporal.horarios = horario.nombre AND temporal.role = role.nombre AND 
				temporal.estatuto_a = estatuto.nombre AND temporal.genero = genero.nombre AND temporal.lengua = lengua.nombre AND
				temporal.apertura = apertura.nombre AND temporal.estado = estado.nombre AND temporal.ubicuacion = ubicacion.nombre
		GROUP BY escuela, municipio.id;
```

##### Establecimiento
```
INSERT INTO establecimiento(escuela, establecimiento, nombre, latlones_2, latlones_3, x_geo, y_geo)
		SELECT escuela.id, temporal.establecim, temporal.nombre, latlones_2, latlones_3, x_geo, y_geo
		FROM temporal, escuela, municipio, departamento
		WHERE temporal.nombre_mun = municipio.nombre AND temporal.nombre_dep = departamento.nombre AND escuela.municipio = municipio.id AND
			municipio.departamento = departamento.id AND temporal.escuela = escuela.escuela;
```

##### Direccion
```
INSERT INTO direccion(establecimiento, avenida, calle, casa, zona, descripcion) 
		SELECT establecimiento.id,
				IF(CHAR_LENGTH(t.direccion) - CHAR_LENGTH(REPLACE(t.direccion, ',', '')) >=0,
					SUBSTRING_INDEX(SUBSTRING_INDEX(t.direccion, ',', 1), ',', -1), null ),
				IF(CHAR_LENGTH(t.direccion) - CHAR_LENGTH(REPLACE(t.direccion, ',', '')) >= 1,
					SUBSTRING_INDEX(SUBSTRING_INDEX(t.direccion, ',', 2), ',', -1), null ),
				IF(CHAR_LENGTH(t.direccion) - CHAR_LENGTH(REPLACE(t.direccion, ',', '')) >= 2,
					SUBSTRING_INDEX(SUBSTRING_INDEX(t.direccion, ',', 3), ',', -1), null ),
				IF(CHAR_LENGTH(t.direccion) - CHAR_LENGTH(REPLACE(t.direccion, ',', '')) >= 3,
					SUBSTRING_INDEX(SUBSTRING_INDEX(t.direccion, ',', 4), ',', -1), null ),
				IF(CHAR_LENGTH(t.direccion) - CHAR_LENGTH(REPLACE(t.direccion, ',', '')) >= 4,
					SUBSTRING_INDEX(SUBSTRING_INDEX(t.direccion, ',', 5), ',', -1), null )
			FROM temporal t, establecimiento
			WHERE CHAR_LENGTH(t.direccion) - CHAR_LENGTH(REPLACE(t.direccion, ',', '')) >= 0 AND t.gid = establecimiento.id
			ORDER BY t.gid;
```

##### Telefonox
```
INSERT INTO telefonox(establecimiento, telefono1, telefono2, telefono3)
		SELECT establecimiento.id,
			IF(CHAR_LENGTH(t.telefono) - CHAR_LENGTH(REPLACE(t.telefono, '&', '')) >=0,
				SUBSTRING_INDEX(SUBSTRING_INDEX(t.telefono, '&', 1), '&', -1), null ) as Telefono1,
			IF(CHAR_LENGTH(t.telefono) - CHAR_LENGTH(REPLACE(t.telefono, '&', '')) >= 1,
				SUBSTRING_INDEX(SUBSTRING_INDEX(t.telefono, '&', 2), '&', -1), null ) as Telefono2,
			IF(CHAR_LENGTH(t.telefono) - CHAR_LENGTH(REPLACE(t.telefono, '&', '')) >= 2,
				SUBSTRING_INDEX(SUBSTRING_INDEX(t.telefono, '&', 3), '&', -1), null ) as Telefono3
		FROM temporal t, establecimiento
			WHERE CHAR_LENGTH(t.telefono) - CHAR_LENGTH(REPLACE(t.telefono, '&', '')) >= 0 AND t.gid = establecimiento.id
			ORDER BY t.gid;
```

##### Telefono
```
INSERT INTO telefono(establecimiento, telefono)
		SELECT establecimiento, telefono1
		FROM telefonox
		WHERE telefono1 NOT IN (SELECT telefono FROM telefono) AND telefono1 != '';

	INSERT INTO telefono(establecimiento, telefono)
		SELECT establecimiento, telefono2
		FROM telefonox
		WHERE telefono2 NOT IN (SELECT telefono FROM telefono) AND telefono2 != '';

	INSERT INTO telefono(establecimiento, telefono)
		SELECT establecimiento, telefono3
		FROM telefonox
		WHERE telefono3 NOT IN (SELECT telefono FROM telefono) AND telefono3 != '';
```

### Consultas

##### Consulta 1
> Desplegar el porcentaje de establecimientos por cada nivel educativo.
```
SELECT nivel.nombre AS Nivel, (COUNT(establecimiento.id)/(SELECT COUNT(id) FROM establecimiento)) * 100 AS Porcentaje
		FROM establecimiento, nivel, escuela
		WHERE escuela.nivel = nivel.id AND establecimiento.escuela = escuela.id
		GROUP BY nivel.nombre;
```

##### Consulta 2
> Desplegar los establecimientos en el sur del país.
```
SELECT establecimiento.nombre AS Establecimiento, departamento.nombre AS Departamento
		FROM escuela, establecimiento, municipio, departamento
		WHERE escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND establecimiento.escuela = escuela.id
			AND departamento.nombre IN (
				'Jalapa', 'Jutiapa', 'Santa Rosa', 'Quetzaltenango', 'Retalhuleu', 'San Marcos', 'Solola', 'Suchitepequez', 'Totonicapan'
			)
		GROUP BY establecimiento.nombre;
```

##### Consulta 3
> Desplegar un Top 10 de Municipios con menos establecimientos.
```
SELECT municipio.nombre AS Municipio, departamento.nombre AS Departamento, COUNT(establecimiento.id) AS Establecimientos
		FROM municipio, departamento, establecimiento, escuela
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id
		GROUP BY municipio.nombre, departamento.nombre
		ORDER BY Establecimientos ASC
		LIMIT 10;
```

##### Consulta 4
> Desplegar los establecimientos con “BARRIOS” en su nombre que no estén en la capital.
```
SELECT establecimiento.nombre AS Establecimiento, departamento.nombre AS Departamento
		FROM escuela, establecimiento, municipio, departamento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
			departamento.nombre != 'Guatemala' AND establecimiento.nombre LIKE '%BARRIOS%';
```

##### Consulta 5
> Desplegar el total de establecimientos en los municipios agrupados por su letra inicial, es decir, agrupar los municipios con A luego calcular el número de establecimientos, lo mismo para los que inicien con B y así sucesivamente.
```
SELECT 'A' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'A%'
	UNION
	SELECT 'B' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'B%'
	UNION
	SELECT 'C' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'C%'
	UNION
	SELECT 'D' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'D%'
	UNION
	SELECT 'E' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'E%'
	UNION
	SELECT 'F' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'F%'
	UNION
	SELECT 'G' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'G%'
	UNION
	SELECT 'H' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'H%'
	UNION
	SELECT 'I' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'I%'
	UNION
	SELECT 'J' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'J%'
	UNION
	SELECT 'K' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'K%'
	UNION
	SELECT 'L' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'L%'
	UNION
	SELECT 'M' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'M%'
	UNION
	SELECT 'N' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'N%'
	UNION
	SELECT 'O' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'O%'
	UNION
	SELECT 'P' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'P%'
	UNION
	SELECT 'Q' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'Q%'
	UNION
	SELECT 'R' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'R%'
	UNION
	SELECT 'S' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'S%'
	UNION
	SELECT 'T' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'T%'
	UNION
	SELECT 'U' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'U%'
	UNION
	SELECT 'V' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'V%'
	UNION
	SELECT 'W' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'W%'
	UNION
	SELECT 'X' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'X%'
	UNION
	SELECT 'Y' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'Y%'
	UNION
	SELECT 'Z' AS Letra, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, municipio, establecimiento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.nombre LIKE 'Z%';
```

##### Consulta 6
> Desplegar los municipios con su departamento los cuales contengan al menos un establecimiento urbano.
```
SELECT municipio.nombre AS Municipio, departamento.nombre AS Departamento, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, establecimiento, municipio, departamento, ubicacion
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
			escuela.ubicacion = ubicacion.id AND ubicacion.nombre = 'URBANO'
		GROUP BY municipio.nombre, departamento.nombre
		ORDER BY Municipio, Departamento;
```

##### Consulta 7
> Mostrar los departamentos en donde haya más establecimientos para mujeres que para hombres.
```
SELECT departamento.nombre AS Departamento, COALESCE(mujeres.Cantidad, 0) AS 'Mujeres', COALESCE(hombres.Cantidad, 0) AS 'Hombres'
		FROM departamento
		LEFT JOIN (
			SELECT departamento.nombre AS Departamento, COUNT(establecimiento.id) AS Cantidad
				FROM escuela, establecimiento, municipio, departamento, genero
				WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
					escuela.genero = genero.id AND genero.nombre = 'MUJERES'
				GROUP BY departamento.nombre
				ORDER BY departamento.nombre
		) mujeres ON departamento.nombre = mujeres.Departamento
		LEFT JOIN (
			SELECT departamento.nombre AS Departamento, COUNT(establecimiento.id) AS Cantidad
				FROM escuela, establecimiento, municipio, departamento, genero
				WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
					escuela.genero = genero.id AND genero.nombre = 'HOMBRES'
				GROUP BY departamento.nombre
				ORDER BY departamento.nombre
		) hombres ON departamento.nombre = hombres.Departamento
		WHERE COALESCE(mujeres.Cantidad, 0) > COALESCE(hombres.Cantidad, 0);
```

##### Consulta 8
> Desplegar el porcentaje de establecimientos rurales y urbanas de los departamentos en donde haya más establecimientos rurales.
```
SELECT departamento.nombre AS Departamento, rural.Cantidad AS Rural, urbano.Cantidad AS Urbano
	FROM departamento
	LEFT JOIN (
		SELECT departamento.nombre AS Departamento, (COUNT(establecimiento.id) / total.Cantidad) * 100 AS Cantidad
			FROM escuela, establecimiento, municipio, ubicacion, departamento
			LEFT JOIN (
				SELECT departamento.nombre AS Departamento, COUNT(establecimiento.id) AS Cantidad
					FROM escuela, establecimiento, municipio, departamento
					WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id
					GROUP BY departamento.nombre
			) total ON departamento.nombre = total.Departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				escuela.ubicacion = ubicacion.id AND ubicacion.nombre = 'RURAL'
			GROUP BY departamento.nombre
	) rural ON departamento.nombre = rural.Departamento
	LEFT JOIN (
		SELECT departamento.nombre AS Departamento, (COUNT(establecimiento.id) / total.Cantidad) * 100 AS Cantidad
			FROM escuela, establecimiento, municipio, ubicacion, departamento
			LEFT JOIN (
				SELECT departamento.nombre AS Departamento, COUNT(establecimiento.id) AS Cantidad
					FROM escuela, establecimiento, municipio, departamento
					WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id
					GROUP BY departamento.nombre
			) total ON departamento.nombre = total.Departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				escuela.ubicacion = ubicacion.id AND ubicacion.nombre = 'URBANO'
			GROUP BY departamento.nombre
	) urbano ON departamento.nombre = urbano.Departamento
	WHERE rural.Cantidad > urbano.Cantidad
	ORDER BY departamento.nombre;
```

##### Consulta 9
> Mostrar el porcentaje de establecimientos por Jornada.
```
SELECT horario.nombre AS Jornada, (COUNT(establecimiento.id)/(SELECT COUNT(id) FROM establecimiento)) * 100 AS Porcentaje
		FROM establecimiento, horario, escuela
		WHERE escuela.horario = horario.id AND establecimiento.escuela = escuela.id
		GROUP BY horario.nombre;
```

##### Consulta 10
> Desplegar los establecimientos que tengan más estudiantes que el promedio.
```
SELECT establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes FROM establecimiento
		WHERE establecimiento.latlones_2 > (
			SELECT AVG(establecimiento.latlones_2) 
				FROM establecimiento
			);
```

##### Consulta 11
> Desplegar la cantidad estudiantes que hay por región (Norte, Nor-Occidente, NorOriente, Sur-Occidente, Sur-Oriente, Central, Metropolitana, Petén).
```
SELECT 'Norte' AS Region, SUM(establecimiento.latlones_2) AS Estudiantes
		FROM escuela, establecimiento, municipio, departamento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
			departamento.nombre IN ('Alta Verapaz', 'Baja Verapaz')
	UNION
	SELECT 'Nor-Occidente' AS Region, SUM(establecimiento.latlones_2) AS Estudiantes
		FROM escuela, establecimiento, municipio, departamento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
			departamento.nombre IN ('Huehuetenango', 'Quiche')
	UNION
	SELECT 'NorOriente' AS Region, SUM(establecimiento.latlones_2) AS Estudiantes
		FROM escuela, establecimiento, municipio, departamento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
			departamento.nombre IN ('Izabal', 'Chiquimula', 'Zacapa', 'El Progreso')
	UNION
	SELECT 'Sur-Occidente' AS Region, SUM(establecimiento.latlones_2) AS Estudiantes
		FROM escuela, establecimiento, municipio, departamento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
			departamento.nombre IN ('San Marcos', 'Quetzaltenango', 'Totonicapan', 'Solola', 'Retalhuleu', 'Suchitepequez')
	UNION
	SELECT 'Sur-Oriente' AS Region, SUM(establecimiento.latlones_2) AS Estudiantes
		FROM escuela, establecimiento, municipio, departamento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
			departamento.nombre IN ('Jutiapa', 'Jalapa', 'Santa Rosa')
	UNION
	SELECT 'Central' AS Region, SUM(establecimiento.latlones_2) AS Estudiantes
		FROM escuela, establecimiento, municipio, departamento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
			departamento.nombre IN ('Chimaltenango', 'Sacatepequez', 'Escuintla')
	UNION
	SELECT 'Metropolitana' AS Region, SUM(establecimiento.latlones_2) AS Estudiantes
		FROM escuela, establecimiento, municipio, departamento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
			departamento.nombre IN ('Guatemala')
	UNION
	SELECT 'Peten' AS Region, SUM(establecimiento.latlones_2) AS Estudiantes
		FROM escuela, establecimiento, municipio, departamento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
			departamento.nombre IN ('Peten');
```

##### Consulta 12
> Desplegar los 2 establecimientos con más estudiantes de cada departamento.
```
(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'Guatemala'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'Peten'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'Alta Verapaz'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'Baja Verapaz'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'Huehuetenango'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'Quiche'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'Jutiapa'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'Jalapa'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'Santa Rosa'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'Izabal'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'Chiquimula'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'Zacapa'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'El Progreso'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'Chimaltenango'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'Sacatepequez'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'Escuintla'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'Suchitepequez'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'Retalhuleu'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'Solola'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'Totonicapan'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'Quetzaltenango'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	UNION
	(SELECT departamento.nombre AS Departamento, establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes
			FROM escuela, municipio, establecimiento, departamento
			WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
				departamento.nombre = 'San Marcos'
			ORDER BY establecimiento.latlones_2 DESC
			LIMIT 2)
	ORDER BY Departamento;
```