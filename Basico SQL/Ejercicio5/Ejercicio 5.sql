--Respuesta: 

--BOOLEANO
IF OBJECT_ID('Usuarios') Is Not Null
DROP TABLE Usuarios;
--LOTE#1
CREATE TABLE Usuarios(
	IdUsuario Integer Not Null,
	PrimerNombre Varchar(80) Not Null,
	SegundoNombre Varchar(80) Not Null,
	PrimerApellido Varchar(80) Not Null,
	SegundoApellido Varchar(80) Not Null,
	Departamento Varchar(80) Not Null,
);
Go
--Recuperar COLUMNAS
Exec sp_columns Usuarios
--ALIMENTAR DATA
INSERT INTO Usuarios (IdUsuario, PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, Departamento) VALUES ('112345678','Juan','David','Castillo','Motta','Contabilidad');
INSERT INTO Usuarios (IdUsuario, PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, Departamento) VALUES ('212345678','Carlos','Martin','Rojas','Alfonso','Juridica');
INSERT INTO Usuarios (IdUsuario, PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, Departamento) VALUES ('312345678','David','David','Motta','Motta','Cobranzas');
--Recuperar el primer atributo.
SELECT U.IdUsuario FROM Usuarios U
--Recuperar los dos primeros atributos.
SELECT U.IdUsuario, U.PrimerNombre FROM Usuarios U
--Recuperar los tres primeros atributos.
SELECT U.IdUsuario, U.PrimerNombre, U.SegundoNombre FROM Usuarios U
--Recuperar los cuatro primeros atributos.
SELECT U.IdUsuario, U.PrimerNombre, U.SegundoNombre, U.PrimerApellido FROM Usuarios U
--Recuperar los cinco primeros atributos.
SELECT U.IdUsuario, U.PrimerNombre, U.SegundoNombre, U.PrimerApellido, U.SegundoApellido FROM Usuarios U
--Recuperar los seis primeros atributos.
SELECT U.IdUsuario, U.PrimerNombre, U.SegundoNombre, U.PrimerApellido, U.SegundoApellido, U.Departamento FROM Usuarios U
--RECUPERAR DATA
SELECT * FROM Usuarios
