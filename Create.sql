
CREATE TABLE IF NOT EXISTS artist(
	artist_id SERIAL PRIMARY key,
	artist_name VARCHAR(50) NOT null
	);

CREATE TABLE IF NOT EXISTS music_genre (
    genre_id SERIAL PRIMARY key,
    genre_name VARCHAR(50) NOT NULL
    );

CREATE TABLE IF NOT EXISTS artist_genre (
    ag_id SERIAL PRIMARY key,
    genre INTEGER NOT NULL REFERENCES music_genre(genre_id),
    artist INTEGER NOT NULL REFERENCES artist(artist_id)
    );

CREATE TABLE IF NOT EXISTS album (
    album_id SERIAL PRIMARY key,
    album_name VARCHAR(50) UNIQUE NOT null,
    year_of_release INT NOT NULL
    );

CREATE TABLE IF NOT EXISTS artist_album (
    aa_id SERIAL PRIMARY key,
    artist_id INT NOT NULL REFERENCES artist(artist_id),
    album_id INT NOT NULL REFERENCES album(album_id)
    );

CREATE TABLE IF NOT EXISTS track_list (
    track_id SERIAL PRIMARY key,
    track_name VARCHAR (80) NOT null,
    track_time INTERVAL NOT null,
    album_id INTEGER NOT NULL REFERENCES album(album_id)
    );

CREATE TABLE IF NOT EXISTS collection (
    collection_id Serial PRIMARY key,
    collection_name VARCHAR(50) NOT NULL,
    year_of_release INT NOT NULL
    );

CREATE TABLE IF NOT EXISTS collection_track (
    ct_id SERIAL PRIMARY key,
    track_id INT NOT NULL REFERENCES track_list (track_id),
    collection_id INT NOT NULL REFERENCES collection (collection_id)
    );
 