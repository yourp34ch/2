-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: kpopstaff
-- ------------------------------------------------------
-- Server version	8.0.22

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
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `product_desc` varchar(255) DEFAULT NULL,
  `product_price` double NOT NULL,
  `product_quantity_in_stock` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Альбом','Jenny \"SOLO\"',1050,35),(2,'Альбом','Jenny \"SOLO\"',1050,35),(3,'Альбом','Monsta X \"FOLLOW\"',1500,100),(4,'Альбом','Stray Kids \"GO\"',999,120),(5,'Альбом','SuperM \"WayV\"',3500,12),(6,'Альбом','Monsta X \"THE CODE\"',600,15),(7,'Альбом','ATEEZ \"collection',4000,112),(8,'Набор','Monsta X \"MonbebeVip\"',11999,5),(9,'Набор','K-pop \"RandomAlbum\"',14000,3),(10,'Альбом','SEVENTEEN \"An Ode\"',2450,55),(11,'Набор','ATEEZ \"THE FELLOWSHIP\"',6499,89),(12,'Альбом','MAMAMOO \"rbw\"',24000,13),(13,'Набор','Jenny \"SOLO\"',1050,35),(14,'Альбом','TXT \"THE DREAM CHAPTER\"',2099,231),(15,'Альбом','BTS \"PERSONA\"',999,56),(16,'Альбом','BLACKPINK \"KILLTHISLOVE\"',1050,632),(17,'Лайстик','SEVENTEEN',2500,24),(18,'Лайстик','BLACKPINK',700,24),(19,'Лайстик','EXO',799,68),(20,'Лайстик','Stray Kids',1999,80),(22,'Альбом','Love Yourself',1450,35);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `date_of_purchase` date NOT NULL,
  `purchase_price` double NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` VALUES (1,2,15,'2020-05-07',1999,1),(2,2,15,'2020-05-07',1999,1),(3,9,5,'2020-05-07',4500,1),(4,10,6,'2020-05-16',1600,1),(5,3,1,'2020-05-25',4100,2),(6,2,15,'2020-06-11',1999,1),(7,2,8,'2020-06-11',12999,1),(8,7,3,'2020-06-14',2500,1),(9,4,20,'2020-06-26',2999,1),(10,5,6,'2020-07-02',1600,1),(11,6,7,'2020-07-17',10000,2),(12,8,2,'2020-07-19',2050,1),(13,10,19,'2020-07-25',1799,1),(14,9,11,'2020-08-21',7499,1),(15,9,18,'2020-08-21',3400,2),(16,1,4,'2020-09-14',1999,1),(17,1,14,'2020-09-14',3099,1),(18,3,8,'2020-09-20',12999,1),(19,4,17,'2020-09-23',3500,1),(20,6,20,'2020-09-30',2999,1),(21,6,13,'2020-10-03',6150,3);
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin'),(2,'users');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ksenya73','astfasy',1),(2,'antony35','sfGsfbwg',2),(3,'PAUSOU','asgaehba',2),(4,'asdasd','sdfgser',2),(5,'fgadba','sdfbag',2),(6,'sdfhbad','xdgnbsfvvv',2),(7,'rtgwbergw','astfasy',2),(8,'sfgsfgs','abrbrgbe',2),(9,'setgvrv','sfngnsn',2),(10,'bsgbf','dbzbzrebfd',2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'kpopstaff'
--

--
-- Dumping routines for database 'kpopstaff'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-23 11:56:53
