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
-- Table structure for table `dim_customers`
--

DROP TABLE IF EXISTS `dim_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_customers` (
  `customer_id` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_customers`
--

LOCK TABLES `dim_customers` WRITE;
/*!40000 ALTER TABLE `dim_customers` DISABLE KEYS */;
INSERT INTO `dim_customers` VALUES ('ALFKI','Alfreds Futterkiste','Berlin','','Germany'),('ANATR','Ana Trujillo Emparedados y helados','México D.F.','','Mexico'),('ANTON','Antonio Moreno Taquería','México D.F.','','Mexico'),('AROUT','Around the Horn','London','','UK'),('BERGS','Berglunds snabbköp','Luleå','','Sweden'),('BLAUS','Blauer See Delikatessen','Mannheim','','Germany'),('BLONP','Blondesddsl père et fils','Strasbourg','','France'),('BOLID','Bólido Comidas preparadas','Madrid','','Spain'),('BONAP','Bon app\'','Marseille','','France'),('BOTTM','Bottom-Dollar Markets','Tsawassen','BC','Canada'),('BSBEV','B\'s Beverages','London','','UK'),('CACTU','Cactus Comidas para llevar','Buenos Aires','','Argentina'),('CENTC','Centro comercial Moctezuma','México D.F.','','Mexico'),('CHOPS','Chop-suey Chinese','Bern','','Switzerland'),('COMMI','Comércio Mineiro','Sao Paulo','SP','Brazil'),('CONSH','Consolidated Holdings','London','','UK'),('DRACD','Drachenblut Delikatessen','Aachen','','Germany'),('DUMON','Du monde entier','Nantes','','France'),('EASTC','Eastern Connection','London','','UK'),('ERNSH','Ernst Handel','Graz','','Austria'),('FAMIA','Familia Arquibaldo','Sao Paulo','SP','Brazil'),('FISSA','FISSA Fabrica Inter. Salchichas S.A.','Madrid','','Spain'),('FOLIG','Folies gourmandes','Lille','','France'),('FOLKO','Folk och fä HB','Bräcke','','Sweden'),('FRANK','Frankenversand','München','','Germany'),('FRANR','France restauration','Nantes','','France'),('FRANS','Franchi S.p.A.','Torino','','Italy'),('FURIB','Furia Bacalhau e Frutos do Mar','Lisboa','','Portugal'),('GALED','Galería del gastrónomo','Barcelona','','Spain'),('GODOS','Godos Cocina Típica','Sevilla','','Spain'),('GOURL','Gourmet Lanchonetes','Campinas','SP','Brazil'),('GREAL','Great Lakes Food Market','Eugene','OR','USA'),('GROSR','GROSELLA-Restaurante','Caracas','DF','Venezuela'),('HANAR','Hanari Carnes','Rio de Janeiro','RJ','Brazil'),('HILAA','HILARION-Abastos','San Cristóbal','Táchira','Venezuela'),('HUNGC','Hungry Coyote Import Store','Elgin','OR','USA'),('HUNGO','Hungry Owl All-Night Grocers','Cork','Co. Cork','Ireland'),('ISLAT','Island Trading','Cowes','Isle of Wight','UK'),('KOENE','Königlich Essen','Brandenburg','','Germany'),('LACOR','La corne d\'abondance','Versailles','','France'),('LAMAI','La maison d\'Asie','Toulouse','','France'),('LAUGB','Laughing Bacchus Wine Cellars','Vancouver','BC','Canada'),('LAZYK','Lazy K Kountry Store','Walla Walla','WA','USA'),('LEHMS','Lehmanns Marktstand','Frankfurt a.M.','','Germany'),('LETSS','Let\'s Stop N Shop','San Francisco','CA','USA'),('LILAS','LILA-Supermercado','Barquisimeto','Lara','Venezuela'),('LINOD','LINO-Delicateses','I. de Margarita','Nueva Esparta','Venezuela'),('LONEP','Lonesome Pine Restaurant','Portland','OR','USA'),('MAGAA','Magazzini Alimentari Riuniti','Bergamo','','Italy'),('MAISD','Maison Dewey','Bruxelles','','Belgium'),('MEREP','Mère Paillarde','Montréal','Québec','Canada'),('MORGK','Morgenstern Gesundkost','Leipzig','','Germany'),('NORTS','North/South','London','','UK'),('OCEAN','Océano Atlántico Ltda.','Buenos Aires','','Argentina'),('OLDWO','Old World Delicatessen','Anchorage','AK','USA'),('OTTIK','Ottilies Käseladen','Köln','','Germany'),('PARIS','Paris spécialités','Paris','','France'),('PERIC','Pericles Comidas clásicas','México D.F.','','Mexico'),('PICCO','Piccolo und mehr','Salzburg','','Austria'),('PRINI','Princesa Isabel Vinhos','Lisboa','','Portugal'),('QUEDE','Que Delícia','Rio de Janeiro','RJ','Brazil'),('QUEEN','Queen Cozinha','Sao Paulo','SP','Brazil'),('QUICK','QUICK-Stop','Cunewalde','','Germany'),('RANCH','Rancho grande','Buenos Aires','','Argentina'),('RATTC','Rattlesnake Canyon Grocery','Albuquerque','NM','USA'),('REGGC','Reggiani Caseifici','Reggio Emilia','','Italy'),('RICAR','Ricardo Adocicados','Rio de Janeiro','RJ','Brazil'),('RICSU','Richter Supermarkt','Genève','','Switzerland'),('ROMEY','Romero y tomillo','Madrid','','Spain'),('SANTG','Santé Gourmet','Stavern','','Norway'),('SAVEA','Save-a-lot Markets','Boise','ID','USA'),('SEVES','Seven Seas Imports','London','','UK'),('SIMOB','Simons bistro','Kobenhavn','','Denmark'),('SPECD','Spécialités du monde','Paris','','France'),('SPLIR','Split Rail Beer & Ale','Lander','WY','USA'),('SUPRD','Suprêmes délices','Charleroi','','Belgium'),('THEBI','The Big Cheese','Portland','OR','USA'),('THECR','The Cracker Box','Butte','MT','USA'),('TOMSP','Toms Spezialitäten','Münster','','Germany'),('TORTU','Tortuga Restaurante','México D.F.','','Mexico'),('TRADH','Tradição Hipermercados','Sao Paulo','SP','Brazil'),('TRAIH','Trail\'s Head Gourmet Provisioners','Kirkland','WA','USA'),('VAFFE','Vaffeljernet','Århus','','Denmark'),('VICTE','Victuailles en stock','Lyon','','France'),('VINET','Vins et alcools Chevalier','Reims','','France'),('WANDK','Die Wandernde Kuh','Stuttgart','','Germany'),('WARTH','Wartian Herkku','Oulu','','Finland'),('WELLI','Wellington Importadora','Resende','SP','Brazil'),('WHITC','White Clover Markets','Seattle','WA','USA'),('WILMK','Wilman Kala','Helsinki','','Finland'),('WOLZA','Wolski  Zajazd','Warszawa','','Poland');
/*!40000 ALTER TABLE `dim_customers` ENABLE KEYS */;
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
