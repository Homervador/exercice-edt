SET IDENTITY_INSERT Formation ON;
INSERT INTO Formation (id, nom, nbHeureTotale) VALUES
	(1, 'formation1', 11000),
	(2, 'formation2', 15000),
	(3, 'formation3', 6000),
	(4, 'formation4', 9000),
	(5, 'formation5', 10000),
	(6, 'formation6', 10600),
	(7, 'formation7', 1062),
	(8, 'formation8', 1300),
	(9, 'formation9', 5500),
	(10,'formation10', 5610)
SET IDENTITY_INSERT Formation OFF;

SET IDENTITY_INSERT Promotion ON;
INSERT INTO Promotion (id, nom, dateDebut, dateFin, formation_id) VALUES
	(1, 'PromotionA', '20100101 00:00:00 AM', '20120101 00:00:00 AM', 1),
	(2, 'PromotionB', '20110101 00:00:00 AM', '20130101 00:00:00 AM', 1),
	(3, 'PromotionA', '20100101 00:00:00 AM', '20120101 00:00:00 AM', 2),
	(4, 'PromotionB', '20110101 00:00:00 AM', '20130101 00:00:00 AM', 2),
	(5, 'PromotionA', '20100101 00:00:00 AM', '20120101 00:00:00 AM', 3),
	(6, 'PromotionB', '20110101 00:00:00 AM', '20130101 00:00:00 AM', 3),
	(7, 'PromotionA', '20100101 00:00:00 AM', '20120101 00:00:00 AM', 4),
	(8, 'PromotionB', '20110101 00:00:00 AM', '20130101 00:00:00 AM', 4),
	(9, 'PromotionA', '20100101 00:00:00 AM', '20120101 00:00:00 AM', 5),
	(10, 'PromotionB', '20110101 00:00:00 AM', '20130101 00:00:00 AM', 5),
	(11, 'PromotionA', '20100101 00:00:00 AM', '20120101 00:00:00 AM', 6),
	(12, 'PromotionB', '20110101 00:00:00 AM', '20130101 00:00:00 AM', 6),
	(13, 'PromotionA', '20100101 00:00:00 AM', '20120101 00:00:00 AM', 7),
	(14, 'PromotionB', '20110101 00:00:00 AM', '20130101 00:00:00 AM', 7),
	(15, 'PromotionA', '20100101 00:00:00 AM', '20120101 00:00:00 AM', 8),
	(16, 'PromotionB', '20110101 00:00:00 AM', '20130101 00:00:00 AM', 8),
	(17, 'PromotionA', '20100101 00:00:00 AM', '20120101 00:00:00 AM', 9),
	(18, 'PromotionB', '20110101 00:00:00 AM', '20130101 00:00:00 AM', 9),
	(19, 'PromotionA', '20100101 00:00:00 AM', '20120101 00:00:00 AM', 10),
	(20, 'PromotionB', '20110101 00:00:00 AM', '20130101 00:00:00 AM', 10),
	(21, 'PromotionC', '20100701 00:00:00 AM', '20120101 00:00:00 AM', 10),
	(22, 'PromotionD', '20110701 00:00:00 AM', '20130101 00:00:00 AM', 10)
SET IDENTITY_INSERT Promotion OFF;

SET IDENTITY_INSERT Eleve ON;
INSERT INTO Eleve (id, nom, prenom, mail, promotion_id) VALUES
	(1, 'nom 1', 'prenom 1','mailmail@mail_1', 1),
	(2, 'nom 2', 'prnom 2', 'mailmail@mail_2', 1),
	(3, 'nom 3', 'prenom 3', 'mailmail@mail_3', 1),
	(4, 'nom4', 'prenom4', 'mailmail@mail4', 5),
	(5, 'nom5', 'prenom5', 'mailmail@mail5', 5),
	(6, 'nom6', 'prenom6', 'mailmail@mail6', 6),
	(7, 'nom7', 'prenom7', 'mailmail@mail7', 7),
	(8, 'nom8', 'prenom8', 'mailmail@mail8', 7),
	(9, 'nom9', 'prenom9', 'mailmail@mail9', 7),
	(10, 'nom10', 'prenom10', 'mailmail@mail10', 12),
	(11, 'nom11', 'prenom11', 'mailmail@mail11', 12),
	(12, 'nom12', 'prenom12', 'mailmail@mail12', 12)
