ALTER TABLE film
ADD CONSTRAINT budget_positif
CHECK (budget_film > 0);

ALTER TABLE film
ADD CONSTRAINT duree_positive
CHECK (duree_film > 0);

ALTER TABLE edition_dvd
ADD CONSTRAINT prix_positif
CHECK (prix_dvd > 0);

ALTER TABLE vente
ADD CONSTRAINT quantite_positive
CHECK (quantite_vendue > 0);

ALTER TABLE evenement
ADD CONSTRAINT capacite_positive
CHECK (capacite_lieu > 0);
