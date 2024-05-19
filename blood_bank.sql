-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: blood_bank
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `a+_eligible_donors`
--

DROP TABLE IF EXISTS `a+_eligible_donors`;
/*!50001 DROP VIEW IF EXISTS `a+_eligible_donors`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `a+_eligible_donors` AS SELECT 
 1 AS `donor_id`,
 1 AS `donor_name`,
 1 AS `blood_group`,
 1 AS `gender`,
 1 AS `age`,
 1 AS `contact_number`,
 1 AS `pincode`,
 1 AS `address`,
 1 AS `disease_name`,
 1 AS `restriction`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `a-_eligible_donors`
--

DROP TABLE IF EXISTS `a-_eligible_donors`;
/*!50001 DROP VIEW IF EXISTS `a-_eligible_donors`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `a-_eligible_donors` AS SELECT 
 1 AS `donor_id`,
 1 AS `donor_name`,
 1 AS `blood_group`,
 1 AS `gender`,
 1 AS `age`,
 1 AS `contact_number`,
 1 AS `pincode`,
 1 AS `address`,
 1 AS `disease_name`,
 1 AS `restriction`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ab+_eligible_donors`
--

DROP TABLE IF EXISTS `ab+_eligible_donors`;
/*!50001 DROP VIEW IF EXISTS `ab+_eligible_donors`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ab+_eligible_donors` AS SELECT 
 1 AS `donor_id`,
 1 AS `donor_name`,
 1 AS `blood_group`,
 1 AS `gender`,
 1 AS `age`,
 1 AS `contact_number`,
 1 AS `pincode`,
 1 AS `address`,
 1 AS `disease_name`,
 1 AS `restriction`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ab-_eligible_donors`
--

DROP TABLE IF EXISTS `ab-_eligible_donors`;
/*!50001 DROP VIEW IF EXISTS `ab-_eligible_donors`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ab-_eligible_donors` AS SELECT 
 1 AS `donor_id`,
 1 AS `donor_name`,
 1 AS `blood_group`,
 1 AS `gender`,
 1 AS `age`,
 1 AS `contact_number`,
 1 AS `pincode`,
 1 AS `address`,
 1 AS `disease_name`,
 1 AS `restriction`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `b+_eligible_donors`
--

DROP TABLE IF EXISTS `b+_eligible_donors`;
/*!50001 DROP VIEW IF EXISTS `b+_eligible_donors`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `b+_eligible_donors` AS SELECT 
 1 AS `donor_id`,
 1 AS `donor_name`,
 1 AS `blood_group`,
 1 AS `gender`,
 1 AS `age`,
 1 AS `contact_number`,
 1 AS `pincode`,
 1 AS `address`,
 1 AS `disease_name`,
 1 AS `restriction`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `b-_eligible_donors`
--

DROP TABLE IF EXISTS `b-_eligible_donors`;
/*!50001 DROP VIEW IF EXISTS `b-_eligible_donors`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `b-_eligible_donors` AS SELECT 
 1 AS `donor_id`,
 1 AS `donor_name`,
 1 AS `blood_group`,
 1 AS `gender`,
 1 AS `age`,
 1 AS `contact_number`,
 1 AS `pincode`,
 1 AS `address`,
 1 AS `disease_name`,
 1 AS `restriction`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `blood_banks`
--

DROP TABLE IF EXISTS `blood_banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood_banks` (
  `bank_id` int NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_banks`
--

LOCK TABLES `blood_banks` WRITE;
/*!40000 ALTER TABLE `blood_banks` DISABLE KEYS */;
INSERT INTO `blood_banks` VALUES (1,'Janakalyan Blood Bank','Swargate','7350002460'),(2,'Aadhar Blood Bank','Mungale Annanagar','9527809099');
/*!40000 ALTER TABLE `blood_banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `blood_banks_info`
--

DROP TABLE IF EXISTS `blood_banks_info`;
/*!50001 DROP VIEW IF EXISTS `blood_banks_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `blood_banks_info` AS SELECT 
 1 AS `bank_id`,
 1 AS `bank_name`,
 1 AS `address`,
 1 AS `contact`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `diseases`
--

DROP TABLE IF EXISTS `diseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diseases` (
  `donor_id` int NOT NULL,
  `disease_name` varchar(45) NOT NULL,
  `restriction` varchar(45) NOT NULL,
  PRIMARY KEY (`donor_id`),
  CONSTRAINT `diseases_ibfk_1` FOREIGN KEY (`donor_id`) REFERENCES `donors` (`donor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diseases`
--

LOCK TABLES `diseases` WRITE;
/*!40000 ALTER TABLE `diseases` DISABLE KEYS */;
INSERT INTO `diseases` VALUES (1,'None','None'),(2,'None','None'),(3,'Fever','On medication'),(4,'None','None');
/*!40000 ALTER TABLE `diseases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donation_history`
--

DROP TABLE IF EXISTS `donation_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donation_history` (
  `donation_id` int NOT NULL AUTO_INCREMENT,
  `donor_id` int NOT NULL,
  `location_id` int NOT NULL,
  `date` date NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`donation_id`),
  KEY `donor_id` (`donor_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `donation_history_ibfk_1` FOREIGN KEY (`donor_id`) REFERENCES `donors` (`donor_id`),
  CONSTRAINT `donation_history_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation_history`
--

LOCK TABLES `donation_history` WRITE;
/*!40000 ALTER TABLE `donation_history` DISABLE KEYS */;
INSERT INTO `donation_history` VALUES (1,1,1,'2023-02-15',1),(2,2,1,'2022-07-23',1);
/*!40000 ALTER TABLE `donation_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donors`
--

DROP TABLE IF EXISTS `donors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donors` (
  `donor_id` int NOT NULL AUTO_INCREMENT,
  `donor_name` varchar(45) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `contact_number` varchar(10) NOT NULL,
  `address` varchar(45) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(1) NOT NULL,
  PRIMARY KEY (`donor_id`),
  UNIQUE KEY `contact_number_UNIQUE` (`contact_number`),
  CONSTRAINT `chk_contact_number_length` CHECK ((length(`contact_number`) = 10))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donors`
--

LOCK TABLES `donors` WRITE;
/*!40000 ALTER TABLE `donors` DISABLE KEYS */;
INSERT INTO `donors` VALUES (1,'Sanyog','O+ve','7507034878','Pune','411043',21,'M'),(2,'Yash','B+ve','7798180537','Pune','411043',21,'M'),(3,'Madhur','A+ve','9403540394','Latur','413512',21,'M'),(4,'Kunal','B+ve','7218447844','Pune','411043',21,'M'),(5,'Sonal','B+ve','8857034878','Nashik','422502',19,'F');
/*!40000 ALTER TABLE `donors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `have_not_donated_recently`
--

DROP TABLE IF EXISTS `have_not_donated_recently`;
/*!50001 DROP VIEW IF EXISTS `have_not_donated_recently`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `have_not_donated_recently` AS SELECT 
 1 AS `donor_name`,
 1 AS `blood_group`,
 1 AS `contact_number`,
 1 AS `pincode`,
 1 AS `disease_name`,
 1 AS `restriction`,
 1 AS `date`,
 1 AS `quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `location_name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `pincode` varchar(45) NOT NULL,
  `bank_id` int NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `bank_id` (`bank_id`),
  CONSTRAINT `location_ibfk_1` FOREIGN KEY (`bank_id`) REFERENCES `blood_banks` (`bank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'PICT','Katraj','411043',1);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `location_info`
--

DROP TABLE IF EXISTS `location_info`;
/*!50001 DROP VIEW IF EXISTS `location_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `location_info` AS SELECT 
 1 AS `location_id`,
 1 AS `location_name`,
 1 AS `address`,
 1 AS `pincode`,
 1 AS `bank_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `o+_eligible_donors`
--

DROP TABLE IF EXISTS `o+_eligible_donors`;
/*!50001 DROP VIEW IF EXISTS `o+_eligible_donors`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `o+_eligible_donors` AS SELECT 
 1 AS `donor_id`,
 1 AS `donor_name`,
 1 AS `blood_group`,
 1 AS `gender`,
 1 AS `age`,
 1 AS `contact_number`,
 1 AS `pincode`,
 1 AS `address`,
 1 AS `disease_name`,
 1 AS `restriction`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `o-_eligible_donors`
--

DROP TABLE IF EXISTS `o-_eligible_donors`;
/*!50001 DROP VIEW IF EXISTS `o-_eligible_donors`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `o-_eligible_donors` AS SELECT 
 1 AS `donor_id`,
 1 AS `donor_name`,
 1 AS `blood_group`,
 1 AS `gender`,
 1 AS `age`,
 1 AS `contact_number`,
 1 AS `pincode`,
 1 AS `address`,
 1 AS `disease_name`,
 1 AS `restriction`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `request_info`
--

DROP TABLE IF EXISTS `request_info`;
/*!50001 DROP VIEW IF EXISTS `request_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `request_info` AS SELECT 
 1 AS `request_id`,
 1 AS `blood_group`,
 1 AS `quantity`,
 1 AS `contact`,
 1 AS `bank_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests` (
  `request_id` int NOT NULL AUTO_INCREMENT,
  `blood_group` varchar(45) NOT NULL,
  `quantity` int NOT NULL,
  `bank_id` int NOT NULL,
  `contact` varchar(45) NOT NULL,
  PRIMARY KEY (`request_id`),
  KEY `bank_id` (`bank_id`),
  CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`bank_id`) REFERENCES `blood_banks` (`bank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `a+_eligible_donors`
--

/*!50001 DROP VIEW IF EXISTS `a+_eligible_donors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `a+_eligible_donors` AS select `donors`.`donor_id` AS `donor_id`,`donors`.`donor_name` AS `donor_name`,`donors`.`blood_group` AS `blood_group`,`donors`.`gender` AS `gender`,`donors`.`age` AS `age`,`donors`.`contact_number` AS `contact_number`,`donors`.`pincode` AS `pincode`,`donors`.`address` AS `address`,`diseases`.`disease_name` AS `disease_name`,`diseases`.`restriction` AS `restriction` from (`donors` join `diseases`) where ((`donors`.`donor_id` = `diseases`.`donor_id`) and (`donors`.`blood_group` in ('O+ve','A+ve')) and `donors`.`donor_id` in (select `donation_history`.`donor_id` from `donation_history` where (`donation_history`.`date` > (now() - interval 6 month))) is false) union select `donors`.`donor_id` AS `donor_id`,`donors`.`donor_name` AS `donor_name`,`donors`.`blood_group` AS `blood_group`,`donors`.`gender` AS `gender`,`donors`.`age` AS `age`,`donors`.`contact_number` AS `contact_number`,`donors`.`pincode` AS `pincode`,`donors`.`address` AS `address`,NULL AS `disease_name`,NULL AS `restriction` from `donors` where ((`donors`.`blood_group` in ('O+ve','A+ve')) and `donors`.`donor_id` in (select `donation_history`.`donor_id` from `donation_history` where (`donation_history`.`date` > (now() - interval 6 month))) is false and `donors`.`donor_id` in (select distinct `diseases`.`donor_id` from `diseases`) is false) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `a-_eligible_donors`
--

/*!50001 DROP VIEW IF EXISTS `a-_eligible_donors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `a-_eligible_donors` AS select `donors`.`donor_id` AS `donor_id`,`donors`.`donor_name` AS `donor_name`,`donors`.`blood_group` AS `blood_group`,`donors`.`gender` AS `gender`,`donors`.`age` AS `age`,`donors`.`contact_number` AS `contact_number`,`donors`.`pincode` AS `pincode`,`donors`.`address` AS `address`,`diseases`.`disease_name` AS `disease_name`,`diseases`.`restriction` AS `restriction` from (`donors` join `diseases`) where ((`donors`.`donor_id` = `diseases`.`donor_id`) and (`donors`.`blood_group` in ('A-ve','O-ve')) and `donors`.`donor_id` in (select `donation_history`.`donor_id` from `donation_history` where (`donation_history`.`date` > (now() - interval 6 month))) is false) union select `donors`.`donor_id` AS `donor_id`,`donors`.`donor_name` AS `donor_name`,`donors`.`blood_group` AS `blood_group`,`donors`.`gender` AS `gender`,`donors`.`age` AS `age`,`donors`.`contact_number` AS `contact_number`,`donors`.`pincode` AS `pincode`,`donors`.`address` AS `address`,NULL AS `disease_name`,NULL AS `restriction` from `donors` where ((`donors`.`blood_group` in ('A-ve','O-ve')) and `donors`.`donor_id` in (select `donation_history`.`donor_id` from `donation_history` where (`donation_history`.`date` > (now() - interval 6 month))) is false and `donors`.`donor_id` in (select distinct `diseases`.`donor_id` from `diseases`) is false) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ab+_eligible_donors`
--

/*!50001 DROP VIEW IF EXISTS `ab+_eligible_donors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ab+_eligible_donors` AS select `donors`.`donor_id` AS `donor_id`,`donors`.`donor_name` AS `donor_name`,`donors`.`blood_group` AS `blood_group`,`donors`.`gender` AS `gender`,`donors`.`age` AS `age`,`donors`.`contact_number` AS `contact_number`,`donors`.`pincode` AS `pincode`,`donors`.`address` AS `address`,`diseases`.`disease_name` AS `disease_name`,`diseases`.`restriction` AS `restriction` from (`donors` join `diseases`) where ((`donors`.`donor_id` = `diseases`.`donor_id`) and (`donors`.`blood_group` in ('A+ve','A-ve','B+ve','B-ve','AB+ve','AB-ve','O+ve','O-ve')) and `donors`.`donor_id` in (select `donation_history`.`donor_id` from `donation_history` where (`donation_history`.`date` > (now() - interval 6 month))) is false) union select `donors`.`donor_id` AS `donor_id`,`donors`.`donor_name` AS `donor_name`,`donors`.`blood_group` AS `blood_group`,`donors`.`gender` AS `gender`,`donors`.`age` AS `age`,`donors`.`contact_number` AS `contact_number`,`donors`.`pincode` AS `pincode`,`donors`.`address` AS `address`,NULL AS `disease_name`,NULL AS `restriction` from `donors` where ((`donors`.`blood_group` in ('A+ve','A-ve','B+ve','B-ve','AB+ve','AB-ve','O+ve','O-ve')) and `donors`.`donor_id` in (select `donation_history`.`donor_id` from `donation_history` where (`donation_history`.`date` > (now() - interval 6 month))) is false and `donors`.`donor_id` in (select distinct `diseases`.`donor_id` from `diseases`) is false) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ab-_eligible_donors`
--

/*!50001 DROP VIEW IF EXISTS `ab-_eligible_donors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ab-_eligible_donors` AS select `donors`.`donor_id` AS `donor_id`,`donors`.`donor_name` AS `donor_name`,`donors`.`blood_group` AS `blood_group`,`donors`.`gender` AS `gender`,`donors`.`age` AS `age`,`donors`.`contact_number` AS `contact_number`,`donors`.`pincode` AS `pincode`,`donors`.`address` AS `address`,`diseases`.`disease_name` AS `disease_name`,`diseases`.`restriction` AS `restriction` from (`donors` join `diseases`) where ((`donors`.`donor_id` = `diseases`.`donor_id`) and (`donors`.`blood_group` in ('A-ve','B-ve','AB-ve','O-ve')) and `donors`.`donor_id` in (select `donation_history`.`donor_id` from `donation_history` where (`donation_history`.`date` > (now() - interval 6 month))) is false) union select `donors`.`donor_id` AS `donor_id`,`donors`.`donor_name` AS `donor_name`,`donors`.`blood_group` AS `blood_group`,`donors`.`gender` AS `gender`,`donors`.`age` AS `age`,`donors`.`contact_number` AS `contact_number`,`donors`.`pincode` AS `pincode`,`donors`.`address` AS `address`,NULL AS `disease_name`,NULL AS `restriction` from `donors` where ((`donors`.`blood_group` in ('A-ve','B-ve','AB-ve','O-ve')) and `donors`.`donor_id` in (select `donation_history`.`donor_id` from `donation_history` where (`donation_history`.`date` > (now() - interval 6 month))) is false and `donors`.`donor_id` in (select distinct `diseases`.`donor_id` from `diseases`) is false) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `b+_eligible_donors`
--

/*!50001 DROP VIEW IF EXISTS `b+_eligible_donors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `b+_eligible_donors` AS select `donors`.`donor_id` AS `donor_id`,`donors`.`donor_name` AS `donor_name`,`donors`.`blood_group` AS `blood_group`,`donors`.`gender` AS `gender`,`donors`.`age` AS `age`,`donors`.`contact_number` AS `contact_number`,`donors`.`pincode` AS `pincode`,`donors`.`address` AS `address`,`diseases`.`disease_name` AS `disease_name`,`diseases`.`restriction` AS `restriction` from (`donors` join `diseases`) where ((`donors`.`donor_id` = `diseases`.`donor_id`) and (`donors`.`blood_group` in ('O+ve','B+ve')) and `donors`.`donor_id` in (select `donation_history`.`donor_id` from `donation_history` where (`donation_history`.`date` > (now() - interval 6 month))) is false) union select `donors`.`donor_id` AS `donor_id`,`donors`.`donor_name` AS `donor_name`,`donors`.`blood_group` AS `blood_group`,`donors`.`gender` AS `gender`,`donors`.`age` AS `age`,`donors`.`contact_number` AS `contact_number`,`donors`.`pincode` AS `pincode`,`donors`.`address` AS `address`,NULL AS `disease_name`,NULL AS `restriction` from `donors` where ((`donors`.`blood_group` in ('O+ve','B+ve')) and `donors`.`donor_id` in (select `donation_history`.`donor_id` from `donation_history` where (`donation_history`.`date` > (now() - interval 6 month))) is false and `donors`.`donor_id` in (select distinct `diseases`.`donor_id` from `diseases`) is false) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `b-_eligible_donors`
--

/*!50001 DROP VIEW IF EXISTS `b-_eligible_donors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `b-_eligible_donors` AS select `donors`.`donor_id` AS `donor_id`,`donors`.`donor_name` AS `donor_name`,`donors`.`blood_group` AS `blood_group`,`donors`.`gender` AS `gender`,`donors`.`age` AS `age`,`donors`.`contact_number` AS `contact_number`,`donors`.`pincode` AS `pincode`,`donors`.`address` AS `address`,`diseases`.`disease_name` AS `disease_name`,`diseases`.`restriction` AS `restriction` from (`donors` join `diseases`) where ((`donors`.`donor_id` = `diseases`.`donor_id`) and (`donors`.`blood_group` in ('B-ve','O-ve')) and `donors`.`donor_id` in (select `donation_history`.`donor_id` from `donation_history` where (`donation_history`.`date` > (now() - interval 6 month))) is false) union select `donors`.`donor_id` AS `donor_id`,`donors`.`donor_name` AS `donor_name`,`donors`.`blood_group` AS `blood_group`,`donors`.`gender` AS `gender`,`donors`.`age` AS `age`,`donors`.`contact_number` AS `contact_number`,`donors`.`pincode` AS `pincode`,`donors`.`address` AS `address`,NULL AS `disease_name`,NULL AS `restriction` from `donors` where ((`donors`.`blood_group` in ('B-ve','O-ve')) and `donors`.`donor_id` in (select `donation_history`.`donor_id` from `donation_history` where (`donation_history`.`date` > (now() - interval 6 month))) is false and `donors`.`donor_id` in (select distinct `diseases`.`donor_id` from `diseases`) is false) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `blood_banks_info`
--

/*!50001 DROP VIEW IF EXISTS `blood_banks_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `blood_banks_info` AS select `blood_banks`.`bank_id` AS `bank_id`,`blood_banks`.`bank_name` AS `bank_name`,`blood_banks`.`address` AS `address`,`blood_banks`.`contact` AS `contact` from `blood_banks` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `have_not_donated_recently`
--

/*!50001 DROP VIEW IF EXISTS `have_not_donated_recently`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `have_not_donated_recently` AS select `donors`.`donor_name` AS `donor_name`,`donors`.`blood_group` AS `blood_group`,`donors`.`contact_number` AS `contact_number`,`donors`.`pincode` AS `pincode`,`diseases`.`disease_name` AS `disease_name`,`diseases`.`restriction` AS `restriction`,`donation_history`.`date` AS `date`,`donation_history`.`quantity` AS `quantity` from ((`donors` join `diseases`) join `donation_history`) where ((`donors`.`donor_id` = `diseases`.`donor_id`) and (`donation_history`.`donor_id` = `donors`.`donor_id`) and (`donation_history`.`date` < (now() - interval 6 month))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `location_info`
--

/*!50001 DROP VIEW IF EXISTS `location_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `location_info` AS select `location`.`location_id` AS `location_id`,`location`.`location_name` AS `location_name`,`location`.`address` AS `address`,`location`.`pincode` AS `pincode`,`location`.`bank_id` AS `bank_id` from `location` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `o+_eligible_donors`
--

/*!50001 DROP VIEW IF EXISTS `o+_eligible_donors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `o+_eligible_donors` AS select `donors`.`donor_id` AS `donor_id`,`donors`.`donor_name` AS `donor_name`,`donors`.`blood_group` AS `blood_group`,`donors`.`gender` AS `gender`,`donors`.`age` AS `age`,`donors`.`contact_number` AS `contact_number`,`donors`.`pincode` AS `pincode`,`donors`.`address` AS `address`,`diseases`.`disease_name` AS `disease_name`,`diseases`.`restriction` AS `restriction` from (`donors` join `diseases`) where ((`donors`.`donor_id` = `diseases`.`donor_id`) and (`donors`.`blood_group` in ('O+ve','O-ve')) and `donors`.`donor_id` in (select `donation_history`.`donor_id` from `donation_history` where (`donation_history`.`date` > (now() - interval 6 month))) is false) union select `donors`.`donor_id` AS `donor_id`,`donors`.`donor_name` AS `donor_name`,`donors`.`blood_group` AS `blood_group`,`donors`.`gender` AS `gender`,`donors`.`age` AS `age`,`donors`.`contact_number` AS `contact_number`,`donors`.`pincode` AS `pincode`,`donors`.`address` AS `address`,NULL AS `disease_name`,NULL AS `restriction` from `donors` where ((`donors`.`blood_group` in ('O+ve','O-ve')) and `donors`.`donor_id` in (select `donation_history`.`donor_id` from `donation_history` where (`donation_history`.`date` > (now() - interval 6 month))) is false and `donors`.`donor_id` in (select distinct `diseases`.`donor_id` from `diseases`) is false) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `o-_eligible_donors`
--

/*!50001 DROP VIEW IF EXISTS `o-_eligible_donors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `o-_eligible_donors` AS select `donors`.`donor_id` AS `donor_id`,`donors`.`donor_name` AS `donor_name`,`donors`.`blood_group` AS `blood_group`,`donors`.`gender` AS `gender`,`donors`.`age` AS `age`,`donors`.`contact_number` AS `contact_number`,`donors`.`pincode` AS `pincode`,`donors`.`address` AS `address`,`diseases`.`disease_name` AS `disease_name`,`diseases`.`restriction` AS `restriction` from (`donors` join `diseases`) where ((`donors`.`donor_id` = `diseases`.`donor_id`) and (`donors`.`blood_group` = 'O-ve') and `donors`.`donor_id` in (select `donation_history`.`donor_id` from `donation_history` where (`donation_history`.`date` > (now() - interval 6 month))) is false) union select `donors`.`donor_id` AS `donor_id`,`donors`.`donor_name` AS `donor_name`,`donors`.`blood_group` AS `blood_group`,`donors`.`gender` AS `gender`,`donors`.`age` AS `age`,`donors`.`contact_number` AS `contact_number`,`donors`.`pincode` AS `pincode`,`donors`.`address` AS `address`,NULL AS `disease_name`,NULL AS `restriction` from `donors` where ((`donors`.`blood_group` = 'O-ve') and `donors`.`donor_id` in (select `donation_history`.`donor_id` from `donation_history` where (`donation_history`.`date` > (now() - interval 6 month))) is false and `donors`.`donor_id` in (select distinct `diseases`.`donor_id` from `diseases`) is false) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `request_info`
--

/*!50001 DROP VIEW IF EXISTS `request_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `request_info` AS select `requests`.`request_id` AS `request_id`,`requests`.`blood_group` AS `blood_group`,`requests`.`quantity` AS `quantity`,`requests`.`contact` AS `contact`,`blood_banks`.`bank_name` AS `bank_name` from (`requests` join `blood_banks`) where (`requests`.`bank_id` = `blood_banks`.`bank_id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-16  0:00:16
