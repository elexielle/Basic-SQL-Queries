-- SQLite
.schema

--shortest songs that start w/ h (1st task)
SELECT name AS top_3h
FROM songs
WHERE name LIKE "h%"
ORDER BY duration_ms
LIMIT 3;

--task 2
--seeing if the weeknd is in artists
SELECT name
FROM artists
WHERE name = "The Weeknd";

--the weeknd songs
SELECT name,
    loudness,
    energy
FROM songs
WHERE artist_id = (
        SELECT id
        FROM artists
        WHERE name = "The Weeknd"
    )
    AND energy > 0.5;
    
--average loudness (2nd task)
SELECT AVG(loudness) AS ave_loudness
FROM songs
WHERE artist_id = (
        SELECT id
        FROM artists
        WHERE name = "The Weeknd"
    )
    AND energy > 0.5;