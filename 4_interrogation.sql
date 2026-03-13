USE codelard;

-- =========================
-- 1️⃣ PROJECTIONS / SELECTIONS
-- =========================

-- 1. Liste des films sortis après 2015
SELECT titre_film, date_sortie_film
FROM film
WHERE date_sortie_film > '2015-01-01';

-- 2. Films triés par budget décroissant
SELECT titre_film, budget_film
FROM film
ORDER BY budget_film DESC;

-- 3. Acteurs américains
SELECT nom_acteur, prenom_acteur
FROM acteur
WHERE nationalite_acteur = 'USA';

-- 4. Films avec budget entre 150M et 300M
SELECT titre_film
FROM film
WHERE budget_film BETWEEN 150000000 AND 300000000;

-- 5. Films appartenant à certaines catégories
SELECT titre_film
FROM film
WHERE id_categorie IN (1,2);

-- =========================
-- 2️⃣ FONCTIONS D’AGREGATION
-- =========================

-- 6. Nombre total de films
SELECT COUNT(*) AS nombre_films
FROM film;

-- 7. Budget moyen des films
SELECT AVG(budget_film) AS budget_moyen
FROM film;

-- 8. Total des ventes de DVD
SELECT SUM(quantite_vendue) AS total_ventes
FROM vente;

-- 9. Nombre de films par catégorie
SELECT id_categorie, COUNT(*) AS nombre_films
FROM film
GROUP BY id_categorie;

-- 10. Quantité vendue par édition DVD
SELECT id_edition, SUM(quantite_vendue) AS total_ventes
FROM vente
GROUP BY id_edition;

-- =========================
-- 3️⃣ JOINTURES
-- =========================

-- 11. Films avec leur catégorie
SELECT titre_film, nom_categorie
FROM film
JOIN categorie
ON film.id_categorie = categorie.id_categorie;

-- 12. Acteurs et les films dans lesquels ils jouent
SELECT nom_acteur, prenom_acteur, titre_film
FROM acteur
JOIN jouer ON acteur.id_acteur = jouer.id_acteur
JOIN film ON film.id_film = jouer.id_film;

-- 13. Films et leurs ventes de DVD
SELECT titre_film, quantite_vendue
FROM film
JOIN edition_dvd ON film.id_film = edition_dvd.id_film
JOIN vente ON edition_dvd.id_edition = vente.id_edition;

-- 14. Acteurs et leurs interviews
SELECT nom_acteur, titre_interview
FROM acteur
JOIN participer_interview ON acteur.id_acteur = participer_interview.id_acteur
JOIN interview ON participer_interview.id_interview = interview.id_interview;

-- 15. Evénements avec les films présentés
SELECT nom_evenement, titre_film
FROM evenement
JOIN participer_evenement ON evenement.id_evenement = participer_evenement.id_evenement
JOIN film ON participer_evenement.id_film = film.id_film;

-- =========================
-- 4️⃣ REQUETES IMBRIQUEES
-- =========================

-- 16. Film avec le budget le plus élevé
SELECT titre_film
FROM film
WHERE budget_film =
(
SELECT MAX(budget_film)
FROM film
);

-- 17. Acteurs ayant joué dans Avengers
SELECT nom_acteur, prenom_acteur
FROM acteur
WHERE id_acteur IN
(
SELECT id_acteur
FROM jouer
WHERE id_film = 4
);

-- 18. Films n’ayant aucune vente de DVD
SELECT titre_film
FROM film
WHERE id_film NOT IN
(
SELECT id_film
FROM edition_dvd
JOIN vente ON edition_dvd.id_edition = vente.id_edition
);

-- 19. Acteurs ayant un salaire supérieur à la moyenne
SELECT nom_acteur
FROM acteur
WHERE id_acteur IN
(
SELECT id_acteur
FROM jouer
WHERE salaire_acteur_pour_film >
(
SELECT AVG(salaire_acteur_pour_film)
FROM jouer
)
);

-- 20. Films appartenant à la catégorie "Super héros"
SELECT titre_film
FROM film
WHERE id_categorie =
(
SELECT id_categorie
FROM categorie
WHERE nom_categorie = 'Super héros'
);