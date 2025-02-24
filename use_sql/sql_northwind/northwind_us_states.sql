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
-- Table structure for table `us_states`
--

DROP TABLE IF EXISTS `us_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `us_states` (
  `state_id` smallint NOT NULL,
  `state_name` varchar(100) DEFAULT NULL,
  `state_abbr` varchar(2) DEFAULT NULL,
  `state_region` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`state_id`),
  KEY `state_id` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `us_states`
--

LOCK TABLES `us_states` WRITE;
/*!40000 ALTER TABLE `us_states` DISABLE KEYS */;
INSERT INTO `us_states` VALUES (1,'Alabama','AL','south'),(2,'Alaska','AK','north'),(3,'Arizona','AZ','west'),(4,'Arkansas','AR','south'),(5,'California','CA','west'),(6,'Colorado','CO','west'),(7,'Connecticut','CT','east'),(8,'Delaware','DE','east'),(9,'District of Columbia','DC','east'),(10,'Florida','FL','south'),(11,'Georgia','GA','south'),(12,'Hawaii','HI','west'),(13,'Idaho','ID','midwest'),(14,'Illinois','IL','midwest'),(15,'Indiana','IN','midwest'),(16,'Iowa','IO','midwest'),(17,'Kansas','KS','midwest'),(18,'Kentucky','KY','south'),(19,'Louisiana','LA','south'),(20,'Maine','ME','north'),(21,'Maryland','MD','east'),(22,'Massachusetts','MA','north'),(23,'Michigan','MI','north'),(24,'Minnesota','MN','north'),(25,'Mississippi','MS','south'),(26,'Missouri','MO','south'),(27,'Montana','MT','west'),(28,'Nebraska','NE','midwest'),(29,'Nevada','NV','west'),(30,'New Hampshire','NH','east'),(31,'New Jersey','NJ','east'),(32,'New Mexico','NM','west'),(33,'New York','NY','east'),(34,'North Carolina','NC','east'),(35,'North Dakota','ND','midwest'),(36,'Ohio','OH','midwest'),(37,'Oklahoma','OK','midwest'),(38,'Oregon','OR','west'),(39,'Pennsylvania','PA','east'),(40,'Rhode Island','RI','east'),(41,'South Carolina','SC','east'),(42,'South Dakota','SD','midwest'),(43,'Tennessee','TN','midwest'),(44,'Texas','TX','west'),(45,'Utah','UT','west'),(46,'Vermont','VT','east'),(47,'Virginia','VA','east'),(48,'Washington','WA','west'),(49,'West Virginia','WV','south'),(50,'Wisconsin','WI','midwest'),(51,'Wyoming','WY','west');
/*!40000 ALTER TABLE `us_states` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-23 17:28:03
