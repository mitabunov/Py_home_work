-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: database_name_03
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customers` (
  `id_custom` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `town` varchar(50) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id_custom`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (2,'Dmitriy','Yatsenko','Moseend','moseend@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-19 23:16:33','2021-07-19 23:16:33'),(3,'Valeriy','Golyshkin','Fortioneaks','fortioneaks@gmail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-19 23:16:33','2021-07-19 23:16:33'),(4,'Vadim','Moiseenko','Antence73','antence73@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-19 23:16:33','2021-07-19 23:16:33'),(5,'Vladimir','Belousov','Andescols','andescols@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-19 23:16:33','2021-07-19 23:16:33'),(6,'Tatyana','Khakimova','Caltin1962','caltin1962@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-19 23:16:33','2021-07-19 23:16:33'),(7,'Pavel','Arnautov','Lablen','lablen@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-19 23:16:33','2021-07-19 23:16:33'),(8,'Dmitriy','Yatsenko','Moseend','moseend@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-19 23:25:10','2021-07-19 23:25:10'),(9,'Valeriy','Golyshkin','Fortioneaks','fortioneaks@gmail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-19 23:25:10','2021-07-19 23:25:10'),(10,'Vadim','Moiseenko','Antence73','antence73@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-19 23:25:10','2021-07-19 23:25:10'),(11,'Vladimir','Belousov','Andescols','andescols@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-19 23:25:10','2021-07-19 23:25:10'),(12,'Tatyana','Khakimova','Caltin1962','caltin1962@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-19 23:25:10','2021-07-19 23:25:10'),(13,'Pavel','Arnautov','Lablen','lablen@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-19 23:25:10','2021-07-19 23:25:10'),(14,'Dmitriy','Yatsenko','Moseend','moseend@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-19 23:25:37','2021-07-19 23:25:37'),(15,'Valeriy','Golyshkin','Fortioneaks','fortioneaks@gmail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-19 23:25:37','2021-07-19 23:25:37'),(16,'Vadim','Moiseenko','Antence73','antence73@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-19 23:25:37','2021-07-19 23:25:37'),(17,'Vladimir','Belousov','Andescols','andescols@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-19 23:25:37','2021-07-19 23:25:37'),(18,'Tatyana','Khakimova','Caltin1962','caltin1962@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-19 23:25:37','2021-07-19 23:25:37'),(19,'Pavel','Arnautov','Lablen','lablen@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-19 23:25:37','2021-07-19 23:25:37'),(20,'Dmitriy','Yatsenko','Moseend','moseend@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:09:58','2021-07-20 01:09:58'),(21,'Valeriy','Golyshkin','Fortioneaks','fortioneaks@gmail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:09:58','2021-07-20 01:09:58'),(22,'Vadim','Moiseenko','Antence73','antence73@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:09:58','2021-07-20 01:09:58'),(23,'Vladimir','Belousov','Andescols','andescols@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:09:58','2021-07-20 01:09:58'),(24,'Tatyana','Khakimova','Caltin1962','caltin1962@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:09:58','2021-07-20 01:09:58'),(25,'Pavel','Arnautov','Lablen','lablen@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:09:58','2021-07-20 01:09:58'),(26,'Dmitriy','Yatsenko','Moseend','moseend@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:10:17','2021-07-20 01:10:17'),(27,'Valeriy','Golyshkin','Fortioneaks','fortioneaks@gmail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:10:17','2021-07-20 01:10:17'),(28,'Vadim','Moiseenko','Antence73','antence73@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:10:17','2021-07-20 01:10:17'),(29,'Vladimir','Belousov','Andescols','andescols@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:10:17','2021-07-20 01:10:17'),(30,'Tatyana','Khakimova','Caltin1962','caltin1962@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:10:17','2021-07-20 01:10:17'),(31,'Pavel','Arnautov','Lablen','lablen@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:10:17','2021-07-20 01:10:17'),(32,'Dmitriy','Yatsenko','Moseend','moseend@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:11:42','2021-07-20 01:11:42'),(33,'Valeriy','Golyshkin','Fortioneaks','fortioneaks@gmail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:11:42','2021-07-20 01:11:42'),(34,'Vadim','Moiseenko','Antence73','antence73@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:11:42','2021-07-20 01:11:42'),(35,'Vladimir','Belousov','Andescols','andescols@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:11:42','2021-07-20 01:11:42'),(36,'Tatyana','Khakimova','Caltin1962','caltin1962@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:11:42','2021-07-20 01:11:42'),(37,'Pavel','Arnautov','Lablen','lablen@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:11:42','2021-07-20 01:11:42'),(38,'Dmitriy','Yatsenko','Moseend','moseend@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:15:08','2021-07-20 01:15:08'),(39,'Valeriy','Golyshkin','Fortioneaks','fortioneaks@gmail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:15:08','2021-07-20 01:15:08'),(40,'Vadim','Moiseenko','Antence73','antence73@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:15:08','2021-07-20 01:15:08'),(41,'Vladimir','Belousov','Andescols','andescols@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:15:08','2021-07-20 01:15:08'),(42,'Tatyana','Khakimova','Caltin1962','caltin1962@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:15:08','2021-07-20 01:15:08'),(43,'Pavel','Arnautov','Lablen','lablen@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:15:08','2021-07-20 01:15:08'),(44,'Dmitriy','Yatsenko','Moseend','moseend@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:15:38','2021-07-20 01:15:38'),(45,'Valeriy','Golyshkin','Fortioneaks','fortioneaks@gmail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:15:38','2021-07-20 01:15:38'),(46,'Vadim','Moiseenko','Antence73','antence73@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:15:38','2021-07-20 01:15:38'),(47,'Vladimir','Belousov','Andescols','andescols@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:15:38','2021-07-20 01:15:38'),(48,'Tatyana','Khakimova','Caltin1962','caltin1962@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:15:38','2021-07-20 01:15:38'),(49,'Pavel','Arnautov','Lablen','lablen@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:15:38','2021-07-20 01:15:38'),(50,'Dmitriy','Yatsenko','Moseend','moseend@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:19:14','2021-07-20 01:19:14'),(51,'Valeriy','Golyshkin','Fortioneaks','fortioneaks@gmail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:19:14','2021-07-20 01:19:14'),(52,'Vadim','Moiseenko','Antence73','antence73@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:19:14','2021-07-20 01:19:14'),(53,'Vladimir','Belousov','Andescols','andescols@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:19:14','2021-07-20 01:19:14'),(54,'Tatyana','Khakimova','Caltin1962','caltin1962@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:19:14','2021-07-20 01:19:14'),(55,'Pavel','Arnautov','Lablen','lablen@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:19:14','2021-07-20 01:19:14'),(56,'Dmitriy','Yatsenko','Moseend','moseend@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:25:19','2021-07-20 01:25:19'),(57,'Valeriy','Golyshkin','Fortioneaks','fortioneaks@gmail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:25:19','2021-07-20 01:25:19'),(58,'Vadim','Moiseenko','Antence73','antence73@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:25:19','2021-07-20 01:25:19'),(59,'Vladimir','Belousov','Andescols','andescols@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:25:19','2021-07-20 01:25:19'),(60,'Tatyana','Khakimova','Caltin1962','caltin1962@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:25:19','2021-07-20 01:25:19'),(61,'Pavel','Arnautov','Lablen','lablen@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:25:19','2021-07-20 01:25:19'),(62,'Dmitriy','Yatsenko','Moseend','moseend@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:26:57','2021-07-20 01:26:57'),(63,'Valeriy','Golyshkin','Fortioneaks','fortioneaks@gmail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:26:57','2021-07-20 01:26:57'),(64,'Vadim','Moiseenko','Antence73','antence73@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:26:57','2021-07-20 01:26:57'),(65,'Vladimir','Belousov','Andescols','andescols@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:26:57','2021-07-20 01:26:57'),(66,'Tatyana','Khakimova','Caltin1962','caltin1962@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:26:57','2021-07-20 01:26:57'),(67,'Pavel','Arnautov','Lablen','lablen@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:26:57','2021-07-20 01:26:57'),(68,'Dmitriy','Yatsenko','Moseend','moseend@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:27:16','2021-07-20 01:27:16'),(69,'Valeriy','Golyshkin','Fortioneaks','fortioneaks@gmail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:27:16','2021-07-20 01:27:16'),(70,'Vadim','Moiseenko','Antence73','antence73@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:27:16','2021-07-20 01:27:16'),(71,'Vladimir','Belousov','Andescols','andescols@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:27:16','2021-07-20 01:27:16'),(72,'Tatyana','Khakimova','Caltin1962','caltin1962@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:27:16','2021-07-20 01:27:16'),(73,'Pavel','Arnautov','Lablen','lablen@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:27:16','2021-07-20 01:27:16'),(74,'Dmitriy','Yatsenko','Moseend','moseend@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:28:48','2021-07-20 01:28:48'),(75,'Valeriy','Golyshkin','Fortioneaks','fortioneaks@gmail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:28:48','2021-07-20 01:28:48'),(76,'Vadim','Moiseenko','Antence73','antence73@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:28:48','2021-07-20 01:28:48'),(77,'Vladimir','Belousov','Andescols','andescols@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:28:48','2021-07-20 01:28:48'),(78,'Tatyana','Khakimova','Caltin1962','caltin1962@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:28:48','2021-07-20 01:28:48'),(79,'Pavel','Arnautov','Lablen','lablen@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 01:28:48','2021-07-20 01:28:48'),(80,'Dmitriy','Yatsenko','Moseend','moseend@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 02:13:38','2021-07-20 02:13:38'),(81,'Valeriy','Golyshkin','Fortioneaks','fortioneaks@gmail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 02:13:38','2021-07-20 02:13:38'),(82,'Vadim','Moiseenko','Antence73','antence73@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 02:13:38','2021-07-20 02:13:38'),(83,'Vladimir','Belousov','Andescols','andescols@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 02:13:38','2021-07-20 02:13:38'),(84,'Tatyana','Khakimova','Caltin1962','caltin1962@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 02:13:38','2021-07-20 02:13:38'),(85,'Pavel','Arnautov','Lablen','lablen@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 02:13:38','2021-07-20 02:13:38'),(86,'Dmitriy','Yatsenko','Moseend','moseend@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 02:15:31','2021-07-20 02:15:31'),(87,'Valeriy','Golyshkin','Fortioneaks','fortioneaks@gmail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 02:15:31','2021-07-20 02:15:31'),(88,'Vadim','Moiseenko','Antence73','antence73@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 02:15:31','2021-07-20 02:15:31'),(89,'Vladimir','Belousov','Andescols','andescols@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 02:15:31','2021-07-20 02:15:31'),(90,'Tatyana','Khakimova','Caltin1962','caltin1962@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 02:15:31','2021-07-20 02:15:31'),(91,'Pavel','Arnautov','Lablen','lablen@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 02:15:31','2021-07-20 02:15:31'),(92,'Dmitriy','Yatsenko','Moseend','moseend@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 02:16:21','2021-07-20 02:16:21'),(93,'Valeriy','Golyshkin','Fortioneaks','fortioneaks@gmail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 02:16:21','2021-07-20 02:16:21'),(94,'Vadim','Moiseenko','Antence73','antence73@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 02:16:21','2021-07-20 02:16:21'),(95,'Vladimir','Belousov','Andescols','andescols@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 02:16:21','2021-07-20 02:16:21'),(96,'Tatyana','Khakimova','Caltin1962','caltin1962@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 02:16:21','2021-07-20 02:16:21'),(97,'Pavel','Arnautov','Lablen','lablen@mail.com','trytrytrytr','ytrtyrytrytrytr','2021-07-20 02:16:21','2021-07-20 02:16:21');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Items`
--

DROP TABLE IF EXISTS `Items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `cost_price` decimal(10,2) NOT NULL,
  `selling_price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Items`
