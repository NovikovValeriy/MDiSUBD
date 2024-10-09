CREATE TABLE AppraiserReview(
	id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    appraiser_id INT NOT NULL,
    rating INT NOT NULL,
    review_text VARCHAR(255),
    CONSTRAINT fk_appraiser_review_user FOREIGN KEY (user_id) REFERENCES User(id),
    CONSTRAINT fk_appraiser_review_appraiser FOREIGN KEY (appraiser_id) REFERENCES Appraiser(id)
);