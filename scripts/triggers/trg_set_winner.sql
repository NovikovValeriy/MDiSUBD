DELIMITER $$
CREATE TRIGGER trg_set_winner
BEFORE UPDATE ON Auction
FOR EACH ROW
BEGIN
    IF NEW.status_id = 3 THEN
		SET NEW.winner_id = (SELECT user_id FROM Bid WHERE auction_id = NEW.id ORDER BY bid_amount DESC LIMIT 1);
    END IF;
END$$
DELIMITER ;