SET IDENTITY_INSERT Eleve OFF;

SET IDENTITY_INSERT Formateur ON;
INSERT INTO Formateur (id, nom, prenom, mail, telephone) VALUES
	(1, 'nom 1', 'prenom 1','mailmail@mail_1', 0612151415),
	(2, 'nom 2', 'prnom 2', 'mailmail@mail_2', 1234567890),
	(3, 'nom 3', 'prenom 3', 'mailmail@mail_3', 2345678901),
	(4, 'nom4', 'prenom4', 'mailmail@mail4', 3456789012),
	(5, 'nom5', 'prenom5', 'mailmail@mail5', 4567890123),
	(6, 'nom6', 'prenom6', 'mailmail@mail6', 5678901234),
	(7, 'nom7', 'prenom7', 'mailmail@mail7', 6789012345),
	(8, 'nom8', 'prenom8', 'mailmail@mail8', 7890123456)
SET IDENTITY_INSERT Formateur OFF;

SET IDENTITY_INSERT Matiere ON;
INSERT INTO Matiere (id, nom) VALUES
	(1, 'math'),
	(2, 'français'),
	(3, 'chimie'),
	(4,'physique'),
	(5, 'anglais'),
	(6, 'espagnol'),
	(7, 'allemand'),
	(8, 'Latin'),
	(9, 'histoire'),
	(10, 'géographie')
SET IDENTITY_INSERT Matiere OFF;

INSERT INTO matiere_formation (id_formation, id_matiere) VALUES
	(1, 1),
	(1, 3),
	(1, 4),
	(2, 2),
	(2, 5),
	(2, 6),
	(2, 8),
	(3, 9),
	(3, 10),
	(4, 5),
	(4, 6),
	(4, 4),
	(5, 1),
	(5, 6),
	(5, 2),
	(6, 9),
	(6, 3),
	(7, 4),
	(7, 1),
	(7, 10),
	(8, 6),
	(8, 4),
	(9, 7),
	(9, 8),
	(10, 10),
	(10, 1)


INSERT INTO matiere_formateur (id_formateur, id_matiere) VALUES
	(1, 9),
	(1, 10),
	(2, 7),
	(3, 1),
	(3, 3),
	(3, 4),
	(4, 2),
	(4, 8),
	(5, 6),
	(6, 8),
	(6, 9),
	(7, 5),
	(7, 6),
	(7, 7),
	(8, 1),
	(8, 3)

SET IDENTITY_INSERT Salle ON;
INSERT INTO Salle (id, nom, capacite) VALUES
	(1, 'Salle1', 15),
	(2, 'Salle2', 22),
	(3, 'Salle3', 12),
	(4, 'Salle4', 25),
	(5, 'Salle5', 30),
	(6, 'Salle6', 15),
	(7, 'Salle7', 11)
SET IDENTITY_INSERT Salle OFF;

SET IDENTITY_INSERT Cours ON;
INSERT INTO Cours (id, dateDebut, dateFin, salle_id, formateur_id, promotion_id, matiere_id) VALUES
	(1, '20110701 08:00:00 AM', '20110701 10:00:00 AM', 2, 1, 5, 9),
	(2, '20110701 10:00:00 AM', '20110701 12:00:00 AM', 3, 2, 17, 7),
	(3, '20110702 08:00:00 AM', '20110702 10:00:00 AM', 6, 3, 2, 3),
	(4, '20110703 08:00:00 AM', '20110703 12:00:00 AM', 4, 4, 3, 8),
	(5, '20110706 08:00:00 AM', '20110706 01:00:00 PM', 6, 5, 8, 6),
	(6, '20110706 08:00:00 AM', '20110706 10:00:00 AM', 7, 6, 12, 9),
	(7, '20110707 09:00:00 AM', '20110707 11:00:00 AM', 1, 7, 3, 5),
	(8, '20110708 08:00:00 AM', '20110708 12:00:00 AM', 2, 8, 9, 1),
	(9, '20110709 12:00:00 AM', '20110709 03:00:00 PM', 4, 3, 7, 4),
	(10, '20110710 08:00:00 AM', '20110710 10:00:00 AM', 6, 5, 10, 6)
SET IDENTITY_INSERT Cours OFF;

INSERT INTO Absence (id_eleve, id_cours) VALUES
	(4, 1),
	(8, 9),
	(11,6)