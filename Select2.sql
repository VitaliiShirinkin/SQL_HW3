-- посчитаем, сколько исполнителей в каждом жанре
SELECT g.name, p.artist_name, COUNT(artist_name) FROM genre g
JOIN performer_genre p_g ON g.genre_id = p_g.genre_id
JOIN performer p ON p_g.performer_id = p.performer_id
GROUP BY g.name, p.artist_name
ORDER BY 2;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT album_name n, release_year y, COUNT(track.track_id)count
FROM album
JOIN track ON track.album_id = album.album_id
GROUP BY n, y
HAVING release_year BETWEEN 1994 AND 2002
ORDER BY 2;

--Средняя продолжительность треков по каждому альбому.
SELECT AVG(t.duration), a.album_name n FROM track t
JOIN album a ON a.album_id = t.album_id
GROUP BY n;

-- все исполнители, которые не выпустили альбомы в 2020 году.
SELECT p.artist_name, a1.release_year FROM public.performer p
JOIN artist_album a2 ON a2.performer_id = p.performer_id
JOIN album a1 ON a1.album_id = a2.album_id
WHERE a1.release_year !=2020
GROUP BY p.artist_name, a1.release_year;

-- Названия сборников, в которых присутствует
-- конкретный исполнитель (выберите его сами).
SELECT c.collection_name FROM collection c
WHERE c.collection_name LIKE '%Louis Armstrong%'