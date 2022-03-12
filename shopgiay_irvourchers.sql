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
-- Table structure for table `irvourchers`
--

DROP TABLE IF EXISTS `irvourchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `irvourchers` (
  `IRVourcher_id` bigint NOT NULL AUTO_INCREMENT,
  `provider_id` int NOT NULL,
  `total` double NOT NULL,
  `creator` varchar(100) NOT NULL,
  `status` bit(1) NOT NULL,
  `create_date` date NOT NULL,
  PRIMARY KEY (`IRVourcher_id`),
  KEY `FK_Providers_IDVouchers_idx` (`provider_id`),
  KEY `FK_Users_IDZVourchers_idx` (`creator`),
  CONSTRAINT `FK_Providers_IDVouchers` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`provider_id`),
  CONSTRAINT `FK_Users_IDZVourchers` FOREIGN KEY (`creator`) REFERENCES `users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irvourchers`
--

LOCK TABLES `irvourchers` WRITE;
/*!40000 ALTER TABLE `irvourchers` DISABLE KEYS */;
INSERT INTO `irvourchers` VALUES (3,1,3600,'ph12915',_binary '','2022-01-09'),(4,1,100744,'ph12915',_binary '\0','2022-01-09'),(5,1,400,'ph12915',_binary '','2022-01-09'),(6,1,1400,'ph12915',_binary '','2022-01-09'),(7,1,0,'ph12915',_binary '','2022-01-09'),(8,1,840000,'ph12915',_binary '','2022-01-10'),(9,1,0,'ph12915',_binary '','2022-01-11'),(10,3,14,'ph12915',_binary '','2022-01-20'),(11,3,1100,'ph12915',_binary '\0','2022-03-06'),(12,3,345,'ph12915',_binary '','2022-03-06'),(13,1,300,'ph12915',_binary '\0','2022-03-06'),(14,1,0,'ph12915',_binary '\0','2022-03-06'),(15,1,500,'ph12915',_binary '','2022-03-06'),(16,4,4,'ph12915',_binary '','2022-03-06');
/*!40000 ALTER TABLE `irvourchers` ENABLE KEYS */;
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
