-- Название и продолжительность самого длительного трека.
SELECT track_name, duration
FROM public.track
WHERE duration = (SELECT MAX(duration) FROM track)

-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT track_name, duration
FROM public.track
WHERE duration >= '3:30'

--Названия сборников, вышедших в период с 2018 по 2020 годы включительно.
SELECT collection_name, release_year
FROM public.collection
WHERE release_year BETWEEN 2018 AND 2020

--Исполнители, чьё имя состоит из одного слова.
SELECT artist_name
FROM public.performer
WHERE artist_name NOT LIKE '% %'

--Название треков, которые содержат слова «Me» или «My».
SELECT track_name
FROM public.track
WHERE track_name LIKE '%Me%' OR track_name LIKE '%My%'
