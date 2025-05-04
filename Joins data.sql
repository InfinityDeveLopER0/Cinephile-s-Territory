select 
	movies.movie_name ,
	movies.movie_id ,
	movies.genre ,
	movies.Year ,
	movies.actor ,
	movies.synopsis ,
    critics_rating.Critic_id  ,
    critics_rating.Movie_id  ,
	critics_rating.Review_desc  , 
	critics_rating.desc_Source ,
	critics_rating.url     
from 
movies 
join 
critics_rating 
on 
movies.movie_id = critics_rating.Movie_id ;


SELECT 
    m.movie_name,
    m.Year,
    d.direc_name AS Director,
    l.Languages AS Language,
    g.Categories AS Genre
FROM movies m
LEFT JOIN directors_list d ON m.director_id = d.director_id
LEFT JOIN languages l ON m.lang_id = l.lang_id
LEFT JOIN genere g ON m.genre = g.Categories;

-- inner join for movies_junction table view
SELECT 
    m.movie_name,
    a.actor_name
FROM 
    movie_actors_junction maj
JOIN 
    movies m ON maj.movie_id = m.movie_id
JOIN 
    actors_list a ON maj.actor_id = a.actor_id;


-- Displaying all actors in the movie (Kudumbasthan) Using Inner Join Can use to display any movie
SELECT a.actor_name
FROM movies m
JOIN movie_actors_junction maj ON m.movie_id = maj.movie_id
JOIN actors_list a ON maj.actor_id = a.actor_id
WHERE m.movie_name = 'Kudumbasthan';

-- Getting All Genres for a Movie using inner join:
SELECT g.Categories
FROM movie_genres_junction mg
JOIN genere g ON mg.genere_id = g.genere_id
JOIN movies m ON mg.movie_id = m.movie_id
WHERE m.movie_name = 'Interstellar';

-- Getting All Movies of a Specific Genre using inner join: 
SELECT m.movie_name
FROM movie_genres_junction mg
JOIN movies m ON mg.movie_id = m.movie_id
WHERE mg.genere_id = 12;  -- DRAMA	

-- Getting All Theatres of a Specific theatre_feature using inner join: 
SELECT t.Theatre_name
FROM best_theatres t
JOIN theatre_best_for tf ON t.Theatre_id = tf.theatre_id
JOIN theatre_features f ON tf.feature_id = f.feature_id
WHERE f.feature_name = ('4k RGB Lazer Projection');




