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
-- Table structure for table `society_members`
--

DROP TABLE IF EXISTS `society_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `society_members` (
  `mem_id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL,
  `soc_id` int(11) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `email` varchar(60) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `id_proof` varchar(45) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `member_type` varchar(45) NOT NULL,
  PRIMARY KEY (`mem_id`),
  KEY `lid_idx` (`lid`),
  KEY `soc_id_idx` (`soc_id`),
  CONSTRAINT `lid` FOREIGN KEY (`lid`) REFERENCES `login` (`lid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `society` FOREIGN KEY (`soc_id`) REFERENCES `society` (`sid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `society_members`
--

LOCK TABLES `society_members` WRITE;
/*!40000 ALTER TABLE `society_members` DISABLE KEYS */;
INSERT INTO `society_members` VALUES (1,7,1,'Pankaj','Nihalani','npankaj096@gmail.com','8758258042',' ',' ','Owner'),(2,8,1,'Ravi','Khatri','khatriravi374@gmail.com','9687788238',' ',' ','Tenant'),(3,10,1,'vimal','hirpara','vimal@gmail.com','7825654892',' ',' ','Owner'),(4,11,1,'illyas','akani','illyas@gmail.com','7788462231',' ',' ','Tenant'),(5,14,3,'harry','porter','harry@gmail.com','1234567890',' ',' ','Owner'),(6,15,3,'harmaini','patel','harmaini@gmail.com','1234567890',' ',' ','Tenant'),(7,17,4,'member1','asldkfj','mem@gmail.com','985652235',' ',' ','Owner'),(8,18,4,'member2','asldkfj','mem2@gmail.com','98565222',' ',' ','Tenant'),(9,19,1,'ravi','khatri','khtariravi12@gmail.com','9687788238',' ',' ','Owner'),(10,21,5,'priyansh','agarwal','priyansh@gmail.com','8141740925',' ',' ','Owner'),(11,22,5,'abhishek','panchal','abhishek@gmail.com','656565952',' ',' ','Owner'),(12,23,5,'amar','dhandhal','amardhandhal@gmail.com','9866223355',' ',' ','Tenant'),(13,24,1,'sadfasdf','asdfasdf','asdf@sdaf.hh','3234234324',' ',' ','Tenant'),(14,25,1,'sadfdddd','sadfdsafdsaf','asdfasdf@aa','324324323',' ',' ','Tenant'),(15,28,1,'raj','chaudhary','raj21021997@gmail.com','85463123',' ','C:\\Users\\meet\\Documents\\NetBeansProjects\\BACKUPAMS\\build\\web\\upload\\mz2.jpg','Owner'),(16,29,1,'bhavnaben','chaudhary','bhavna@gmail.co','9426021504',' ','111884677X.jpg','Owner'),(17,31,1,'nwazuddin','sidiqui','nwaz@gmail.com','9898986652',' ','C__Data_Users_DefApps_AppData_INTERNETEXPLORER_Temp_Saved Images_11218505_761008627351912_782007921217522934_n-600x430.jpg','Owner'),(18,33,7,'ravi','khatri','ravi@gmail.com','726633251',' ','C__Data_Users_DefApps_AppData_INTERNETEXPLORER_Temp_Saved Images_Hottest-Pictures-Dwayne-Rock-Johnson(1).jpg','Owner'),(19,34,7,'ronak','soni','ronak@gmail.com','811566280',' ','FB_20150723_11_30_29_Saved_Picture.jpg','Owner'),(20,35,7,'hardik','mithwani','hardikmithwani@gmail.com','982506632',' ','FB_20150704_16_59_13_Saved_Picture.jpg','Owner'),(21,36,7,'Pankaj','nihalani','npankaj096@gmail.com','761446688',' ','C__Data_Users_DefApps_AppData_INTERNETEXPLORER_Temp_Saved Images_10441533_761008407351934_7839042197720493563_n-600x379 - Copy.jpg','Owner'),(22,38,8,'raj','chaudhary','raj@gmail.com','9282262230',' ','mz2.jpg','Owner'),(23,39,8,'vishal','chaudhary','vishal@gmail.com','9825663512',' ','mz111.jpg','Owner'),(24,40,8,'nihalani','pnkj','pnkj@gmail.com','9665656522',' ','11659380_1027317563953734_8358978488455227808_n.jpg','Owner'),(25,41,8,'ravi','khatri','ravi@gmail.com','9623254848',' ','image(1)(1).jpg','Owner'),(26,42,8,'hardik','mithwani','hardik@gmail.com','95656565552',' ','image(1).jpg','Tenant'),(27,43,8,'chirag','bharwad','chirag@gmail.com','9866355452',' ','FB_20141122_22_17_28_Saved_Picture.jpg','Tenant'),(28,44,8,'devanshi','patel','devi@gmail.com','9656563262',' ','image(1)(1).jpg','Tenant'),(29,45,8,'manthan','patel','manthan@gmail.com','986532553',' ','FB_20141122_22_21_46_Saved_Picture.jpg','Tenant'),(30,47,8,'sadfdddd','dd','gg@sdgf.ll','324324324',' ',' ','Owner');
/*!40000 ALTER TABLE `society_members` ENABLE KEYS */;
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
