DELIMITER $$
CREATE PROCEDURE register_user(
    IN p_username VARCHAR(30),
    IN p_password VARCHAR(128),
    IN p_email VARCHAR(50),
    IN p_is_superuser BIT,
    IN p_is_staff BIT
)
BEGIN
    IF EXISTS (SELECT 1 FROM User WHERE username = p_username) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Username already exists';
    END IF;

    IF EXISTS (SELECT 1 FROM User WHERE email = p_email) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email already exists';
    END IF;

    INSERT INTO User (username, password, email, is_superuser, is_staff)
    VALUES (p_username, p_password, p_email, p_is_superuser, p_is_staff);
END$$

DELIMITER ;