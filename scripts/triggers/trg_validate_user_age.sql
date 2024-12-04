DELIMITER $$
CREATE TRIGGER trg_validate_user_age
BEFORE INSERT ON Profile
FOR EACH ROW
BEGIN
    IF NEW.age < 18 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Minimum age of 18 is required.';
    END IF;
END$$
DELIMITER ;