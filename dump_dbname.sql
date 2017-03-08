-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dbname
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bank_income`
--

DROP TABLE IF EXISTS `bank_income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ddate` date DEFAULT NULL,
  `summ` decimal(6,2) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `bank_income_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_income`
--

LOCK TABLES `bank_income` WRITE;
/*!40000 ALTER TABLE `bank_income` DISABLE KEYS */;
INSERT INTO `bank_income` VALUES (1,'2005-01-02',123.12,1),(2,'2006-02-02',223.12,2),(3,'2026-05-02',323.12,3);
/*!40000 ALTER TABLE `bank_income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_recept`
--

DROP TABLE IF EXISTS `bank_recept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_recept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ddate` date DEFAULT NULL,
  `summ` decimal(6,2) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `bank_recept_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_recept`
--

LOCK TABLES `bank_recept` WRITE;
/*!40000 ALTER TABLE `bank_recept` DISABLE KEYS */;
INSERT INTO `bank_recept` VALUES (1,'2003-02-01',127.82,2),(2,'2003-07-01',267.92,3),(3,'2005-02-01',125.32,1);
/*!40000 ALTER TABLE `bank_recept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cassa_income`
--

DROP TABLE IF EXISTS `cassa_income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cassa_income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ddate` date DEFAULT NULL,
  `summ` decimal(6,2) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `cassa_income_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cassa_income`
--

LOCK TABLES `cassa_income` WRITE;
/*!40000 ALTER TABLE `cassa_income` DISABLE KEYS */;
INSERT INTO `cassa_income` VALUES (1,'2006-01-02',123.12,1),(2,'2007-02-02',223.12,2),(3,'2027-05-02',323.12,3);
/*!40000 ALTER TABLE `cassa_income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cassa_recept`
--

DROP TABLE IF EXISTS `cassa_recept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cassa_recept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ddate` date DEFAULT NULL,
  `summ` decimal(6,2) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `cassa_recept_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cassa_recept`
--

LOCK TABLES `cassa_recept` WRITE;
/*!40000 ALTER TABLE `cassa_recept` DISABLE KEYS */;
INSERT INTO `cassa_recept` VALUES (1,'2005-02-01',125.32,1),(2,'2003-07-01',267.92,3),(3,'2003-02-01',127.82,2);
/*!40000 ALTER TABLE `cassa_recept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `region_id` (`region_id`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Moscow',1),(2,'Saint-Petersburg',2),(3,'Syberia',3);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'OAO N','Adress1',1),(2,'ZAO N','Adress2',1),(3,'PAO N','Adress3',2);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `g_group_id` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `weight` decimal(6,3) DEFAULT NULL,
  `length` decimal(6,2) DEFAULT NULL,
  `height` decimal(6,2) DEFAULT NULL,
  `width` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `g_group_id` (`g_group_id`),
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`g_group_id`) REFERENCES `goods_groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,1,'name1',1.200,1.30,1.40,1.50),(2,2,'name2',2.200,2.30,2.40,2.50),(3,3,'name3',3.200,3.30,3.40,3.50);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_groups`
--

DROP TABLE IF EXISTS `goods_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `goods_groups_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `goods_groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_groups`
--

LOCK TABLES `goods_groups` WRITE;
/*!40000 ALTER TABLE `goods_groups` DISABLE KEYS */;
INSERT INTO `goods_groups` VALUES (1,'name1',1),(2,'name2',2),(3,'name3',3);
/*!40000 ALTER TABLE `goods_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incgoods`
--

DROP TABLE IF EXISTS `incgoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incgoods` (
  `income_id` int(11) DEFAULT NULL,
  `subid` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  UNIQUE KEY `income_id` (`income_id`,`subid`),
  KEY `goods_id` (`goods_id`),
  CONSTRAINT `incgoods_ibfk_1` FOREIGN KEY (`income_id`) REFERENCES `income` (`id`),
  CONSTRAINT `incgoods_ibfk_2` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incgoods`
--

LOCK TABLES `incgoods` WRITE;
/*!40000 ALTER TABLE `incgoods` DISABLE KEYS */;
INSERT INTO `incgoods` VALUES (1,111,1,11111,111.10),(2,222,2,22222,222.20),(3,333,3,33333,333.30);
/*!40000 ALTER TABLE `incgoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ddate` date DEFAULT NULL,
  `ndoc` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `storage_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  KEY `storage_id` (`storage_id`),
  CONSTRAINT `income_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `income_ibfk_2` FOREIGN KEY (`storage_id`) REFERENCES `storages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

LOCK TABLES `income` WRITE;
/*!40000 ALTER TABLE `income` DISABLE KEYS */;
INSERT INTO `income` VALUES (1,'0000-00-00',12,3,1),(2,'2017-03-05',15,2,3),(3,'2006-04-05',18,3,3);
/*!40000 ALTER TABLE `income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recept`
--

DROP TABLE IF EXISTS `recept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ddate` date DEFAULT NULL,
  `ndoc` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `storage_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  KEY `storage_id` (`storage_id`),
  CONSTRAINT `recept_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `recept_ibfk_2` FOREIGN KEY (`storage_id`) REFERENCES `storages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recept`
--

LOCK TABLES `recept` WRITE;
/*!40000 ALTER TABLE `recept` DISABLE KEYS */;
INSERT INTO `recept` VALUES (1,'0000-00-00',11,1,1),(2,'0000-00-00',12,1,2),(3,'0000-00-00',12,2,2),(4,'0000-00-00',12,2,3),(5,'0000-00-00',12,3,1);
/*!40000 ALTER TABLE `recept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recgoods`
--

DROP TABLE IF EXISTS `recgoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recgoods` (
  `recept_id` int(11) DEFAULT NULL,
  `subid` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  UNIQUE KEY `recept_id` (`recept_id`,`subid`),
  KEY `goods_id` (`goods_id`),
  CONSTRAINT `recgoods_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`),
  CONSTRAINT `recgoods_ibfk_2` FOREIGN KEY (`recept_id`) REFERENCES `recept` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recgoods`
--

LOCK TABLES `recgoods` WRITE;
/*!40000 ALTER TABLE `recgoods` DISABLE KEYS */;
INSERT INTO `recgoods` VALUES (1,111,1,11111,111.10),(2,222,2,22222,222.20),(3,333,3,33333,333.30);
/*!40000 ALTER TABLE `recgoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Center of country'),(2,'South of country'),(3,'East of country');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storages`
--

DROP TABLE IF EXISTS `storages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storages`
--

LOCK TABLES `storages` WRITE;
/*!40000 ALTER TABLE `storages` DISABLE KEYS */;
INSERT INTO `storages` VALUES (1,'sklad1'),(2,'sklad2'),(3,'sklad3');
/*!40000 ALTER TABLE `storages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-05 19:36:46
