CREATE TABLE Lot(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    description VARCHAR(255),
    seller_id INT NOT NULL,
    appraiser_id INT,
    CONSTRAINT fk_lot_seller FOREIGN KEY (seller_id) REFERENCES Seller(id),
    CONSTRAINT fk_lot_appraiser FOREIGN KEY (appraiser_id) REFERENCES Appraiser(id)
);