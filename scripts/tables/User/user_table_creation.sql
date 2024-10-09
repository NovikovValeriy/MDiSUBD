CREATE TABLE User (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(30) NOT NULL UNIQUE,
    password VARCHAR(128) NOT NULL,
    email VARCHAR(50) UNIQUE,
    is_superuser BIT NOT NULL,
    is_staff BIT NOT NULL
);