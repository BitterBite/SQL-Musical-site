--Задание № 3
SELECT track_name, track_time FROM track_list
WHERE track_time = (SELECT max(track_time) FROM track_list);

SELECT track_name, track_time FROM track_list
WHERE track_time < 3.5;

SELECT name, year_of_release FROM collection 
WHERE year_of_release BETWEEN 2018 AND 2020;

SELECT musical_name FROM musicians 
WHERE musical_name NOT LIKE '% %';

SELECT track_name FROM track_list
WHERE track_name LIKE '%Мой%' OR  track_name LIKE '%My%';

--Задание № 4
SELECT a.album_name
FROM albums a
JOIN musicianalbums m  ON a.albums_id = m.album_id
JOIN musicians m2 ON m.musician_id = m2.musician_id
JOIN musiciangenres m3 ON m2.musician_id = m3.musician
GROUP BY a.album_name
HAVING COUNT(DISTINCT m3.genres) > 1;

SELECT track_name 
FROM track_list tl 
LEFT JOIN collectiontracks c ON tl.track_id = c.track_id
WHERE c.collection_id IS NULL;

SELECT musical_name
FROM musicians m 
JOIN musicianalbums ma ON m.musician_id = ma.musician_id
JOIN track_list tl ON ma.album_id = tl.album_id
WHERE tl.track_time = (SELECT min(track_time) FROM track_list)
GROUP BY m.musical_name

SELECT album_name
FROM albums a 
JOIN с tl ON a.albums_id = tl.album_id
WHERE trac

SELECT album_name
FROM albums a
JOIN (
    SELECT album_id, COUNT(*) AS track_count
    FROM track_list
    GROUP BY album_id
) t ON a.albums_id = t.album_id
WHERE t.track_count = (
    SELECT MIN(track_count)
    FROM (
        SELECT COUNT(*) AS track_count
        FROM track_list
        GROUP BY album_id
    ) 
);

