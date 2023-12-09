DELIMITER //

CREATE PROCEDURE InsertNewCustomer(
    IN p_last_name VARCHAR(100),
    IN p_first_name VARCHAR(100),
    IN p_birth_date DATE,
    IN p_country_of_residence VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_phone INT
)
BEGIN
    INSERT INTO customers (
        last_name,
        first_name,
        birth_date,
        country_of_residence,
        email,
        phone,
        sex
    ) VALUES (
        p_last_name,
        p_first_name,
        p_birth_date,
        p_country_of_residence,
        p_email,
        p_phone,
        ''
    );
END //

DELIMITER ;


CREATE TRIGGER SetGenderOnInsert
BEFORE INSERT ON customers
FOR EACH ROW
BEGIN
    SET NEW.sex = CASE 
        WHEN LOWER(SUBSTRING(NEW.first_name, -1)) IN ('e', 'y', 'a') THEN 'f'
        ELSE 'm'
    END;
END;

