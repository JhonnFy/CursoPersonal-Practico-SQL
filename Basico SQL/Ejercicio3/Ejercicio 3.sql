--Condicional (Booleano)
IF OBJECT_ID('Libros')Is Not Null
DROP TABLE Libros;

--Lote1
CREATE TABLE Libros(
	Titulo Varchar (40) Not Null,
	Autor Varchar (30) Not Null,
	Editorial Varchar (15) Not Null,
	Precio Float Not Null,
	Cantidad Integer Not NUll,
);
Go

--Insertar DATA 
INSERT INTO Libros (Titulo, Autor, Editorial, Precio, Cantidad) VALUES ('Datos Cientificos', 'Ciencas Naturales', 'Planeta', 854.235, 8000);
INSERT INTO Libros (Titulo, Autor, Editorial, Precio, Cantidad) VALUES ('Fundamentos C#', 'Deitel & Deitel', 'Mudo Literario', 254.700, 1000);
INSERT INTO Libros (Titulo, Autor, Editorial, Precio, Cantidad) VALUES ('Datos Primitivos', 'Deitel & Deitel', 'DSR De Software', 875.498, 2000000);

--Recuperar DATA
SELECT * FROM Libros
--Recuperar COLUMNAS
Exec sp_columns Libros
--Recuperar DATA, Especifica
SELECT L.Titulo FROM Libros L
SELECT L.Titulo, L.Autor FROM Libros L
SELECT L.Titulo, L.Autor, L.Editorial FROM Libros L
SELECT L.Titulo, L.Autor, L.Editorial, L.Precio FROM Libros L
SELECT L.Titulo, L.Autor, L.Editorial, L.Precio, L.Cantidad FROM Libros L
