INSERT INTO artists (name) VALUES ('Adele'), ('Drake'), ('Eminem'), ('Rihanna');

INSERT INTO genres (name) VALUES ('Pop'), ('Hip-Hop'), ('R&B');

INSERT INTO albums (title, release_year) VALUES ('25', 2015), ('Scorpion', 2018), ('Revival', 2017);

INSERT INTO tracks (title, duration, album_id) VALUES 
('Hello', 4.55, 1), 
('Gods Plan', 3.18, 2), 
('Lucky You', 4.04, 3), 
('In My Feelings', 3.38, 2), 
('River', 3.41, 3), 
('Someone Like You', 4.45, 1);

INSERT INTO compilations (title, release_year) VALUES 
('Best of 2018', 2018), 
('Top Hits 2019', 2019), 
('Greatest Hits', 2020), 
('Party Mix', 2019);

INSERT INTO artist_genre (artist_id, genre_id) VALUES 
(1, 1), 
(2, 2), 
(3, 2), 
(4, 3);

INSERT INTO artist_album (artist_id, album_id) VALUES 
(1, 1), 
(2, 2), 
(3, 3);

INSERT INTO compilation_track (compilation_id, track_id) VALUES 
(1, 2), 
(2, 4), 
(3, 1), 
(4, 3), 
(1, 5), 
(2, 6);

INSERT INTO tracks (title, duration, album_id) VALUES 
('my own', 3.30, 1), 
('own my', 3.40, 1), 
('my', 2.50, 2), 
('oh my god', 3.50, 2), 
('myself', 3.20, 3), 
('by myself', 3.60, 3), 
('bemy self', 4.00, 1), 
('myself by', 3.45, 2), 
('by myself by', 4.10, 3), 
('beemy', 2.55, 1), 
('premyne', 3.25, 1);