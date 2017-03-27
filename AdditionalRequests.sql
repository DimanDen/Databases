DELIMITER $$
DROP PROCEDURE IF EXISTS setStoragesData
$$
CREATE PROCEDURE setStoragesData()
BEGIN 
	SET @counter = 0;
	WHILE @counter < 3
		DO
			INSERT INTO storages (name)
			VALUES (CONCAT('sklad',FLOOR(RAND()*1000)));
			SET @counter = @counter + 1;
		END WHILE;
END;
$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS setRegionData
$$
CREATE PROCEDURE setRegionData()
BEGIN 
	SET @counter = 0;
	WHILE @counter < 3
		DO
			INSERT INTO region (name)
			VALUES (CONCAT('region',FLOOR(RAND()*1000)));
			SET @counter = @counter + 1;
		END WHILE;
END;
$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS setCityData
$$
CREATE PROCEDURE setCityData()
BEGIN 
	SET @counter = 0;
	WHILE @counter < 3
		DO
			INSERT INTO city (name, region_id)
			VALUES (CONCAT('city',FLOOR(RAND()*1000)),(SELECT id FROM region WHERE id = (@counter+1))) ;
			SET @counter = @counter + 1;
		END WHILE;
END;
$$
DELIMITER ;

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