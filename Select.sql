--Задание № 2
--Название и продолжительность самого длительного трека.
SELECT track_name, track_time 
FROM track_list
WHERE track_time = (SELECT max(track_time) FROM track_list);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT track_name, track_time 
FROM track_list
WHERE track_time >= '3 minutes 30 seconds';

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT collection_name, year_of_release 
FROM collection 
WHERE year_of_release BETWEEN 2018 AND 2020;

--Исполнители, чьё имя состоит из одного слова.
SELECT artist_name 
FROM artist
WHERE artist_name NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my».
--Вариант 1
SELECT track_name 
FROM track_list
WHERE track_name ~* '(^|\W)my(\W|$)|(^|\W)мой(\W|$)';
--Вариант 2
SELECT track_name
FROM track_list
WHERE string_to_array(lower(track_name),' ') && ARRAY['my','мой']	

--Задание №3
--Количество исполнителей в каждом жанре.
SELECT genre, COUNT(*) AS artist 
FROM artist_genre ag
GROUP BY genre;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT count(*) AS track_numbers
FROM track_list tl 
JOIN album a ON a.album_id = tl.album_id
WHERE a.year_of_release BETWEEN 2019 AND 2020;

--Средняя продолжительность треков по каждому альбому.
SELECT a.album_name, AVG(tl.track_time) AS average_time
FROM album a
JOIN track_list tl ON a.album_id = tl.album_id
GROUP BY a.album_name;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT DISTINCT artist_name 
FROM artist a  
WHERE a.artist_name NOT IN ( 
    SELECT artist_name 
    FROM artist a 
    JOIN artist_album aa ON a.artist_id = aa.artist_id
    JOIN album a2 ON a2.album_id = aa.album_id
    WHERE year_of_release = '2020'
	);

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT collection_name
FROM collection c 
JOIN collection_track ct ON ct.collection_id = c.collection_id
JOIN track_list tl  ON tl.track_id = ct.track_id
JOIN album a  ON a.album_id = tl.album_id
JOIN artist_album aa ON aa.album_id = a.album_id
JOIN artist a2 ON a2.artist_id = aa.artist_id
WHERE a2.artist_name = 'Scooter';


--Задание № 4
--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT DISTINCT a.album_name
FROM album a
JOIN artist_album am ON a.album_id = am.album_id
JOIN artist a2 ON a2.artist_id = am.artist_id
JOIN artist_genre ag ON ag.artist = a2.artist_id 
GROUP BY a.album_name, ag.artist
HAVING COUNT(DISTINCT ag.genre) > 1;

--Наименования треков, которые не входят в сборники.
SELECT track_name 
FROM track_list tl 
LEFT JOIN collection_track ct ON tl.track_id = ct.track_id
WHERE ct.collection_id IS NULL;

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT artist_name
FROM artist a
JOIN artist_album aa ON a.artist_id = aa.artist_id
JOIN track_list tl ON aa.album_id = tl.album_id
WHERE tl.track_time = (SELECT min(track_time) FROM track_list)
GROUP BY a.artist_name

--Названия альбомов, содержащих наименьшее количество треков.
SELECT album_name
FROM album a
JOIN track_list tl ON tl.album_id = a.album_id
GROUP BY a.album_id 
HAVING COUNT(tl.track_id ) = (
	SELECT COUNT(track_id) FROM track_list
	GROUP BY album_id
	ORDER BY 1
	LIMIT 1
	);

	
	

