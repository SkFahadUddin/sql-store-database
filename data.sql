USE 'project1';
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: project1
-- ------------------------------------------------------
-- Server version	26.7.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '352e6fd8-9e18-11f1-a51b-508492b2dec2:1-147';

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Aarav','Sharma','aarav@gmail.com','Kolkata','2025-12-10'),(2,'Riya','Das','riya@gmail.com','Mumbai','2025-12-15'),(3,'Arjun','Mehta','arjun@gmail.com','Delhi','2026-01-02'),(4,'Priya','Sen','priya@gmail.com','Bangalore','2026-01-05'),(5,'Rahul','Roy','rahul@gmail.com','Kolkata','2026-01-10'),(6,'Sneha','Patel','sneha@gmail.com','Pune','2026-01-15'),(7,'Kabir','Khan','kabir@gmail.com','Chennai','2026-02-01'),(8,'Ananya','Bose','ananya@gmail.com','','2026-02-05'),(9,'Ishaan','Gupta','ishaan@gmail.com','Hyderabad','2026-02-10'),(10,'Meera','Paul','meera@gmail.com','Kolkata','2026-03-01');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,1,2,799),(2,1,4,1,499),(3,1,10,2,299),(4,2,2,1,1299),(5,2,8,1,999),(6,3,3,1,1999),(7,3,5,2,1499),(8,3,10,1,299),(9,4,7,1,2499),(10,4,9,2,699),(11,5,6,1,1799),(12,5,4,2,499),(13,5,11,1,1199),(14,6,1,1,799),(15,6,3,1,1999),(16,7,5,1,1499),(17,7,10,3,299),(18,8,2,1,1299),(19,8,8,2,999),(20,8,9,1,699),(21,9,7,1,2499),(22,9,4,1,499),(23,10,6,1,1799),(24,10,11,1,1199),(25,11,1,2,799),(26,11,5,1,1499),(27,11,10,2,299),(28,12,3,1,1999),(29,12,8,1,999),(30,13,2,1,1299),(31,13,4,2,499),(32,14,7,1,2499),(33,14,9,1,699),(34,15,6,1,1799),(35,15,11,1,1199);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2026-01-05','delivered'),(2,1,'2026-01-12','delivered'),(3,1,'2026-01-20','shipped'),(4,1,'2026-01-25','delivered'),(5,1,'2026-01-28','placed'),(6,1,'2026-01-30','delivered'),(7,2,'2026-01-15','delivered'),(8,2,'2026-02-05','shipped'),(9,3,'2026-02-10','delivered'),(10,3,'2026-02-18','placed'),(11,4,'2026-02-22','delivered'),(12,5,'2026-02-25','cancelled'),(13,6,'2026-03-03','delivered'),(14,7,'2026-03-10','shipped'),(15,8,'2026-03-15','cancelled');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Wireless Mouse','Electronics',799,50),(2,'Keyboard','Electronics',1299,35),(3,'Headphones','Electronics',1999,25),(4,'T-Shirt','Clothing',499,100),(5,'Jeans','Clothing',1499,40),(6,'Hoodie','Clothing',1799,30),(7,'Smart Watch','Accessories',2499,20),(8,'Backpack','Accessories',999,45),(9,'Sunglasses','Accessories',699,60),(10,'Coffee Mug','Home',299,80),(11,'Table Lamp','Home',1199,15),(12,'Wall Clock','Home',899,25);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-25 17:51:26
