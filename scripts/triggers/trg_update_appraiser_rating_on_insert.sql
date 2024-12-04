DELIMITER $$
CREATE TRIGGER trg_update_appraiser_rating_on_insert
AFTER INSERT ON AppraiserReview
FOR EACH ROW
BEGIN
    DECLARE avg_rating DECIMAL(3, 2);
    SELECT AVG(rating) INTO avg_rating FROM AppraiserReview WHERE appraiser_id = NEW.appraiser_id;
    UPDATE Appraiser SET average_rating = avg_rating WHERE id = NEW.appraiser_id;
END$$
DELIMITER ;