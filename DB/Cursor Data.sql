DELIMITER //
CREATE PROCEDURE show_user_reviews()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE movieName VARCHAR(100);
    DECLARE userId INT;
    DECLARE rating DECIMAL(2,1);
    DECLARE cur CURSOR FOR
        SELECT m.movie_name, r.user_id, r.rating
        FROM user_reviews r
        JOIN movies m ON r.movie_id = m.movie_id;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO movieName, userId, rating;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT CONCAT('User ', userId, ' rated "', movieName, '" ', rating, '/10') AS review_summary;
    END LOOP;

    CLOSE cur;
END;
//
DELIMITER ;

CALL show_user_reviews();



