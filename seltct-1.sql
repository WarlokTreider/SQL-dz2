SELECT title, duration 
FROM tracks 
ORDER BY duration DESC 
LIMIT 1;

SELECT title 
FROM tracks 
WHERE duration >= 3.5;

SELECT title 
FROM compilations 
WHERE release_year BETWEEN 2018 AND 2020;

SELECT name 
FROM artists 
WHERE name NOT LIKE '% %';

SELECT title 
FROM tracks 
WHERE title ILIKE '%мой%' OR title ILIKE '%my%';

SELECT g.name AS genre, COUNT(ag.artist_id) AS artist_count
FROM genres g
JOIN artist_genre ag ON g.genre_id = ag.genre_id
GROUP BY g.name;

SELECT COUNT(t.track_id) AS track_count
FROM tracks t
JOIN albums a ON t.album_id = a.album_id
WHERE a.release_year BETWEEN 2019 AND 2020;

SELECT a.title AS album, AVG(t.duration) AS average_duration
FROM albums a
JOIN tracks t ON a.album_id = t.album_id
GROUP BY a.title;

SELECT name 
FROM artists 
WHERE artist_id NOT IN (
    SELECT artist_id 
    FROM artist_album aa
    JOIN albums a ON aa.album_id = a.album_id
    WHERE a.release_year = 2020
);

SELECT c.title 
FROM compilations c
JOIN compilation_track ct ON c.compilation_id = ct.compilation_id
JOIN tracks t ON ct.track_id = t.track_id
JOIN albums a ON t.album_id = a.album_id
JOIN artist_album aa ON a.album_id = aa.album_id
JOIN artists ar ON aa.artist_id = ar.artist_id
WHERE ar.name = 'Eminem';

SELECT title 
FROM tracks 
WHERE title ILIKE 'my' 
OR title ILIKE 'my %' 
OR title ILIKE '% my' 
OR title ILIKE '% my %'
OR title ILIKE 'мой' 
OR title ILIKE 'мой %' 
OR title ILIKE '% мой' 
OR title ILIKE '% мой %';