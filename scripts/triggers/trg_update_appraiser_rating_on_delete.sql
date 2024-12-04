DELIMITER $$
CREATE TRIGGER trg_update_appraiser_rating_on_delete
AFTER DELETE ON AppraiserReview
FOR EACH ROW
BEGIN
    DECLARE avg_rating DECIMAL(3, 2);
    SELECT AVG(rating) INTO avg_rating FROM AppraiserReview WHERE appraiser_id = OLD.appraiser_id;
    UPDATE Appraiser SET average_rating = IFNULL(avg_rating, 0) WHERE id = OLD.appraiser_id;
END$$
DELIMITER ;