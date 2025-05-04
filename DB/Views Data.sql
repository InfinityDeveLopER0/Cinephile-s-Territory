CREATE VIEW top_rated_movies AS
SELECT 
    m.movie_id,
    m.movie_name,
    ROUND(AVG(r.rating), 2) AS average_rating
FROM movies m
JOIN user_reviews r ON m.movie_id = r.movie_id
GROUP BY m.movie_id, m.movie_name
HAVING average_rating >= 8.0;
SELECT * FROM top_rated_movies ORDER BY average_rating DESC;


CREATE VIEW view_critic_reviews AS
SELECT 
    m.movie_name,
    m.movie_id,
    cr.Critic_id,
    cr.Review_desc,
    cr.desc_Source,
    cr.url
FROM 
    critics_rating cr
JOIN movies m ON cr.Movie_id = m.movie_id;

SELECT * FROM view_critic_reviews

CREATE VIEW view_movie_with_language_and_genre AS
SELECT 
    m.movie_id,
    m.movie_name,
    m.Year,
    l.Languages AS language,
    g.Categories AS genere
FROM 
    movies m
LEFT JOIN languages l ON m.lang_id = l.lang_id
LEFT JOIN genere g ON m.genere_id = g.genere_id;

DROP VIEW view_movie_with_language_and_genre;


