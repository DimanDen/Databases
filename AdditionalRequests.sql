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
			VALUES (CONCAT('city',FLOOR(RAND()*1000)),( SELECT id FROM region WHERE id = (@counter+1)));
			SET @counter = @counter + 1;
		END WHILE;
END;
$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS setClientsData
$$
CREATE PROCEDURE setClientsData()
BEGIN 
	SET @counter = 0;
	WHILE @counter < 3
		DO
			INSERT INTO clients (name, address, city_id)
			VALUES (CONCAT('client',FLOOR(RAND()*1000)),CONCAT('address',FLOOR(RAND()*10000)),(SELECT id FROM city WHERE id = (@counter+1)));
			SET @counter = @counter + 1;
		END WHILE;
END;
$$
DELIMITER ;


DELIMITER $$
DROP PROCEDURE IF EXISTS setReceptData
$$
CREATE PROCEDURE setReceptData()
BEGIN 
	SET @counter = 0;
	WHILE @counter < 3
		DO
			INSERT INTO recept (ddate, ndoc, client_id, storage_id)
			VALUES ((SELECT FROM_UNIXTIME(RAND() * 2147483647)), FLOOR(RAND()*10), (SELECT id FROM clients WHERE id = (@counter+1)),(SELECT id FROM storages WHERE id = (@counter+1)));
			SET @counter = @counter + 1;
		END WHILE;
END;
$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS setIncomeData
$$
CREATE PROCEDURE setIncomeData()
BEGIN 
	SET @counter = 0;
	WHILE @counter < 3
		DO
			INSERT INTO income (ddate, ndoc, client_id, storage_id)
			VALUES ((SELECT FROM_UNIXTIME(RAND() * 2147483647)), FLOOR(RAND()*10), (SELECT id FROM clients WHERE id = (@counter+1)),(SELECT id FROM storages WHERE id = (@counter+1)));
			SET @counter = @counter + 1;
		END WHILE;
END;
$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS setBankReceptData
$$
CREATE PROCEDURE setBankReceptData()
BEGIN 
	SET @counter = 0;
	WHILE @counter < 3
		DO
			INSERT INTO bank_recept (ddate, summ , client_id)
			VALUES ((SELECT FROM_UNIXTIME(RAND() * 2147483647)), FLOOR(RAND()*100)/10, (SELECT id FROM clients WHERE id = (@counter+1)));
			SET @counter = @counter + 1;
		END WHILE;
END;
$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS setCassaReceptData
$$
CREATE PROCEDURE setCassaReceptData()
BEGIN 
	SET @counter = 0;
	WHILE @counter < 3
		DO
			INSERT INTO cassa_recept (ddate, summ , client_id)
			VALUES ((SELECT FROM_UNIXTIME(RAND() * 2147483647)), FLOOR(RAND()*100)/10, (SELECT id FROM clients WHERE id = (@counter+1)));
			SET @counter = @counter + 1;
		END WHILE;
END;
$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS setGoodsGroupsData
$$
CREATE PROCEDURE setGoodsGroupsData()
BEGIN 
	SET @counter = 0;
	WHILE @counter < 3
		DO
			INSERT INTO goods_groups (name , parent_id)
			VALUES (CONCAT('goods_group',FLOOR(RAND()*1000)), (@counter+1));
			SET @counter = @counter + 1;
		END WHILE;
END;
$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS setGoodsData
$$
CREATE PROCEDURE setGoodsData()
BEGIN 
	SET @counter = 0;
	WHILE @counter < 3
		DO
			INSERT INTO goods (g_group_id, name, weight, length, height, width)
			VALUES ((SELECT id FROM goods_groups WHERE id = (@counter+1)), CONCAT('goods',FLOOR(RAND()*1000)), FLOOR(RAND()*100)/10, FLOOR(RAND()*100)/10, FLOOR(RAND()*100)/10, FLOOR(RAND()*100)/10);
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