-- MariaDB dump 10.19  Distrib 10.4.18-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: gms
-- ------------------------------------------------------
-- Server version	10.4.18-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ac`
--

DROP TABLE IF EXISTS `ac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `child_id` int(11) NOT NULL,
  `artisan_id` int(11) NOT NULL,
  `weight` double NOT NULL,
  `weight_attach` double NOT NULL,
  `weight_gold` double NOT NULL,
  `date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `craft_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E98478FB5ED3C7B7` (`artisan_id`),
  KEY `IDX_E98478FBE836CCC8` (`craft_id`),
  KEY `IDX_E98478FBDD62C21B` (`child_id`),
  CONSTRAINT `FK_E98478FB5ED3C7B7` FOREIGN KEY (`artisan_id`) REFERENCES `artisan` (`id`),
  CONSTRAINT `FK_E98478FBDD62C21B` FOREIGN KEY (`child_id`) REFERENCES `child` (`id`),
  CONSTRAINT `FK_E98478FBE836CCC8` FOREIGN KEY (`craft_id`) REFERENCES `craft` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ac`
--

LOCK TABLES `ac` WRITE;
/*!40000 ALTER TABLE `ac` DISABLE KEYS */;
INSERT INTO `ac` VALUES (1,1,1,2,1.1,1.1,'2021-04-27 23:37:39',1),(2,1,1,2.2,1.2,1.1,'2021-04-28 00:04:05',1);
/*!40000 ALTER TABLE `ac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addreason`
--

DROP TABLE IF EXISTS `addreason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addreason` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addreason`
--

LOCK TABLES `addreason` WRITE;
/*!40000 ALTER TABLE `addreason` DISABLE KEYS */;
INSERT INTO `addreason` VALUES (1,'加金原因1'),(2,'加金原因2'),(3,'加金原因3');
/*!40000 ALTER TABLE `addreason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addtype`
--

DROP TABLE IF EXISTS `addtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addtype`
--

LOCK TABLES `addtype` WRITE;
/*!40000 ALTER TABLE `addtype` DISABLE KEYS */;
INSERT INTO `addtype` VALUES (1,'加金类型1'),(2,'加金类型2'),(3,'加金类型3');
/*!40000 ALTER TABLE `addtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan`
--

DROP TABLE IF EXISTS `artisan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `box` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan`
--

LOCK TABLES `artisan` WRITE;
/*!40000 ALTER TABLE `artisan` DISABLE KEYS */;
INSERT INTO `artisan` VALUES (1,'张三',0),(2,'李四',0),(3,'王五',0);
/*!40000 ALTER TABLE `artisan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attach`
--

DROP TABLE IF EXISTS `attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attach`
--

LOCK TABLES `attach` WRITE;
/*!40000 ALTER TABLE `attach` DISABLE KEYS */;
INSERT INTO `attach` VALUES (1,'附件1'),(2,'附件2'),(3,'附件');
/*!40000 ALTER TABLE `attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `box`
--

DROP TABLE IF EXISTS `box`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `box` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clerk_id` int(11) DEFAULT NULL,
  `artisan_id` int(11) DEFAULT NULL,
  `goldclass_id` int(11) NOT NULL,
  `weight` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8A9483AD95C1FC6` (`clerk_id`),
  KEY `IDX_8A9483A5ED3C7B7` (`artisan_id`),
  KEY `IDX_8A9483AA145C139` (`goldclass_id`),
  CONSTRAINT `FK_8A9483A5ED3C7B7` FOREIGN KEY (`artisan_id`) REFERENCES `artisan` (`id`),
  CONSTRAINT `FK_8A9483AA145C139` FOREIGN KEY (`goldclass_id`) REFERENCES `goldclass` (`id`),
  CONSTRAINT `FK_8A9483AD95C1FC6` FOREIGN KEY (`clerk_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box`
--

LOCK TABLES `box` WRITE;
/*!40000 ALTER TABLE `box` DISABLE KEYS */;
INSERT INTO `box` VALUES (1,4,NULL,1,3.86),(2,2,NULL,1,-3.46),(3,2,NULL,2,1.1),(4,NULL,1,1,1.55),(7,NULL,2,1,0.01),(8,NULL,NULL,1,1.44),(9,NULL,NULL,2,-2.37),(10,5,NULL,1,3.94);
/*!40000 ALTER TABLE `box` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'中央足金营销部'),(2,'地区订单综合仓');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ca`
--

DROP TABLE IF EXISTS `ca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `child_id` int(11) NOT NULL,
  `artisan_id` int(11) NOT NULL,
  `craft_id` int(11) NOT NULL,
  `weight` double NOT NULL,
  `weight_attach` double NOT NULL,
  `weight_gold` double NOT NULL,
  `date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `clerk_id` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `date1` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_35BC7B555ED3C7B7` (`artisan_id`),
  KEY `IDX_35BC7B55E836CCC8` (`craft_id`),
  KEY `IDX_35BC7B55DD62C21B` (`child_id`),
  KEY `IDX_35BC7B55D95C1FC6` (`clerk_id`),
  CONSTRAINT `FK_35BC7B555ED3C7B7` FOREIGN KEY (`artisan_id`) REFERENCES `artisan` (`id`),
  CONSTRAINT `FK_35BC7B55D95C1FC6` FOREIGN KEY (`clerk_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_35BC7B55DD62C21B` FOREIGN KEY (`child_id`) REFERENCES `child` (`id`),
  CONSTRAINT `FK_35BC7B55E836CCC8` FOREIGN KEY (`craft_id`) REFERENCES `craft` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca`
--

LOCK TABLES `ca` WRITE;
/*!40000 ALTER TABLE `ca` DISABLE KEYS */;
INSERT INTO `ca` VALUES (1,1,1,1,3,2,1,'2021-05-04 10:03:40',2,2,'2021-05-10 04:06:17'),(2,2,1,1,1,1,1,'2021-05-10 04:06:50',2,0,NULL),(3,1,3,1,1.11,1,1,'2021-05-11 03:17:32',2,0,NULL),(4,1,1,1,1,1,1,'2021-05-11 03:19:25',2,0,NULL);
/*!40000 ALTER TABLE `ca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc`
--

DROP TABLE IF EXISTS `cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `team_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `goldclass_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `weight` double NOT NULL,
  `status` smallint(6) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `date1` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_DBB21A79296CD8AE` (`team_id`),
  KEY `IDX_DBB21A79E92F8F78` (`recipient_id`),
  KEY `IDX_DBB21A79A145C139` (`goldclass_id`),
  KEY `IDX_DBB21A79DD842E46` (`position_id`),
  KEY `IDX_DBB21A79F624B39D` (`sender_id`),
  CONSTRAINT `FK_DBB21A79296CD8AE` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`),
  CONSTRAINT `FK_DBB21A79A145C139` FOREIGN KEY (`goldclass_id`) REFERENCES `goldclass` (`id`),
  CONSTRAINT `FK_DBB21A79DD842E46` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`),
  CONSTRAINT `FK_DBB21A79E92F8F78` FOREIGN KEY (`recipient_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_DBB21A79F624B39D` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc`
--

LOCK TABLES `cc` WRITE;
/*!40000 ALTER TABLE `cc` DISABLE KEYS */;
INSERT INTO `cc` VALUES (1,'2021-05-03 11:14:53',1,2,1,1,1.56,2,2,NULL),(2,'2021-05-03 11:40:05',1,4,1,1,1.1,2,2,NULL),(3,'2021-05-03 12:08:21',1,2,2,1,1.1,2,2,NULL),(4,'2021-05-03 12:24:13',1,5,1,1,1.97,2,2,'2021-05-10 09:35:17'),(5,'2021-05-03 12:26:40',1,2,1,1,1.99,2,2,NULL),(6,'2021-05-03 12:39:25',1,2,1,1,1.72,2,2,NULL),(7,'2021-05-03 12:40:17',1,4,1,1,1.82,2,2,NULL),(8,'2021-05-03 13:07:26',1,2,1,1,1.77,2,4,NULL),(9,'2021-05-03 13:09:29',1,4,1,1,1.76,2,2,'2021-05-03 13:09:47'),(10,'2021-05-08 11:07:23',1,2,1,1,1.95,2,2,'2021-05-10 09:40:26');
/*!40000 ALTER TABLE `cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `center`
--

DROP TABLE IF EXISTS `center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `center` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `center`
--

LOCK TABLES `center` WRITE;
/*!40000 ALTER TABLE `center` DISABLE KEYS */;
INSERT INTO `center` VALUES (1,'2021-04-27 23:36:11','中央单1');
/*!40000 ALTER TABLE `center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cgd`
--

DROP TABLE IF EXISTS `cgd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cgd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `main_id` int(11) DEFAULT NULL,
  `goldclass_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `weight` double NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `child_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D5B3F44AA145C139` (`goldclass_id`),
  KEY `IDX_D5B3F44ADD842E46` (`position_id`),
  KEY `IDX_D5B3F44A627EA78A` (`main_id`),
  KEY `IDX_D5B3F44ADD62C21B` (`child_id`),
  CONSTRAINT `FK_D5B3F44A627EA78A` FOREIGN KEY (`main_id`) REFERENCES `main` (`id`),
  CONSTRAINT `FK_D5B3F44AA145C139` FOREIGN KEY (`goldclass_id`) REFERENCES `goldclass` (`id`),
  CONSTRAINT `FK_D5B3F44ADD62C21B` FOREIGN KEY (`child_id`) REFERENCES `child` (`id`),
  CONSTRAINT `FK_D5B3F44ADD842E46` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cgd`
--

LOCK TABLES `cgd` WRITE;
/*!40000 ALTER TABLE `cgd` DISABLE KEYS */;
INSERT INTO `cgd` VALUES (2,'2021-05-03 09:15:47',32,1,1,1,NULL,17),(3,'2021-05-03 09:26:37',32,1,1,1.3,NULL,20),(4,'2021-05-03 09:26:55',32,1,1,1.1,NULL,20),(5,'2021-05-03 09:43:51',34,1,1,1.1,NULL,20),(6,'2021-05-03 09:57:57',32,1,1,1.1,NULL,1),(7,'2021-05-03 10:07:14',32,1,1,1.5,NULL,1),(8,'2021-05-03 10:13:50',32,1,1,1.56,NULL,1),(9,'2021-05-03 10:14:12',32,1,1,1.95,NULL,1),(10,'2021-05-04 01:57:50',33,1,1,1.9,NULL,7),(11,'2021-05-04 01:59:33',32,1,1,1.51,NULL,1),(12,'2021-05-04 02:46:07',37,1,1,1.11,NULL,23),(13,'2021-05-04 02:50:12',32,1,1,1.27,NULL,1),(14,'2021-05-04 02:52:59',34,1,1,1.94,NULL,20),(15,'2021-05-04 02:59:45',37,1,1,1.38,NULL,23),(17,'2021-05-04 03:35:18',34,1,1,0.272,NULL,16),(18,'2021-05-04 03:35:18',34,1,1,0.272,NULL,17),(19,'2021-05-04 03:35:18',34,1,1,0.272,NULL,18),(20,'2021-05-04 03:35:18',34,1,1,0.272,NULL,19),(21,'2021-05-04 03:35:18',34,1,1,0.272,NULL,20),(22,'2021-05-04 03:35:18',34,1,1,1.36,NULL,NULL),(23,'2021-05-04 03:37:01',37,1,1,1.02,NULL,23),(24,'2021-05-04 03:37:45',37,1,1,10,NULL,23),(25,'2021-05-04 03:37:45',37,1,1,10,NULL,NULL),(26,'2021-05-04 03:38:06',37,1,1,1.9,NULL,23),(27,'2021-05-04 03:38:06',37,1,1,1.9,'test',NULL),(28,'2021-05-04 03:38:47',37,1,1,1.1,NULL,NULL),(30,'2021-05-04 03:42:08',34,1,1,2,NULL,16),(31,'2021-05-04 03:42:08',34,1,1,2,NULL,17),(32,'2021-05-04 03:42:08',34,1,1,2,NULL,18),(33,'2021-05-04 03:42:08',34,1,1,2,NULL,19),(34,'2021-05-04 03:42:08',34,1,1,2,NULL,20),(35,'2021-05-04 03:42:08',34,1,1,10,'test',NULL),(36,'2021-05-04 03:42:46',34,1,1,0.3,NULL,16),(37,'2021-05-04 03:42:46',34,1,1,0.3,NULL,17),(38,'2021-05-04 03:42:46',34,1,1,0.3,NULL,18),(39,'2021-05-04 03:42:46',34,1,1,0.3,NULL,19),(40,'2021-05-04 03:42:46',34,1,1,0.3,NULL,20),(41,'2021-05-04 03:42:46',34,1,1,1.5,'t1',NULL),(42,'2021-05-04 03:44:33',34,1,1,2,'605 +2',20),(43,'2021-05-08 07:21:31',NULL,1,1,1,NULL,NULL),(44,'2021-05-08 08:12:44',NULL,1,1,1.27,NULL,NULL),(45,'2021-05-08 08:14:21',NULL,1,1,1.4,NULL,NULL),(46,'2021-05-10 05:43:02',NULL,1,1,2,NULL,NULL),(47,'2021-05-10 05:43:46',NULL,1,1,10,NULL,NULL),(48,'2021-05-10 05:44:53',NULL,1,1,10,'11',NULL),(49,'2021-05-10 05:45:21',NULL,1,1,1.03,'11',NULL);
/*!40000 ALTER TABLE `cgd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child`
--

DROP TABLE IF EXISTS `child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `goldclass_id` int(11) NOT NULL,
  `main_id` int(11) NOT NULL,
  `weight` double NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sn` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count_piece` smallint(6) NOT NULL,
  `box` double NOT NULL,
  `artisan_id` int(11) DEFAULT NULL,
  `holder_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_22B35429A145C139` (`goldclass_id`),
  KEY `IDX_22B35429627EA78A` (`main_id`),
  KEY `IDX_22B354295ED3C7B7` (`artisan_id`),
  KEY `IDX_22B35429DEEE62D0` (`holder_id`),
  CONSTRAINT `FK_22B354295ED3C7B7` FOREIGN KEY (`artisan_id`) REFERENCES `artisan` (`id`),
  CONSTRAINT `FK_22B35429627EA78A` FOREIGN KEY (`main_id`) REFERENCES `main` (`id`),
  CONSTRAINT `FK_22B35429A145C139` FOREIGN KEY (`goldclass_id`) REFERENCES `goldclass` (`id`),
  CONSTRAINT `FK_22B35429DEEE62D0` FOREIGN KEY (`holder_id`) REFERENCES `artisan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child`
--

LOCK TABLES `child` WRITE;
/*!40000 ALTER TABLE `child` DISABLE KEYS */;
INSERT INTO `child` VALUES (1,'2021-05-02 06:07:21',1,32,1.2,NULL,'20210502010004001',0,8.89,NULL,NULL),(2,'2021-05-02 06:07:21',1,32,1.2,NULL,'20210502010004002',0,0,NULL,NULL),(3,'2021-05-02 06:07:21',1,32,1.2,NULL,'20210502010004003',0,0,NULL,NULL),(4,'2021-05-02 06:07:21',1,32,1.2,NULL,'20210502010004004',0,0,NULL,NULL),(5,'2021-05-02 06:07:21',1,32,1.2,NULL,'20210502010004005',0,0,NULL,NULL),(6,'2021-05-02 09:44:06',2,33,1,NULL,'20210502020005001',0,0,NULL,NULL),(7,'2021-05-02 09:44:06',2,33,1,NULL,'20210502020005002',0,1.9,NULL,NULL),(8,'2021-05-02 09:44:06',2,33,1,NULL,'20210502020005003',0,0,NULL,NULL),(9,'2021-05-02 09:44:06',2,33,1,NULL,'20210502020005004',0,0,NULL,NULL),(10,'2021-05-02 09:44:06',2,33,1,NULL,'20210502020005005',0,0,NULL,NULL),(11,'2021-05-02 09:44:06',2,33,1,NULL,'20210502020005006',0,0,NULL,NULL),(12,'2021-05-02 09:44:06',2,33,1,NULL,'20210502020005007',0,0,NULL,NULL),(13,'2021-05-02 09:44:06',2,33,1,NULL,'20210502020005008',0,0,NULL,NULL),(14,'2021-05-02 09:44:06',2,33,1,NULL,'20210502020005009',0,0,NULL,NULL),(15,'2021-05-02 09:44:06',2,33,1,NULL,'20210502020005010',0,0,NULL,NULL),(16,'2021-05-02 10:03:40',1,34,1,NULL,'20210502010006001',10,5.144,NULL,NULL),(17,'2021-05-02 10:03:40',1,34,1,NULL,'20210502010006002',10,5.144,NULL,NULL),(18,'2021-05-02 10:03:40',1,34,1,NULL,'20210502010006003',10,5.144,NULL,NULL),(19,'2021-05-02 10:03:40',1,34,1,NULL,'20210502010006004',10,5.144,NULL,NULL),(20,'2021-05-02 10:03:40',1,34,1,NULL,'20210502010006005',10,12.584,NULL,NULL),(21,'2021-05-03 12:54:27',1,35,1,NULL,'20210503010001001',1,0,NULL,NULL),(22,'2021-05-03 12:57:03',1,36,1,NULL,'20210503010002001',1,0,NULL,NULL),(23,'2021-05-03 12:57:19',1,37,1,NULL,'12345001',1,28.41,NULL,NULL),(24,'2021-05-08 01:36:15',1,38,1,NULL,'123456001',1,0,NULL,NULL);
/*!40000 ALTER TABLE `child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clerk`
--

DROP TABLE IF EXISTS `clerk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clerk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clerk`
--

LOCK TABLES `clerk` WRITE;
/*!40000 ALTER TABLE `clerk` DISABLE KEYS */;
INSERT INTO `clerk` VALUES (1,'文员1'),(2,'文员2'),(3,'文员3'),(4,'文员4');
/*!40000 ALTER TABLE `clerk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'公司1'),(2,'公司2'),(3,'公司3');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotype`
--

DROP TABLE IF EXISTS `cotype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cotype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotype`
--

LOCK TABLES `cotype` WRITE;
/*!40000 ALTER TABLE `cotype` DISABLE KEYS */;
INSERT INTO `cotype` VALUES (1,'入账-半成品购入'),(2,'入账-委托加工新货'),(3,'合作方式3');
/*!40000 ALTER TABLE `cotype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft`
--

DROP TABLE IF EXISTS `craft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft`
--

LOCK TABLES `craft` WRITE;
/*!40000 ALTER TABLE `craft` DISABLE KEYS */;
INSERT INTO `craft` VALUES (1,'执磨'),(2,'抛光'),(3,'工艺3'),(4,'工艺4');
/*!40000 ALTER TABLE `craft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `division`
--

DROP TABLE IF EXISTS `division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `division` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division`
--

LOCK TABLES `division` WRITE;
/*!40000 ALTER TABLE `division` DISABLE KEYS */;
INSERT INTO `division` VALUES (1,'部门1'),(2,'部门2'),(3,'部门3');
/*!40000 ALTER TABLE `division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20210421021409','2021-04-27 11:31:38',53),('DoctrineMigrations\\Version20210427113148','2021-04-27 11:32:04',108),('DoctrineMigrations\\Version20210427113315','2021-04-27 11:33:18',74),('DoctrineMigrations\\Version20210427113507','2021-04-27 11:35:15',71),('DoctrineMigrations\\Version20210427113654','2021-04-27 11:36:57',82),('DoctrineMigrations\\Version20210427113926','2021-04-27 11:39:29',76),('DoctrineMigrations\\Version20210427151758','2021-04-27 15:18:02',70),('DoctrineMigrations\\Version20210427151957','2021-04-27 15:20:00',96),('DoctrineMigrations\\Version20210427153404','2021-04-27 15:34:08',69),('DoctrineMigrations\\Version20210427153446','2021-04-27 15:34:49',53),('DoctrineMigrations\\Version20210427170832','2021-04-27 17:08:36',77),('DoctrineMigrations\\Version20210427171019','2021-04-27 17:10:22',72),('DoctrineMigrations\\Version20210427172324','2021-04-27 17:23:30',135),('DoctrineMigrations\\Version20210427172602','2021-04-27 17:26:12',91),('DoctrineMigrations\\Version20210427173110','2021-04-27 17:31:13',90),('DoctrineMigrations\\Version20210427173610','2021-04-27 17:36:13',34),('DoctrineMigrations\\Version20210427174307','2021-04-27 17:43:10',90),('DoctrineMigrations\\Version20210427174555','2021-04-27 17:45:58',110),('DoctrineMigrations\\Version20210427174754','2021-04-27 17:47:57',62),('DoctrineMigrations\\Version20210427180400','2021-04-27 18:04:03',83),('DoctrineMigrations\\Version20210427181148','2021-04-27 18:11:50',111),('DoctrineMigrations\\Version20210427181304','2021-04-27 18:13:06',62),('DoctrineMigrations\\Version20210427181404','2021-04-27 18:14:06',87),('DoctrineMigrations\\Version20210427181452','2021-04-27 18:14:54',139),('DoctrineMigrations\\Version20210427181557','2021-04-27 18:15:58',96),('DoctrineMigrations\\Version20210427181857','2021-04-27 18:18:58',83),('DoctrineMigrations\\Version20210427182156','2021-04-27 18:21:57',87),('DoctrineMigrations\\Version20210427182442','2021-04-27 18:24:44',116),('DoctrineMigrations\\Version20210427182934','2021-04-27 18:29:36',116),('DoctrineMigrations\\Version20210427184404','2021-04-27 18:44:04',146),('DoctrineMigrations\\Version20210427184500','2021-04-27 18:45:01',150),('DoctrineMigrations\\Version20210427184607','2021-04-27 18:46:08',146),('DoctrineMigrations\\Version20210427184734','2021-04-27 18:47:35',165),('DoctrineMigrations\\Version20210427184849','2021-04-27 18:48:50',95),('DoctrineMigrations\\Version20210427184932','2021-04-27 18:49:34',81),('DoctrineMigrations\\Version20210427185108','2021-04-27 18:51:09',98),('DoctrineMigrations\\Version20210427185337','2021-04-27 18:53:38',192),('DoctrineMigrations\\Version20210427185440','2021-04-27 18:54:41',99),('DoctrineMigrations\\Version20210427185536','2021-04-27 18:55:36',100),('DoctrineMigrations\\Version20210427232249','2021-04-27 23:22:50',334),('DoctrineMigrations\\Version20210427233431','2021-04-27 23:34:33',31),('DoctrineMigrations\\Version20210428000352','2021-04-28 00:03:53',234),('DoctrineMigrations\\Version20210428000448','2021-04-28 00:05:51',106),('DoctrineMigrations\\Version20210428000546','2021-04-28 00:05:51',36),('DoctrineMigrations\\Version20210428011835','2021-04-28 01:18:37',362),('DoctrineMigrations\\Version20210428012811','2021-04-28 01:28:12',622),('DoctrineMigrations\\Version20210428014204','2021-04-28 01:42:05',405),('DoctrineMigrations\\Version20210428015334','2021-04-28 01:53:35',474),('DoctrineMigrations\\Version20210428020431','2021-04-28 02:04:32',560),('DoctrineMigrations\\Version20210428021633','2021-04-28 02:16:34',617),('DoctrineMigrations\\Version20210428021832','2021-04-28 02:18:35',75),('DoctrineMigrations\\Version20210428022351','2021-04-28 02:23:52',621),('DoctrineMigrations\\Version20210428022921','2021-04-28 02:29:23',461),('DoctrineMigrations\\Version20210502022502','2021-05-02 02:25:04',352),('DoctrineMigrations\\Version20210502025642','2021-05-02 02:56:44',2096),('DoctrineMigrations\\Version20210502030459','2021-05-02 03:05:02',94),('DoctrineMigrations\\Version20210502031110','2021-05-02 03:11:11',421),('DoctrineMigrations\\Version20210502055926','2021-05-02 05:59:28',681),('DoctrineMigrations\\Version20210502094800','2021-05-02 09:48:01',53),('DoctrineMigrations\\Version20210502095014','2021-05-02 09:50:15',115),('DoctrineMigrations\\Version20210502095051','2021-05-02 09:50:53',53),('DoctrineMigrations\\Version20210502101033','2021-05-02 10:10:35',499),('DoctrineMigrations\\Version20210503090503','2021-05-03 09:05:04',58),('DoctrineMigrations\\Version20210503090610','2021-05-03 09:06:11',53),('DoctrineMigrations\\Version20210503090706','2021-05-03 09:07:07',51),('DoctrineMigrations\\Version20210503091004','2021-05-03 09:10:06',373),('DoctrineMigrations\\Version20210503103459','2021-05-03 10:35:01',53),('DoctrineMigrations\\Version20210503105208','2021-05-03 10:52:09',637),('DoctrineMigrations\\Version20210503105903','2021-05-03 10:59:04',439),('DoctrineMigrations\\Version20210503110106','2021-05-03 11:02:03',196),('DoctrineMigrations\\Version20210503112448','2021-05-03 11:24:49',930),('DoctrineMigrations\\Version20210503122010','2021-05-03 12:20:12',707),('DoctrineMigrations\\Version20210503122037','2021-05-03 12:20:38',234),('DoctrineMigrations\\Version20210503130351','2021-05-03 13:03:53',115),('DoctrineMigrations\\Version20210503225912','2021-05-03 23:00:31',278),('DoctrineMigrations\\Version20210503230153','2021-05-03 23:01:54',301),('DoctrineMigrations\\Version20210503235348','2021-05-03 23:53:50',118),('DoctrineMigrations\\Version20210503235430','2021-05-03 23:54:32',100),('DoctrineMigrations\\Version20210504001036','2021-05-04 00:10:38',1308),('DoctrineMigrations\\Version20210504004155','2021-05-04 00:41:56',871),('DoctrineMigrations\\Version20210504010911','2021-05-04 01:09:12',1394),('DoctrineMigrations\\Version20210504033117','2021-05-04 03:31:19',191),('DoctrineMigrations\\Version20210504035700','2021-05-04 07:53:45',33),('DoctrineMigrations\\Version20210504080506','2021-05-04 08:05:08',214),('DoctrineMigrations\\Version20210504081549','2021-05-04 08:15:50',250),('DoctrineMigrations\\Version20210504082201','2021-05-04 08:22:02',192),('DoctrineMigrations\\Version20210504082237','2021-05-04 08:22:38',116),('DoctrineMigrations\\Version20210504094725','2021-05-04 09:47:26',128),('DoctrineMigrations\\Version20210504095012','2021-05-04 09:50:13',32),('DoctrineMigrations\\Version20210507225920','2021-05-07 22:59:22',57),('DoctrineMigrations\\Version20210508013249','2021-05-08 01:33:12',70),('DoctrineMigrations\\Version20210508095146','2021-05-08 09:51:50',149),('DoctrineMigrations\\Version20210508104854','2021-05-08 10:48:56',1483);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctype`
--

DROP TABLE IF EXISTS `doctype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctype`
--

LOCK TABLES `doctype` WRITE;
/*!40000 ALTER TABLE `doctype` DISABLE KEYS */;
INSERT INTO `doctype` VALUES (1,'中央单'),(2,'自发单');
/*!40000 ALTER TABLE `doctype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `embed`
--

DROP TABLE IF EXISTS `embed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `embed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `embed`
--

LOCK TABLES `embed` WRITE;
/*!40000 ALTER TABLE `embed` DISABLE KEYS */;
INSERT INTO `embed` VALUES (1,'镶嵌1'),(2,'镶嵌2'),(3,'镶嵌3');
/*!40000 ALTER TABLE `embed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factory`
--

DROP TABLE IF EXISTS `factory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factory`
--

LOCK TABLES `factory` WRITE;
/*!40000 ALTER TABLE `factory` DISABLE KEYS */;
INSERT INTO `factory` VALUES (1,'武汉工厂'),(2,'工厂2'),(3,'工厂3');
/*!40000 ALTER TABLE `factory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gac`
--

DROP TABLE IF EXISTS `gac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gac` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `team_id` int(11) NOT NULL,
  `artisan_id` int(11) NOT NULL,
  `goldclass_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double NOT NULL,
  `clerk_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1A846EB3296CD8AE` (`team_id`),
  KEY `IDX_1A846EB35ED3C7B7` (`artisan_id`),
  KEY `IDX_1A846EB3A145C139` (`goldclass_id`),
  KEY `IDX_1A846EB3DD842E46` (`position_id`),
  KEY `IDX_1A846EB3D95C1FC6` (`clerk_id`),
  CONSTRAINT `FK_1A846EB3296CD8AE` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`),
  CONSTRAINT `FK_1A846EB35ED3C7B7` FOREIGN KEY (`artisan_id`) REFERENCES `artisan` (`id`),
  CONSTRAINT `FK_1A846EB3A145C139` FOREIGN KEY (`goldclass_id`) REFERENCES `goldclass` (`id`),
  CONSTRAINT `FK_1A846EB3D95C1FC6` FOREIGN KEY (`clerk_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_1A846EB3DD842E46` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gac`
--

LOCK TABLES `gac` WRITE;
/*!40000 ALTER TABLE `gac` DISABLE KEYS */;
INSERT INTO `gac` VALUES (1,'2021-05-03 23:38:22',1,2,1,1,NULL,1.26,4),(2,'2021-05-03 23:40:42',1,1,1,1,NULL,1.9,4),(3,'2021-05-03 23:44:26',1,1,1,1,NULL,1.78,4),(4,'2021-05-03 23:44:51',1,2,1,1,NULL,1.55,4);
/*!40000 ALTER TABLE `gac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gb`
--

DROP TABLE IF EXISTS `gb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `company_id` int(11) NOT NULL,
  `goldclass_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `addtype_id` int(11) NOT NULL,
  `addreason_id` int(11) NOT NULL,
  `weight_booked` double NOT NULL,
  `weight` double NOT NULL,
  `short` double NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C8D9EFEB979B1AD6` (`company_id`),
  KEY `IDX_C8D9EFEBA145C139` (`goldclass_id`),
  KEY `IDX_C8D9EFEBDD842E46` (`position_id`),
  KEY `IDX_C8D9EFEBD0A12A3C` (`addtype_id`),
  KEY `IDX_C8D9EFEB4F91A684` (`addreason_id`),
  CONSTRAINT `FK_C8D9EFEB4F91A684` FOREIGN KEY (`addreason_id`) REFERENCES `addreason` (`id`),
  CONSTRAINT `FK_C8D9EFEB979B1AD6` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FK_C8D9EFEBA145C139` FOREIGN KEY (`goldclass_id`) REFERENCES `goldclass` (`id`),
  CONSTRAINT `FK_C8D9EFEBD0A12A3C` FOREIGN KEY (`addtype_id`) REFERENCES `addtype` (`id`),
  CONSTRAINT `FK_C8D9EFEBDD842E46` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gb`
--

LOCK TABLES `gb` WRITE;
/*!40000 ALTER TABLE `gb` DISABLE KEYS */;
INSERT INTO `gb` VALUES (1,'2021-04-28 02:33:31',1,1,1,1,1,1.1,1.4,1,'备注5'),(2,'2021-05-04 00:14:59',1,1,1,1,1,0,1.57,0,NULL),(3,'2021-05-04 00:24:04',1,1,1,1,1,0,1.05,0,'11'),(4,'2021-05-04 00:24:14',1,1,1,1,1,0,1.61,0,NULL),(5,'2021-05-04 00:43:21',1,2,1,1,1,0,1.56,0,NULL),(6,'2021-05-08 10:01:41',1,1,1,1,1,0,1.36,0,'tt'),(7,'2021-05-08 10:11:03',1,1,1,1,1,1,1.01,0.01,NULL);
/*!40000 ALTER TABLE `gb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gca`
--

DROP TABLE IF EXISTS `gca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `team_id` int(11) NOT NULL,
  `artisan_id` int(11) NOT NULL,
  `goldclass_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double NOT NULL,
  `clerk_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C6BC6D1D296CD8AE` (`team_id`),
  KEY `IDX_C6BC6D1D5ED3C7B7` (`artisan_id`),
  KEY `IDX_C6BC6D1DA145C139` (`goldclass_id`),
  KEY `IDX_C6BC6D1DDD842E46` (`position_id`),
  KEY `IDX_C6BC6D1DD95C1FC6` (`clerk_id`),
  CONSTRAINT `FK_C6BC6D1D296CD8AE` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`),
  CONSTRAINT `FK_C6BC6D1D5ED3C7B7` FOREIGN KEY (`artisan_id`) REFERENCES `artisan` (`id`),
  CONSTRAINT `FK_C6BC6D1DA145C139` FOREIGN KEY (`goldclass_id`) REFERENCES `goldclass` (`id`),
  CONSTRAINT `FK_C6BC6D1DD95C1FC6` FOREIGN KEY (`clerk_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_C6BC6D1DDD842E46` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gca`
--

LOCK TABLES `gca` WRITE;
/*!40000 ALTER TABLE `gca` DISABLE KEYS */;
INSERT INTO `gca` VALUES (1,'2021-05-03 23:07:14',1,1,1,1,NULL,1.93,4),(2,'2021-05-03 23:33:44',1,1,1,1,'1',1.42,4),(3,'2021-05-03 23:41:28',1,1,1,1,NULL,1.87,4),(4,'2021-05-03 23:43:57',1,1,1,1,NULL,1.91,4),(5,'2021-05-03 23:45:14',1,2,1,1,NULL,1.56,4);
/*!40000 ALTER TABLE `gca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gd`
--

DROP TABLE IF EXISTS `gd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `maindoc_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `artisan_id` int(11) NOT NULL,
  `goldclass_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `weight` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_21BA4ADEA0321766` (`maindoc_id`),
  KEY `IDX_21BA4ADE296CD8AE` (`team_id`),
  KEY `IDX_21BA4ADE5ED3C7B7` (`artisan_id`),
  KEY `IDX_21BA4ADEA145C139` (`goldclass_id`),
  KEY `IDX_21BA4ADEDD842E46` (`position_id`),
  CONSTRAINT `FK_21BA4ADE296CD8AE` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`),
  CONSTRAINT `FK_21BA4ADE5ED3C7B7` FOREIGN KEY (`artisan_id`) REFERENCES `artisan` (`id`),
  CONSTRAINT `FK_21BA4ADEA0321766` FOREIGN KEY (`maindoc_id`) REFERENCES `center` (`id`),
  CONSTRAINT `FK_21BA4ADEA145C139` FOREIGN KEY (`goldclass_id`) REFERENCES `goldclass` (`id`),
  CONSTRAINT `FK_21BA4ADEDD842E46` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gd`
--

LOCK TABLES `gd` WRITE;
/*!40000 ALTER TABLE `gd` DISABLE KEYS */;
INSERT INTO `gd` VALUES (1,'2021-04-28 01:32:08',1,1,1,1,1,2);
/*!40000 ALTER TABLE `gd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goldclass`
--

DROP TABLE IF EXISTS `goldclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goldclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goldclass`
--

LOCK TABLES `goldclass` WRITE;
/*!40000 ALTER TABLE `goldclass` DISABLE KEYS */;
INSERT INTO `goldclass` VALUES (1,'18k'),(2,'24k');
/*!40000 ALTER TABLE `goldclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `granule`
--

DROP TABLE IF EXISTS `granule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `granule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `granule`
--

LOCK TABLES `granule` WRITE;
/*!40000 ALTER TABLE `granule` DISABLE KEYS */;
INSERT INTO `granule` VALUES (1,'粒数1'),(2,'粒数2'),(3,'粒数3');
/*!40000 ALTER TABLE `granule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jewelry`
--

DROP TABLE IF EXISTS `jewelry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jewelry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jewelry`
--

LOCK TABLES `jewelry` WRITE;
/*!40000 ALTER TABLE `jewelry` DISABLE KEYS */;
INSERT INTO `jewelry` VALUES (1,'首饰1'),(2,'首饰2'),(3,'首饰3');
/*!40000 ALTER TABLE `jewelry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `line`
--

DROP TABLE IF EXISTS `line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line`
--

LOCK TABLES `line` WRITE;
/*!40000 ALTER TABLE `line` DISABLE KEYS */;
INSERT INTO `line` VALUES (1,'专线1'),(2,'专线2'),(3,'专线3');
/*!40000 ALTER TABLE `line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lossrate`
--

DROP TABLE IF EXISTS `lossrate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lossrate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lossrate`
--

LOCK TABLES `lossrate` WRITE;
/*!40000 ALTER TABLE `lossrate` DISABLE KEYS */;
INSERT INTO `lossrate` VALUES (1,1.1),(2,1.1),(3,1.1),(4,1.1),(5,111),(6,111),(7,111),(8,1.1),(9,1.1);
/*!40000 ALTER TABLE `lossrate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctype_id` int(11) NOT NULL,
  `date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `count_child` smallint(6) NOT NULL,
  `sn` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodtype_id` int(11) NOT NULL,
  `goldclass_id` int(11) NOT NULL,
  `cotype_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `loss_rate_id` int(11) NOT NULL,
  `factory_id` int(11) NOT NULL,
  `per_weight` double NOT NULL,
  `total_weight` double NOT NULL,
  `upstream_doc` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `length` double DEFAULT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `count_piece` smallint(6) NOT NULL,
  `due_date` datetime DEFAULT NULL,
  `holder_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BF28CD64BE1876BC` (`doctype_id`),
  KEY `IDX_BF28CD64E8420563` (`prodtype_id`),
  KEY `IDX_BF28CD64A145C139` (`goldclass_id`),
  KEY `IDX_BF28CD64D20C4835` (`cotype_id`),
  KEY `IDX_BF28CD647975B7E7` (`model_id`),
  KEY `IDX_BF28CD64EC02E518` (`loss_rate_id`),
  KEY `IDX_BF28CD64C7AF27D2` (`factory_id`),
  KEY `IDX_BF28CD64DCD6CC49` (`branch_id`),
  KEY `IDX_BF28CD64DEEE62D0` (`holder_id`),
  CONSTRAINT `FK_BF28CD647975B7E7` FOREIGN KEY (`model_id`) REFERENCES `model` (`id`),
  CONSTRAINT `FK_BF28CD64A145C139` FOREIGN KEY (`goldclass_id`) REFERENCES `goldclass` (`id`),
  CONSTRAINT `FK_BF28CD64BE1876BC` FOREIGN KEY (`doctype_id`) REFERENCES `doctype` (`id`),
  CONSTRAINT `FK_BF28CD64C7AF27D2` FOREIGN KEY (`factory_id`) REFERENCES `factory` (`id`),
  CONSTRAINT `FK_BF28CD64D20C4835` FOREIGN KEY (`cotype_id`) REFERENCES `cotype` (`id`),
  CONSTRAINT `FK_BF28CD64DCD6CC49` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `FK_BF28CD64DEEE62D0` FOREIGN KEY (`holder_id`) REFERENCES `artisan` (`id`),
  CONSTRAINT `FK_BF28CD64E8420563` FOREIGN KEY (`prodtype_id`) REFERENCES `prodtype` (`id`),
  CONSTRAINT `FK_BF28CD64EC02E518` FOREIGN KEY (`loss_rate_id`) REFERENCES `lossrate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main`
--

LOCK TABLES `main` WRITE;
/*!40000 ALTER TABLE `main` DISABLE KEYS */;
INSERT INTO `main` VALUES (32,1,'2021-05-02 06:07:21',5,'20210502010004',1,1,1,1,1,1,1.2,10,'11',1,1,1,'11',1,0,NULL,NULL),(33,2,'2021-05-02 09:44:06',10,'20210502020005',2,2,1,3,1,2,1,10,'5555',3,2,1,'ttt',2,0,NULL,NULL),(34,1,'2021-05-02 10:03:40',5,'20210502010006',1,1,1,1,1,1,1,50,'11',1,1,1,'tt',1,50,NULL,NULL),(35,1,'2021-05-03 12:54:27',1,'20210503010001',1,1,1,1,1,1,1,1,'1',1,1,1,'1',1,1,NULL,NULL),(36,1,'2021-05-03 12:57:03',1,'20210503010002',1,1,1,1,1,1,1,1,'11',NULL,NULL,NULL,NULL,1,1,NULL,NULL),(37,1,'2021-05-03 12:57:19',1,'12345',1,1,1,1,1,1,1,1,'1',NULL,NULL,NULL,'1',1,1,NULL,NULL),(38,1,'2021-05-08 01:36:15',1,'123456',1,1,1,1,1,1,1,1,'1',NULL,NULL,NULL,NULL,1,1,'2021-05-01 00:00:00',NULL);
/*!40000 ALTER TABLE `main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (1,'模号1'),(2,'模号2'),(3,'模号3');
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `op`
--

DROP TABLE IF EXISTS `op`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `op` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `op`
--

LOCK TABLES `op` WRITE;
/*!40000 ALTER TABLE `op` DISABLE KEYS */;
INSERT INTO `op` VALUES (1,'操作1'),(2,'操作2'),(3,'操作3');
/*!40000 ALTER TABLE `op` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `own`
--

DROP TABLE IF EXISTS `own`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `own` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `own`
--

LOCK TABLES `own` WRITE;
/*!40000 ALTER TABLE `own` DISABLE KEYS */;
/*!40000 ALTER TABLE `own` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'金原料'),(2,'单');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process`
--

DROP TABLE IF EXISTS `process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process`
--

LOCK TABLES `process` WRITE;
/*!40000 ALTER TABLE `process` DISABLE KEYS */;
INSERT INTO `process` VALUES (1,'工序1'),(2,'工序2'),(3,'工序3');
/*!40000 ALTER TABLE `process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prodtype`
--

DROP TABLE IF EXISTS `prodtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prodtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodtype`
--

LOCK TABLES `prodtype` WRITE;
/*!40000 ALTER TABLE `prodtype` DISABLE KEYS */;
INSERT INTO `prodtype` VALUES (1,'钻石戒指'),(2,'足金金条'),(3,'货类3');
/*!40000 ALTER TABLE `prodtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seq`
--

DROP TABLE IF EXISTS `seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seq`
--

LOCK TABLES `seq` WRITE;
/*!40000 ALTER TABLE `seq` DISABLE KEYS */;
INSERT INTO `seq` VALUES (1,'次序1'),(2,'次序2'),(3,'次序3');
/*!40000 ALTER TABLE `seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (1,'系列1'),(2,'系列2'),(3,'系列3');
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sgb`
--

DROP TABLE IF EXISTS `sgb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sgb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `goldclass_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `subtracttype_id` int(11) NOT NULL,
  `subtractreason_id` int(11) NOT NULL,
  `date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `weight` double NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_booked` double NOT NULL,
  `short` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_20F6F20F979B1AD6` (`company_id`),
  KEY `IDX_20F6F20FA145C139` (`goldclass_id`),
  KEY `IDX_20F6F20FDD842E46` (`position_id`),
  KEY `IDX_20F6F20F6A624E1E` (`subtracttype_id`),
  KEY `IDX_20F6F20FA2FCFF26` (`subtractreason_id`),
  CONSTRAINT `FK_20F6F20F6A624E1E` FOREIGN KEY (`subtracttype_id`) REFERENCES `subtracttype` (`id`),
  CONSTRAINT `FK_20F6F20F979B1AD6` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FK_20F6F20FA145C139` FOREIGN KEY (`goldclass_id`) REFERENCES `goldclass` (`id`),
  CONSTRAINT `FK_20F6F20FA2FCFF26` FOREIGN KEY (`subtractreason_id`) REFERENCES `subtractreason` (`id`),
  CONSTRAINT `FK_20F6F20FDD842E46` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sgb`
--

LOCK TABLES `sgb` WRITE;
/*!40000 ALTER TABLE `sgb` DISABLE KEYS */;
INSERT INTO `sgb` VALUES (1,1,1,1,1,1,'2021-05-04 01:17:07',1.99,NULL,0,0),(2,1,2,1,1,1,'2021-05-04 01:17:19',1.37,NULL,0,0);
/*!40000 ALTER TABLE `sgb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stafftype`
--

DROP TABLE IF EXISTS `stafftype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stafftype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stafftype`
--

LOCK TABLES `stafftype` WRITE;
/*!40000 ALTER TABLE `stafftype` DISABLE KEYS */;
INSERT INTO `stafftype` VALUES (1,'工匠'),(2,'文员');
/*!40000 ALTER TABLE `stafftype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockin`
--

DROP TABLE IF EXISTS `stockin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stockin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockin`
--

LOCK TABLES `stockin` WRITE;
/*!40000 ALTER TABLE `stockin` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subtractreason`
--

DROP TABLE IF EXISTS `subtractreason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subtractreason` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subtractreason`
--

LOCK TABLES `subtractreason` WRITE;
/*!40000 ALTER TABLE `subtractreason` DISABLE KEYS */;
INSERT INTO `subtractreason` VALUES (1,'减金原因1'),(2,'减金原因2'),(3,'减金原因3');
/*!40000 ALTER TABLE `subtractreason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subtracttype`
--

DROP TABLE IF EXISTS `subtracttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subtracttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subtracttype`
--

LOCK TABLES `subtracttype` WRITE;
/*!40000 ALTER TABLE `subtracttype` DISABLE KEYS */;
INSERT INTO `subtracttype` VALUES (1,'减金类型1'),(2,'减金类型2'),(3,'减金类型3');
/*!40000 ALTER TABLE `subtracttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'组别1'),(2,'组别2'),(3,'组别3');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `box` double NOT NULL,
  `plain_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'aaa','[\"ROLE_CLERK\"]','$argon2id$v=19$m=65536,t=4,p=1$ynL+It5vprLYm7/ATckeDA$qygEd+TK+HyG8kivWcWYCd6OE9Niv3Ifv5yuyD+ITaM',0,NULL,'aaa'),(4,'bbb','[\"ROLE_CLERK\"]','$argon2id$v=19$m=65536,t=4,p=1$9YAWcZJc44cgR03gzgqDyA$mZV8Ni2qWn9XkxEZVeFkE8Znq+EZwO3h/8F6SExtQaI',0,'111','bbb'),(5,'ccc','[\"ROLE_CLERK\"]','$argon2id$v=19$m=65536,t=4,p=1$pnNcaAR9Kj2BBoslQkpxbA$QvCnYS1jgBigLIPR/5OHTdRbChsFgcgAofmGe+/7Z5M',0,'111','ccc'),(6,'ddd','[\"ROLE_CLERK\"]','$argon2id$v=19$m=65536,t=4,p=1$ZrpKncn2tmVuPZLxMeDRVA$y6b16Fgmv1CK/WGJ2HgQz0gmgmH4BWo740W3y8pK2h4',0,'111','ddd'),(7,'eee','[\"ROLE_CLERK\"]','$argon2id$v=19$m=65536,t=4,p=1$NV0+Eih4h2PERwAHRgTE9w$v/MWLzap6qJJzxdPibsUVjeKmyQ8Z4gMPttNiyYm5kY',0,'111','eee'),(8,'fff','[\"ROLE_CLERK\"]','$argon2id$v=19$m=65536,t=4,p=1$3sign2thXLcdYgTFTZCyHw$FIs2titCzdgXmJFad/GGKwMPcDyR1359ywD3KZe1Tx0',0,'111','fff'),(9,'fff1','[\"ROLE_CLERK\"]','$argon2id$v=19$m=65536,t=4,p=1$wSKq2gLjAmVlJ8Yn9PNOMQ$uW+STVPkYF+EPLIogbvQ6EfiCvylAejLR+VVgq7v8WY',0,NULL,'fff1'),(10,'fff2','[\"ROLE_CLERK\"]','$argon2id$v=19$m=65536,t=4,p=1$zLG7ZyyFhL3s3vv/BwOKsw$U++edZvsxmD5aYD975F/HVB1P4R0rj2cj+s4WiBhChc',0,NULL,'fff2');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wage`
--

DROP TABLE IF EXISTS `wage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wage`
--

LOCK TABLES `wage` WRITE;
/*!40000 ALTER TABLE `wage` DISABLE KEYS */;
INSERT INTO `wage` VALUES (1,'工费1'),(2,'工费2');
/*!40000 ALTER TABLE `wage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-12 15:12:50
