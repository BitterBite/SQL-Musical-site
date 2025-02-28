--Задание № 2
INSERT INTO musicians (musical_name) VALUES ('Eminem');
INSERT INTO musicians (musical_name) VALUES ('Руки вверх');
INSERT INTO musicians (musical_name) VALUES ('Scooter');
INSERT INTO musicians (musical_name) VALUES ('Linkin park');
INSERT INTO musicians (musical_name) VALUES ('Иванушки int.');

INSERT INTO musical_genres  (genres_name) VALUES ('Rap');
INSERT INTO musical_genres  (genres_name) VALUES ('Dance music');
INSERT INTO musical_genres  (genres_name) VALUES ('Techno');
INSERT INTO musical_genres  (genres_name) VALUES ('Pop music');
INSERT INTO musical_genres  (genres_name) VALUES ('Alternativ rock');

INSERT INTO albums (album_name, year_of_release) VALUES ('The marshal mathers LP', '2018');
INSERT INTO albums (album_name, year_of_release) VALUES ('Крошка моя', '2020');
INSERT INTO albums (album_name, year_of_release) VALUES ('The best of scooter ', '2019');
INSERT INTO albums (album_name, year_of_release) VALUES ('Тополиный пух', '1998');
INSERT INTO albums (album_name, year_of_release) VALUES ('Meteora ', '2003');

INSERT INTO track_list  (track_name, track_time,album_id) VALUES ('Мой ненаглядный', '3', 2);
INSERT INTO track_list  (track_name, track_time,album_id) VALUES ('My opinion', '3', 1);
INSERT INTO track_list  (track_name, track_time,album_id) VALUES ('Абракадабра', '5', 4);
INSERT INTO track_list  (track_name, track_time,album_id) VALUES ('How much is the fish', '4', 3);
INSERT INTO track_list  (track_name, track_time,album_id) VALUES ('Тумба-юмба', '2', 4);
INSERT INTO track_list  (track_name, track_time,album_id) VALUES ('Breking the habits', '3', 5);
INSERT INTO track_list  (track_name, track_time,album_id) VALUES ('Тритатушечки тата', '3', 1);
INSERT INTO track_list  (track_name, track_time,album_id) VALUES ('Take my poop', '3', 2);
INSERT INTO track_list  (track_name, track_time,album_id) VALUES ('Весёленькая', '2', 3);


INSERT INTO collection  (name, year_of_release) VALUES ('Dance motion', '2019');
INSERT INTO collection  (name, year_of_release) VALUES ('Попсовый ритм', '2020');
INSERT INTO collection  (name, year_of_release) VALUES ('Киндзадза сборник', '2000');
INSERT INTO collection  (name, year_of_release) VALUES ('Rock collection', '2005');

INSERT INTO collectiontracks (track_id,collection_id) VALUES (2,2);
INSERT INTO collectiontracks (track_id,collection_id) VALUES (3,1);
INSERT INTO collectiontracks (track_id,collection_id) VALUES (1,3);
INSERT INTO collectiontracks (track_id,collection_id) VALUES (2,4);
INSERT INTO collectiontracks (track_id,collection_id) VALUES (4,1);

INSERT INTO musicianalbums (musician_id, album_id) VALUES (3,1);
INSERT INTO musicianalbums (musician_id, album_id) VALUES (2,4);
INSERT INTO musicianalbums (musician_id, album_id) VALUES (2,1);
INSERT INTO musicianalbums (musician_id, album_id) VALUES (3,3);
INSERT INTO musicianalbums (musician_id, album_id) VALUES (4,2);

INSERT INTO musiciangenres (musician,genres) VALUES (2,1);
INSERT INTO musiciangenres (musician,genres) VALUES (1,3);
INSERT INTO musiciangenres (musician,genres) VALUES (5,2);
INSERT INTO musiciangenres (musician,genres) VALUES (3,4);
INSERT INTO musiciangenres (musician,genres) VALUES (4,5);
INSERT INTO musiciangenres (musician,genres) VALUES (2,2);



