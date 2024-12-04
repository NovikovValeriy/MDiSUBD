DELIMITER $$
CREATE PROCEDURE add_seller_review(
    IN p_user_id INT,
    IN p_seller_id INT,
    IN p_rating INT,
    IN p_review_text VARCHAR(255)
)
BEGIN
    IF EXISTS (SELECT 1 FROM sellerReview WHERE user_id = p_user_id AND seller_id = p_seller_id) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'You have already reviewed this seller';
    ELSE
        INSERT INTO SellerReview (user_id, seller_id, rating, review_text)
        VALUES (p_user_id, p_seller_id, p_rating, p_review_text);
    END IF;
END$$
DELIMITER ;