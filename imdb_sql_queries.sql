CREATE DATABASE imdb;

USE imdb;

SELECT * FROM imdb_10k_movies;

-- all movies released in 2024
SELECT movie_name, release_year, duration, ratings, number_of_ratings, metascore, genres 
FROM imdb_10k_movies
WHERE Release_Year = 2024;

-- the top 5 highest-rated movies
SELECT movie_name, ratings
FROM imdb_10k_movies
ORDER BY ratings DESC
LIMIT 5;

-- Top 10 movies that belong to the Horror genre
SELECT movie_name, release_year, ratings, number_of_ratings, genres
FROM imdb_10k_movies
WHERE main_genre = "Horror"
ORDER BY ratings DESC
LIMIT 10;

-- List movies directed by 'Christopher Nolan'
SELECT movie_name, release_year, ratings, number_of_ratings, genres, Director
FROM imdb_10k_movies
WHERE Director = 'Christopher Nolan';

-- the highest-rated movie per genre
SELECT Main_Genre, Movie_name, ratings
FROM imdb_10k_movies m1
WHERE ratings = (SELECT max(ratings) from imdb_10k_movies m2 WHERE m1.main_genre = m2.main_genre);

-- Rank movies by their Metascore and ratings
SELECT Movie_name, Metascore, ratings,
DENSE_RANK() OVER(ORDER BY Metascore DESC, Ratings DESC)
FROM imdb_10k_movies;

-- the top 5 most reviewed movies
SELECT Movie_name, (`User Reviews` + critic_reviews) as Reviews
FROM imdb_10k_movies
ORDER BY Reviews DESC
LIMIT 5;

-- movies with the longest duration in each genre
SELECT Main_Genre, Movie_name, ratings, Duration
FROM imdb_10k_movies m1
WHERE `duration(min)` = (SELECT max(`duration(min)`) from imdb_10k_movies m2 WHERE m1.main_genre = m2.main_genre);

-- the best-rated movie (highest Ratings) for each content rating (Rated column)
SELECT Rated AS `Content Rating`, Main_genre AS `Genre`, Ratings
FROM imdb_10k_movies m1
WHERE ratings = (SELECT MAX(ratings) FROM imdb_10k_movies m2 WHERE m1.rated = m2.rated);