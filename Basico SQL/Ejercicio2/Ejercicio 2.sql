--Repuesta:

--CONDICIONAR (Booleano)
IF OBJECT_ID('Empleados') Is Not Null
DROP TABLE Empleados;

--CREAR TABLA
CREATE TABLE Empleados(
	Nombre Varchar(80) Not Null,
	Documento Varchar(30) Not Null,
	Sexo Varchar(10) Not Null,
	Domicilio Varchar(50) Not Null,
	SueldoBasico Float Not Null,
);

--ALIMENTAR DATA
INSERT INTO Empleados (Nombre, Documento, Sexo, Domicilio, SueldoBasico) VALUES ('Juan Perez', '22333444,', 'M', 'Sarmiento 123', 572.845);
INSERT INTO Empleados (Nombre, Documento, Sexo, Domicilio, SueldoBasico) VALUES ('Ana Acosta', '24555666', 'F', 'Popular2 123', 650.850);
INSERT INTO Empleados (Nombre, Documento, Sexo, Domicilio, SueldoBasico) VALUES ('Bartolome Barrios', '27888999', 'M', 'Urquiza 479', 800.900);
--RECUPERAR DATA
Exec sp_columns Empleados
--RECUPERAR DATA
SELECT * FROM Empleados
--ALIMENTAR DATA
INSERT INTO Empleados (Nombre, Documento, Sexo, Domicilio, SueldoBasico) VALUES ('Adicional1', '987654321', 'M', 'AvCalle100', 1500.000);
--RECUPERAR NUEVA DATA
SELECT * FROM Empleados
