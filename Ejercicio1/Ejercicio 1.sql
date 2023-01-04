/*
Un videoclub que alquila pel�culas en video almacena la informaci�n de sus pel�culas en una tabla, llamada pel�culas, para cada pel�cula necesita los siguientes datos:
	-Nombre, Cadena de caracteres de 40 de longitud,
	-Actor, Cadena de caracteres de 50 de longitud,
	-Duraci�n, Valor num�rico, entero.
	-Cantidad de copias: Valor Entero.

	1-Elimine la tabla si existe
	2-Cree la tabla eligiendo el tipo de dato adecuado para cada campo.
	3-Vea la estructura de la tabla.

	4-Ingrese los siguientes registros:
	R1: MISION Imposible, Tom Cruise, 128,3
	R2: MISION Imposible2, Tom Cruise, 130,2
	R3: Mujer Bonita, Julia Roberts, 118, 3
	R4: Elsa y Fred, China Zorrilla, 110, 2
	5-Muestre Los Datos
	6-Muestre Las Columnas
*/

Repuesta:

--CONDICIONAR (Booleano)
IF OBJECT_ID('Peliculas') Is Not Null
DROP TABLE Peliculas;


--CREAR TABLA
CREATE TABLE Peliculas(
	Nombre Varchar(40) Not Null,
	Actor Varchar(50) Not Null,
	Duracion Integer Not Null,
	Cantidad Integer Not Null,
);

--ALIMENTAR DATA
INSERT INTO Peliculas (Nombre, Actor, Duracion, Cantidad) VALUES ('misi�n Imposible', 'Tom Cruise', 128, 3);
INSERT INTO Peliculas (Nombre, Actor, Duracion, Cantidad) VALUES ('misi�n Imposible 2', 'Tom Cruise', 130, 2);
INSERT INTO Peliculas (Nombre, Actor, Duracion, Cantidad) VALUES ('Mujer Bonita', 'Julia Roberts', 118, 3);
INSERT INTO Peliculas (Nombre, Actor, Duracion, Cantidad) VALUES ('Elsa & Fred', 'China Zorrilla', 110,2);


--RECUPERAR DATA
SELECT * FROM Peliculas
Exec sp_columns_100 Peliculas
--DATA NUEVA
INSERT INTO Peliculas (Nombre, Actor, Duracion, Cantidad) VALUES ('caballero De La Noche', 'Christian Bale', 2.32, 300);
--RECUPERAR NUEVA DATA
SELECT * FROM Peliculas
Exec sp_columns Peliculas
