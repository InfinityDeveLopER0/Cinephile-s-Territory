START TRANSACTION;

-- Add movie to watchlist
INSERT INTO watchlist (user_id, movie_id, added_date, priority)
VALUES (1, 1, CURDATE(), 'high');

-- Add review
INSERT INTO user_reviews (user_id, movie_id, rating, review_text)
VALUES (1, 1, 8.5, 'Brilliant movie, must-watch!');

-- Update preferences
UPDATE user_preferences
SET preferred_genere = JSON_SET(preferred_genere, '$[0]', 'Drama')
WHERE user_id = 1;

--If Everything Success, we can roll back
COMMIT;

--If anything fails, we can roll back
ROLLBACK;

-------------------------------------------------------------------------------------

START TRANSACTION;

-- Add movie to watchlist
SAVEPOINT sp_watchlist;
INSERT INTO watchlist (user_id, movie_id, added_date, priority)
VALUES (101, 203, CURDATE(), 'high');

-- Add a review
SAVEPOINT sp_review;
INSERT INTO user_reviews (user_id, movie_id, rating, review_text)
VALUES (101, 203, 9.0, 'One of the best thrillers!');

-- Update preferences (simulate a failure here)
SAVEPOINT sp_preference;
UPDATE user_preferences
SET preferred_genere = JSON_SET(preferred_genere, '$[0]', 'Thriller')
WHERE user_id = 101;

-- Suppose the above update fails due to JSON syntax or constraint issue

-- Rollback only preference update
ROLLBACK TO SAVEPOINT sp_preference;

-- Finalize transaction
COMMIT;

---------------------------------------------------------------------------------------------------

