CREATE TABLE SellerReview(
	id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    seller_id INT NOT NULL,
    rating INT NOT NULL,
    review_text VARCHAR(255),
    CONSTRAINT fk_review_user FOREIGN KEY (user_id) REFERENCES User(id),
    CONSTRAINT fk_review_seller FOREIGN KEY (seller_id) REFERENCES Seller(id)
);