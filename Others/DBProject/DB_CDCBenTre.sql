-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: gateway
-- ------------------------------------------------------
-- Server version	5.7.43-log

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
-- Table structure for table `khovaccine_alarm`
--

DROP TABLE IF EXISTS `khovaccine_alarm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khovaccine_alarm` (
  `Id` int(5) NOT NULL AUTO_INCREMENT,
  `DateTime` datetime NOT NULL,
  `LocationName` varchar(30) NOT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `Value` double DEFAULT NULL,
  `LowLevel` double DEFAULT NULL,
  `HighLevel` double DEFAULT NULL,
  `Ack` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khovaccine_alarm`
--

LOCK TABLES `khovaccine_alarm` WRITE;
/*!40000 ALTER TABLE `khovaccine_alarm` DISABLE KEYS */;
INSERT INTO `khovaccine_alarm` VALUES (1,'2024-08-29 10:35:01','Tu6','Low Alarm',-3276.8,2,8,'No'),(2,'2024-08-29 10:36:24','Tu6','Low Alarm',-3276.8,2,8,'No'),(3,'2024-08-29 10:36:28','Tu12','Low Alarm',-3276.8,-30,8,'No'),(4,'2024-08-29 10:38:05','Tu4','Low Alarm',-3276.8,2,8,'No'),(5,'2024-08-29 10:38:05','Tu5','Low Alarm',-3276.8,2,8,'No'),(6,'2024-08-29 10:38:06','Tu6','Low Alarm',-3276.8,2,8,'No'),(7,'2024-08-29 10:38:06','Tu7','Low Alarm',-3276.8,2,8,'No'),(8,'2024-08-29 10:38:07','Tu8','Low Alarm',-3276.8,2,8,'No'),(9,'2024-08-29 10:38:10','Tu12','Low Alarm',-3276.8,-30,8,'No'),(10,'2024-08-29 11:10:02','Tu1','High Alarm',19.6,2,8,'No'),(11,'2024-08-29 11:10:07','Tu10','High Alarm',29.1,2,8,'No'),(12,'2024-08-29 11:10:59','Tu9','High Alarm',17,2,8,'No'),(13,'2024-08-29 11:12:39','Tu11','High Alarm',18.3,2,8,'No'),(14,'2024-08-29 11:13:41','Tu2','High Alarm',11,2,8,'No'),(15,'2024-08-29 11:14:04','Tu3','High Alarm',9.5,2,8,'No'),(16,'2024-08-29 11:14:32','Tu6','High Alarm',17.3,2,8,'No'),(17,'2024-08-29 11:15:28','Tu3','Normal Alarm',7.8,2,8,''),(18,'2024-08-29 11:17:03','Tu1','High Alarm',8.1,2,8,'No'),(19,'2024-08-29 11:17:06','Tu6','High Alarm',12.4,2,8,'No'),(20,'2024-08-29 11:17:06','Tu7','High Alarm',21,2,8,'No'),(21,'2024-08-29 11:17:07','Tu9','High Alarm',8.5,2,8,'No'),(22,'2024-08-29 11:17:08','Tu10','High Alarm',9.8,2,8,'No'),(23,'2024-08-29 11:17:09','Tu11','High Alarm',8.1,2,8,'No'),(24,'2024-08-29 11:17:18','Tu1','Normal Alarm',7.9,2,8,''),(25,'2024-08-29 11:17:24','Tu11','Normal Alarm',7.9,2,8,''),(26,'2024-08-29 11:17:55','Tu8','High Alarm',18,2,8,'No'),(27,'2024-08-29 11:18:29','Tu9','Normal Alarm',7.8,2,8,''),(28,'2024-08-29 11:18:38','Tu5','High Alarm',11.1,2,8,'No'),(29,'2024-08-29 11:19:23','Tu10','Normal Alarm',7.9,2,8,''),(30,'2024-08-29 11:21:05','Tu6','Normal Alarm',7.9,2,8,''),(31,'2024-08-29 11:32:04','Tu7','Low Alarm',0,2,8,'No'),(32,'2024-08-29 11:32:05','Tu8','Low Alarm',0,2,8,'No'),(33,'2024-08-29 11:32:08','Tu12','Low Alarm',0,2,8,'No'),(34,'2024-08-29 11:32:10','Tu4','Low Alarm',0,2,8,'No'),(35,'2024-08-29 11:32:11','Tu5','Low Alarm',0,2,8,'No'),(36,'2024-08-29 11:32:11','Tu6','Low Alarm',0,2,8,'No'),(37,'2024-08-29 11:38:11','Tu8','Normal Alarm',5,2,8,''),(38,'2024-08-29 11:38:24','Tu5','Normal Alarm',4.6,2,8,''),(39,'2024-08-29 11:40:57','Tu6','High Alarm',20,2,8,'No'),(40,'2024-08-29 11:41:01','Tu12','High Alarm',17.5,2,8,'No');
/*!40000 ALTER TABLE `khovaccine_alarm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khovaccine_data`
--

DROP TABLE IF EXISTS `khovaccine_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khovaccine_data` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DateTime` datetime NOT NULL,
  `LocationId` int(5) DEFAULT NULL,
  `Value` double DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khovaccine_data`
--

LOCK TABLES `khovaccine_data` WRITE;
/*!40000 ALTER TABLE `khovaccine_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `khovaccine_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khovaccine_location`
--

DROP TABLE IF EXISTS `khovaccine_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khovaccine_location` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `DeviceId` int(3) NOT NULL,
  `MemoryAddress` int(5) NOT NULL,
  `DataType` varchar(10) NOT NULL,
  `LowLevel` double DEFAULT NULL,
  `HighLevel` double DEFAULT NULL,
  `Gain` double NOT NULL,
  `Offset` double NOT NULL,
  `Deadband` double DEFAULT NULL,
  `State` varchar(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khovaccine_location`
--

LOCK TABLES `khovaccine_location` WRITE;
/*!40000 ALTER TABLE `khovaccine_location` DISABLE KEYS */;
INSERT INTO `khovaccine_location` VALUES (1,'Tu1',3,40001,'Short',2,8,0.1,0,0,'Enable'),(2,'Tu2',3,40002,'Short',2,8,0.1,0,0,'Enable'),(3,'Tu3',3,40003,'Short',2,8,0.1,0,0,'Enable'),(4,'Tu4',2,40005,'Short',2,8,0.1,0,0,'Enable'),(5,'Tu5',2,40004,'Short',2,8,0.1,0,0,'Enable'),(6,'Tu6',2,40001,'Short',2,8,0.1,0,0,'Enable'),(7,'Tu7',2,40002,'Short',2,8,0.1,0,0,'Enable'),(8,'Tu8',2,40003,'Short',2,8,0.1,0,0,'Enable'),(9,'Tu9',4,40002,'Short',2,8,0.1,0,0,'Enable'),(10,'Tu10',4,40001,'Short',2,8,0.1,0,0,'Enable'),(11,'Tu11',4,40003,'Short',2,8,0.1,0,0,'Enable'),(12,'Tu12',2,40006,'Short',2,8,0.1,0,0,'Enable');
/*!40000 ALTER TABLE `khovaccine_location` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-29 11:42:38
