USE codelard;

INSERT INTO categorie VALUES
(1,'Super héros','Films de super héros Marvel'),
(2,'Science fiction','Films futuristes'),
(3,'Action','Films d action'),
(4,'Fantastique','Univers fantastique'),
(5,'Aventure','Films d aventure');

INSERT INTO film VALUES
(1,'Iron Man','Origine de Tony Stark','2008-05-02',140000000,126,1),
(2,'Thor','Le dieu du tonnerre','2011-05-06',150000000,115,4),
(3,'Captain America','Le premier Avenger','2011-07-22',140000000,124,1),
(4,'Avengers','Les héros s unissent','2012-05-04',220000000,143,1),
(5,'Guardians of the Galaxy','Equipe cosmique','2014-08-01',170000000,121,2),
(6,'Black Panther','Roi du Wakanda','2018-02-16',200000000,134,1),
(7,'Doctor Strange','Maître des arts mystiques','2016-11-04',165000000,115,4),
(8,'Spider-Man Homecoming','Retour du héros','2017-07-07',175000000,133,1),
(9,'Avengers Infinity War','Combat contre Thanos','2018-04-27',316000000,149,1),
(10,'Avengers Endgame','Bataille finale','2019-04-26',356000000,181,1);

INSERT INTO acteur VALUES
(1,'Downey','Robert','1965-04-04','USA',NULL),
(2,'Evans','Chris','1981-06-13','USA',NULL),
(3,'Hemsworth','Chris','1983-08-11','Australie',NULL),
(4,'Johansson','Scarlett','1984-11-22','USA',NULL),
(5,'Pratt','Chris','1979-06-21','USA',NULL),
(6,'Boseman','Chadwick','1976-11-29','USA',NULL),
(7,'Cumberbatch','Benedict','1976-07-19','UK',NULL),
(8,'Holland','Tom','1996-06-01','UK',NULL),
(9,'Ruffalo','Mark','1967-11-22','USA',NULL),
(10,'Renner','Jeremy','1971-01-07','USA',NULL);

INSERT INTO edition_dvd VALUES
(1,'Standard',19.99,1),
(2,'Collector',29.99,1),
(3,'Standard',19.99,4),
(4,'Collector',29.99,4),
(5,'Standard',19.99,5),
(6,'Collector',29.99,6),
(7,'Standard',19.99,7),
(8,'Collector',29.99,8),
(9,'Standard',19.99,9),
(10,'Collector',29.99,10);

INSERT INTO vente VALUES
(1,'2024-01-10',200,1),
(2,'2024-01-15',150,2),
(3,'2024-02-01',180,3),
(4,'2024-02-10',220,4),
(5,'2024-03-01',140,5),
(6,'2024-03-10',130,6),
(7,'2024-04-01',160,7),
(8,'2024-04-10',190,8),
(9,'2024-05-01',210,9),
(10,'2024-05-15',250,10);