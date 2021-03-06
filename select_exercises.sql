USE album_db;
SELECT *
FROM albums;
-- a. 31, 


SELECT DISTINCT artist
FROM albums;
-- 23 unique artist names

SHOW CREATE TABLE albums;
-- CREATE TABLE `albums` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `artist` varchar(240) DEFAULT NULL,
  `name` varchar(240) NOT NULL,
  `release_date` int DEFAULT NULL,
  `sales` float DEFAULT NULL,
  `genre` varchar(240) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
-- c. primary key is id;

SELECT MIN(release_date)
FROM albums;
-- d. 1967

SELECT MAX(release_date)
FROM albums;
-- d. 2011
-- 4.a
SELECT *
FROM albums
WHERE artist = 'Pink Floyd';

-- 4.b
SELECT MIN(release_date)
FROM albums
WHERE name = "Sgt. Pepper's Lonely Hearts Club Band";

-- 4.c
SELECT genre
FROM albums
WHERE name = "Nevermind";

-- 4.d 
SELECT name
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

-- 4.e
SELECT name
FROM albums
WHERE sales < 20000000;

-- 4.f
SELECT name
FROM albums
WHERE genre = "Rock"
-- Returns the exact querry









