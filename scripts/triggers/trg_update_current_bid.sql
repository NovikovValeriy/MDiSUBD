DELIMITER $$
CREATE TRIGGER trg_update_current_bid
AFTER INSERT ON Bid
FOR EACH ROW
BEGIN
    IF NEW.bid_amount > (SELECT current_bid FROM Auction WHERE id = NEW.auction_id LIMIT 1) THEN
        UPDATE Auction
        SET current_bid = NEW.bid_amount
        WHERE id = NEW.auction_id;
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'The bid is smaller than the current bid';
    END IF;
END$$
DELIMITER ;
