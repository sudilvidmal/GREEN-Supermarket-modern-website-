CREATE DATABASE  IF NOT EXISTS `green_sp_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `green_sp_db`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: green_sp_db
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `admin_table`
--

DROP TABLE IF EXISTS `admin_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_table` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_first_name` varchar(100) NOT NULL,
  `admin_last_name` varchar(100) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(45) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_table`
--

LOCK TABLES `admin_table` WRITE;
/*!40000 ALTER TABLE `admin_table` DISABLE KEYS */;
INSERT INTO `admin_table` VALUES (1,'DemoAdmin','DemoAdmin','DemoAdmin','admin@greensp.com','admin'),(2,'Sudil ','Vidmal','sudil','sudilvidmal@gmail.com','sudil123'),(3,'Ayana','Sagara','sagara','sagara@gmail.com','sagara123'),(4,'Asiri','Hansaja','asiri','asiri@gmail.com','siri123');
/*!40000 ALTER TABLE `admin_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing_info_table`
--

DROP TABLE IF EXISTS `billing_info_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing_info_table` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `products` varchar(255) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_info_table`
--

LOCK TABLES `billing_info_table` WRITE;
/*!40000 ALTER TABLE `billing_info_table` DISABLE KEYS */;
INSERT INTO `billing_info_table` VALUES (1,1,'Neethila','Kumararatne','neethilakumararatne17@gmail.com','\"Namalee\", Galmulla, Meegahatenna.','','1','12130','1,6,4,2');
/*!40000 ALTER TABLE `billing_info_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_table`
--

DROP TABLE IF EXISTS `cart_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_table` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image_path` varchar(255) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `product_id_idx` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_table`
--

LOCK TABLES `cart_table` WRITE;
/*!40000 ALTER TABLE `cart_table` DISABLE KEYS */;
INSERT INTO `cart_table` VALUES (200,16,'Avocado','productimage\\product (2).jpeg',100.00);
/*!40000 ALTER TABLE `cart_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_table`
--

DROP TABLE IF EXISTS `category_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_table` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_table`
--

LOCK TABLES `category_table` WRITE;
/*!40000 ALTER TABLE `category_table` DISABLE KEYS */;
INSERT INTO `category_table` VALUES (1,'Fruits'),(2,'Vegetables'),(3,'Beverages'),(4,'Frozen Food'),(5,'Grocery'),(6,'Fish & Meats'),(7,'Bakery Items'),(8,'Dairy Products'),(9,'Pharmacy');
/*!40000 ALTER TABLE `category_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_table`
--

DROP TABLE IF EXISTS `customer_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_table` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_password` varchar(45) NOT NULL,
  `customer_phone` varchar(45) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_table`
--

LOCK TABLES `customer_table` WRITE;
/*!40000 ALTER TABLE `customer_table` DISABLE KEYS */;
INSERT INTO `customer_table` VALUES (1,'Neethila Kumararatne','neethilakumararatne17@gmail.com','knk123','0719386342'),(2,'Sunethra Karunaratne','sunethrakarunaratne1961@gmail.com','Sunethra123','0716400176'),(3,'Kerawala Nayana','nayana@gmail.com','ayana12356*','0725241234');
/*!40000 ALTER TABLE `customer_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback_table`
--

DROP TABLE IF EXISTS `feedback_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback_table` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `comment` varchar(200) NOT NULL,
  `rating` int NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_table`
--

LOCK TABLES `feedback_table` WRITE;
/*!40000 ALTER TABLE `feedback_table` DISABLE KEYS */;
INSERT INTO `feedback_table` VALUES (1,2,'Great experience and user friendly interface! Great work!',10),(2,1,'Easy to find items and nicely arranged!',9);
/*!40000 ALTER TABLE `feedback_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_table`
--

DROP TABLE IF EXISTS `product_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_table` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `product_details` varchar(1000) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_image_path` varchar(255) NOT NULL,
  `product_stock` int NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_table`
--

LOCK TABLES `product_table` WRITE;
/*!40000 ALTER TABLE `product_table` DISABLE KEYS */;
INSERT INTO `product_table` VALUES (1,'Organic Avocado','Fruits','Creamy and nutritious, our ripe avocados are perfect for salads, spreads, or a healthy snack.',120.00,'productimage\\6.webp',10),(2,'Dark Chocolate Bars','Grocery','Indulge in rich, velvety dark chocolate—fair-trade sourced for guilt-free satisfaction with every heavenly bite.',200.00,'productimage\\8.webp',20),(3,'Whole Grain Bread','Bakery Items','Satisfy your cravings with our hearty whole-grain bread—crafted by artisans for the perfect slice every time.',160.00,'productimage\\1.webp',15),(4,'Organic Yogurt','Dairy Products','Indulge in the velvety texture and probiotic goodness of our organic Greek yogurt—perfect for breakfast or snacks.',250.00,'productimage\\7.webp',25),(5,'Olive Oil','Grocery','Elevate your cooking with our premium, cold-pressed olive oil—crafted for its rich flavor and health benefits.',450.00,'productimage\\2.webp',10),(6,'Vibrant Olives','Fruits','Savor the taste of the Mediterranean with our plump, brine-cured olives—perfect for salads or appetizers.',300.00,'productimage\\4.webp',12),(7,'Farm-Fresh Eggs','Grocery','Enjoy the rich, golden yolks of our free-range eggs—sourced from local farms committed to ethical practices.',300.00,'productimage\\5.webp',40),(8,'Coffee Beans','Grocery','Awaken your senses with our premium Arabica coffee beans—ethically sourced and expertly roasted for a rich, aromatic brew.',150.00,'productimage\\3.webp',20);
/*!40000 ALTER TABLE `product_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-31 18:15:50
