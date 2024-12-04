DELIMITER $$

CREATE TRIGGER trg_set_start_bid
BEFORE UPDATE ON Auction
FOR EACH ROW
BEGIN
    IF NEW.status_id = 2 AND OLD.status_id = 1 THEN
        SET NEW.current_bid = NEW.start_bid;
    END IF;
END$$

DELIMITER ;
