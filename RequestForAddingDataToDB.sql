DELIMITER $$
DROP PROCEDURE IF EXISTS setDataToDB
$$
CREATE PROCEDURE setDataToDB()
BEGIN 
	SET @counter = 0;
	WHILE @counter < 3
		DO
			INSERT INTO storages (name)
			VALUES (CONCAT('sklad',FLOOR(RAND()*1000)));
			
			INSERT INTO region (name)
			VALUES (CONCAT('region',FLOOR(RAND()*1000)));
			
			INSERT INTO city (name, region_id)
			VALUES (CONCAT('city',FLOOR(RAND()*1000)),( SELECT id FROM region WHERE id = (@counter+1)));

			INSERT INTO clients (name, address, city_id)
			VALUES (CONCAT('client',FLOOR(RAND()*1000)),CONCAT('address',FLOOR(RAND()*10000)),(SELECT id FROM city WHERE id = (@counter+1)));

			INSERT INTO recept (ddate, ndoc, client_id, storage_id)
			VALUES ((SELECT FROM_UNIXTIME(RAND() * 2147483647)), FLOOR(RAND()*10), (SELECT id FROM clients WHERE id = (@counter+1)),(SELECT id FROM storages WHERE id = (@counter+1)));

			INSERT INTO income (ddate, ndoc, client_id, storage_id)
			VALUES ((SELECT FROM_UNIXTIME(RAND() * 2147483647)), FLOOR(RAND()*10), (SELECT id FROM clients WHERE id = (@counter+1)),(SELECT id FROM storages WHERE id = (@counter+1)));

			INSERT INTO bank_recept (ddate, summ , client_id)
			VALUES ((SELECT FROM_UNIXTIME(RAND() * 2147483647)), FLOOR(RAND()*100)/10, (SELECT id FROM clients WHERE id = (@counter+1)));

			INSERT INTO cassa_recept (ddate, summ , client_id)
			VALUES ((SELECT FROM_UNIXTIME(RAND() * 2147483647)), FLOOR(RAND()*100)/10, (SELECT id FROM clients WHERE id = (@counter+1)));

			INSERT INTO bank_income (ddate, summ, client_id)
			VALUES ((SELECT FROM_UNIXTIME(RAND() * 2147483647)),FLOOR(RAND())*10,RAND());
			
			INSERT INTO goods (g_group_id, name, weight, length, height, width)
			VALUES ((SELECT id FROM goods_groups WHERE id = (@counter+1)), CONCAT('goods',FLOOR(RAND()*1000)), FLOOR(RAND()*100)/10, FLOOR(RAND()*100)/10, FLOOR(RAND()*100)/10, FLOOR(RAND()*100)/10);
			
			SET @counter = @counter + 1;
		END WHILE;
END;
$$
DELIMITER ;