SET IDENTITY_INSERT Categorie ON;
INSERT INTO Categorie (id, libelle) VALUES
	(1,'FRUITS'),
	(2,'LEGUMES'),
	(3,'GATEAUX'),
	(4,'SURGELLE')
SET IDENTITY_INSERT Categorie OFF;

SET IDENTITY_INSERT Produit ON;
INSERT INTO Produit (id, nom, code, idCategorie) VALUES
	(1,'poisson','12345',4),
	(2,'orange','23456',1),
	(3,'carotte','34567',2),
	(4,'choux','45678',2),
	(5,'pomme','56789',1),
	(6,'glaces','67890',4),
	(7,'paris_brest','78901',3),
	(8,'tartes','89012',3),
	(9,'papates','aaaaa',2)
SET IDENTITY_INSERT Produit OFF;

SET IDENTITY_INSERT Client ON;
INSERT INTO Client (id, nom, prenom, mail) VALUES
	(1,'nom','Prenom','mail@mail'),
	(2,'nom1','Prenom1','mail@mail1'),
	(3,'nom2','Prenom2','mail@mail2'),
	(4,'nom3','Prenom3','mail@mail3'),
	(5,'nom4','Prenom4','mail@mail4')
SET IDENTITY_INSERT Client OFF;

SET IDENTITY_INSERT Commande ON;
INSERT INTO Commande (id,adresseDeLivraison, idClient) VALUES
	(1, 'adresse1', 4),
	(2, 'adresse2', 5),
	(3, 'adresse3', 1),
	(4, 'adresse4', 2),
	(5, 'adresse5', 3),
	(6, 'adresse3', 1),
	(7, 'adresse1', 4)
SET IDENTITY_INSERT Commande OFF;

INSERT INTO LigneDeCommande (quantite, idProduit, idCommande) VALUES
	(2,5,1),
	(5,3,2),
	(3,8,3),
	(4,3,4),
	(9,2,5),
	(1,7,2),
	(3,4,3),
	(2,7,3),
	(1,5,4),
	(15,6,7),
	(10,4,6),
	(13,8,4)