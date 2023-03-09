--Название и год выхода альбомов, вышедших в 2018 году.
SELECT name, release_year FROM album
WHERE release_year = 2018;

--Название и продолжительность самого длительного трека.
SELECT name, duration / 60.00 FROM track
ORDER BY duration DESC
LIMIT 1;

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT name FROM track
WHERE duration >= 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name FROM collections
WHERE release_year >= 2018 and release_year <= 2020;

--Исполнители, чьё имя состоит из одного слова.
SELECT name_executor FROM executor
WHERE name_executor NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my».
SELECT name FROM track
WHERE name LIKE '%my%';