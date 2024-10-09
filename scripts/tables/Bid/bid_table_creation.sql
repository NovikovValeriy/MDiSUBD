CREATE TABLE Bid(
	id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    auction_id INT NOT NULL,
    bid_amount DECIMAL(17,2) NOT NULL,
    timestamp DATETIME NOT NULL DEFAULT NOW(),
    CONSTRAINT fk_bid_user FOREIGN KEY (user_id) REFERENCES User(id),
    CONSTRAINT fk_bid_auction FOREIGN KEY (auction_id) REFERENCES Auction(id)
);