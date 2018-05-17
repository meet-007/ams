-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: ams
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `cal_maintenance`
--

DROP TABLE IF EXISTS `cal_maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cal_maintenance` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `soc_id` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `date` varchar(45) NOT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`m_id`),
  KEY `socety_idx` (`soc_id`),
  CONSTRAINT `socety` FOREIGN KEY (`soc_id`) REFERENCES `society` (`sid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cal_maintenance`
--

LOCK TABLES `cal_maintenance` WRITE;
/*!40000 ALTER TABLE `cal_maintenance` DISABLE KEYS */;
INSERT INTO `cal_maintenance` VALUES (1,1,'demo','2018-03-23',10000),(2,1,'demo Maintenance\r\n','2018-04-19',20000),(3,1,'demo Maintenance\r\n','2018-04-19',20000),(4,1,'Function maintenance','2018-04-11',45000),(5,1,'pump','2018-04-10',3000),(6,7,'security','2018-04-07',10000),(7,7,'water pump','2018-04-07',5000),(8,7,'sweeper','2018-04-07',5000),(9,7,'sweeper','2018-04-07',5000),(10,7,'sports week','2018-04-07',10000),(11,7,'playground repairing','2018-04-07',3000),(12,7,'painting and decoration','2018-04-07',5000),(13,8,'expense 1','2018-05-02',123),(14,8,'expense 2','2018-05-03',1244),(15,8,'expense 3','2018-05-16',1000),(16,8,'episod5','2018-05-15',500),(17,8,'episod5','2018-05-15',500);
/*!40000 ALTER TABLE `cal_maintenance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-17 22:46:03
