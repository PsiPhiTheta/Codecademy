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
