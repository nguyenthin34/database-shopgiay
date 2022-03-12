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
-- Table structure for table `irvourcherdetails`
--

DROP TABLE IF EXISTS `irvourcherdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `irvourcherdetails` (
  `irvourcher_detail_id` bigint NOT NULL AUTO_INCREMENT,
  `irvoucher_id` bigint NOT NULL,
  `commodity_id` bigint NOT NULL,
  `size_id` int NOT NULL,
  `color_id` int NOT NULL,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`irvourcher_detail_id`),
  KEY `FK_Commodities_IDVoucherDetails_idx` (`commodity_id`),
  KEY `FK_IDVourchers_IDVoucherDetails_idx` (`irvoucher_id`),
  KEY `FK_Sizes_IDVoucherDetails_idx` (`size_id`),
  KEY `FK_Colors_IDVoucherDetails_idx` (`color_id`),
  CONSTRAINT `FK_Colors_IRVoucherDetails` FOREIGN KEY (`color_id`) REFERENCES `colors` (`color_id`),
  CONSTRAINT `FK_Commodities_IRVoucherDetails` FOREIGN KEY (`commodity_id`) REFERENCES `commodities` (`commodity_id`),
  CONSTRAINT `FK_Sizes_IRVoucherDetails` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`size_id`),
  CONSTRAINT `FK_ỈVourchers_IRVoucherDetails` FOREIGN KEY (`irvoucher_id`) REFERENCES `irvourchers` (`IRVourcher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irvourcherdetails`
--

LOCK TABLES `irvourcherdetails` WRITE;
/*!40000 ALTER TABLE `irvourcherdetails` DISABLE KEYS */;
INSERT INTO `irvourcherdetails` VALUES (1,3,6,1,2,100,20),(2,4,5,1,2,100,3),(3,5,5,1,1,200,1),(4,6,1,3,1,300,3),(5,6,5,1,2,100,1),(6,6,6,2,1,200,2),(7,7,5,1,1,0,1),(8,8,1,3,2,80000,3),(9,8,6,2,2,150000,4),(10,9,1,1,1,0,1),(11,9,2,1,1,0,1),(12,9,3,1,1,0,1),(13,9,4,1,1,0,1),(14,9,5,1,1,0,1),(15,9,6,1,1,0,1),(16,9,7,1,1,0,1),(17,10,5,4,1,2,1),(18,10,6,1,1,3,4),(19,11,6,2,2,300,1),(20,11,6,3,2,200,4),(21,11,5,1,1,0,1),(22,11,1,1,1,0,1),(23,12,4,1,1,69,5),(24,13,6,1,2,300,1),(25,14,6,1,1,0,1),(26,15,1,1,1,100,1),(27,15,6,3,2,100,4),(28,16,3,1,1,4,1);
/*!40000 ALTER TABLE `irvourcherdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-12 21:47:26
