CREATE TABLE Auction(
	id INT PRIMARY KEY AUTO_INCREMENT,
    winner_id INT,
    current_bid DECIMAL(17,2),
    status_id INT NOT NULL,
    lot_id INT NOT NULL,
    start_bid DECIMAL(17,2),
    start_time DATETIME,
    end_time DATETIME,
    CONSTRAINT fk_auction_winner FOREIGN KEY (winner_id) REFERENCES User(id),
    CONSTRAINT fk_auction_status FOREIGN KEY (status_id) REFERENCES AuctionStatus(id),
    CONSTRAINT fk_auction_lot FOREIGN KEY (lot_id) REFERENCES Lot(id)
);