--Задание № 1
INSERT INTO artist (artist_name) VALUES ('Eminem');
INSERT INTO artist (artist_name) VALUES ('Руки вверх');
INSERT INTO artist (artist_name) VALUES ('Scooter');
INSERT INTO artist (artist_name) VALUES ('Linkin park');
INSERT INTO artist (artist_name) VALUES ('Иванушки int.');

INSERT INTO music_genre  (genre_name) VALUES ('Rap');
INSERT INTO music_genre  (genre_name) VALUES ('Dance music');
INSERT INTO music_genre  (genre_name) VALUES ('Techno');
INSERT INTO music_genre  (genre_name) VALUES ('Pop music');
INSERT INTO music_genre  (genre_name) VALUES ('Alternativ rock');

INSERT INTO album (album_name, year_of_release) VALUES ('The marshal mathers LP', '2018');
INSERT INTO album (album_name, year_of_release) VALUES ('Крошка моя', '2020');
INSERT INTO album (album_name, year_of_release) VALUES ('The best of scooter ', '2019');
INSERT INTO album (album_name, year_of_release) VALUES ('Тополиный пух', '1998');
INSERT INTO album (album_name, year_of_release) VALUES ('Meteora ', '2003');

INSERT INTO track_list  (track_name, track_time, album_id) VALUES ('Мой ненаглядный', '00:03:50', 2);
INSERT INTO track_list  (track_name, track_time, album_id) VALUES ('My opinion', '00:02:50', 1);
INSERT INTO track_list  (track_name, track_time, album_id) VALUES ('Абракадабра', '00:01:50', 4);
INSERT INTO track_list  (track_name, track_time, album_id) VALUES ('How much is the fish', '00:04:50', 3);
INSERT INTO track_list  (track_name, track_time, album_id) VALUES ('Тумба-юмба', '00:05:50', 4);
INSERT INTO track_list  (track_name, track_time, album_id) VALUES ('Breking the habits', '00:03:30', 5);
INSERT INTO track_list  (track_name, track_time, album_id) VALUES ('Тритатушечки тата', '00:04:10', 1);
INSERT INTO track_list  (track_name, track_time, album_id) VALUES ('Take my poop', '00:02:20', 2);
INSERT INTO track_list  (track_name, track_time, album_id) VALUES ('Весёленькая', '00:01:50', 3);
INSERT INTO track_list  (track_name, track_time, album_id) VALUES ('premyne', '00:00:50', 3);
INSERT INTO track_list  (track_name, track_time, album_id) VALUES ('beemy', '00:03:10', 3);
INSERT INTO track_list  (track_name, track_time, album_id) VALUES ('by myself by', '00:01:55', 3);
INSERT INTO track_list  (track_name, track_time, album_id) VALUES ('myself by', '00:04:00', 3);
INSERT INTO track_list  (track_name, track_time, album_id) VALUES ('bemy self', '00:02:50', 3);
INSERT INTO track_list  (track_name, track_time, album_id) VALUES ('by myself', '00:03:4', 3);
INSERT INTO track_list  (track_name, track_time, album_id) VALUES ('oh my god', '00:01:55', 4);
INSERT INTO track_list  (track_name, track_time, album_id) VALUES ('my', '00:02:55', 1);
INSERT INTO track_list  (track_name, track_time, album_id) VALUES ('own my', '00:04:55', 4);
INSERT INTO track_list  (track_name, track_time, album_id) VALUES ('my own', '00:00:50', 2);


INSERT INTO collection  (collection_name, year_of_release) VALUES ('Dance motion', '2019');
INSERT INTO collection  (collection_name, year_of_release) VALUES ('Попсовый ритм', '2020');
INSERT INTO collection  (collection_name, year_of_release) VALUES ('Киндзадза сборник', '2000');
INSERT INTO collection  (collection_name, year_of_release) VALUES ('Rock collection', '2005');

INSERT INTO collection_track (track_id,collection_id) VALUES (2,2);
INSERT INTO collection_track (track_id,collection_id) VALUES (3,1);
INSERT INTO collection_track (track_id,collection_id) VALUES (1,3);
INSERT INTO collection_track (track_id,collection_id) VALUES (2,4);
INSERT INTO collection_track (track_id,collection_id) VALUES (4,1);

INSERT INTO artist_album (artist_id, album_id) VALUES (3,1);
INSERT INTO artist_album (artist_id, album_id) VALUES (2,4);
INSERT INTO artist_album (artist_id, album_id) VALUES (2,1);
INSERT INTO artist_album (artist_id, album_id) VALUES (3,3);
INSERT INTO artist_album (artist_id, album_id) VALUES (4,2);

INSERT INTO artist_genre (artist, genre) VALUES (2,1);
INSERT INTO artist_genre (artist, genre) VALUES (1,3);
INSERT INTO artist_genre (artist, genre) VALUES (5,2);
INSERT INTO artist_genre (artist, genre) VALUES (3,4);
INSERT INTO artist_genre (artist, genre) VALUES (4,5);
INSERT INTO artist_genre (artist, genre) VALUES (2,2);
INSERT INTO artist_genre (artist, genre) VALUES (3,1);



