--Repuesta:

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
