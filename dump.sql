CREATE DATABASE  IF NOT EXISTS `evmdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `evmdb`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: evmdb
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','admin'),(2,'emon','emon');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidate` (
  `candidateid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `mname` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) NOT NULL,
  `nid` int(11) NOT NULL,
  `party` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `photo` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  PRIMARY KEY (`candidateid`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (101,'Raihan Mahamud','Md. Nurul Huda','Umma Asma','emonraihn@gmail.com','01816028491',9834955,'BNP','dhaka','img\\\\12.jpg','Male'),(102,'Nazmul Islam','Ismail Ahmed','Asma Khatun','nazmul@gmail.com','01516790441',9834959,'Islami Saontontro','Dhaka','img\\\\15.jpg','Male');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vote` (
  `nid` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `vote` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote`
--

LOCK TABLES `vote` WRITE;
/*!40000 ALTER TABLE `vote` DISABLE KEYS */;
INSERT INTO `vote` VALUES (9834955,'Raihan Mahamud','Md. Nurul Huda','Male','01816028491','emonraihan2021@gmail.com','Noka','2018/12/01     04:05:28'),(9834956,'Delwoer Hossen','Amin Ullah','Male','01770411742','aponhub@gmail.com','DanerShis','2018/12/01     04:06:20'),(9834957,'Fokhrul Islam','Mukbul Ahmed','Male','01712563985','fokhrul@gmail.com','DanerShis','2018/12/01     04:09:28'),(9834958,'Farzana Akter','Hossain Ahmed','Female','01731728571','farzana@yahoo.com','Noka','2018/12/01     04:15:28'),(9834959,'Nazmul Islam','Ismail Ahmed','Male','01516790441','nazmul@gmail.com','No','2018/12/03     04:19:56'),(9834960,'Riaz Uddin','Somrat Ahmed','Male','01926830168','reaz@gmail.com','Hatpakha','2018/12/01     04:50:28'),(9834961,'Imran Hossain','Hossain Ahmed','Male','01676188493','imran@gmail.com','DanerShis','2018/12/04     06:10:54'),(9834962,'Shaidul Islam','Rashidul Islam','Male','01814850708','shaidul@gmail.com','DanerShis','2018/12/04     06:19:07');
/*!40000 ALTER TABLE `vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voter`
--

DROP TABLE IF EXISTS `voter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voter` (
  `name` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `mname` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `nid` int(25) NOT NULL,
  `address` varchar(45) NOT NULL,
  `photo` varchar(45) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voter`
--

LOCK TABLES `voter` WRITE;
/*!40000 ALTER TABLE `voter` DISABLE KEYS */;
INSERT INTO `voter` VALUES ('Raihan Mahamud','Md. Nurul Huda','Umma Asma','emonraihan2021@gmail.com','01816028491','Male',9834955,'Dhaka','img\\\\11.jpg'),('Delwoer Hossen','Amin Ullah','Anowara Begum','aponhub@gmail.com','01770411742','Male',9834956,'Dhaka','img\\\\12.jpg'),('Fokhrul Islam','Mukbul Ahmed','Jesmin Akter','fokhrul@gmail.com','01712563985','Male',9834957,'Dhaka','img\\\\14.jpg'),('Farzana Akter','Hossain Ahmed','Nishat Begum','farzana@yahoo.com','01731728571','Female',9834958,'Dhaka','img\\\\22.jpg'),('Nazmul Islam','Ismail Ahmed','Asma Khatun','nazmul@gmail.com','01516790441','Male',9834959,'Dhaka','img\\\\15.jpg'),('Riaz Uddin','Somrat Ahmed','Somi Kaiser','reaz@gmail.com','01926830168','Male',9834960,'Dhaka','img\\\\16.jpg'),('Imran Hossain','Hossain Ahmed','Hasina Khatun','imran@gmail.com','01676188493','Male',9834961,'Dhaka','img\\\\27.jpg'),('Shaidul Islam','Rashidul Islam','Rahima Khatun','shaidul@gmail.com','01814850708','Male',9834962,'Dhaka','img\\\\26.jpg');
/*!40000 ALTER TABLE `voter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'evmdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-04 19:05:06
