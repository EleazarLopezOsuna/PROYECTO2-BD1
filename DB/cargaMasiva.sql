LOAD DATA LOCAL INFILE "C:\\Users\\jared\\Downloads\\escuelas_gtm.csv" 
INTO TABLE temporal 
COLUMNS TERMINATED BY ';' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES 
(gid,establecim,nombre,latlones_2,latlones_3,departamen,escuela,x_geo,y_geo,nombre_dep,nombre_mun,nivel,direccion,
telefono,genero,horarios,estatuto_a,ubicuacion,role,estado,lengua,apertura);