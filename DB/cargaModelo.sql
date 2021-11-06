-- Tabla apertura
	INSERT INTO apertura(nombre)
		SELECT DISTINCT apertura 
			FROM temporal;

-- Tabla lengua
	INSERT INTO lengua(nombre)
		SELECT DISTINCT lengua
			FROM temporal;

-- Tabla estado
	INSERT INTO estado(nombre)
		SELECT DISTINCT estado
			FROM temporal;

-- Tabla genero
	INSERT INTO genero(nombre)
		SELECT DISTINCT genero
			FROM temporal;

-- Tabla estatuto
	INSERT INTO estatuto(nombre)
		SELECT DISTINCT estatuto_a
			FROM temporal;

-- Tabla role
	INSERT INTO role(nombre)
		SELECT DISTINCT role
			FROM temporal;

-- Tabla ubicacion
	INSERT INTO ubicacion(nombre)
		SELECT DISTINCT ubicuacion
			FROM temporal;

-- Tabla horario
	INSERT INTO horario(nombre)
		SELECT DISTINCT horarios
			FROM temporal;

-- Tabla departamento
	INSERT INTO departamento(nombre)
		SELECT DISTINCT nombre_dep
			FROM temporal;

-- Tabla nivel
	INSERT INTO nivel(nombre)
		SELECT DISTINCT nivel
			FROM temporal;

-- Tabla municipio
	INSERT INTO municipio(departamento, nombre)
		SELECT DISTINCT departamento.id, nombre_mun
			FROM departamento, temporal
            WHERE departamento.nombre = temporal.nombre_dep;

-- Tabla escuela
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

-- Tabla establecimiento
	INSERT INTO establecimiento(escuela, establecimiento, nombre, latlones_2, latlones_3, x_geo, y_geo)
		SELECT escuela.id, temporal.establecim, temporal.nombre, latlones_2, latlones_3, x_geo, y_geo
		FROM temporal, escuela, municipio, departamento
		WHERE temporal.nombre_mun = municipio.nombre AND temporal.nombre_dep = departamento.nombre AND escuela.municipio = municipio.id AND
			municipio.departamento = departamento.id AND temporal.escuela = escuela.escuela;

-- Tabla direccion
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

-- Tabla telefonox (normalizado en una tabla con varias columnas para telefono)
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

-- Tabla telefono (normalizado en una tabla con un solo campo para telefono)
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