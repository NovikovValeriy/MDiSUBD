CREATE TABLE Profile (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT UNIQUE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(13),
    age TINYINT,
    country_id INT,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES User(id),
    CONSTRAINT fk_country FOREIGN KEY (country_id) REFERENCES Country(id)
);
