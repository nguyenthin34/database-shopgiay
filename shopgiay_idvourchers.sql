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
-- Table structure for table `idvourchers`
--

DROP TABLE IF EXISTS `idvourchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `idvourchers` (
  `IDVourcher_id` bigint NOT NULL AUTO_INCREMENT,
  `creator` varchar(100) DEFAULT NULL,
  `create_date` date NOT NULL,
  `total_amount` double NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(45) NOT NULL,
  `status` int NOT NULL,
  `export` bit(1) NOT NULL,
  PRIMARY KEY (`IDVourcher_id`),
  KEY `FK_Users_IDVourchers_idx` (`creator`),
  CONSTRAINT `FK_Users_IDVourchers` FOREIGN KEY (`creator`) REFERENCES `users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idvourchers`
--

LOCK TABLES `idvourchers` WRITE;
/*!40000 ALTER TABLE `idvourchers` DISABLE KEYS */;
INSERT INTO `idvourchers` VALUES (1,NULL,'2022-01-19',100,'0326667028','Khu công nghệ cao Hòa Lạc, Thạch Thất, Hà Nội','nguyenthin34hd@gmail.com','Nguyễn Quang Thìn',1,_binary '\0'),(2,NULL,'2022-01-19',100,'0326667028','Khu công nghệ cao Hòa Lạc, Thạch Thất, Hà Nội','nguyenthin34hd@gmail.com','Nguyễn Quang Thìn',2,_binary '\0'),(3,'ph12915','2022-01-21',300,'0326667028','Khu công nghệ cao Hòa Lạc, Thạch Thất, Hà Nội','nguyenthin34hd@gmail.com','Nguyễn Quang Thìn',0,_binary '\0'),(4,'ph12915','2022-01-21',500,'0326667028','Khu công nghệ cao Hòa Lạc, Thạch Thất, Hà Nội','nguyenthin34hd@gmail.com','Nguyễn Quang Thìn',0,_binary '\0'),(5,'ph12915','2022-03-06',300,'0961651072','Khu công nghệ cao Hòa Lạc, Thạch Thất, Hà Nội','nguyenthin34hd@gmail.com','Nguyễn Quang Thìn',0,_binary '\0');
/*!40000 ALTER TABLE `idvourchers` ENABLE KEYS */;
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
