USE [exo_edt];


CREATE TABLE Formation (
	id INT NOT NULL IDENTITY PRIMARY KEY,
	nom VARCHAR(40) NOT NULL,
	nbHeureTotale FLOAT(5) NULL,


);

CREATE TABLE Promotion (
	id INT NOT NULL IDENTITY PRIMARY KEY,
	nom VARCHAR(40) NOT NULL,
	dateDebut DATE NOT NULL,
	dateFin DATE NOT NULL,
	formation_id INTEGER NOT NULL,
	CONSTRAINT Promotion_Formation_fk
		FOREIGN KEY	(formation_id)
		REFERENCES Formation (id)
);

CREATE TABLE Eleve (
	id INT NOT NULL IDENTITY PRIMARY KEY,
	nom VARCHAR(40) NOT NULL,
	prenom VARCHAR(40)NOT NULL,
	mail VARCHAR(50) UNIQUE NOT NULL,
	promotion_id INTEGER NOT NULL,
	CONSTRAINT Eleve_Promotion_fk
		FOREIGN KEY (promotion_id)
		REFERENCES Promotion (id)
);

CREATE TABLE Formateur (
	id INT NOT NULL IDENTITY PRIMARY KEY,
	nom VARCHAR(40)NOT NULL,
	prenom VARCHAR(40) NOT NULL,
	mail VARCHAR(50) UNIQUE NOT NULL,
	telephone CHAR(10) UNIQUE NULL,
);

CREATE TABLE Matiere(
	id INT NOT NULL IDENTITY PRIMARY KEY,
	nom VARCHAR(40) NOT NULL,
);

CREATE TABLE matiere_formation(
	id_matiere INTEGER NOT NULL,
	id_formation INTEGER NOT NULL,
	CONSTRAINT matiere_formation_id_matiere_fk
		FOREIGN KEY (id_matiere)
		REFERENCES Matiere (id),
	CONSTRAINT matiere_formation_id_formation_fk
		FOREIGN KEY (id_formation)
		REFERENCES Formation (id)
);

CREATE TABLE matiere_formateur(
	id_matiere INTEGER NOT NULL,
	id_formateur INTEGER NOT NULL,

	PRIMARY KEY (id_matiere, id_formateur),
	CONSTRAINT matiere_formateur_id_matiere_fk
		FOREIGN KEY (id_matiere)
		REFERENCES Matiere (id),
	CONSTRAINT matiere_formateur_id_formateur_fk
		FOREIGN KEY (id_formateur)
		REFERENCES Formateur (id)
);

CREATE TABLE Salle (
	id INT NOT NULL IDENTITY PRIMARY KEY,
	nom VARCHAR(40) NOT NULL,
	capacite INTEGER NOT NULL,
	CONSTRAINT salle_unique UNIQUE (nom, capacite)
);


CREATE TABLE Cours (
	id INT NOT NULL IDENTITY PRIMARY KEY,
	dateDebut DATE NOT NULL,
	dateFin DATE NOT NULL,
	salle_id INTEGER NOT NULL,
	formateur_id INTEGER NOT NULL,
	promotion_id INTEGER NOT NULL,
	matiere_id INTEGER NOT NULL,
	CONSTRAINT cours_salle_fk
		FOREIGN KEY (salle_id)
		REFERENCES Salle (id),
	CONSTRAINT cours_formateur_fk
		FOREIGN KEY (formateur_id)
		REFERENCES Formateur (id),
	CONSTRAINT cours_promotion_fk
		FOREIGN KEY (promotion_id)
		REFERENCES Promotion (id),
	CONSTRAINT cours_matiere_fk
		FOREIGN KEY (matiere_id)
		REFERENCES Matiere (id),	
);

CREATE TABLE Absence (
	id_eleve INTEGER NOT NULL,
	id_cours INTEGER NOT NULL,
	
	PRIMARY KEY (id_eleve, id_cours),
	CONSTRAINT Absence_eleve_fk
		FOREIGN KEY (id_eleve)
		REFERENCES Eleve (id),
	CONSTRAINT Absence_cours_fk
		FOREIGN KEY (id_cours)
		REFERENCES Cours (id)


);
