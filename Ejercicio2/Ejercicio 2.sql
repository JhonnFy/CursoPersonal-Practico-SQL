/*
Una empresa almacena los datos de sus empleados en una tabla 'Empleados' que almacena: 'Nombre', 'Documento', 'Sexo', 'Domicilio', 'SueldoBasico'.
1-Elimine la tabla, si existe.
2-Cree la tabla eligiendo el tipo de dato adecuado para cada campo
3-Ver la estructura de la tabla
4-Ingrese algunos registros:
	R1:Juan Perez, 22333444, M, Sarmiento 123, 500
	R2:Ana Acosta, 24555666, F, Colon 134,650
	R3:Bartolome Barrios, 27888999, 'M, Urquiza 479, 800
5-Seleccionar Todos Los Registros
6-Ver la estructura de la tabla
*/

Repuesta:

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
