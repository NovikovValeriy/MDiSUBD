CREATE TABLE LotItem(
	id INT PRIMARY KEY AUTO_INCREMENT,
    lot_id INT,
    category_id INT,
    name VARCHAR(50),
    description VARCHAR(255),
    image VARCHAR(100),
    CONSTRAINT fk_lotitem_lot FOREIGN KEY (lot_id) REFERENCES Lot(id),
    CONSTRAINT fk_lotitem_category FOREIGN KEY (category_id) REFERENCES ItemCategory(id)
);