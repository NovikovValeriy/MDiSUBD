DELIMITER $$

CREATE PROCEDURE add_lot_item(
    IN p_lot_id INT,
    IN p_category_id INT,
    IN p_name VARCHAR(50),
    IN p_description VARCHAR(255),
    IN p_image VARCHAR(100)
)
BEGIN
    INSERT INTO LotItem (lot_id, category_id, name, description, image)
    VALUES (p_lot_id, p_category_id, p_name, p_description, p_image);
END$$

DELIMITER ;