DELIMITER $$
CREATE TRIGGER insert_after_review
AFTER INSERT ON critics_rating
FOR EACH ROW
BEGIN
    DECLARE movie_title VARCHAR(255);

    SELECT movie_name INTO movie_title FROM movies WHERE movie_id = NEW.Movie_id;

    INSERT INTO Notification (user_id, message, sent_time, link_url)
    SELECT
        user_id,
        CONCAT('New critic review for "', movie_title, '" just dropped!'),
        NOW(),
        NEW.url
    FROM users;

END$$
DELIMITER ;

DELIMITER $$

CREATE TRIGGER trg_increment_language_movie_count
AFTER INSERT ON movies
FOR EACH ROW
BEGIN
    UPDATE languages
    SET num_of_movies = num_of_movies + 1
    WHERE lang_id = NEW.lang_id;
END$$

DELIMITER ;



