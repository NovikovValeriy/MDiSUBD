CREATE TABLE Appraiser(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    specialization_id INT,
    CONSTRAINT fk_specialization FOREIGN KEY (specialization_id) REFERENCES Specialization(id)
);