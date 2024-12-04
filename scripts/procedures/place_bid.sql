DELIMITER $$

CREATE PROCEDURE place_bid(
    IN p_user_id INT,
    IN p_auction_id INT,
    IN p_bid_amount DECIMAL(17,2)
)
BEGIN
    DECLARE new_bid DECIMAL(17,2);
    DECLARE stat INT;

    SELECT current_bid INTO new_bid
    FROM Auction
    WHERE id = p_auction_id;
    
    SELECT status_id INTO stat
    FROM auction
    WHERE id = p_auction_id;

    
    IF stat = 2 AND new_bid IS NOT NULL AND p_bid_amount <= new_bid THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Bid must be higher than the current bid';
    ELSE
        INSERT INTO Bid (user_id, auction_id, bid_amount)
        VALUES (p_user_id, p_auction_id, p_bid_amount);
    END IF;
END$$

DELIMITER ;
