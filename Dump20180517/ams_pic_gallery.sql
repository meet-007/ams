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
-- Table structure for table `pic_gallery`
--

DROP TABLE IF EXISTS `pic_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pic_gallery` (
  `idpic` int(11) NOT NULL AUTO_INCREMENT,
  `soc_id` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`idpic`),
  KEY `society_id_idx` (`soc_id`),
  KEY `event_id_idx` (`event`),
  CONSTRAINT `events` FOREIGN KEY (`event`) REFERENCES `album` (`idalbum`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `societys` FOREIGN KEY (`soc_id`) REFERENCES `society` (`sid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pic_gallery`
--

LOCK TABLES `pic_gallery` WRITE;
/*!40000 ALTER TABLE `pic_gallery` DISABLE KEYS */;
INSERT INTO `pic_gallery` VALUES (15,1,42,'C__Data_Users_DefApps_AppData_INTERNETEXPLORER_Temp_Saved Images_1511739_761008590685249_398912687711078521_n-600x380.jpg'),(16,1,42,'C__Data_Users_DefApps_AppData_INTERNETEXPLORER_Temp_Saved Images_10439402_761008387351936_777431591295619411_n-600x295.jpg'),(17,1,42,'C__Data_Users_DefApps_AppData_INTERNETEXPLORER_Temp_Saved Images_10659443_761008547351920_3293680870836626103_n-600x311.jpg'),(18,1,42,'C__Data_Users_DefApps_AppData_INTERNETEXPLORER_Temp_Saved Images_10690153_761008620685246_8071403039426381749_n-600x431.jpg'),(19,1,42,'C__Data_Users_DefApps_AppData_INTERNETEXPLORER_Temp_Saved Images_11114095_761008394018602_3924965624306325641_n-600x362.jpg'),(20,1,42,'C__Data_Users_DefApps_AppData_INTERNETEXPLORER_Temp_Saved Images_11218505_761008627351912_782007921217522934_n-600x430.jpg'),(21,1,42,'C__Data_Users_DefApps_AppData_INTERNETEXPLORER_Temp_Saved Images_11218722_761008567351918_6472790979074049762_n-600x379.jpg'),(22,1,42,'C__Data_Users_DefApps_AppData_INTERNETEXPLORER_Temp_Saved Images_11258132_761008444018597_5711704840392585459_n-600x377.jpg'),(23,1,43,'C__Data_Users_DefApps_AppData_INTERNETEXPLORER_Temp_Saved Images_Hottest-Pictures-Dwayne-Rock-Johnson(3).jpg'),(24,1,43,'C__Data_Users_DefApps_AppData_INTERNETEXPLORER_Temp_Saved Images_Hottest-Pictures-Dwayne-Rock-Johnson.jpg'),(25,1,43,'C__Data_Users_DefApps_AppData_INTERNETEXPLORER_Temp_Saved Images_Hottest-Pictures-Dwayne-Rock-JohnsonSL4L8PUX.jpg'),(26,1,43,'C__Data_Users_DefApps_AppData_INTERNETEXPLORER_Temp_Saved Images_images(1).png'),(27,1,44,'FB_20150709_21_30_15_Saved_Picture.jpg'),(28,1,44,'FB_20150711_23_04_37_Saved_Picture.jpg'),(29,1,44,'FB_20150719_11_01_31_Saved_Picture.jpg'),(30,1,44,'FB_20150719_21_07_31_Saved_Picture.jpg'),(31,1,44,'FB_20150723_11_30_29_Saved_Picture.jpg'),(32,1,44,'FB_20150731_03_29_49_Saved_Picture.jpg'),(33,1,44,'FB_20150802_13_12_35_Saved_Picture.jpg'),(34,1,44,'FB_20150802_13_20_53_Saved_Picture.jpg'),(35,1,44,'FB_20150802_13_21_51_Saved_Picture.jpg'),(36,1,44,'FB_20150802_13_22_10_Saved_Picture.jpg'),(37,1,44,'FB_20150802_13_22_30_Saved_Picture.jpg'),(38,1,44,'FB_20150802_13_23_06_Saved_Picture.jpg'),(39,1,44,'FB_20150829_08_32_10_Saved_Picture.jpg'),(40,1,44,'FB_20150829_08_51_50_Saved_Picture.jpg'),(41,1,44,'FB_20150829_08_52_57_Saved_Picture.jpg'),(50,7,47,'706image9.gif'),(51,7,47,'38312-1408626024.jpg'),(52,7,47,'161418-1408414827.jpg'),(53,7,47,'195538-1408113206.jpg'),(54,7,47,'202119-1408438400.jpg'),(55,7,47,'annual-day-image-3.jpg'),(56,7,47,'images2.jpg'),(57,7,47,'navratri-111.jpg'),(58,8,48,'706image9.gif'),(59,8,48,'38312-1408626024.jpg'),(60,8,48,'161418-1408414827.jpg'),(61,8,48,'195538-1408113206.jpg'),(62,8,48,'202119-1408438400.jpg'),(63,8,48,'annual-day-image-3.jpg'),(64,8,48,'images2.jpg'),(65,8,48,'navratri-111.jpg');
/*!40000 ALTER TABLE `pic_gallery` ENABLE KEYS */;
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
