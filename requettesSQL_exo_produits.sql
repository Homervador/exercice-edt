SET IDENTITY_INSERT Categorie ON;

INSERT INTO Categorie (id,libelles)
VALUES (1,'FRUITS');

INSERT INTO Categorie (id,libelles)
VALUES (2,'LEGUMES');

INSERT INTO Categorie (Libelles,id)
VALUES ('GATEAUX',3);

--INSERT INTO Categorie (id,Libelles)
--VALUES (1,SURGELLE);  --clé primaire en double

INSERT INTO Categorie (id, libelles) 
VALUES(4,'SURGELLE');

SET IDENTITY_INSERT Categorie OFF;

SET IDENTITY_INSERT Produit ON;

INSERT INTO Produit (id,nom,code,idCategorie)
VALUES(1,'poisson',12345,4);

INSERT INTO Produit (id,nom,code,idCategorie)
VALUES(2,'orange',23456,1);

INSERT INTO Produit (id,nom,code,idCategorie)
VALUES(3,'carotte',34567,2);

INSERT INTO Produit (id,nom,code,idCategorie)
VALUES(4,'choux',45678,2);

INSERT INTO Produit (id,nom,code,idCategorie)
VALUES(5,'pomme',56789,1);;

INSERT INTO Produit (id,nom,code,idCategorie)
VALUES(6,'glaces',67890,4);

INSERT INTO Produit (id,nom,code,idCategorie)
VALUES(7,'paris_brest',78901,3);

INSERT INTO Produit (id,nom,code,idCategorie)
VALUES(8,'tartes',89012,3);

--INSERT INTO Produits VALUES
--	(1,'poisson',12345,4),
--	(2,'orange',23456,1),
--	(3,'carotte',34567,2),
--  (4,'choux',45678,2);

SET IDENTITY_INSERT Produit OFF;

INSERT INTO Produit (nom,code,idCategorie)
VALUES('papates','aaaaa',2);

UPDATE Produit		--modifie le champ set ou le where est présent
SET code = '55555'
WHERE nom = 'tartes';

--DELETE FROM Produit 
--WHERE nom='pomme'; --supprimer le produit qui s'appelle 'pomme'
--WHERE code > 'B' --supprimer les produit avec un code sup à B


--SELECT nom, code AS 'Code du produit', idCategorie AS 'Numéro de Categorie'
--FROM Produit
--WHERE nom = 'tartes'

SELECT nom, CONCAT(code,' : ', nom) AS 'Code : produit', idCategorie AS 'Numéro de Categorie'
FROM Produit
--WHERE nom = 'papates'
ORDER BY nom DESC, code; --classement

SELECT * FROM Produit

SELECT * FROM Produit
WHERE idCategorie = 3


--aller chercher des info dans plusieur tables

SELECT
libelles AS 'Nom de categotie',
CONCAT(nom, ' (',code,') ') AS Produit
FROM categorie, produit
WHERE categorie.id = produit.idCategorie
ORDER BY Categorie.libelles, Produit.nom
