DROP SCHEMA IF EXISTS codelard;
CREATE SCHEMA codelard;
USE codelard;

CREATE TABLE categorie(
id_categorie INT PRIMARY KEY,
nom_categorie VARCHAR(50),
description_categorie VARCHAR(255)
);


CREATE TABLE film(
id_film INT PRIMARY KEY,
titre_film VARCHAR(150),
resume_film TEXT,
date_sortie_film DATE,
budget_film DECIMAL(12,2),
duree_film INT,
id_categorie INT,
FOREIGN KEY (id_categorie)
REFERENCES categorie(id_categorie)
ON DELETE SET NULL
ON UPDATE CASCADE
);

CREATE TABLE acteur(
id_acteur INT PRIMARY KEY,
nom_acteur VARCHAR(100),
prenom_acteur VARCHAR(100),
date_naissance_acteur DATE,
nationalite_acteur VARCHAR(50),
id_manager INT,
FOREIGN KEY (id_manager)
REFERENCES acteur(id_acteur)
ON DELETE SET NULL
ON UPDATE CASCADE
);

CREATE TABLE interview(
id_interview INT PRIMARY KEY,
titre_interview VARCHAR(150),
date_interview DATE,
duree_interview INT,
url_interview VARCHAR(255),
id_film INT,
FOREIGN KEY (id_film)
REFERENCES film(id_film)
ON DELETE CASCADE
);

CREATE TABLE evenement(
id_evenement INT PRIMARY KEY,
nom_evenement VARCHAR(150),
date_evenement DATE,
lieu_evenement VARCHAR(150),
capacite_lieu INT
);

CREATE TABLE edition_dvd(
id_edition INT PRIMARY KEY,
type_edition_dvd VARCHAR(50),
prix_dvd DECIMAL(6,2),
id_film INT,
FOREIGN KEY (id_film)
REFERENCES film(id_film)
ON DELETE CASCADE
);

CREATE TABLE vente(
id_vente INT PRIMARY KEY,
date_vente DATE,
quantite_vendue INT,
id_edition INT,
FOREIGN KEY (id_edition)
REFERENCES edition_dvd(id_edition)
ON DELETE CASCADE
);

CREATE TABLE jouer(
id_film INT,
id_acteur INT,
salaire_acteur_pour_film DECIMAL(10,2),
PRIMARY KEY(id_film,id_acteur),
FOREIGN KEY(id_film) REFERENCES film(id_film),
FOREIGN KEY(id_acteur) REFERENCES acteur(id_acteur)
);

CREATE TABLE participer_interview(
id_acteur INT,
id_interview INT,
PRIMARY KEY(id_acteur,id_interview),
FOREIGN KEY(id_acteur) REFERENCES acteur(id_acteur),
FOREIGN KEY(id_interview) REFERENCES interview(id_interview)
);

CREATE TABLE participer_evenement(
id_acteur INT,
id_evenement INT,
id_film INT,
PRIMARY KEY(id_acteur,id_evenement),
FOREIGN KEY(id_acteur) REFERENCES acteur(id_acteur),
FOREIGN KEY(id_evenement) REFERENCES evenement(id_evenement),
FOREIGN KEY(id_film) REFERENCES film(id_film)
);