--

LOCK TABLES `Items` WRITE;
/*!40000 ALTER TABLE `Items` DISABLE KEYS */;
INSERT INTO `Items` VALUES (1,'Chair',9.21,10.81,5),(2,'Pen',3.45,4.51,3),(3,'Headphone',15.52,16.81,50),(4,'Travel Bag',20.10,24.21,50),(5,'Keyboard',20.10,22.11,50),(6,'Monitor',200.14,212.89,50),(7,'Watch',100.58,104.41,50),(8,'Water Bottle',20.89,25.00,50),(9,'Chair',9.21,10.81,5),(10,'Pen',3.45,4.51,3),(11,'Headphone',15.52,16.81,50),(12,'Travel Bag',20.10,24.21,50),(13,'Keyboard',20.10,22.11,50),(14,'Monitor',200.14,212.89,50),(15,'Watch',100.58,104.41,50),(16,'Water Bottle',20.89,25.00,50),(17,'Chair',9.21,10.81,5),(18,'Pen',3.45,4.51,3),(19,'Headphone',15.52,16.81,50),(20,'Travel Bag',20.10,24.21,50),(21,'Keyboard',20.10,22.11,50),(22,'Monitor',200.14,212.89,50),(23,'Watch',100.58,104.41,50),(24,'Water Bottle',20.89,25.00,50),(25,'Chair',9.21,10.81,5),(26,'Pen',3.45,4.51,3),(27,'Headphone',15.52,16.81,50),(28,'Travel Bag',20.10,24.21,50),(29,'Keyboard',20.10,22.11,50),(30,'Monitor',200.14,212.89,50),(31,'Watch',100.58,104.41,50),(32,'Water Bottle',20.89,25.00,50),(33,'Chair',9.21,10.81,5),(34,'Pen',3.45,4.51,3),(35,'Headphone',15.52,16.81,50),(36,'Travel Bag',20.10,24.21,50),(37,'Keyboard',20.10,22.11,50),(38,'Monitor',200.14,212.89,50),(39,'Watch',100.58,104.41,50),(40,'Water Bottle',20.89,25.00,50),(41,'Chair',9.21,10.81,5),(42,'Pen',3.45,4.51,3),(43,'Headphone',15.52,16.81,50),(44,'Travel Bag',20.10,24.21,50),(45,'Keyboard',20.10,22.11,50),(46,'Monitor',200.14,212.89,50),(47,'Watch',100.58,104.41,50),(48,'Water Bottle',20.89,25.00,50),(49,'Chair',9.21,10.81,5),(50,'Pen',3.45,4.51,3),(51,'Headphone',15.52,16.81,50),(52,'Travel Bag',20.10,24.21,50),(53,'Keyboard',20.10,22.11,50),(54,'Monitor',200.14,212.89,50),(55,'Watch',100.58,104.41,50),(56,'Water Bottle',20.89,25.00,50),(57,'Chair',9.21,10.81,5),(58,'Pen',3.45,4.51,3),(59,'Headphone',15.52,16.81,50),(60,'Travel Bag',20.10,24.21,50),(61,'Keyboard',20.10,22.11,50),(62,'Monitor',200.14,212.89,50),(63,'Watch',100.58,104.41,50),(64,'Water Bottle',20.89,25.00,50),(65,'Chair',9.21,10.81,5),(66,'Pen',3.45,4.51,3),(67,'Headphone',15.52,16.81,50),(68,'Travel Bag',20.10,24.21,50),(69,'Keyboard',20.10,22.11,50),(70,'Monitor',200.14,212.89,50),(71,'Watch',100.58,104.41,50),(72,'Water Bottle',20.89,25.00,50),(73,'Chair',9.21,10.81,5),(74,'Pen',3.45,4.51,3),(75,'Headphone',15.52,16.81,50),(76,'Travel Bag',20.10,24.21,50),(77,'Keyboard',20.10,22.11,50),(78,'Monitor',200.14,212.89,50),(79,'Watch',100.58,104.41,50),(80,'Water Bottle',20.89,25.00,50),(81,'Chair',9.21,10.81,5),(82,'Pen',3.45,4.51,3),(83,'Headphone',15.52,16.81,50),(84,'Travel Bag',20.10,24.21,50),(85,'Keyboard',20.10,22.11,50),(86,'Monitor',200.14,212.89,50),(87,'Watch',100.58,104.41,50),(88,'Water Bottle',20.89,25.00,50),(89,'Chair',9.21,10.81,5),(90,'Pen',3.45,4.51,3),(91,'Headphone',15.52,16.81,50),(92,'Travel Bag',20.10,24.21,50),(93,'Keyboard',20.10,22.11,50),(94,'Monitor',200.14,212.89,50),(95,'Watch',100.58,104.41,50),(96,'Water Bottle',20.89,25.00,50),(97,'Chair',9.21,10.81,5),(98,'Pen',3.45,4.51,3),(99,'Headphone',15.52,16.81,50),(100,'Travel Bag',20.10,24.21,50),(101,'Keyboard',20.10,22.11,50),(102,'Monitor',200.14,212.89,50),(103,'Watch',100.58,104.41,50),(104,'Water Bottle',20.89,25.00,50),(105,'Chair',9.21,10.81,5),(106,'Pen',3.45,4.51,3),(107,'Headphone',15.52,16.81,50),(108,'Travel Bag',20.10,24.21,50),(109,'Keyboard',20.10,22.11,50),(110,'Monitor',200.14,212.89,50),(111,'Watch',100.58,104.41,50),(112,'Water Bottle',20.89,25.00,50),(113,'Chair',9.21,10.81,5),(114,'Pen',3.45,4.51,3),(115,'Headphone',15.52,16.81,50),(116,'Travel Bag',20.10,24.21,50),(117,'Keyboard',20.10,22.11,50),(118,'Monitor',200.14,212.89,50),(119,'Watch',100.58,104.41,50),(120,'Water Bottle',20.89,25.00,50),(121,'Chair',9.21,10.81,5),(122,'Pen',3.45,4.51,3),(123,'Headphone',15.52,16.81,50),(124,'Travel Bag',20.10,24.21,50),(125,'Keyboard',20.10,22.11,50),(126,'Monitor',200.14,212.89,50),(127,'Watch',100.58,104.41,50),(128,'Water Bottle',20.89,25.00,50),(129,'Chair',9.21,10.81,5),(130,'Pen',3.45,4.51,3),(131,'Headphone',15.52,16.81,50),(132,'Travel Bag',20.10,24.21,50),(133,'Keyboard',20.10,22.11,50),(134,'Monitor',200.14,212.89,50),(135,'Watch',100.58,104.41,50),(136,'Water Bottle',20.89,25.00,50),(137,'Chair',9.21,10.81,5),(138,'Pen',3.45,4.51,3),(139,'Headphone',15.52,16.81,50),(140,'Travel Bag',20.10,24.21,50),(141,'Keyboard',20.10,22.11,50),(142,'Monitor',200.14,212.89,50),(143,'Watch',100.58,104.41,50),(144,'Water Bottle',20.89,25.00,50);
/*!40000 ALTER TABLE `Items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_lines`
--

DROP TABLE IF EXISTS `Order_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Order_lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `Order_lines_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `Orders` (`id`),
  CONSTRAINT `Order_lines_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `Items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_lines`
--

LOCK TABLES `Order_lines` WRITE;
/*!40000 ALTER TABLE `Order_lines` DISABLE KEYS */;
INSERT INTO `Order_lines` VALUES (1,1,137,3),(2,1,138,2),(3,2,137,1),(4,2,138,4);
/*!40000 ALTER TABLE `Order_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `date_placed` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`id_custom`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,92,'2021-07-20 02:16:21',NULL),(2,93,'2021-07-20 02:16:21',NULL);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `town` varchar(50) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `cost_price` decimal(10,2) NOT NULL,
  `selling_price` decimal(10,2) NOT NULL,
  `quantity` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-20 20:16:39
