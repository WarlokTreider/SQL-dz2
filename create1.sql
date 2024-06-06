CREATE TABLE artists (
    artist_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE genres (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE albums (
    album_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    release_year INT NOT NULL
);

CREATE TABLE tracks (
    track_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    duration DECIMAL(5, 2) NOT NULL,
    album_id INT REFERENCES albums(album_id)
);

CREATE TABLE compilations (
    compilation_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    release_year INT NOT NULL
);

CREATE TABLE artist_genre (
    artist_id INT REFERENCES artists(artist_id),
    genre_id INT REFERENCES genres(genre_id),
    PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE artist_album (
    artist_id INT REFERENCES artists(artist_id),
    album_id INT REFERENCES albums(album_id),
    PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE compilation_track (
    compilation_id INT REFERENCES compilations(compilation_id),
    track_id INT REFERENCES tracks(track_id),
    PRIMARY KEY (compilation_id, track_id)
);

