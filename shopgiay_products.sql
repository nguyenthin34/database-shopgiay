-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: shopgiay
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `size_id` int NOT NULL,
  `color_id` int NOT NULL,
  `quantity` int NOT NULL,
  `description` text,
  `commodity_id` bigint NOT NULL,
  `IRVoucher_id` bigint NOT NULL,
  `unit_price` double NOT NULL,
  `price` double NOT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FK_Sizes_Products_idx` (`size_id`),
  KEY `FK_Colors_Products_idx` (`color_id`),
  KEY `FK_Commodities_Products_idx` (`commodity_id`),
  KEY `FK_IRVourchers_Products_idx` (`IRVoucher_id`),
  KEY `FK_Status_Products_idx` (`status_id`) /*!80000 INVISIBLE */,
  KEY `FK_Status_Products_idx1` (`quantity`),
  CONSTRAINT `FK_Colors_Products` FOREIGN KEY (`color_id`) REFERENCES `colors` (`color_id`),
  CONSTRAINT `FK_Commodities_Products` FOREIGN KEY (`commodity_id`) REFERENCES `commodities` (`commodity_id`),
  CONSTRAINT `FK_IRVourchers_Products` FOREIGN KEY (`IRVoucher_id`) REFERENCES `irvourchers` (`IRVourcher_id`),
  CONSTRAINT `FK_Sizes_Products` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`size_id`),
  CONSTRAINT `FK_Statuses_Products` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,2,20,NULL,6,3,100,300,1),(2,3,1,3,NULL,1,6,300,300,1),(3,1,2,1,NULL,5,6,100,100,1),(4,2,1,2,NULL,6,6,200,200,1),(5,1,1,1,NULL,5,5,200,200,1),(6,1,1,1,NULL,5,7,0,100,1),(7,4,1,1,NULL,5,10,2,2,1),(8,1,1,4,NULL,6,10,3,3,1),(9,1,1,5,NULL,4,12,69,69,1),(10,1,1,1,NULL,3,16,4,4,1),(11,1,1,1,NULL,1,15,100,100,1),(12,3,2,4,NULL,6,15,100,100,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-12 21:47:27
