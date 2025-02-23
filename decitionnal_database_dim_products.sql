-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: decitionnal_database
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
-- Table structure for table `dim_products`
--

DROP TABLE IF EXISTS `dim_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_products` (
  `product_id` int NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category_id` int DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `quantity_per_unit` varchar(255) DEFAULT NULL,
  `units_in_stock` int DEFAULT NULL,
  `units_on_order` int DEFAULT NULL,
  `is_active` varchar(3) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_products`
--

LOCK TABLES `dim_products` WRITE;
/*!40000 ALTER TABLE `dim_products` DISABLE KEYS */;
INSERT INTO `dim_products` VALUES (1,'Chai',1,8,'10 boxes x 30 bags',39,0,'No',18.00),(2,'Chang',1,1,'24 - 12 oz bottles',17,40,'No',19.00),(3,'Aniseed Syrup',2,1,'12 - 550 ml bottles',13,70,'Yes',10.00),(4,'Chef Anton\'s Cajun Seasoning',2,2,'48 - 6 oz jars',53,0,'Yes',22.00),(5,'Chef Anton\'s Gumbo Mix',2,2,'36 boxes',0,0,'No',21.35),(6,'Grandma\'s Boysenberry Spread',2,3,'12 - 8 oz jars',120,0,'Yes',25.00),(7,'Uncle Bob\'s Organic Dried Pears',7,3,'12 - 1 lb pkgs.',15,0,'Yes',30.00),(8,'Northwoods Cranberry Sauce',2,3,'12 - 12 oz jars',6,0,'Yes',40.00),(9,'Mishi Kobe Niku',6,4,'18 - 500 g pkgs.',29,0,'No',97.00),(10,'Ikura',8,4,'12 - 200 ml jars',31,0,'Yes',31.00),(11,'Queso Cabrales',4,5,'1 kg pkg.',22,30,'Yes',21.00),(12,'Queso Manchego La Pastora',4,5,'10 - 500 g pkgs.',86,0,'Yes',38.00),(13,'Konbu',8,6,'2 kg box',24,0,'Yes',6.00),(14,'Tofu',7,6,'40 - 100 g pkgs.',35,0,'Yes',23.25),(15,'Genen Shouyu',2,6,'24 - 250 ml bottles',39,0,'Yes',13.00),(16,'Pavlova',3,7,'32 - 500 g boxes',29,0,'Yes',17.45),(17,'Alice Mutton',6,7,'20 - 1 kg tins',0,0,'No',39.00),(18,'Carnarvon Tigers',8,7,'16 kg pkg.',42,0,'Yes',62.50),(19,'Teatime Chocolate Biscuits',3,8,'10 boxes x 12 pieces',25,0,'Yes',9.20),(20,'Sir Rodney\'s Marmalade',3,8,'30 gift boxes',40,0,'Yes',81.00),(21,'Sir Rodney\'s Scones',3,8,'24 pkgs. x 4 pieces',3,40,'Yes',10.00),(22,'Gustaf\'s Knäckebröd',5,9,'24 - 500 g pkgs.',104,0,'Yes',21.00),(23,'Tunnbröd',5,9,'12 - 250 g pkgs.',61,0,'Yes',9.00),(24,'Guaraná Fantástica',1,10,'12 - 355 ml cans',20,0,'No',4.50),(25,'NuNuCa Nuß-Nougat-Creme',3,11,'20 - 450 g glasses',76,0,'Yes',14.00),(26,'Gumbär Gummibärchen',3,11,'100 - 250 g bags',15,0,'Yes',31.23),(27,'Schoggi Schokolade',3,11,'100 - 100 g pieces',49,0,'Yes',43.90),(28,'Rössle Sauerkraut',7,12,'25 - 825 g cans',26,0,'No',45.60),(29,'Thüringer Rostbratwurst',6,12,'50 bags x 30 sausgs.',0,0,'No',123.79),(30,'Nord-Ost Matjeshering',8,13,'10 - 200 g glasses',10,0,'Yes',25.89),(31,'Gorgonzola Telino',4,14,'12 - 100 g pkgs',0,70,'Yes',12.50),(32,'Mascarpone Fabioli',4,14,'24 - 200 g pkgs.',9,40,'Yes',32.00),(33,'Geitost',4,15,'500 g',112,0,'Yes',2.50),(34,'Sasquatch Ale',1,16,'24 - 12 oz bottles',111,0,'Yes',14.00),(35,'Steeleye Stout',1,16,'24 - 12 oz bottles',20,0,'Yes',18.00),(36,'Inlagd Sill',8,17,'24 - 250 g  jars',112,0,'Yes',19.00),(37,'Gravad lax',8,17,'12 - 500 g pkgs.',11,50,'Yes',26.00),(38,'Côte de Blaye',1,18,'12 - 75 cl bottles',17,0,'Yes',263.50),(39,'Chartreuse verte',1,18,'750 cc per bottle',69,0,'Yes',18.00),(40,'Boston Crab Meat',8,19,'24 - 4 oz tins',123,0,'Yes',18.40),(41,'Jack\'s New England Clam Chowder',8,19,'12 - 12 oz cans',85,0,'Yes',9.65),(42,'Singaporean Hokkien Fried Mee',5,20,'32 - 1 kg pkgs.',26,0,'No',14.00),(43,'Ipoh Coffee',1,20,'16 - 500 g tins',17,10,'Yes',46.00),(44,'Gula Malacca',2,20,'20 - 2 kg bags',27,0,'Yes',19.45),(45,'Rogede sild',8,21,'1k pkg.',5,70,'Yes',9.50),(46,'Spegesild',8,21,'4 - 450 g glasses',95,0,'Yes',12.00),(47,'Zaanse koeken',3,22,'10 - 4 oz boxes',36,0,'Yes',9.50),(48,'Chocolade',3,22,'10 pkgs.',15,70,'Yes',12.75),(49,'Maxilaku',3,23,'24 - 50 g pkgs.',10,60,'Yes',20.00),(50,'Valkoinen suklaa',3,23,'12 - 100 g bars',65,0,'Yes',16.25),(51,'Manjimup Dried Apples',7,24,'50 - 300 g pkgs.',20,0,'Yes',53.00),(52,'Filo Mix',5,24,'16 - 2 kg boxes',38,0,'Yes',7.00),(53,'Perth Pasties',6,24,'48 pieces',0,0,'No',32.80),(54,'Tourtière',6,25,'16 pies',21,0,'Yes',7.45),(55,'Pâté chinois',6,25,'24 boxes x 2 pies',115,0,'Yes',24.00),(56,'Gnocchi di nonna Alice',5,26,'24 - 250 g pkgs.',21,10,'Yes',38.00),(57,'Ravioli Angelo',5,26,'24 - 250 g pkgs.',36,0,'Yes',19.50),(58,'Escargots de Bourgogne',8,27,'24 pieces',62,0,'Yes',13.25),(59,'Raclette Courdavault',4,28,'5 kg pkg.',79,0,'Yes',55.00),(60,'Camembert Pierrot',4,28,'15 - 300 g rounds',19,0,'Yes',34.00),(61,'Sirop d\'érable',2,29,'24 - 500 ml bottles',113,0,'Yes',28.50),(62,'Tarte au sucre',3,29,'48 pies',17,0,'Yes',49.30),(63,'Vegie-spread',2,7,'15 - 625 g jars',24,0,'Yes',43.90),(64,'Wimmers gute Semmelknödel',5,12,'20 bags x 4 pieces',22,80,'Yes',33.25),(65,'Louisiana Fiery Hot Pepper Sauce',2,2,'32 - 8 oz bottles',76,0,'Yes',21.05),(66,'Louisiana Hot Spiced Okra',2,2,'24 - 8 oz jars',4,100,'Yes',17.00),(67,'Laughing Lumberjack Lager',1,16,'24 - 12 oz bottles',52,0,'Yes',14.00),(68,'Scottish Longbreads',3,8,'10 boxes x 8 pieces',6,10,'Yes',12.50),(69,'Gudbrandsdalsost',4,15,'10 kg pkg.',26,0,'Yes',36.00),(70,'Outback Lager',1,7,'24 - 355 ml bottles',15,10,'Yes',15.00),(71,'Flotemysost',4,15,'10 - 500 g pkgs.',26,0,'Yes',21.50),(72,'Mozzarella di Giovanni',4,14,'24 - 200 g pkgs.',14,0,'Yes',34.80),(73,'Röd Kaviar',8,17,'24 - 150 g jars',101,0,'Yes',15.00),(74,'Longlife Tofu',7,4,'5 kg pkg.',4,20,'Yes',10.00),(75,'Rhönbräu Klosterbier',1,12,'24 - 0.5 l bottles',125,0,'Yes',7.75),(76,'Lakkalikööri',1,23,'500 ml',57,0,'Yes',18.00),(77,'Original Frankfurter grüne Soße',2,12,'12 boxes',32,0,'Yes',13.00);
/*!40000 ALTER TABLE `dim_products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-23 17:28:01
