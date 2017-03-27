DELIMITER $$
DROP PROCEDURE IF EXISTS setBankIncomeData
$$
CREATE PROCEDURE setBankIncomeData()
BEGIN 
	SET @counter = 0;
	WHILE @counter < 10
		DO
			INSERT INTO bank_income (ddate, summ, client_id)
			VALUES ((SELECT FROM_UNIXTIME(RAND() * 2147483647)),FLOOR(RAND())*10,RAND());
			SET @counter = @counter + 1;
		END WHILE;
END;
$$
DELIMITER ;