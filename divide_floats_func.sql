USE mydb;
DROP FUNCTION IF EXISTS divide_floats;

DELIMITER \\

CREATE FUNCTION divide_floats(a FLOAT, b FLOAT) 
RETURNS FLOAT
DETERMINISTIC
BEGIN
    DECLARE result FLOAT;
    IF b = 0 THEN
        RETURN NULL; -- уникнення ділення на 0
    END IF;
    SET result = a / b;
    RETURN result;
END\\

DELIMITER ;
