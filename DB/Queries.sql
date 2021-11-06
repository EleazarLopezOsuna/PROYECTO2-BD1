-- Consulta 1
	SELECT nivel.nombre AS Nivel, (COUNT(establecimiento.id)/(SELECT COUNT(id) FROM establecimiento)) * 100 AS Porcentaje
		FROM establecimiento, nivel, escuela
		WHERE escuela.nivel = nivel.id AND establecimiento.escuela = escuela.id
		GROUP BY nivel.nombre;

-- Consulta 2
	-- Region Sur: Jalapa, Jutiapa, Santa Rosa, Quetzaltenango, Retalhuleu, San Marcos, Solola, Suchitepequez, Totonicapan
	SELECT establecimiento.nombre AS Establecimiento, departamento.nombre AS Departamento
		FROM escuela, establecimiento, municipio, departamento
		WHERE escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND establecimiento.escuela = escuela.id
			AND departamento.nombre IN (
				'Jalapa', 'Jutiapa', 'Santa Rosa', 'Quetzaltenango', 'Retalhuleu', 'San Marcos', 'Solola', 'Suchitepequez', 'Totonicapan'
			)
		GROUP BY establecimiento.nombre;

-- Consulta 3
	SELECT municipio.nombre AS Municipio, departamento.nombre AS Departamento, COUNT(establecimiento.id) AS Establecimientos
		FROM municipio, departamento, establecimiento, escuela
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id
		GROUP BY municipio.nombre, departamento.nombre
		ORDER BY Establecimientos ASC
		LIMIT 10;

-- Consulta 4
	SELECT establecimiento.nombre AS Establecimiento, departamento.nombre AS Departamento
		FROM escuela, establecimiento, municipio, departamento
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
			departamento.nombre != 'Guatemala' AND establecimiento.nombre LIKE '%BARRIOS%';

-- Consulta 5
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

-- Consulta 6
	SELECT municipio.nombre AS Municipio, departamento.nombre AS Departamento, COUNT(establecimiento.id) AS Cantidad
		FROM escuela, establecimiento, municipio, departamento, ubicacion
		WHERE establecimiento.escuela = escuela.id AND escuela.municipio = municipio.id AND municipio.departamento = departamento.id AND
			escuela.ubicacion = ubicacion.id AND ubicacion.nombre = 'URBANO'
		GROUP BY municipio.nombre, departamento.nombre
		ORDER BY Municipio, Departamento;

-- Consulta 7
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

-- Consulta 8
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

-- Consulta 9
	SELECT horario.nombre AS Jornada, (COUNT(establecimiento.id)/(SELECT COUNT(id) FROM establecimiento)) * 100 AS Porcentaje
		FROM establecimiento, horario, escuela
		WHERE escuela.horario = horario.id AND establecimiento.escuela = escuela.id
		GROUP BY horario.nombre;


-- Consulta 10
	SELECT establecimiento.nombre AS Establecimiento, establecimiento.latlones_2 AS Estudiantes FROM establecimiento
		WHERE establecimiento.latlones_2 > (
			SELECT AVG(establecimiento.latlones_2) 
				FROM establecimiento
			)

-- Consulta 11
	-- Regiones
		-- Norte: Alta Verapaz, Baja Verapaz
		-- Nor-Occidente: Huehuetenango, Quiche
		-- NorOriente: Izabal, Chiquimula, Zacapa, El Progreso
		-- Sur-Occidente: San Marcos, Quetzaltenango, Totonicapan, Solola, Retalhuleu Suchitepequez
		-- Sur-Oriente: Jutiapa, Jalapa, Santa Rosa
		-- Central: Chimaltenango, Sacatepequez, Escuintla
		-- Metropolitana: Guatemala
		-- Peten: Peten
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

-- Consulta 12
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