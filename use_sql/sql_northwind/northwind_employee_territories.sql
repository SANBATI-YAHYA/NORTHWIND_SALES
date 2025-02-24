-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: northwind
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `employee_territories`
--

DROP TABLE IF EXISTS `employee_territories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_territories` (
  `employee_id` smallint NOT NULL,
  `territory_id` char(5) NOT NULL,
  PRIMARY KEY (`employee_id`,`territory_id`),
  KEY `employee_id` (`employee_id`),
  KEY `fk_employee_territories_territories` (`territory_id`),
  CONSTRAINT `fk_employee_territories_employees` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`),
  CONSTRAINT `fk_employee_territories_territories` FOREIGN KEY (`territory_id`) REFERENCES `territories` (`territory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_territories`
--

LOCK TABLES `employee_territories` WRITE;
/*!40000 ALTER TABLE `employee_territories` DISABLE KEYS */;
INSERT INTO `employee_territories` VALUES (1,'06897'),(1,'19713'),(2,'01581'),(2,'01730'),(2,'01833'),(2,'02116'),(2,'02139'),(2,'02184'),(2,'40222'),(3,'30346'),(3,'31406'),(3,'32859'),(3,'33607'),(4,'20852'),(4,'27403'),(4,'27511'),(5,'02903'),(5,'07960'),(5,'08837'),(5,'10019'),(5,'10038'),(5,'11747'),(5,'14450'),(6,'85014'),(6,'85251'),(6,'98004'),(6,'98052'),(6,'98104'),(7,'60179'),(7,'60601'),(7,'80202'),(7,'80909'),(7,'90405'),(7,'94025'),(7,'94105'),(7,'95008'),(7,'95054'),(7,'95060'),(8,'19428'),(8,'44122'),(8,'45839'),(8,'53404'),(9,'03049'),(9,'03801'),(9,'48075'),(9,'48084'),(9,'48304'),(9,'55113'),(9,'55439');
/*!40000 ALTER TABLE `employee_territories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-23 17:28:02
