DELIMITER $$
CREATE TRIGGER trg_update_seller_rating_on_delete
AFTER DELETE ON SellerReview
FOR EACH ROW
BEGIN
    DECLARE avg_rating DECIMAL(3, 2);
    SELECT AVG(rating) INTO avg_rating FROM SellerReview WHERE seller_id = OLD.seller_id;
    UPDATE Seller SET average_rating = IFNULL(avg_rating, 0) WHERE id = OLD.seller_id;
END$$
DELIMITER ;