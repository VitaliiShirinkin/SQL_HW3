-- добавляем альбомы
INSERT INTO album
VALUES (1, 'No Need to Argue', 1994),
       (2, 'To the Faithful Departed', 1996),
	   (3, 'Bury the Hatchet', 1999),
	   (4, 'In the End', 2019),
	   (5, 'Wake Up and Smell the Coffee', 2001),
	   (6, 'Step Into Christmas', 2018),
	   (7, 'Greatest Hits', 2021),
	   (8, '25th frame', 2001);
	   
-- добавляем исполнителей
INSERT INTO performer
VALUES (1, 'The Cranberries'),
       (2, 'Elton John'),
	   (3, 'Louis Armstrong'),
	   (4, 'Splin');
	   
-- жанр
INSERT INTO genre
VALUES (1, 'Foreign rock'),
       (2, 'Pop rock'),
	   (3, 'Dance music'),
	   (4, 'Traditional jazz'),
	   (5, 'Russian rock');
	   
-- трек
INSERT INTO track
VALUES (1, 4, 'Wake Me When It_s Over', '4:11'),
		(2, 1, 'Dreaming My Dreams', '4:28'),
		(3, 3, 'You And Me', '3:32'),
		(4, 2, 'Will You Remember?', '2:49'),
		(5, 6, 'Ho! Ho! Ho!', '4:06'),
		(6, 7, 'Blueberry Hill', '1:42'),
		(7, 8, 'Orbits without sugar', '2:17');
		
-- сборник
INSERT INTO collection
VALUES (1, 'Salvation', 2021),
	   (2, 'The Songs Of Elton John And Bernie Taupin', 2018),
		(3, 'Louis Armstrong, Classics', 2020),
		(4, 'Lullabies at night', 2019);
		
-- связь жанр и артист
INSERT INTO performer_genre
VALUES (1, 1), (2, 2), (3, 2), (4, 3), (5, 4);	

-- связь артист и альбом
INSERT INTO artist_album
VALUES (1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (2, 6), (3, 7), (4, 8);
		
-- связь сборник и трек
INSERT INTO track_from_collection
VALUES (1, 1), (2, 1), (3, 1), (4, 1), (5, 2), (6, 3), (7, 4);