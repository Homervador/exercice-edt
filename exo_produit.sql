CREATE TABLE Categorie(
	id INTEGER NOT NULL PRIMARY KEY,
	libelles VARCHAR(50),
	
);

CREATE TABLE Produit(
	id INTEGER NOT NULL PRIMARY KEY,
	nom VARCHAR(50),
	code Char(5) UNIQUE,
	idCategorie INTEGER,
	CONSTRAINT produit_categorie_fk
		FOREIGN KEY (idCategorie)
		REFERENCES Categorie (id)
);