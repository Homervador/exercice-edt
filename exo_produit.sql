CREATE TABLE Categorie(
	id INT NOT NULL IDENTITY PRIMARY KEY,
	libelles VARCHAR(50),
	
);

CREATE TABLE Produit(
	id INT NOT NULL IDENTITY PRIMARY KEY,
	nom VARCHAR(50),
	code Char(5) UNIQUE,
	idCategorie INTEGER,
	CONSTRAINT produit_categorie_fk
		FOREIGN KEY (idCategorie)
		REFERENCES Categorie (id)
);

CREATE TABLE Client(
	id INT NOT NULL IDENTITY PRIMARY KEY,
	nom VARCHAR(50)NOT NULL,
	prénom VARCHAR(50) NOT NULL, 
	mail VARCHAR(70) UNIQUE NOT NULL, 
);

CREATE TABLE Commande(
	id INT NOT NULL IDENTITY PRIMARY KEY,
	adresseDeLivraison VARCHAR(100)NOT NULL,
	idClient INTEGER,
	CONSTRAINT commande_client_fk
		FOREIGN KEY (idClient)
		REFERENCES Client (id),
);

CREATE TABLE LigneDeCommande(
	id INT NOT NULL IDENTITY PRIMARY KEY,
	quantite INT NOT NULL,
	idProduit INTEGER,
	idCommande INTEGER,
	CONSTRAINT ligneDeCommande_produit_fk
		FOREIGN KEY (idProduit)
		REFERENCES Produit (id),
	CONSTRAINT ligneDeCommande_commande_fk
		FOREIGN KEY (idCommande)
		REFERENCES Commande (id)
);



