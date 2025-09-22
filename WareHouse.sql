-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: warehousedb
-- ------------------------------------------------------
-- Server version	8.0.23

create database warehousedb;
use warehousedb;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `branddb`
--

DROP TABLE IF EXISTS `branddb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branddb` (
  `Brand` varchar(35) NOT NULL,
  PRIMARY KEY (`Brand`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branddb`
--

LOCK TABLES `branddb` WRITE;
/*!40000 ALTER TABLE `branddb` DISABLE KEYS */;
INSERT INTO `branddb` VALUES ('Adidas'),('Adven'),('Donear'),('Duke'),('Flying Machine'),('John Player'),('Law Man'),('Nike'),('Turtle'),('US Polo');
/*!40000 ALTER TABLE `branddb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorydb`
--

DROP TABLE IF EXISTS `categorydb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorydb` (
  `Category` varchar(35) NOT NULL,
  PRIMARY KEY (`Category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorydb`
--

LOCK TABLES `categorydb` WRITE;
/*!40000 ALTER TABLE `categorydb` DISABLE KEYS */;
INSERT INTO `categorydb` VALUES ('Capri'),('Cotton Pant'),('Half-Pant'),('Jeans'),('Kurta'),('Pajama'),('Shirt'),('T-Shirt'),('Trouser'),('Underwear'),('Vest');
/*!40000 ALTER TABLE `categorydb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordersdb`
--

DROP TABLE IF EXISTS `ordersdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordersdb` (
  `TransactionID` varchar(45) NOT NULL,
  `ItemID` varchar(45) NOT NULL,
  `ItemName` varchar(45) NOT NULL,
  `Category` varchar(45) NOT NULL,
  `Brand` varchar(45) NOT NULL,
  `Size` varchar(45) NOT NULL,
  `Amount` varchar(45) NOT NULL,
  `TransactionDate` varchar(45) NOT NULL,
  `TransactionTime` varchar(45) NOT NULL,
  `CustomerNumber` varchar(15) NOT NULL,
  `TMonth` int DEFAULT NULL,
  `TYear` int DEFAULT NULL,
  `TDay` int DEFAULT NULL,
  PRIMARY KEY (`ItemID`),
  UNIQUE KEY `ItemID_UNIQUE` (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordersdb`
--

LOCK TABLES `ordersdb` WRITE;
/*!40000 ALTER TABLE `ordersdb` DISABLE KEYS */;
INSERT INTO `ordersdb` VALUES ('SHW3122021221327','B12891','Duke Shirt','Shirt','Duke','L','1599','31/3/2021','22:13:27','9870956890',3,2021,31),('SHW3320211016','B452832','Adidas Trouser','Trouser','Adidas','S','2199','3/4/2021','10:1:6','9870956890',4,2021,3),('SHW232021111859','F798129','Adven T-Shirt','T-Shirt','Adven','L','987','2/4/2021','11:18:59','9870956890',4,2021,2),('SHW3320211016','L037218','John Player Pajama','Pajama','John Player','M','1199','3/4/2021','10:1:6','9870956890',4,2021,3),('SHW332021132054','M53839','Adidas Vest','Vest','Adidas','L','1499','3/4/2021','13:20:54','7209755363',4,2021,3),('SHW332021121826','Q272910','Donear Pant','Half-Pant','Donear','S','599','3/4/2021','12:18:26','8970654234',4,2021,3),('SHW3320211016','R829102','Duke Pant','Cotton Pant','Duke','L','899','3/4/2021','10:1:6','9870956890',4,2021,3),('SHW232021111859','S89021','Flying Machine Jeans','Jeans','Flying Machine','M','1199','2/4/2021','11:18:59','9870956890',4,2021,2),('SHW332021121243','S89291','Law Man Kurta','Kurta','Law Man','L','799','3/4/2021','12:12:43','7826142536',4,2021,3),('SHW232021111859','Y829102','Adven T-Shirt','T-Shirt','Adven','L','799','2/4/2021','11:18:59','9870956890',4,2021,2);
/*!40000 ALTER TABLE `ordersdb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizedb`
--

DROP TABLE IF EXISTS `sizedb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizedb` (
  `Size` varchar(20) NOT NULL,
  PRIMARY KEY (`Size`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizedb`
--

LOCK TABLES `sizedb` WRITE;
/*!40000 ALTER TABLE `sizedb` DISABLE KEYS */;
INSERT INTO `sizedb` VALUES ('L'),('M'),('S'),('XL'),('XXL');
/*!40000 ALTER TABLE `sizedb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockdb`
--

DROP TABLE IF EXISTS `stockdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stockdb` (
  `ItemID` varchar(25) NOT NULL,
  `ItemName` varchar(55) NOT NULL,
  `Category` varchar(55) NOT NULL,
  `Brand` varchar(55) NOT NULL,
  `Size` varchar(55) NOT NULL,
  `Amount` int NOT NULL,
  `StockDate` varchar(55) DEFAULT NULL,
  `StockTime` varchar(55) DEFAULT NULL,
  `TDay` int DEFAULT NULL,
  `TMonth` int DEFAULT NULL,
  `TYear` int DEFAULT NULL,
  UNIQUE KEY `ItemID` (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockdb`
--

INSERT INTO `stockdb`
  (ItemID, ItemName, Category, Brand, Size, Amount, StockDate, StockTime, TDay, TMonth, TYear, ImageURL, Quantity)
VALUES
('S101', 'Vintage Denim Jacket', 'Jacket', 'Levi''s', 'M', 2500, '22/09/2025', '12:04:00', 22, 9, 2025, 'https://placehold.co/150x150/007bff/ffffff?text=Denim', 15),
('T202', 'Cotton Polo T-Shirt', 'T-Shirt', 'Lacoste', 'L', 1800, '22/09/2025', '12:05:00', 22, 9, 2025, 'https://placehold.co/150x150/28a745/ffffff?text=Polo', 50),
('J303', 'Slim Fit Joggers', 'Joggers', 'Nike', 'XL', 3200, '22/09/2025', '12:06:00', 22, 9, 2025, 'https://placehold.co/150x150/dc3545/ffffff?text=Joggers', 25),
('H404', 'Linen Casual Shirt', 'Shirt', 'H&M', 'M', 1500, '22/09/2025', '12:07:00', 22, 9, 2025, 'https://placehold.co/150x150/ffc107/000000?text=Linen', 30),
('P505', 'Wool Sweater', 'Sweater', 'Gap', 'S', 2800, '22/09/2025', '12:08:00', 22, 9, 2025, 'https://placehold.co/150x150/6c757d/ffffff?text=Sweater', 10),
('B606', 'High-Waist Shorts', 'Shorts', 'Zara', 'S', 1100, '22/09/2025', '12:09:00', 22, 9, 2025, 'https://placehold.co/150x150/17a2b8/ffffff?text=Shorts', 45),
('K707', 'Knitted Cardigan', 'Cardigan', 'Uniqlo', 'M', 2200, '22/09/2025', '12:10:00', 22, 9, 2025, 'https://placehold.co/150x150/e83e8c/ffffff?text=Cardigan', 18),
('F808', 'Flannel Shirt', 'Shirt', 'Columbia', 'XL', 2750, '22/09/2025', '12:11:00', 22, 9, 2025, 'https://placehold.co/150x150/fd7e14/ffffff?text=Flannel', 22),
('G909', 'Running Leggings', 'Leggings', 'Adidas', 'XS', 1900, '22/09/2025', '12:12:00', 22, 9, 2025, 'https://placehold.co/150x150/6610f2/ffffff?text=Leggings', 40),
('D110', 'Denim Shorts', 'Shorts', 'Levi''s', 'M', 1350, '22/09/2025', '12:13:00', 22, 9, 2025, 'https://placehold.co/150x150/20c997/ffffff?text=Shorts', 33);

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `TransactionID` varchar(30) NOT NULL,
  `ItemName` varchar(45) NOT NULL,
  `Category` varchar(45) NOT NULL,
  `Brand` varchar(45) NOT NULL,
  `Size` varchar(45) NOT NULL,
  `Amount` int NOT NULL,
  `TransactionDate` varchar(45) NOT NULL,
  `TransactionTime` varchar(45) NOT NULL,
  PRIMARY KEY (`TransactionID`),
  UNIQUE KEY `TransactionID_UNIQUE` (`TransactionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES ('1','Flying Machine Jeans','Jeans','Flying Machine','L',899,'18-03-2021','10:08:55'),('11','Duke Pant','Cotton Pant','Duke','L',1699,'20/2/2021','22:23:43'),('12','US Polo Shirt','Shirt','US Polo','M',999,'20/2/2021','23:58:3'),('13','Adven Jeans','Jeans','Adven','M',999,'21/2/2021','10:12:49'),('14','US Polo Shirt','T-Shirt','US Polo','L',1199,'21/2/2021','12:25:34'),('15','Duke Shirt','Shirt','Duke','M',799,'21/2/2021','18:46:57'),('16','US Polo Shirt','Shirt','US Polo','M',1499,'21/2/2021','19:12:53'),('17','US Polo Shirt','Kurta','US Polo','M',789,'22/2/2021','22:43:46'),('18','Turtle Jeans','Jeans','Turtle','S',2712,'22/2/2021','22:45:16'),('19','US Polo Shirt','Shirt','US Polo','M',899,'23/2/2021','20:55:35'),('20','US Polo Shirt','Shirt','US Polo','S',1799,'23/2/2021','20:59:18'),('21','Duke Shirt','T-Shirt','Duke','S',879,'23/2/2021','21:18:55'),('22','kjgkjgkjgkj','Shirt','Turtle','S',1010,'24/2/2021','9:3:21'),('23','cnuiwo','Jeans','Duke','M',999,'24/2/2021','9:3:21'),('24','asFYosiafy','Shirt','Turtle','S',86987,'24/2/2021','9:27:39'),('25','ancna.nsc','Trouser','Flying Machine','L',879,'24/2/2021','9:27:39'),('26','bdkjhbja','Cotton Pant','Adven','M',7979,'24/2/2021','9:27:39'),('7','Duke Pant','Cotton pant','Duke','32',1499,'20/2/2021','20:42:12'),('B12891','Duke Shirt','Shirt','Duke','M',2991,'26/2/2021','19:0:25');
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-04 13:30:02



---
-- Adds a new column to store the image URL for each stock item.
-- We use VARCHAR(255) to accommodate standard URL lengths.
ALTER TABLE `stockdb`
ADD COLUMN `ImageURL` VARCHAR(255) DEFAULT NULL;

---
-- Adds a new column to track the quantity of each stock item.
-- The column is set to NOT NULL with a default value of 0,
-- which ensures all existing rows will have a value.
ALTER TABLE `stockdb`
ADD COLUMN `Quantity` INT NOT NULL DEFAULT 0;
