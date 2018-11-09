-- MySQL dump 10.13  Distrib 5.7.22, for Win64 (x86_64)
--
-- Host: localhost    Database: doikabd
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `doika_billing_account`
--

DROP TABLE IF EXISTS `doika_billing_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doika_billing_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_market` int(11) NOT NULL,
  `key_market` varchar(255) NOT NULL,
  `billing_account_status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doika_billing_account`
--

LOCK TABLES `doika_billing_account` WRITE;
/*!40000 ALTER TABLE `doika_billing_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `doika_billing_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doika_billing_status`
--

DROP TABLE IF EXISTS `doika_billing_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doika_billing_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doika_billing_status`
--

LOCK TABLES `doika_billing_status` WRITE;
/*!40000 ALTER TABLE `doika_billing_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `doika_billing_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doika_campaign`
--

DROP TABLE IF EXISTS `doika_campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doika_campaign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `billing_account_id` int(11) NOT NULL,
  `campaign_status_id` int(11) DEFAULT NULL,
  `view_type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `progress_bar` tinyint(1) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `finish_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `terms_of_use` longtext,
  `banner_on` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doika_campaign`
--

LOCK TABLES `doika_campaign` WRITE;
/*!40000 ALTER TABLE `doika_campaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `doika_campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doika_campaign_status`
--

DROP TABLE IF EXISTS `doika_campaign_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doika_campaign_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doika_campaign_status`
--

LOCK TABLES `doika_campaign_status` WRITE;
/*!40000 ALTER TABLE `doika_campaign_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `doika_campaign_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doika_global_configuration`
--

DROP TABLE IF EXISTS `doika_global_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doika_global_configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_name` varchar(255) DEFAULT NULL,
  `option_value` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doika_global_configuration`
--

LOCK TABLES `doika_global_configuration` WRITE;
/*!40000 ALTER TABLE `doika_global_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `doika_global_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doika_payment`
--

DROP TABLE IF EXISTS `doika_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doika_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double unsigned DEFAULT NULL,
  `user_uid` int(11) DEFAULT NULL,
  `billing_account_uid` int(30) DEFAULT NULL,
  `is_reccurent` tinyint(1) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `payment_status_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doika_payment`
--

LOCK TABLES `doika_payment` WRITE;
/*!40000 ALTER TABLE `doika_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `doika_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doika_payment_status`
--

DROP TABLE IF EXISTS `doika_payment_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doika_payment_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doika_payment_status`
--

LOCK TABLES `doika_payment_status` WRITE;
/*!40000 ALTER TABLE `doika_payment_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `doika_payment_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doika_user`
--

DROP TABLE IF EXISTS `doika_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doika_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doika_user`
--

LOCK TABLES `doika_user` WRITE;
/*!40000 ALTER TABLE `doika_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `doika_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doika_user_status`
--

DROP TABLE IF EXISTS `doika_user_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doika_user_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doika_user_status`
--

LOCK TABLES `doika_user_status` WRITE;
/*!40000 ALTER TABLE `doika_user_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `doika_user_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-09 21:19:53
