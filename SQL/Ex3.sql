SELECT name, genre, year
FROM movies;

SELECT name AS 'Movie Title'
FROM movies;

SELECT imdb_rating AS 'IMDb'
FROM movies;

SELECT DISTINCT genre
FROM movies;

SELECT DISTINCT year
FROM movies;

SELECT *
FROM movies
WHERE imdb_rating < 5;

SELECT *
FROM movies
WHERE year > 2014;

SELECT * 
FROM movies
WHERE name LIKE 'Se_en';

SELECT * 
FROM movies
WHERE name LIKE 'The %';

SELECT name
FROM movies 
WHERE imdb_rating IS NULL;

SELECT *
FROM movies
WHERE name BETWEEN 'D' AND 'G'; -- note: [) by default (inclusive start, exclusive end)

SELECT *
FROM movies
WHERE year BETWEEN '1970' AND '1979'; -- note: [] by default (inclusive start, inclusive end)

SELECT * 
FROM movies 
WHERE year BETWEEN 1970 AND 1979
	AND imdb_rating > 8;
  
SELECT * 
FROM movies 
WHERE year < 1985
	AND genre = 'horror';

SELECT *
FROM movies
WHERE year > 2014
   OR genre = 'action';

SELECT *
FROM movies
WHERE genre = 'romance'
   OR genre = 'comedy';

SELECT name, year
FROM movies
ORDER BY name;

SELECT name, year, imdb_rating
FROM movies
ORDER BY imdb_rating DESC;

SELECT *
FROM movies
ORDER BY imdb_rating DESC
LIMIT 3;

SELECT name,
 CASE
  WHEN imdb_rating > 8 THEN 'Fantastic'
  WHEN imdb_rating > 6 THEN 'Poorly Received'
  ELSE 'Avoid at All Costs'
 END 
 AS 'Review'
FROM movies;

SELECT name,
 CASE
  WHEN genre = 'romance' THEN 'Chill'
  WHEN genre = 'comedy' THEN 'Chill'
  ELSE 'Intense'
 END 
 AS 'Mood'
FROM movies;


