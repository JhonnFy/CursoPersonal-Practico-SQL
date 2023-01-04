--Repuesta:

--BOOLEANO
IF OBJECT_ID('Articulos') Is Not Null 
DROP TABLE Articulos;
--LOTE#1
CREATE TABLE Articulos(
	CodSKU Integer Not Null,
	Descripcion1 Varchar(80) Not Null,
	Descripcion2 Varchar(80) Not Null,
	Stock Float Not Null,
	IdUnidad Varchar(80) Not Null,
	CodBarras Varchar(80) Not Null,
	IdAlmacen Varchar(80) Not Null,
);
Go
--Recuperar COLUMNAS
EXEC sp_columns Articulos
--Insertar DATA
INSERT INTO Articulos (CodSKU, Descripcion1, Descripcion2, Stock, IdUnidad, CodBarras, IdAlmacen) VALUES ('1', 'Sea Este El SKU N�mero Uno  Desc1', 'Sea Este El SKU N�mero Uno  Desc2', 17.2, 'Pallet', 'Lector12345678910','Sea Este El Almacen N�mero Uno');
INSERT INTO Articulos (CodSKU, Descripcion1, Descripcion2, Stock, IdUnidad, CodBarras, IdAlmacen) VALUES ('2', 'Sea Este El SKU N�mero Dos  Desc1', 'Sea Este El SKU N�mero Dos  Desc2', 1000.1,'Unidad', 'Lector10987654321', 'Sea Este El Almacen N�mero Dos');
INSERT INTO Articulos (CodSKU, Descripcion1, Descripcion2, Stock, IdUnidad, CodBarras, IdAlmacen) VALUES ('3', 'Sea Este El SKU N�mero Tres Desc1', 'Sea Este El SKU N�mero Tres Desc2', 5000.2, 'UND' ,'Lector10897654321', 'Sea Este El Almacen N�mero Tres');
--Recuperar el primer atributo.		
SELECT A.CodSKU FROM Articulos A
--Recuperar los dos primeros atributos.
SELECT A.CodSKU, A.Descripcion1 FROM Articulos A
--Recuperar los tres primeros atributos.
SELECT A.CodSKU, A.Descripcion1, A.Descripcion2 FROM Articulos A
--Recuperar los cuatro primeros atributos.
SELECT A.CodSKU, A.Descripcion1, A.Descripcion2, A.Stock FROM Articulos A
--Recuperar los cinco primeros atributos.
SELECT A.CodSKU, A.Descripcion1, A.Descripcion2, A.Stock, A.IdUnidad FROM Articulos A



--Recuperar los seis primeros atributos.
SELECT A.CodSKU, A.Descripcion1, A.Descripcion2, A.Stock, A.IdUnidad, A.CodBarras FROM Articulos A 
--Recuperar los siete primeros atributos.
SELECT A.CodSKU, A.Descripcion1, A.Descripcion2, A.Stock, A.IdUnidad, A.CodBarras, A.IdAlmacen FROM Articulos A
--Recuperar DATA
SELECT * FROM Articulos
