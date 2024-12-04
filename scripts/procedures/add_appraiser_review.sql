DELIMITER $$
CREATE PROCEDURE add_appraiser_review(
    IN p_user_id INT,
    IN p_appraiser_id INT,
    IN p_rating INT,
    IN p_review_text VARCHAR(255)
)
BEGIN
    IF EXISTS (SELECT 1 FROM AppraiserReview WHERE user_id = p_user_id AND appraiser_id = p_appraiser_id) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'You have already reviewed this appraiser';
    ELSE
        INSERT INTO AppraiserReview (user_id, appraiser_id, rating, review_text)
        VALUES (p_user_id, p_appraiser_id, p_rating, p_review_text);
    END IF;
END$$
DELIMITER ;