Domaine choisi:

Nous avons choisi le domaine de la production cinématographique dans l’univers Marvel.

Nous modélisons une entreprise similaire à Marvel Studios, dont l’activité consiste à :

Produire et distribuer des films

Classer les films par catégories

Gérer les acteurs principaux

Organiser des événements promotionnels

Enregistrer des interviews

Commercialiser des éditions DVD

Enregistrer les ventes de DVD

Étape 1 : Analyse des besoins
I.A Récupération des besoins

L’analyse des besoins a été réalisée en utilisant une Intelligence Artificielle Générative (IAG), qui a joué le rôle de l’entreprise.

Nous avons utilisé le framework RICARDO pour structurer notre prompt.

I.B Prompt utilisé (Framework RICARDO)
R – Rôle

Tu es une entreprise de production cinématographique internationale spécialisée dans l’univers Marvel.

I – Instructions

Décrire les règles de gestion métier sous forme de liste à puces.

Construire un dictionnaire de données brutes sous forme de tableau avec les colonnes :

Signification de la donnée

Type

Taille

Il doit contenir entre 25 et 35 données.

Les données ne doivent pas être organisées en tables.

C – Contexte

L’entreprise :

produit plusieurs films

classe les films par catégories

enregistre le budget et la date de chaque film

gère les acteurs principaux

organise des événements promotionnels

réalise des interviews

vend des éditions DVD

Elle souhaite appliquer la méthode MERISE pour concevoir son système d'information.

A – Contraintes additionnelles

Les règles doivent être formulées comme par une personne connaissant le métier mais pas l’informatique.

Le dictionnaire doit contenir entre 25 et 35 données.

Ne pas produire directement un MCD.

R – Références

Site officiel Marvel Studios :
https://www.marvel.com/movies

Fonctionnement général des studios cinématographiques internationaux.

D – Rendement désiré

Liste à puces pour les règles métier

Tableau structuré pour le dictionnaire de données

O – Objectif

Obtenir les informations nécessaires à la construction d’un MCD conforme à MERISE.

I.C Règles de gestion obtenues

Un film appartient à une seule catégorie.

Une catégorie peut contenir plusieurs films.

Chaque film possède un titre unique.

Chaque film a une date de sortie.

Chaque film possède un budget.

Un film peut avoir plusieurs acteurs principaux.

Un acteur peut jouer dans plusieurs films.

Le salaire d’un acteur dépend du film dans lequel il joue.

Un film peut faire l’objet de plusieurs interviews.

Une interview concerne un seul film.

Une interview inclut au moins un acteur.

L’entreprise organise des événements promotionnels.

Un événement concerne un seul film.

Plusieurs acteurs peuvent participer à un événement.

Un acteur peut manager plusieurs acteurs.

Un acteur a au maximum un manager.

Un film peut posséder plusieurs éditions DVD.

Une édition DVD appartient à un seul film.

Une vente concerne une seule édition DVD.

Une édition DVD peut faire l’objet de plusieurs ventes.

I.D Dictionnaire de données
Signification	Type	Taille
id_film	Numérique	10
titre_film	Alphanumérique	150
resume_film	Texte	1000
date_sortie_film	Date	10
budget_film	Numérique décimal	12
duree_film	Numérique	3
id_categorie	Numérique	5
nom_categorie	Alphanumérique	50
description_categorie	Texte	255
id_acteur	Numérique	10
nom_acteur	Alphanumérique	100
prenom_acteur	Alphanumérique	100
date_naissance_acteur	Date	10
nationalite_acteur	Alphanumérique	50
salaire_acteur_pour_film	Numérique décimal	10
id_interview	Numérique	10
titre_interview	Alphanumérique	150
date_interview	Date	10
duree_interview	Numérique	3
url_interview	Alphanumérique	255
id_evenement	Numérique	10
nom_evenement	Alphanumérique	150
date_evenement	Date	10
lieu_evenement	Alphanumérique	150
capacite_lieu	Numérique	6
id_edition	Numérique	10
type_edition_dvd	Alphanumérique	50
prix_dvd	Numérique décimal	6
id_vente	Numérique	10
date_vente	Date	10
quantite_vendue	Numérique	6


Étape 2 : Modèle Conceptuel de Données (MCD)

Le MCD a été réalisé avec le logiciel Looping.

<img width="2048" height="1178" alt="image" src="https://github.com/user-attachments/assets/bb420369-5865-4616-b0f6-a60482dc06ff" />

