--Задание № 1
CREATE TABLE IF NOT EXISTS Musicians(
	Musician_ID SERIAL PRIMARY key,
	Musician_name VARCHAR(50) NOT null
	);

CREATE TABLE IF NOT EXISTS Musical_Genres (
    Genres_ID SERIAL PRIMARY key,
    Genres_name VARCHAR(50) NOT NULL
    );

CREATE TABLE IF NOT EXISTS MusicianGenres (
    MG_ID SERIAL PRIMARY key,
    Genres INTEGER NOT NULL REFERENCES Musical_Genres(Genres_ID),
    Musician INTEGER NOT NULL REFERENCES Musicians(Musician_ID)
    );

CREATE TABLE IF NOT EXISTS Albums (
    Albums_ID SERIAL PRIMARY key,
    Album_name VARCHAR(50) UNIQUE NOT null,
    Year_of_release INTEGER NOT NULL
    );
CREATE TABLE IF NOT EXISTS MusicianAlbums (
    MA_ID SERIAL PRIMARY key,
    Musician_ID INTEGER NOT NULL REFERENCES Musicians(Musician_ID),
    Album_ID INTEGER NOT NULL REFERENCES Albums(Albums_ID)
    );
CREATE TABLE IF NOT EXISTS Track_list (
    Track_ID SERIAL PRIMARY key,
    Track_name VARCHAR (80) NOT null,
    Track_time INTEGER NOT null,
    Album_ID INTEGER NOT NULL REFERENCES Albums(Albums_ID)
    );
create TABLE IF NOT EXISTS Collection (
    Collection_ID Serial PRIMARY key,
    name VARCHAR(50) NOT null,
    Year_of_release INTEGER NOT NULL
    );
CREATE TABLE IF NOT EXISTS CollectionTracks (
    CT_ID SERIAL PRIMARY key,
    Track_ID INTEGER NOT NULL REFERENCES Track_list (Track_ID),
    Collection_ID INTEGER NOT NULL REFERENCES Collection (Collection_ID)
    );
 