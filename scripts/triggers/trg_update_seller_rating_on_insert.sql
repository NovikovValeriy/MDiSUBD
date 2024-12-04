DELIMITER $$
CREATE TRIGGER trg_update_seller_rating_on_insert
AFTER INSERT ON SellerReview
FOR EACH ROW
BEGIN
    DECLARE avg_rating DECIMAL(3, 2);
    SELECT AVG(rating) INTO avg_rating FROM SellerReview WHERE seller_id = NEW.seller_id;
    UPDATE Seller SET average_rating = avg_rating WHERE id = NEW.seller_id;
END$$
DELIMITER ;