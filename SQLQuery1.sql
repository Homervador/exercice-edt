USE [exercice-edt];
CREATE TABLE Eleve (
	nom VARCHAR(40) NOT NULL,
	prenom VARCHAR(40)NOT NULL,
	mail VARCHAR(50) NOT NULL,

	--PRIMARY KEY (mail)
);

CREATE TABLE Formateur (
	nom VARCHAR(40)NOT NULL,
	prenom VARCHAR(40) NOT NULL,
	mail VARCHAR(50) NOT NULL,
	telephone CHAR(10) NULL,

	--PRIMARY KEY (mail, telephone)
);

CREATE TABLE Promotion (
	nom VARCHAR(40) NOT NULL,
	dateDebut DATE NOT NULL,
	dateFin DATE NOT NULL,

	--PRIMARY KEY (nom)
);

CREATE TABLE Formation (
	nom VARCHAR(40) NOT NULL,
	nbHeureTotale FLOAT(5) NULL,

	--PRIMARY KEY (nom)
);

CREATE TABLE Matiere(
	nom VARCHAR(40) NOT NULL,

	--PRIMARY KEY (nom)
);

CREATE TABLE SALLE (
	nom VARCHAR(40) NOT NULL,
	capacité INTEGER NOT NULL,

	--PRIMARY KEY (nom)
);

CREATE TABLE Cours (
	dateDebut DATE NOT NULL,
	dateFin DATE NOT NULL,
	id INTEGER NOT NULL,

	--PRIMARY KEY (id) 
);

CREATE TABLE EmploiDuTemps (
	dateDebut DATE NOT NULL,
	dateFin DATE NOT NULL
	id INTEGER NOT NULL,

	--PRIMARY KEY (id)
);

--CREATE TABLE Absence ();

