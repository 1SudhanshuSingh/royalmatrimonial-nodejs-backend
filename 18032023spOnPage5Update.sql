-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: royalmatrimonial
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `dummy`
--

DROP TABLE IF EXISTS `dummy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dummy` (
  `id` int NOT NULL,
  `religion` json DEFAULT NULL,
  `country` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dummy`
--

LOCK TABLES `dummy` WRITE;
/*!40000 ALTER TABLE `dummy` DISABLE KEYS */;
INSERT INTO `dummy` VALUES (5,'[1, 2]',NULL),(6,'[3, 4]',NULL),(7,'[3]',NULL),(8,'[0]',NULL),(8,'[1, 2]',NULL),(8,'[10, 20]',NULL),(8,'[101, 201]',NULL);
/*!40000 ALTER TABLE `dummy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_about`
--

DROP TABLE IF EXISTS `tab_user_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_user_about` (
  `userid` int NOT NULL,
  `profile_for` tinyint NOT NULL,
  `basic_intro` varchar(500) DEFAULT NULL,
  `about_family` varchar(1000) DEFAULT NULL,
  `about_career` varchar(500) DEFAULT NULL,
  `about_education` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `userid_UNIQUE` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_about`
--

LOCK TABLES `tab_user_about` WRITE;
/*!40000 ALTER TABLE `tab_user_about` DISABLE KEYS */;
INSERT INTO `tab_user_about` VALUES (9,2,'Hi I am this and that','My family .....','my career ......','my education .....'),(11,2,'Hi I am this and that','My family .....','my career ......','my education .....'),(14,3,NULL,NULL,NULL,NULL),(15,2,'Hi I am this and that','My family .....','my career ......','my education .....'),(34,3,NULL,NULL,NULL,NULL),(40,5,NULL,NULL,NULL,NULL),(43,5,NULL,NULL,NULL,NULL),(59,5,'introoo','familyyyy','careerrrr','educationnn'),(60,1,NULL,NULL,NULL,NULL),(63,2,NULL,NULL,NULL,NULL),(65,1,NULL,NULL,NULL,NULL),(66,1,NULL,NULL,NULL,NULL),(67,1,NULL,NULL,NULL,NULL),(68,2,NULL,NULL,NULL,NULL),(75,2,NULL,NULL,NULL,NULL),(76,1,'I am bad','I am bad','I am bad','I am bad'),(77,1,NULL,NULL,NULL,NULL),(78,2,'du','bu','au','cu');
/*!40000 ALTER TABLE `tab_user_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_familyabout`
--

DROP TABLE IF EXISTS `tab_user_familyabout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_user_familyabout` (
  `userid` int NOT NULL,
  `profile_handlername` varchar(100) DEFAULT NULL,
  `Mother` tinyint DEFAULT NULL,
  `Father` tinyint DEFAULT NULL,
  `Sister` tinyint DEFAULT NULL,
  `Brother` tinyint DEFAULT NULL,
  `Gothra` varchar(100) DEFAULT NULL,
  `Family_Status` tinyint DEFAULT NULL,
  `Family_Income` tinyint DEFAULT NULL,
  `Family_Type` tinyint DEFAULT NULL,
  `family_native_country` int DEFAULT NULL,
  `family_native_state` int DEFAULT NULL,
  `family_native_city` int DEFAULT NULL,
  `living_with_parents` tinyint DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `userid_UNIQUE` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_familyabout`
--

LOCK TABLES `tab_user_familyabout` WRITE;
/*!40000 ALTER TABLE `tab_user_familyabout` DISABLE KEYS */;
INSERT INTO `tab_user_familyabout` VALUES (40,'Vishal Kumar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'Krishna Kumar',1,1,1,1,'Malik',1,4,3,1,2,30,1),(59,'Krishna Kumar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,'Sudhanshu',1,2,2,2,'test',2,3,2,2,0,18,2),(75,'Sudhanshu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(76,'Sudhanshu Singh',7,6,2,2,'Tiger',3,4,2,11,16,2,1),(77,'Sudhanshu Singh',1,1,2,2,'Gothra',1,2,1,0,12,1,1),(78,'PAPASudhanshu Singh',7,6,2,2,'BW',3,3,1,100,12,33,1);
/*!40000 ALTER TABLE `tab_user_familyabout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_lifestyle`
--

DROP TABLE IF EXISTS `tab_user_lifestyle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_user_lifestyle` (
  `userid` int NOT NULL,
  `love_pets` tinyint DEFAULT NULL,
  `Owns_house` tinyint DEFAULT NULL,
  `Owns_car` tinyint DEFAULT NULL,
  `blood_group` tinyint DEFAULT NULL,
  `Thalassemia` tinyint DEFAULT NULL,
  `religious_belief` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `userid_UNIQUE` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_lifestyle`
--

LOCK TABLES `tab_user_lifestyle` WRITE;
/*!40000 ALTER TABLE `tab_user_lifestyle` DISABLE KEYS */;
INSERT INTO `tab_user_lifestyle` VALUES (8,1,2,2,2,1,'Ram Ram'),(11,2,2,2,2,2,'Ram Ram'),(68,NULL,NULL,NULL,NULL,3,NULL),(76,1,1,1,1,1,'krishna'),(77,1,1,1,2,1,'Krishna'),(78,1,1,1,2,1,'Krishna');
/*!40000 ALTER TABLE `tab_user_lifestyle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_login`
--

DROP TABLE IF EXISTS `tab_user_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_user_login` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `mobile` bigint unsigned NOT NULL,
  `emailid` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `emailid_verification` char(1) DEFAULT 'N',
  `isd_code` int NOT NULL DEFAULT '91',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `userid_UNIQUE` (`userid`),
  UNIQUE KEY `mobile_UNIQUE` (`mobile`),
  UNIQUE KEY `emailid_UNIQUE` (`emailid`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_login`
--

LOCK TABLES `tab_user_login` WRITE;
/*!40000 ALTER TABLE `tab_user_login` DISABLE KEYS */;
INSERT INTO `tab_user_login` VALUES (9,299999,'abcd2@def.comm','ced-ferg','N',91),(10,39999,'abcd3@def.comm','ced-ferg','N',91),(11,49999,'abcd4@def.comm','ced-ferg','N',91),(14,7087871536,'deff','pwdddd','N',91),(15,19999999,'1deff','pwdddd','N',91),(34,29999999,'2deff','pwdddd','N',91),(36,39999999,'3deff','pwdddd','N',91),(40,49999999,'4deff','pwdddd','N',91),(43,6999999,'royalmatrimonial@gmail.com','pwdddd','N',91),(49,69999999,'6deff','pwdddd','N',91),(52,9999999999,'xyzzz@gmaill.comm','abcdef','N',999),(55,9910079085,'arunpruthi@yahoo.com',NULL,'N',91),(59,9312280091,NULL,NULL,NULL,91),(60,9650231035,'pruthi.atul@gmail.com',NULL,'N',91),(61,0,'arunnn@gmailll.commm','defdefdef','N',91),(62,1234567899,'sudhanshu@gnail.com','$2b$10$ET/dwCtrc0IPll0T90/TDuATiVHHjJ1PsgQIHSv5o7MB1L/4UfJl6','N',91),(63,2222211111,'sidha@gmail.com','$2b$10$fee0RINB4XIJDh/KYvFQhenMjkQ5g32Z.u9SP8ct1lRVOoRXhrp/S','N',91),(65,7878787877,'test@gmail.com','$2b$10$aVBsvykfHWjugQoyx6qcOeP/1W2DvsKsHnKvNYzrHVhQ6z6BkbCX.','N',91),(66,9540494429,'test1@gmail.com','$2b$10$5bma2WKQbtq5RYimerT4jOs9HVLBKiYguNNeXqh4fpyAtPmyrbzZu','N',91),(67,9540494427,'test2@gmail.com','$2b$10$F.06T/2F8zeCL3/u9Gjh8OLvp2dN4tovZxNG/01rKtjy.Iug31OM2','N',91),(68,9540494425,'test3@gmail.com','$2b$10$82afobthcAkrHMQJ7zVSY.3lJDP14en8V5hBND7Tq6Eg5ANlVYfu6','N',91),(69,1122334455,'test@gmail22.com','$2b$10$yyGI.6Ho/Ngc2ldQ5xY9mer2ge9K2ei1IYZWHHE6fNei45tlKiRZ2','N',91),(70,3333333333,'test3@gmail.com3','$2b$10$0amoju87HBe2Hrtuhxiepe0xP721T6OcDvzJ7kPAn6tHKe155iGI.','N',91),(71,1231231231,'test323@gmail.com','$2b$10$zA4Jpf8emNR/EVkmIz4D8eFrin8NqKVhPC6IiBo7Fu8nvA74d8Qbq','N',91),(72,9988998899,'test@gmail.com123','$2b$10$qokEYVjhkAzZtSdXG46NXuzv7ZTygF2C5LzOqKWa2n92yRvPF1FIK','N',91),(73,1234554321,'test222@gmail.com','$2b$10$QqjS.sy1BfRxiYaFsXJelusdzpy8WFw8akJbbvCzZPvYSOWxnGlwu','N',91),(74,112233112233,'t@g.com','$2b$10$Xr6Wn42vrZgrcuYoVAFRoOuNOzZJUWzrMrNRFKdgU2e5k2ds3tS5S','N',91),(75,1231231222,'s@g.com','$2b$10$SmzfHbI3ZdhQ.g6yekzaHuRO1A.9qHQhqWY4MxGCITBhE9YeKbgg2','N',91),(76,4444433333,'hima@gmail.com','$2b$10$xIp0YHO6pezGt0qDF9pUou9o9fY66BeniZM9//4lGCx8wQOFrrQa6','N',91),(77,9999988888,'papa@gmail.com','$2b$10$esJDPbGmF6vivTXcxk6qvuC6flmTDPySJsr4zt.nRLGRsUndd0ov.','N',91),(78,7982631777,'popoye@gmail.com','$2b$10$di4NYtQoXfmwO1MJ0oPfL.ZCulgRwBxXbgSSl7m7s./pJdmesekNq','N',91);
/*!40000 ALTER TABLE `tab_user_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_packageprivacy`
--

DROP TABLE IF EXISTS `tab_user_packageprivacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_user_packageprivacy` (
  `userid` int NOT NULL,
  `user_RM_ID` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user_status` char(1) NOT NULL DEFAULT 'R',
  `package_id` tinyint NOT NULL DEFAULT '1',
  `package_enddate` timestamp NULL DEFAULT NULL,
  `profile_platform` tinyint NOT NULL,
  `user_created_date` timestamp NOT NULL,
  `privacy_show_photo` char(1) NOT NULL DEFAULT 'P',
  `privacy_show_contact` char(1) NOT NULL DEFAULT 'P',
  `privacy_show_name` char(1) NOT NULL DEFAULT 'P',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `user_RM_ID_UNIQUE` (`user_RM_ID`),
  UNIQUE KEY `userid_UNIQUE` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_packageprivacy`
--

LOCK TABLES `tab_user_packageprivacy` WRITE;
/*!40000 ALTER TABLE `tab_user_packageprivacy` DISABLE KEYS */;
INSERT INTO `tab_user_packageprivacy` VALUES (11,'RM11','R',2,'2023-04-01 13:44:50',1,'2023-01-29 18:33:20','I','I','P'),(14,'RM14','R',2,'2023-03-02 10:27:54',1,'2023-01-30 13:52:47','P','P','P'),(15,'RM15','2',3,'2023-03-02 10:40:01',1,'2023-01-30 14:14:49','P','P','P'),(34,'RM34','R',1,NULL,1,'2023-01-30 15:10:48','P','P','P'),(36,'RM36','R',1,NULL,1,'2023-01-30 15:13:04','P','P','P'),(40,'RM40','R',1,NULL,1,'2023-01-30 15:18:14','P','P','P'),(49,'RM49','R',1,NULL,1,'2023-01-30 17:41:05','P','P','P'),(52,'RM52','1',1,NULL,0,'2023-02-19 14:06:59','P','P','P'),(54,'RM54','R',1,NULL,1,'2023-02-25 11:53:49','P','P','P'),(55,'RM55','R',1,NULL,1,'2023-02-25 15:48:57','P','P','P'),(56,'RM56','R',1,NULL,1,'2023-02-27 17:25:30','P','P','P'),(57,'RM57','R',1,NULL,1,'2023-02-27 17:38:38','P','P','P'),(59,'RM59','R',1,NULL,1,'2023-02-28 11:50:53','P','P','P'),(60,'RM60','R',1,NULL,1,'2023-02-28 17:18:29','P','P','P'),(61,'RM61','R',1,NULL,1,'2023-03-14 08:07:16','P','P','P'),(62,'RM62','R',1,NULL,1,'2023-03-15 10:57:11','P','P','P'),(63,'RM63','R',1,NULL,1,'2023-03-15 16:46:42','P','P','P'),(65,'RM65','R',1,NULL,1,'2023-03-15 17:21:25','P','P','P'),(66,'RM66','R',1,NULL,1,'2023-03-15 17:28:42','P','P','P'),(67,'RM67','R',1,NULL,1,'2023-03-15 17:32:33','P','P','P'),(68,'RM68','4',1,NULL,1,'2023-03-15 17:35:45','P','P','P'),(69,'RM69','R',1,NULL,1,'2023-03-16 16:30:32','P','P','P'),(70,'RM70','R',1,NULL,1,'2023-03-16 16:40:03','P','P','P'),(71,'RM71','R',1,NULL,1,'2023-03-16 17:58:31','P','P','P'),(72,'RM72','R',1,NULL,1,'2023-03-17 11:06:46','P','P','P'),(73,'RM11490','R',1,NULL,1,'2023-03-17 11:30:23','P','P','P'),(74,'RM114A4','R',1,NULL,1,'2023-03-17 11:34:06','P','P','P'),(75,'RM114B8','2',1,NULL,1,'2023-03-17 11:38:47','P','P','P'),(76,'RM124C1D','2',1,NULL,1,'2023-03-17 19:59:08','P','P','P'),(77,'RM124D3A','5',1,NULL,1,'2023-03-18 00:28:12','P','P','P'),(78,'RM124E1C','5',1,NULL,1,'2023-03-18 05:58:05','P','P','P');
/*!40000 ALTER TABLE `tab_user_packageprivacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_partnerpref`
--

DROP TABLE IF EXISTS `tab_user_partnerpref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_user_partnerpref` (
  `userid` int unsigned NOT NULL,
  `age_greater_than` tinyint unsigned NOT NULL,
  `age_less_than` tinyint unsigned NOT NULL,
  `height_greater_than` tinyint unsigned DEFAULT NULL,
  `height_less_than` tinyint unsigned DEFAULT NULL,
  `country` json DEFAULT NULL,
  `state` json DEFAULT NULL,
  `city` json DEFAULT NULL,
  `education` json DEFAULT NULL,
  `occupation` json DEFAULT NULL,
  `annual_income_greater_than` tinyint unsigned DEFAULT NULL,
  `marital_status` json DEFAULT NULL,
  `religion` json DEFAULT NULL,
  `mother_tongue` json DEFAULT NULL,
  `caste` json DEFAULT NULL,
  `Residential_status` json DEFAULT NULL,
  `manglik` json DEFAULT NULL,
  `diet` tinyint DEFAULT NULL,
  `smoking` tinyint DEFAULT NULL,
  `drinking` tinyint DEFAULT NULL,
  `ready_to_settleAbroad` tinyint unsigned DEFAULT NULL,
  `Challenged` json DEFAULT NULL,
  `children_status` json DEFAULT NULL,
  `HIV` tinyint DEFAULT NULL,
  `horoscope_match` int DEFAULT NULL,
  `mandatory_fields` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `userid_UNIQUE` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_partnerpref`
--

LOCK TABLES `tab_user_partnerpref` WRITE;
/*!40000 ALTER TABLE `tab_user_partnerpref` DISABLE KEYS */;
INSERT INTO `tab_user_partnerpref` VALUES (9,30,35,150,155,'[1, 2]','[3, 4]','[101, 102]','[201, 202]',NULL,4,'[1, 2]','[5]','[11, 12, 13]','[14]','[1, 2]','[1, 2]',0,1,1,0,'[6, 7]','[1, 2]',0,0,'[\"height\", \"religion\", \"caste\"]'),(11,35,50,130,155,'[1, 2]','[3, 4]','[101, 102]','[201, 202]','[0]',4,'[1, 2]','[5, 6]','[11, 12, 13]','[14]','[1, 2]','[1, 2]',1,1,1,0,'[6, 7]','[4, 7]',0,0,'[\"height\", \"religion\", \"caste\"]'),(59,30,35,150,155,'[1, 2]','[3, 4]','[101, 102]','[201, 202]','[0]',4,'[1, 2]','[5, 6]','[11, 12, 13]','[14]','[1, 2]','[1, 2]',1,2,3,0,'[6, 7]','[4, 7]',0,3,'[\"height\", \"religion\", \"caste\"]');
/*!40000 ALTER TABLE `tab_user_partnerpref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_profile`
--

DROP TABLE IF EXISTS `tab_user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_user_profile` (
  `userid` int unsigned NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `fullname` varchar(300) DEFAULT NULL,
  `marital_status` tinyint DEFAULT NULL,
  `kyc_status` tinyint DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `height_cm` tinyint unsigned DEFAULT NULL,
  `country` tinyint unsigned DEFAULT NULL,
  `state` int unsigned DEFAULT NULL,
  `city` int unsigned DEFAULT NULL,
  `education` tinyint unsigned DEFAULT NULL,
  `occupation` tinyint unsigned DEFAULT NULL,
  `annual_income` tinyint unsigned DEFAULT NULL,
  `children_status` tinyint DEFAULT NULL,
  `mother_tongue` tinyint unsigned DEFAULT NULL,
  `religion` tinyint unsigned DEFAULT NULL,
  `caste` int DEFAULT NULL,
  `residentialstatus` tinyint unsigned DEFAULT NULL,
  `manglik` tinyint DEFAULT NULL,
  `diet` tinyint DEFAULT NULL,
  `smoking` tinyint DEFAULT NULL,
  `drinking` tinyint DEFAULT NULL,
  `readytosettleabroad` tinyint DEFAULT NULL,
  `challenged` tinyint unsigned DEFAULT NULL,
  `hiv` tinyint DEFAULT NULL,
  `profile_last_updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `photo` varchar(1000) DEFAULT NULL,
  `College` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `userid_UNIQUE` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_profile`
--

LOCK TABLES `tab_user_profile` WRITE;
/*!40000 ALTER TABLE `tab_user_profile` DISABLE KEYS */;
INSERT INTO `tab_user_profile` VALUES (9,'M','ABCD DEFG',2,1,'1977-08-15 00:00:00',135,2,3,101,101,4,4,1,12,5,14,2,2,1,1,1,5,7,7,'2023-03-05 05:54:32','folder9',NULL),(11,'F','ABCD DEFG',2,1,'1989-08-16 00:00:00',151,1,3,101,201,4,5,1,11,5,14,1,1,1,1,1,6,7,2,'2023-03-05 05:51:09','folder',NULL),(14,'F','A333 B333',1,1,'1989-08-16 00:00:00',153,1,4,102,202,80,6,2,12,5,14,1,1,1,1,1,1,6,6,'2023-03-12 13:43:03','folder3',NULL),(15,'F','A444 B444',2,1,'1989-08-16 00:00:00',151,1,1,1,1,1,1,2,11,5,14,1,2,1,1,1,1,7,7,'2023-03-17 12:22:57','folder4','1'),(34,'F','ABCD DEFG',1,1,'1989-08-16 00:00:00',151,1,3,101,202,4,8,1,12,5,14,2,2,1,1,1,1,7,2,'2023-03-12 12:32:22','folder',NULL),(40,'M','Vimal',20,NULL,'1980-05-05 00:00:00',155,2,4,102,201,1,5,NULL,NULL,1,NULL,2,NULL,1,1,1,1,NULL,NULL,'2023-03-09 17:32:18',NULL,NULL),(43,NULL,NULL,NULL,NULL,NULL,NULL,1,3,101,202,3,5,NULL,NULL,NULL,NULL,1,NULL,1,1,1,1,NULL,NULL,'2023-03-17 12:29:59',NULL,NULL),(52,NULL,'M',2,NULL,'1989-08-16 00:00:00',154,1,3,101,202,5,8,NULL,12,5,14,1,2,1,1,1,2,7,1,'2023-03-05 05:51:08','folder2',NULL),(59,'M','Gaurav Chabbbra',20,NULL,'1980-05-05 00:00:00',155,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13,7,14,2,1,1,1,1,3,6,1,'2023-03-05 05:51:09','folder3',NULL),(60,'m','atul pruthi',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,0,1,2,3,NULL,NULL,NULL,'2023-03-11 05:37:47',NULL,NULL),(63,'M','Sudhanshu Singh',0,NULL,'2001-01-01 00:00:00',189,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,278,NULL,4,NULL,NULL,NULL,NULL,1,2,'2023-03-15 17:07:49',NULL,NULL),(65,NULL,'TEst',1,NULL,'2001-01-02 00:00:00',189,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,278,NULL,2,NULL,NULL,NULL,NULL,1,2,'2023-03-15 17:22:59',NULL,NULL),(66,'M','Sudhanshu Singh',0,NULL,'2001-01-01 00:00:00',187,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,278,NULL,2,NULL,NULL,NULL,NULL,1,2,'2023-03-15 17:29:13',NULL,NULL),(67,NULL,'Sudhanshu Singh',0,NULL,'2001-01-02 00:00:00',187,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,407,NULL,2,NULL,NULL,NULL,NULL,1,2,'2023-03-15 17:33:00',NULL,NULL),(68,NULL,'Sudhanshu Singh',0,NULL,'2001-01-02 00:00:00',168,100,4,7,2,2,NULL,1,1,1,278,NULL,2,2,1,3,NULL,1,2,'2023-03-17 19:57:34',NULL,'test'),(75,NULL,'Sudhanshu Singh',0,NULL,'2001-01-02 00:00:00',167,1,1,1,1,1,1,1,1,1,278,1,2,NULL,NULL,NULL,1,1,2,'2023-03-17 12:24:51',NULL,'1'),(76,'M','Sudhanshu Singh',0,NULL,'2000-11-08 00:00:00',100,0,0,0,20,3,8,1,4,1,391,2,2,1,1,1,2,1,2,'2023-03-18 00:17:13','','IIT'),(77,'M','Sudhanshu Singh',1,NULL,'2001-01-01 00:00:00',0,0,0,0,5,1,8,1,1,1,485,1,1,2,1,1,1,1,2,'2023-03-18 05:49:40','1677256118170','IIT'),(78,'M','Sudhanshu Singh',1,NULL,'2001-01-01 00:00:00',100,100,3,8,49,1,8,1,1,1,278,1,2,2,1,1,1,1,2,'2023-03-18 06:53:08','1677257873600','IIT');
/*!40000 ALTER TABLE `tab_user_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tab_user_profile_BEFORE_UPDATE` BEFORE UPDATE ON `tab_user_profile` FOR EACH ROW BEGIN
	set NEW.profile_last_updated_date=NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tab_user_shortlist`
--

DROP TABLE IF EXISTS `tab_user_shortlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_user_shortlist` (
  `userid` int NOT NULL,
  `userid_shortlist` int NOT NULL,
  `shortlist_status` char(1) DEFAULT NULL,
  PRIMARY KEY (`userid`,`userid_shortlist`),
  UNIQUE KEY `userid_UNIQUE` (`userid`,`userid_shortlist`) /*!80000 INVISIBLE */
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_shortlist`
--

LOCK TABLES `tab_user_shortlist` WRITE;
/*!40000 ALTER TABLE `tab_user_shortlist` DISABLE KEYS */;
INSERT INTO `tab_user_shortlist` VALUES (9,15,'N'),(9,40,'Y'),(40,15,'Y');
/*!40000 ALTER TABLE `tab_user_shortlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_wastate`
--

DROP TABLE IF EXISTS `tab_user_wastate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_user_wastate` (
  `isd_mobile` bigint unsigned NOT NULL,
  `menu_number` int DEFAULT NULL,
  `state_setDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `question` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`isd_mobile`),
  UNIQUE KEY `mobile_UNIQUE` (`isd_mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_wastate`
--

LOCK TABLES `tab_user_wastate` WRITE;
/*!40000 ALTER TABLE `tab_user_wastate` DISABLE KEYS */;
INSERT INTO `tab_user_wastate` VALUES (9149999,4,'2023-03-03 10:55:38','email'),(917087871536,-3,'2023-02-25 15:46:22',''),(919312280091,0,'2023-02-28 11:55:13',''),(919650231035,2,'2023-03-14 00:07:29',''),(919910079085,10202,'2023-03-10 08:22:20',''),(9999999999999,3,'2023-02-19 14:26:06',NULL);
/*!40000 ALTER TABLE `tab_user_wastate` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`warm`@`localhost`*/ /*!50003 TRIGGER `tab_user_WAState_BEFORE_UPDATE` BEFORE UPDATE ON `tab_user_wastate` FOR EACH ROW BEGIN
	set NEW.state_setDate=NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'royalmatrimonial'
--

--
-- Dumping routines for database 'royalmatrimonial'
--
/*!50003 DROP FUNCTION IF EXISTS `func_isUserPrefMatch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` FUNCTION `func_isUserPrefMatch`(
userid1 INT,
user2Profile_userid INT,
user2Profile_marital_status TINYINT,   
user2Profile_dob datetime,
user2Profile_height_cm INT,
user2Profile_country INT,
user2Profile_state INT,
user2Profile_city INT,
user2Profile_education INT,
user2Profile_occupation TINYINT,
user2Profile_annual_income TINYINT,
user2Profile_children_status TINYINT,
user2Profile_mother_tongue TINYINT,
user2Profile_religion TINYINT,
user2Profile_caste INT,
user2Profile_residentialstatus TINYINT,
user2Profile_manglik TINYINT,
user2Profile_diet TINYINT,
user2Profile_smoking TINYINT,
user2Profile_drinking TINYINT,
user2Profile_readytosettleabroad TINYINT,
user2Profile_challenged TINYINT,
user2Profile_hiv TINYINT
) RETURNS int
    DETERMINISTIC
BEGIN
Declare currentSPname varchar(100) DEFAULT 'func_isUserPrefMatch';
Declare v_out  int;
Declare v_msg varchar(200); 
	DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2;
		GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
        Return v_out;
	END;
	DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
		GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
        Return v_out;
	END;

    SET v_out = 1;
    SET v_msg="ok";
    
	select b.marital_status,
	b.age_greater_than, b.age_less_than,
	b.height_greater_than, b.height_less_than,
	b.country,
	b.state,
	b.city,
	b.education,
	b.occupation,
	b.annual_income_greater_than,
	b.children_status,
	b.mother_tongue,
	b.religion,
	b.caste,
	b.Residential_status,
	b.manglik,
	b.diet,
	b.smoking,
	b.drinking,
	b.ready_to_settleAbroad,
	b.Challenged,
	b.HIV,
    b.mandatory_fields
	INTO 
	@user1Pref_marital_status,
	@user1Pref_age_greater_than, @user1Pref_age_less_than,
	@user1Pref_height_greater_than, @user1Pref_height_less_than,
	@user1Pref_country,
	@user1Pref_state,
	@user1Pref_city,
	@user1Pref_education,
	@user1Pref_occupation,
	@user1Pref_annual_income,
	@user1Pref_children_status,
	@user1Pref_mother_tongue,
	@user1Pref_religion,
	@user1Pref_caste,
	@user1Pref_residentialstatus,
	@user1Pref_manglik,
	@user1Pref_diet,
	@user1Pref_smoking,
	@user1Pref_drinking,
	@user1Pref_readytosettleabroad,
	@user1Pref_Challenged,
	@user1Pref_HIV,
    @user1Pref_mandatory_fields
	from tab_user_partnerPref b where b.userid=userid1;

    select DATE_SUB(SYSDATE(), INTERVAL @user1Pref_age_greater_than YEAR), DATE_SUB(SYSDATE(), INTERVAL @user1Pref_age_less_than YEAR) into @v_dobLowLimit,@v_dobUpperLimit;    
	IF ((v_out = 1) AND  @v_dobUpperLimit <= user2Profile_dob AND user2Profile_dob <= @v_dobLowLimit) Then
		SET v_out = 1;
	Else
		SET v_out = 0;
	End If;
	if( (v_out = 1) AND (ISNULL(@user1Pref_marital_status) OR (user2Profile_marital_status member of(@user1Pref_marital_status)))) Then
			SET v_out = 1;
		Else
			SET v_out = 0;
		End If;
	if( (v_out = 1) AND 'height' member of(@user1Pref_mandatory_fields)) Then
		If ((@user1Pref_height_greater_than <=user2Profile_height_cm) 
        AND (user2Profile_height_cm <= @user1Pref_height_less_than)) Then
			SET v_out = 1;
		Else 
			SET v_out = 0;
		End If;
    End If;
     if( (v_out = 1) AND 'country' member of(@user1Pref_mandatory_fields)) Then
		If ( ISNULL(@user1Pref_country) OR (user2Profile_country member of(@user1Pref_country)) ) Then
			SET v_out = 1;
		Else
			SET v_out = 0;
		End If;
    End If;
    if( (v_out = 1) AND 'state' member of(@user1Pref_mandatory_fields) ) Then
		If (ISNULL(@user1Pref_state) OR (user2Profile_state member of(@user1Pref_state)) ) Then
			SET v_out = 1;
		Else
			SET v_out = 0;
		End If;
    End If;
    if( (v_out = 1) AND 'city' member of(@user1Pref_mandatory_fields)) Then
		If (ISNULL(@user1Pref_city) OR (user2Profile_city member of(@user1Pref_city)) ) Then
			SET v_out = 1;
		Else
			SET v_out = 0;
		End If;
    End If;
    if( (v_out = 1) AND 'occupation' member of(@user1Pref_mandatory_fields)) Then
		If (ISNULL(@user1Pref_occupation) OR (user2Profile_occupation member of(@user1Pref_occupation)) ) Then
			SET v_out = 1;
		Else
			SET v_out = 0;
		End If;
    End If;
    if( (v_out = 1) AND 'education' member of(@user1Pref_mandatory_fields)) Then
		If ( ISNULL(@user1Pref_education) OR (user2Profile_education member of(@user1Pref_education)) ) Then
			SET v_out = 1;
		Else
			SET v_out = 0;
		End If;
    End If;
    if( (v_out = 1) AND 'annual_income' member of(@user1Pref_mandatory_fields)) Then
		If ( @user1Pref_annual_income=0 OR (@user1Pref_annual_income <= user2Profile_annual_income )) Then
			SET v_out = 1;
		Else
			SET v_out = 0;
		End If;
    End If;
    if( (v_out = 1) AND 'children_status' member of(@user1Pref_mandatory_fields)) Then
		If ( ISNULL(@user1Pref_children_status) OR (user2Profile_children_status member of(@user1Pref_children_status)) ) Then
			SET v_out = 1;
		Else
			SET v_out = 0;
		End If;
    End If;
    if( (v_out = 1) AND 'mother_tongue' member of(@user1Pref_mandatory_fields)) Then
		If (ISNULL(@user1Pref_mother_tongue) OR (user2Profile_mother_tongue member of(@user1Pref_mother_tongue)) ) Then
			SET v_out = 1;
		Else
			SET v_out = 0;
		End If;
    End If;
    if( (v_out = 1) AND 'religion' member of(@user1Pref_mandatory_fields)) Then
		If (ISNULL(@user1Pref_religion) OR (user2Profile_religion member of(@user1Pref_religion)) ) Then
			SET v_out = 1;
		Else
			SET v_out = 0;
		End If;
    End If;
    if( (v_out = 1) AND 'caste' member of(@user1Pref_mandatory_fields)) Then
		If (ISNULL(@user1Pref_caste) OR (user2Profile_caste member of(@user1Pref_caste)) ) Then
			SET v_out = 1;
		Else
			SET v_out = 0;
		End If;
    End If;
    if( (v_out = 1) AND 'residentialstatus' member of(@user1Pref_mandatory_fields)) Then
		If (ISNULL(@user1Pref_residentialstatus) OR (user2Profile_residentialstatus member of(@user1Pref_residentialstatus)) ) Then
			SET v_out = 1;
		Else
			SET v_out = 0;
		End If;
    End If;
	if( (v_out = 1) AND 'manglik' member of(@user1Pref_mandatory_fields)) Then
		If ( ISNULL(@user1Pref_manglik) OR (user2Profile_manglik member of(@user1Pref_manglik)) ) Then
			SET v_out = 1;
		Else
			SET v_out = 0;
		End If;
    End If;
	if( (v_out = 1) AND 'diet' member of(@user1Pref_mandatory_fields)) Then
		If ( ISNULL(@user1Pref_diet) OR (user2Profile_diet member of(@user1Pref_diet)) ) Then
			SET v_out = 1;
		Else
			SET v_out = 0;
		End If;
    End If;
	if( (v_out = 1) AND 'smoking' member of(@user1Pref_mandatory_fields)) Then
		If ( ISNULL(@user1Pref_smoking) OR (user2Profile_smoking member of(@user1Pref_smoking)) ) Then
			SET v_out = 1;
		Else
			SET v_out = 0;
		End If;
    End If;
	if( (v_out = 1) AND 'drinking' member of(@user1Pref_mandatory_fields)) Then
		If ( ISNULL(@user1Pref_drinking) OR (user2Profile_drinking member of(@user1Pref_drinking)) ) Then
			SET v_out = 1;
		Else
			SET v_out = 0;
		End If;
    End If;
	if( (v_out = 1) AND 'readytosettleabroad' member of(@user1Pref_mandatory_fields)) Then
		If (@user1Pref_readytosettleabroad=0 OR @user1Pref_readytosettleabroad=user2Profile_readytosettleabroad ) Then
			SET v_out = 1;
		Else
			SET v_out = 0;
		End If;
    End If;
	if( (v_out = 1) AND 'challenged' member of(@user1Pref_mandatory_fields)) Then
		If ( ISNULL(@user1Pref_challenged) OR (user2Profile_challenged member of(@user1Pref_challenged)) ) Then
			SET v_out = 1;
		Else
			SET v_out = 0;
		End If;
    End If;
	if( (v_out = 1) AND 'hiv' member of(@user1Pref_mandatory_fields)) Then
		If (@user1Pref_hiv=0 OR @user1Pref_hiv=user2Profile_hiv ) Then
			SET v_out = 1;
		Else
			SET v_out = 0; 
		End If;
	End If;
    RETURN v_out;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetPassword`(
    IN input_email_or_phone VARCHAR(50),
    IN input_iso_code VARCHAR(2),
    OUT output_password VARCHAR(50)
)
BEGIN
	IF (input_iso_code IS NULL OR input_iso_code = '') THEN
		SELECT password INTO output_password
		FROM tab_user_login
		WHERE email = input_email_or_phone;
    ELSE
		SELECT password INTO output_password
		FROM tab_user_login
		WHERE phone = input_email_or_phone AND isocode = input_iso_code;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_create_userAbout` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_create_userAbout`(
	IN v_userid INT,
    IN v_profile_for tinyint,
    IN v_basic_intro varchar(500),
    IN v_about_family varchar(1000),
    IN v_about_career varchar(500),
    IN v_about_education varchar(500),
    OUT v_out INT,
	OUT v_msg varchar(500),
    OUT v_json json
)
BEGIN
	Declare currentSPname varchar(100) DEFAULT 'sp_create_userAbout';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
	SET v_json = null;
    INSERT INTO `royalmatrimonial`.`tab_user_about`
	(`userid`,
	`profile_for`,
	`basic_intro`,
	`about_family`,
	`about_career`,
	`about_education`)
	select userid,v_profile_for,v_basic_intro,v_about_family,v_about_career,v_about_education from tab_user_login 
    where v_userid=userid; 
	if (ROW_COUNT() = 0) Then
		SET v_msg=CONCAT(currentSPname,': User ID ', v_userid,' does not exist');
		SET v_out = -1;
    End IF;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_create_userFamilyAbout` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_create_userFamilyAbout`(
IN v_userid INT,
IN v_profile_handlername varchar(100),
IN v_Mother tinyint,
IN v_Father tinyint,
IN v_Sister tinyint,
IN v_Brother tinyint,
IN v_Gothra varchar(100),
IN v_Family_Status TINYINT,
IN v_Family_Income TINYINT,
IN v_Family_Type TINYINT,
IN v_family_native_country int,
IN v_family_native_state int,
IN v_family_native_city int,
IN v_living_with_parents TINYINT,
OUT v_out INT,
OUT v_msg varchar(500),
OUT v_json json
)
BEGIN 
	Declare currentSPname varchar(100) DEFAULT 'sp_create_userFamilyAbout';
	DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
	SET v_json = null;
	INSERT INTO `royalmatrimonial`.`tab_user_familyAbout`
	(`userid`,
	`profile_handlername`,
	`Mother`,
	`Father`,
	`Sister`,
	`Brother`,
	`Gothra`,
	`Family_Status`,
	`Family_Income`,
	`Family_Type`,
	`family_native_country`,
	`family_native_state`,
    `family_native_city`,
	`living_with_parents`)
	select userid,v_profile_handlername,
	v_Mother,v_Father,v_Sister,v_Brother,
	v_Gothra,v_Family_Status,v_Family_Income,
	v_Family_Type,v_family_native_country,v_family_native_state,v_family_native_city,
	v_living_with_parents from tab_user_login 
    where v_userid=userid; 
	if (ROW_COUNT() = 0) Then
		SET v_msg=CONCAT(currentSPname,': User ID ', v_userid,' does not exist');
		SET v_out = -1;
    End IF;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_create_userLifestyle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_create_userLifestyle`(
IN v_userid INT,
IN v_love_pets tinyint,
IN v_Owns_house tinyint,
IN v_Owns_car tinyint,
IN v_blood_group tinyint,
IN v_Thalassemia tinyint,
IN v_religious_belief varchar(45),
OUT v_out INT,
OUT v_msg varchar(500),
OUT v_json json
)
BEGIN 
	Declare currentSPname varchar(100) DEFAULT 'sp_create_userLifestyle';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
	SET v_json = null;
	INSERT INTO `royalmatrimonial`.`tab_user_lifestyle`(
    `userid`,
	`love_pets`,
	`Owns_house`,
	`Owns_car`,
	`blood_group`,
	`Thalassemia`,
	`religious_belief`)
	select userid,v_love_pets,v_Owns_house,v_Owns_car,v_blood_group,v_Thalassemia,v_religious_belief 
	from tab_user_login where v_userid=userid; 
	if (ROW_COUNT() = 0) Then
		SET v_msg=CONCAT(currentSPname,': User ID ', v_userid,' does not exist');
		SET v_out = -1;
    End IF;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_create_userLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_create_userLogin`(
	IN email varchar(255),
    IN v_isdCode INT,
    IN mob BIGINT UNSIGNED,
    IN pwd varchar(100),
    IN email_verify char,
    IN profile_platform TINYINT,
	OUT v_out INT,
	OUT v_msg varchar(500),
	OUT v_json json
)
BEGIN 
	Declare currentSPname varchar(100) DEFAULT 'sp_create_userLogin';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    SET v_out = -1;
    SET v_json = null;
	START transaction;
    Insert into tab_user_login (emailid,mobile,password,emailid_verification,isd_Code)
    values(email,mob,pwd,email_verify,v_isdCode);
    SET v_out = LAST_INSERT_ID();
    Insert into tab_user_packagePrivacy(userid,user_rm_id,user_status,package_id,
    profile_platform,user_created_date) Values(v_out,concat('RM',hex(day(now())),hex(v_out),hex(minute(now()))),'R',1,profile_platform,sysdate());
	call sp_get_userPackagePrivacy(v_out,@v_out1,v_msg,v_json);
    SET v_msg ='ok';
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_create_userPartnerPref` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_create_userPartnerPref`(
IN v_userid INT,
IN v_age_greater_than TINYINT,
IN v_age_less_than TINYINT,
IN v_height_greater_than TINYINT,
IN v_height_less_than TINYINT,
IN v_country TINYINT,
IN v_state INT,
IN v_city INT, 
IN v_education TINYINT,
IN v_occupation TINYINT,
IN v_annual_income_greater_than TINYINT,
IN v_marital_status TINYINT,
IN v_religion TINYINT,
IN v_mother_tongue TINYINT,
IN v_caste INT,
IN v_Residential_status TINYINT,
IN v_manglik TINYINT,
IN v_diet TINYINT,
IN v_smoking TINYINT,
IN v_drinking TINYINT,
IN v_ready_to_settleAbroad TINYINT,
IN v_Challenged TINYINT,
IN v_children_status TINYINT,
IN v_HIV TINYINT,
IN v_horoscope_match INT,
IN v_mandatory_fields VARCHAR(500),
OUT v_out INT,
OUT v_msg varchar(500)
)
BEGIN  
	Declare currentSPname varchar(100) DEFAULT 'sp_create_userPartnerPref';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
	INSERT INTO `royalmatrimonial`.`tab_user_partnerPref`(
    `userid`,
	`age_greater_than`,
	`age_less_than`,
	`height_greater_than`,
	`height_less_than`,
	`country`,
	`state`,
	`city`,
	`education`,
	`occupation`,
	`annual_income_greater_than`,
	`marital_status`,
	`religion`,
	`mother_tongue`,
	`caste`,
	`Residential_status`,
	`manglik`,
	`diet`,
	`smoking`,
	`drinking`,
	`ready_to_settleAbroad`,
	`Challenged`,
	`children_status`,
	`HIV`,
	`horoscope_match`,
	`mandatory_fields`)
	Select v_userid,v_age_greater_than,v_age_less_than,v_height_greater_than,v_height_less_than,v_country,v_state,v_city,v_education,v_occupation,v_annual_income_greater_than,v_marital_status,v_religion,v_mother_tongue,v_caste,v_Residential_status,v_manglik,v_diet,v_smoking,v_drinking,v_ready_to_settleAbroad,v_Challenged,v_children_status,v_HIV,v_horoscope_match,v_mandatory_fields
	from tab_user_login 
    where v_userid=userid; 
	if (ROW_COUNT() = 0) Then
		SET v_msg=CONCAT(currentSPname,': User ID ', v_userid,' does not exist');
		SET v_out = -1;
    End IF;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_create_userProfile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_create_userProfile`(
	IN v_userid INT,
	IN v_gender char,
	IN v_fullname varchar(300),
	IN v_marital_status TINYINT,
	IN v_kyc_status TINYINT,
	IN v_dob datetime,
	IN v_height_cm INT,
	IN v_country INT,
	IN v_state INT,
	IN v_city INT,
	IN v_education INT,
	IN v_occupation TINYINT,
	IN v_annual_income TINYINT,
	IN v_children_status TINYINT,
	IN v_mother_tongue TINYINT,
	IN v_religion TINYINT,
	IN v_caste INT,
	IN v_residentialstatus TINYINT,
	IN v_manglik TINYINT,
	IN v_diet TINYINT,
	IN v_smoking TINYINT,
	IN v_drinking TINYINT,
	IN v_readytosettleabroad TINYINT,
	IN v_challenged TINYINT,
	IN v_hiv TINYINT,
	IN v_photo varchar(1000),
	IN v_college varchar(250),
	OUT v_out INT,
	OUT v_msg varchar(500),
	OUT v_json json
)
BEGIN  
	Declare currentSPname varchar(100) DEFAULT 'sp_create_userProfile';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
	SET v_json = null;
	INSERT INTO `tab_user_profile`
	(`userid`,
	`gender`,
	`fullname`,
	`marital_status`,
	`kyc_status`,
	`dob`,
	`height_cm`,
	`country`,
	`state`,
	`city`,
	`education`,
	`occupation`,
	`annual_income`,
	`children_status`,
	`mother_tongue`,
	`religion`,
	`caste`,
	`residentialstatus`,
	`manglik`,
	`diet`,
	`smoking`,
	`drinking`,
	`readytosettleabroad`,
	`challenged`,
	`hiv`,
	`profile_last_updated_date`,
	`photo`,
    `college`)
	Select 
	 userid ,
	 v_gender ,
	 v_fullname ,
	 v_marital_status ,
	 v_kyc_status ,
	 v_dob ,
	 v_height_cm ,
	 v_country ,
	 v_state ,
	 v_city ,
	 v_education ,
	 v_occupation ,
	 v_annual_income ,
	 v_children_status,
	 v_mother_tongue ,
	 v_religion ,
	 v_caste ,
	 v_residentialstatus ,
	 v_manglik,
	 v_diet,
	 v_smoking,
	 v_drinking,
	 v_readytosettleabroad,
	 v_challenged,
	 v_hiv,
	 SYSDATE() ,
	 v_photo,
     v_college
	from tab_user_login 
    where v_userid=userid; 
	if (ROW_COUNT() = 0) Then
		SET v_msg=CONCAT(currentSPname,': User ID ', v_userid,' does not exist');
		SET v_out = -1;
    End IF;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_allMatchMaking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_get_allMatchMaking`(
	IN v_userid INT,
    IN v_maxUserid INT, -- send -1 for 1st time call
	IN v_limit INT,
    IN v_viceversaFlag boolean,  -- normally send true
	OUT v_out INT,
	OUT v_msg VARCHAR(500),
	OUT v_json JSON
)
BEGIN
	Declare currentSPname varchar(100) DEFAULT 'sp_get_allMatchMaking';
	DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2;
        SET v_json = null;
		GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
	DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        SET v_json = null;
		GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
	select b.marital_status,
	b.age_greater_than, b.age_less_than,
	b.height_greater_than, b.height_less_than,
	b.country,
	b.state,
	b.city,
	b.education,
	b.occupation,
	b.annual_income_greater_than,
	b.children_status,
	b.mother_tongue,
	b.religion,
	b.caste,
	b.Residential_status,
	b.manglik,
	b.diet,
	b.smoking,
	b.drinking,
	b.ready_to_settleAbroad,
	b.Challenged,
	b.HIV 
	INTO 
	@v_marital_status,
	@v_age_greater_than, @v_age_less_than,
	@v_height_greater_than, @v_height_less_than,
	@v_country,
	@v_state,
	@v_city,
	@v_education,
	@v_occupation,
	@v_annual_income_greater_than,
	@v_children_status,
	@v_mother_tongue,
	@v_religion,
	@v_caste,
	@v_Residential_status,
	@v_manglik,
	@v_diet,
	@v_smoking,
	@v_drinking,
	@v_ready_to_settleAbroad,
	@v_Challenged,
	@v_HIV 
	from tab_user_partnerPref b where b.userid=v_userid;
	Select `gender`,`marital_status`,`dob`,`height_cm`,`country`,`state`,`city`,`education`,`occupation`,`annual_income`,
	`children_status`,`mother_tongue`,`religion`,`caste`,`residentialstatus`,`manglik`,`diet`,`smoking`,`drinking`,
	`readytosettleabroad`,`challenged`,`hiv`
	into @user1Profile_gender,@user1Profile_marital_status,@user1Profile_dob ,@user1Profile_height_cm ,
    @user1Profile_country ,	@user1Profile_state ,@user1Profile_city ,@user1Profile_education ,@user1Profile_occupation ,
    @user1Profile_annual_income ,@user1Profile_children_status ,@user1Profile_mother_tongue ,@user1Profile_religion ,
    @user1Profile_caste ,@user1Profile_residentialstatus ,@user1Profile_manglik ,@user1Profile_diet ,
    @user1Profile_smoking ,	@user1Profile_drinking ,@user1Profile_readytosettleabroad ,@user1Profile_challenged ,
    @user1Profile_hiv from tab_user_profile where userid = v_userid;
	-- DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW()+0
    SET @v_userid = v_userid;
    SET @v_limit1 = v_limit;
    SET @v_maxUserid1 = v_maxUserid;
    if(@v_maxUserid1 = -1 ) then
		select max(userid)+1000 into @v_maxUserid1 from tab_user_profile;
    end if;
    select DATE_SUB(SYSDATE(), INTERVAL @v_age_greater_than YEAR), DATE_SUB(SYSDATE(), INTERVAL @v_age_less_than YEAR) into @v_dobLowLimit,@v_dobUpperLimit;
    if(v_viceversaFlag) then
		SET @v_iSUserPrefMatch = ' AND (func_isUserPrefMatch(tab_user_profile.userid,@v_userid,@user1Profile_marital_status,
		@user1Profile_dob ,@user1Profile_height_cm ,@user1Profile_country ,	@user1Profile_state ,@user1Profile_city,
		@user1Profile_education,@user1Profile_occupation,@user1Profile_annual_income,@user1Profile_children_status,
		@user1Profile_mother_tongue,@user1Profile_religion,@user1Profile_caste,@user1Profile_residentialstatus,
		@user1Profile_manglik,@user1Profile_diet,@user1Profile_smoking,@user1Profile_drinking,
		@user1Profile_readytosettleabroad,@user1Profile_challenged,@user1Profile_hiv) = 1) '; 
    else
		SET @v_iSUserPrefMatch = '';
	end if;
    SET @s_sql =CONCAT('select json_arrayagg(json_object(''userid'',uid,''fullname'',fname,''photo'',pht,
    ''row'',rw1,''privacy_photo'',pp,''privacy_name'',pname,''privacy_contact'',pcontact)) 
    into @v_json1 from
    (
    select tab_user_profile.userid as uid,fullname as fname,photo as pht,
    ROW_NUMBER() OVER (order by tab_user_profile.userid desc) rw1,
    privacy_show_photo as pp, privacy_show_contact as pcontact, privacy_show_name as pname
    from tab_user_profile  left join tab_user_packagePrivacy on
    tab_user_profile.userid = tab_user_packagePrivacy.userid 
    where 
    tab_user_profile.userid<@v_maxUserid1 
    AND @v_userid <> tab_user_profile.userid 
    AND @user1Profile_gender <> gender 
    AND (ISNULL(@v_marital_status) OR marital_status member of(@v_marital_status))
    AND (@v_dobUpperLimit <= dob AND dob <= @v_dobLowLimit)
    AND ((@v_height_greater_than <=height_cm) AND (height_cm <= @v_height_less_than))
    AND (ISNULL(@v_country) OR country member of(@v_country)) 
    AND (ISNULL(@v_state) OR state member of(@v_state)) 
    AND (ISNULL(@v_city) OR city member of(@v_city))
    AND (ISNULL(@v_education) OR education member of(@v_education)) 
    AND (ISNULL(@v_occupation) OR occupation member of(@v_occupation))
    AND (@v_annual_income_greater_than=0 OR @v_annual_income_greater_than<=annual_income)
    AND (ISNULL(@v_children_status) OR children_status member of(@v_children_status)) 
    AND (ISNULL(@v_mother_tongue) OR mother_tongue member of(@v_mother_tongue))
    AND (ISNULL(@v_religion) OR religion member of(@v_religion)) 
    AND (ISNULL(@v_caste) OR caste member of(@v_caste))
    AND (ISNULL(@v_Residential_status) OR residentialstatus member of(@v_Residential_status)) 
    AND (ISNULL(@v_manglik) OR manglik member of(@v_manglik)) 
    AND (@v_diet=0 OR @v_diet=diet)
    AND (@v_smoking=0 OR @v_smoking=smoking) 
    AND (@v_drinking=0 OR @v_drinking=drinking) 
    AND (@v_ready_to_settleAbroad=0 OR @v_ready_to_settleAbroad=readytosettleabroad) 
    AND (ISNULL(@v_challenged) OR challenged member of(@v_challenged)) 
    AND (@v_hiv=0 OR @v_hiv=hiv)'
    ,@v_iSUserPrefMatch,' LIMIT ',@v_limit1,  
    ') AS SB ');
    PREPARE stmt FROM @s_sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    SET v_json = @v_json1;
    if(JSON_LENGTH( @v_json1)) >0 Then
		SET v_out = JSON_LENGTH( @v_json1);
	else
		SET v_out = 0;
	end if;
	commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_isMobileRegistered` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_get_isMobileRegistered`(
	IN v_mobileno BIGINT UNSIGNED, 
	OUT v_out TINYINT,
	OUT v_msg varchar(500),
	OUT v_json json
)
BEGIN
	Declare currentSPname varchar(100) DEFAULT 'sp_get_isMobileRegistered';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
	START transaction;
    SET v_out = 1;
    SET v_msg="ok";
    SET v_json = null;
    SET @v_result=0;
    select a.userid into @v_result
    from tab_user_login a where CONCAT(a.isd_code,a.mobile) = v_mobileno;
    SET v_out = @v_result;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_isProfileExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`warm`@`localhost` PROCEDURE `sp_get_isProfileExist`(
	IN v_userid INT UNSIGNED, 
	OUT v_out TINYINT,
	OUT v_msg varchar(500),
	OUT v_json json
)
BEGIN
	Declare currentSPname varchar(100) DEFAULT 'sp_get_isProfileExist';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    SET v_out = 1;
    SET v_msg="ok";
	SET v_json = null;
    SET @v_result=0;
    select userid into @v_result
    from tab_user_profile where v_userid=userid;
    SET v_out = @v_result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_isUserAboutExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`warm`@`localhost` PROCEDURE `sp_get_isUserAboutExist`(
	IN v_userid INT UNSIGNED, 
	OUT v_out TINYINT,
	OUT v_msg varchar(500),
	OUT v_json json
)
BEGIN
	Declare currentSPname varchar(100) DEFAULT 'sp_get_isUserAboutExist';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    SET v_out = 1;
    SET v_msg="ok";
	SET v_json = null;
    SET @v_result=0;
    select userid into @v_result
    from tab_user_about where v_userid=userid;
    SET v_out = @v_result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_mandatoryMatchMaking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_get_mandatoryMatchMaking`(
	IN user1Profile_userid INT,
    IN v_maxUserid INT,
	IN v_limit INT,
    IN v_viceversaFlag boolean,
	OUT v_json JSON,
	OUT v_out INT,
	OUT v_msg VARCHAR(500)
)
BEGIN
    Declare currentSPname varchar(100) DEFAULT 'sp_get_mandatoryMatchMaking';
	DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2;
        SET v_json = null;
		GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
	DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        SET v_json = null;
		GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
    
	select b.marital_status,
	b.age_greater_than, b.age_less_than,
	b.height_greater_than, b.height_less_than,
	b.country,
	b.state,
	b.city,
	b.education,
	b.occupation,
	b.annual_income_greater_than,
	b.children_status,
	b.mother_tongue,
	b.religion,
	b.caste,
	b.Residential_status,
	b.manglik,
	b.diet,
	b.smoking,
	b.drinking,
	b.ready_to_settleAbroad,
	b.Challenged,
	b.HIV,
    b.mandatory_fields
	INTO 
	@v_marital_status,
	@v_age_greater_than, @v_age_less_than,
	@v_height_greater_than, @v_height_less_than,
	@v_country,
	@v_state,
	@v_city,
	@v_education,
	@v_occupation,
	@v_annual_income,
	@v_children_status,
	@v_mother_tongue,
	@v_religion,
	@v_caste,
	@v_residentialstatus,
	@v_manglik,
	@v_diet,
	@v_smoking,
	@v_drinking,
	@v_readytosettleabroad,
	@v_Challenged,
	@v_HIV,
    @v_mandatory_fields
	from tab_user_partnerPref b where b.userid=user1Profile_userid;
	
    SET @user1Profile_userid = user1Profile_userid;
    SET @v_limit1 = v_limit;
    SET @v_maxUserid1 = v_maxUserid;
    SET @v_mandatoryCols = '';
	
    Select `gender`,`marital_status`,`dob`,`height_cm`,`country`,`state`,`city`,`education`,`occupation`,`annual_income`,
	`children_status`,`mother_tongue`,`religion`,`caste`,`residentialstatus`,`manglik`,`diet`,`smoking`,`drinking`,
	`readytosettleabroad`,`challenged`,`hiv`
	into @user1Profile_gender,@user1Profile_marital_status,@user1Profile_dob ,@user1Profile_height_cm ,
    @user1Profile_country ,	@user1Profile_state ,@user1Profile_city ,@user1Profile_education ,@user1Profile_occupation ,
    @user1Profile_annual_income ,@user1Profile_children_status ,@user1Profile_mother_tongue ,@user1Profile_religion ,
    @user1Profile_caste ,@user1Profile_residentialstatus ,@user1Profile_manglik ,@user1Profile_diet ,
    @user1Profile_smoking ,	@user1Profile_drinking ,@user1Profile_readytosettleabroad ,@user1Profile_challenged ,
    @user1Profile_hiv from tab_user_profile where userid = user1Profile_userid; 
   
	if('height' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND ((@v_height_greater_than <=height_cm) AND (height_cm <= @v_height_less_than)) ');
    End if;
	if('country' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_country) OR country member of(@v_country)) ');
    End if;
	if('state' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_state) OR state member of(@v_state)) ');
    End if;
	if('city' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_city) OR city member of(@v_city)) ');
	End if;
	if('education' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_education) OR education member of(@v_education)) ');
    End if;
	if('occupation' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_occupation) OR occupation member of(@v_occupation))');
    End if;
	if('annual_income' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (@v_annual_income=0 OR @v_annual_income<=annual_income) ');
    End if;
	if('children_status' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_children_status) OR children_status member of(@v_children_status)) ');
    End if;
	if('mother_tongue' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_mother_tongue) OR mother_tongue member of(@v_mother_tongue)) ');
    End if;
	if('religion' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_religion) OR religion member of(@v_religion)) ');
    End if;
	if('caste' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_caste) OR caste member of(@v_caste)) ');
    End if;
	if('residentialstatus' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_Residential_status) OR residentialstatus member of(@v_Residential_status)) ');
    End if;
	if('manglik' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_manglik) OR manglik member of(@v_manglik)) ');
    End if;
	if('diet' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (@v_diet=0 OR @v_diet=diet) ');
    End if;
	if('smoking' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (@v_smoking=0 OR @v_smoking=smoking) ');
    End if;
	if('drinking' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (@v_drinking=0 OR @v_drinking=drinking) ');
    End if;
	if('readytosettleabroad' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (@v_ready_to_settleAbroad=0 OR @v_ready_to_settleAbroad=readytosettleabroad) ');
    End if;
	if('challenged' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_challenged) OR challenged member of(@v_challenged)) ');
    End if;
	if('hiv' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (@v_hiv=0 OR @v_hiv=hiv) ');
    End if;
    if(v_viceversaFlag) then
		SET @v_iSUserPrefMatch = ' AND (func_isUserPrefMatch(tab_user_profile.userid,@user1Profile_userid,@user1Profile_marital_status,
		@user1Profile_dob ,@user1Profile_height_cm ,@user1Profile_country ,	@user1Profile_state ,@user1Profile_city,
		@user1Profile_education,@user1Profile_occupation,@user1Profile_annual_income,@user1Profile_children_status,
		@user1Profile_mother_tongue,@user1Profile_religion,@user1Profile_caste,@user1Profile_residentialstatus,
		@user1Profile_manglik,@user1Profile_diet,@user1Profile_smoking,@user1Profile_drinking,
		@user1Profile_readytosettleabroad,@user1Profile_challenged,@user1Profile_hiv) = 1)';
	else
		SET @v_iSUserPrefMatch = '';
	end if;
    SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,@v_iSUserPrefMatch);
	select DATE_SUB(SYSDATE(), INTERVAL @v_age_greater_than YEAR), DATE_SUB(SYSDATE(), INTERVAL @v_age_less_than YEAR) into @v_dobLowLimit,@v_dobUpperLimit;
    SET @s_sql = CONCAT(
    'select json_arrayagg(json_object(''userid'',uid,''fullname'',fname,''photo'',pht,''row'',rw1,
    ''privacy_photo'',pp,''privacy_name'',pname,''privacy_contact'',pcontact)) into @v_json1 from
    (
    select tab_user_profile.userid as uid,fullname as fname,photo as pht,
    ROW_NUMBER() OVER (order by tab_user_profile.userid desc) rw1,
	privacy_show_photo as pp, privacy_show_contact as pcontact, privacy_show_name as pname
    from tab_user_profile  left join tab_user_packagePrivacy on
    tab_user_profile.userid = tab_user_packagePrivacy.userid
    where 
    tab_user_profile.userid<@v_maxUserid1 
    AND @user1Profile_userid <> tab_user_profile.userid 
    AND @user1Profile_gender <> gender
    AND (ISNULL(@v_marital_status) OR marital_status member of(@v_marital_status))
    AND (@v_dobUpperLimit<= dob AND dob <=@v_dobLowLimit) ',@v_mandatoryCols,
    ' LIMIT ',@v_limit1,
    ' ) AS SB ' );
    PREPARE stmt FROM @s_sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    SET v_json = @v_json1;
	if(JSON_LENGTH( @v_json1)) >0 Then
		SET v_out = JSON_LENGTH( @v_json1);
	else
		SET v_out = 0;
	end if;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_password` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_password`(
    IN input_email_or_phone VARCHAR(50),
    IN input_iso_code VARCHAR(2),
    OUT v_out INT,
	OUT v_msg varchar(500),
	OUT v_json json 
)
BEGIN
	DECLARE output_password varchar(100);
	IF (input_iso_code IS NULL OR input_iso_code = '') THEN
		SELECT password INTO output_password
		FROM tab_user_login
		WHERE emailid = input_email_or_phone;
        SET v_out=1;
        SET v_msg= output_password;
		SET v_json = null;
    ELSEIF (input_iso_code IS NOT NULL OR input_iso_code != '') THEN
		SELECT password INTO output_password
		FROM tab_user_login
		WHERE mobile = input_email_or_phone AND isd_code = input_iso_code;
        SET v_out=1;
        SET v_msg= output_password;
		SET v_json = null;
	ELSE
		SET v_out=-1;
        SET v_msg="no user found";
		SET v_json = null;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_strictFieldsMatchMaking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_get_strictFieldsMatchMaking`(
	IN user1Profile_userid INT,
    IN v_maxUserid INT,
	IN v_limit INT,
    IN v_viceversaFlag boolean,
    IN v_excludeUsers JSON,
	OUT v_out INT,
	OUT v_msg VARCHAR(500),
	OUT v_json JSON
)
BEGIN
    Declare currentSPname varchar(100) DEFAULT 'sp_get_strictFieldsMatchMaking';
	DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2;
        SET v_json = null;
		GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
	DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        SET v_json = null;
		GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
    
	select b.marital_status,
	b.age_greater_than, b.age_less_than,
	b.height_greater_than, b.height_less_than,
	b.country,
	b.state,
	b.city,
	b.education,
	b.occupation,
	b.annual_income_greater_than,
	b.children_status,
	b.mother_tongue,
	b.religion,
	b.caste,
	b.Residential_status,
	b.manglik,
	b.diet,
	b.smoking,
	b.drinking,
	b.ready_to_settleAbroad,
	b.Challenged,
	b.HIV,
    b.mandatory_fields
	INTO 
	@v_marital_status,
	@v_age_greater_than, @v_age_less_than,
	@v_height_greater_than, @v_height_less_than,
	@v_country,
	@v_state,
	@v_city,
	@v_education,
	@v_occupation,
	@v_annual_income,
	@v_children_status,
	@v_mother_tongue,
	@v_religion,
	@v_caste,
	@v_residentialstatus,
	@v_manglik,
	@v_diet,
	@v_smoking,
	@v_drinking,
	@v_readytosettleabroad,
	@v_Challenged,
	@v_HIV,
    @v_mandatory_fields
	from tab_user_partnerPref b where b.userid=user1Profile_userid;
	
    SET @user1Profile_userid = user1Profile_userid;
    SET @v_limit1 = v_limit;
    SET @v_maxUserid1 = v_maxUserid;
	if(@v_maxUserid1 = -1 ) then
		select max(userid)+1000 into @v_maxUserid1 from tab_user_profile;
    end if;
    SET @v_mandatoryCols = '';
	SET @v_excludeUsers = v_excludeUsers;
    Select `gender`,`marital_status`,`dob`,`height_cm`,`country`,`state`,`city`,`education`,`occupation`,`annual_income`,
	`children_status`,`mother_tongue`,`religion`,`caste`,`residentialstatus`,`manglik`,`diet`,`smoking`,`drinking`,
	`readytosettleabroad`,`challenged`,`hiv`
	into @user1Profile_gender,@user1Profile_marital_status,@user1Profile_dob ,@user1Profile_height_cm ,
    @user1Profile_country ,	@user1Profile_state ,@user1Profile_city ,@user1Profile_education ,@user1Profile_occupation ,
    @user1Profile_annual_income ,@user1Profile_children_status ,@user1Profile_mother_tongue ,@user1Profile_religion ,
    @user1Profile_caste ,@user1Profile_residentialstatus ,@user1Profile_manglik ,@user1Profile_diet ,
    @user1Profile_smoking ,	@user1Profile_drinking ,@user1Profile_readytosettleabroad ,@user1Profile_challenged ,
    @user1Profile_hiv from tab_user_profile where userid = user1Profile_userid; 
   
	if('height' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND ((@v_height_greater_than <=height_cm) AND (height_cm <= @v_height_less_than)) ');
    End if;
	if('country' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_country) OR country member of(@v_country)) ');
    End if;
	if('state' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_state) OR state member of(@v_state)) ');
    End if;
	if('city' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_city) OR city member of(@v_city)) ');
	End if;
	if('education' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_education) OR education member of(@v_education)) ');
    End if;
	if('occupation' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_occupation) OR occupation member of(@v_occupation))');
    End if;
	if('annual_income' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (@v_annual_income=0 OR @v_annual_income<=annual_income) ');
    End if;
	if('children_status' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_children_status) OR children_status member of(@v_children_status)) ');
    End if;
	if('mother_tongue' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_mother_tongue) OR mother_tongue member of(@v_mother_tongue)) ');
    End if;
	if('religion' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_religion) OR religion member of(@v_religion)) ');
    End if;
	if('caste' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_caste) OR caste member of(@v_caste)) ');
    End if;
	if('residentialstatus' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_Residential_status) OR residentialstatus member of(@v_Residential_status)) ');
    End if;
	if('manglik' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_manglik) OR manglik member of(@v_manglik)) ');
    End if;
	if('diet' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (@v_diet=0 OR @v_diet=diet) ');
    End if;
	if('smoking' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (@v_smoking=0 OR @v_smoking=smoking) ');
    End if;
	if('drinking' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (@v_drinking=0 OR @v_drinking=drinking) ');
    End if;
	if('readytosettleabroad' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (@v_ready_to_settleAbroad=0 OR @v_ready_to_settleAbroad=readytosettleabroad) ');
    End if;
	if('challenged' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_challenged) OR challenged member of(@v_challenged)) ');
    End if;
	if('hiv' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (@v_hiv=0 OR @v_hiv=hiv) ');
    End if;
    if(v_viceversaFlag) then
		SET @v_iSUserPrefMatch = ' AND (func_isUserPrefMatch(tab_user_profile.userid,@user1Profile_userid,@user1Profile_marital_status,
		@user1Profile_dob ,@user1Profile_height_cm ,@user1Profile_country ,	@user1Profile_state ,@user1Profile_city,
		@user1Profile_education,@user1Profile_occupation,@user1Profile_annual_income,@user1Profile_children_status,
		@user1Profile_mother_tongue,@user1Profile_religion,@user1Profile_caste,@user1Profile_residentialstatus,
		@user1Profile_manglik,@user1Profile_diet,@user1Profile_smoking,@user1Profile_drinking,
		@user1Profile_readytosettleabroad,@user1Profile_challenged,@user1Profile_hiv) = 1)';
	else
		SET @v_iSUserPrefMatch = '';
	end if;
    SET @s_score =CONCAT('
    ( (ISNULL(@v_marital_status) OR marital_status member of(@v_marital_status)) 
    + ( (@v_dobUpperLimit <= dob AND dob <= @v_dobLowLimit) )
    + ( ((@v_height_greater_than <=height_cm) AND (height_cm <= @v_height_less_than)) )
    + ( (ISNULL(@v_country) OR country member of(@v_country)) )
    + ( (ISNULL(@v_state) OR state member of(@v_state)) )
    + ( (ISNULL(@v_city) OR city member of(@v_city)) )
    + ( (ISNULL(@v_education) OR education member of(@v_education)) )
    + ( (ISNULL(@v_occupation) OR occupation member of(@v_occupation)) )
    + ( (@v_annual_income_greater_than=0 OR @v_annual_income_greater_than<=annual_income)  )
    + ( (ISNULL(@v_children_status) OR children_status member of(@v_children_status)) )
    + ( (ISNULL(@v_mother_tongue) OR mother_tongue member of(@v_mother_tongue)) )
    + ( (ISNULL(@v_religion) OR religion member of(@v_religion)) )
    + ( (ISNULL(@v_caste) OR caste member of(@v_caste))  )
    + ( (ISNULL(@v_Residential_status) OR residentialstatus member of(@v_Residential_status)) )
    + ( (ISNULL(@v_manglik) OR manglik member of(@v_manglik)) )
    + ( (@v_diet=0 OR @v_diet=diet)  )
    + ( (@v_smoking=0 OR @v_smoking=smoking) )
    + ( (@v_drinking=0 OR @v_drinking=drinking) )
    + ( (@v_ready_to_settleAbroad=0 OR @v_ready_to_settleAbroad=readytosettleabroad) )
    + ( (ISNULL(@v_challenged) OR challenged member of(@v_challenged)) )
    + ( (@v_hiv=0 OR @v_hiv=hiv) ) )'
    );
    SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,@v_iSUserPrefMatch);
	select DATE_SUB(SYSDATE(), INTERVAL @v_age_greater_than YEAR), DATE_SUB(SYSDATE(), INTERVAL @v_age_less_than YEAR) into @v_dobLowLimit,@v_dobUpperLimit;
    SET @s_sql = CONCAT(
    'select json_arrayagg(json_object(''userid'',uid,''fullname'',fname,''photo'',pht,''row'',rw1,
    ''privacy_photo'',pp,''privacy_name'',pname,''privacy_contact'',pcontact,''matching score'',pscore)) into @v_json1 from
    (
    select tab_user_profile.userid as uid,fullname as fname,photo as pht,
    ROW_NUMBER() OVER (order by tab_user_profile.userid desc) rw1,
	privacy_show_photo as pp, privacy_show_contact as pcontact, privacy_show_name as pname,'
    ,@s_score,' as pscore 
    from tab_user_profile  left join tab_user_packagePrivacy on
    tab_user_profile.userid = tab_user_packagePrivacy.userid
    where 
    tab_user_profile.userid<@v_maxUserid1 
    AND @user1Profile_userid <> tab_user_profile.userid
    AND (tab_user_profile.userid member of(@v_excludeUsers) <> 1)
    AND @user1Profile_gender <> gender
    AND (ISNULL(@v_marital_status) OR marital_status member of(@v_marital_status))
    AND (@v_dobUpperLimit<= dob AND dob <=@v_dobLowLimit) ',@v_mandatoryCols,
    ' LIMIT ',@v_limit1,
    ' ) AS SB ' );
    PREPARE stmt FROM @s_sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    SET v_json = @v_json1;
	if(JSON_LENGTH( @v_json1)) >0 Then
		SET v_out = JSON_LENGTH( @v_json1);
	else
		SET v_out = 0;
	end if;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_userAbout` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_get_userAbout`(
IN v_userid INT,
OUT v_out INT,
OUT v_msg varchar(500),
OUT v_json json
)
BEGIN 
	Declare currentSPname varchar(100) DEFAULT 'sp_get_userAbout';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
    SET v_msg=null;
    select json_object(
    'userid',userid,
	'profile_for',profile_for,
	'basic_intro',basic_intro,
	'about_family',about_family,
	'about_career',about_career,
	'about_education',about_education
    ) into v_json from tab_user_about where v_userid = userid;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_userContact` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_get_userContact`(
	IN v_userid INT,
	OUT v_out INT,
	OUT v_msg varchar(500),
	OUT v_json json
)
BEGIN 
	Declare currentSPname varchar(100) DEFAULT 'sp_get_userContact';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
    SET v_json = null;
    select json_object('emailid',emailid,'mobile',mobile,'emailid_verification',emailid_verification) into v_json from tab_user_login where v_userid = userid;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_userEmailAuth` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_get_userEmailAuth`(
	IN v_emailid varchar(100),
	IN v_pwd boolean,
	OUT v_out INT,
	OUT v_msg varchar(500),
	OUT v_json json 
)
BEGIN 
 	Declare currentSPname varchar(100) DEFAULT 'sp_get_userEmailAuth';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 0;
    SET v_msg="ok";
	SET v_json = null;
    SET @pwd = null;
    select userid,password into @userid,@pwd from tab_user_login where v_emailid = emailid ;
    if (v_pwd=true) Then 
		SET v_out=1;
        call sp_get_userPackagePrivacy(@userid,v_out,v_msg,v_json);
	else 
		SET v_out = 0; 
	end if;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_userFamilyAbout` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_get_userFamilyAbout`(
	IN v_userid INT,
	OUT v_out INT,
	OUT v_msg varchar(500),
    OUT v_json json
)
BEGIN 
 	Declare currentSPname varchar(100) DEFAULT 'sp_get_userFamilyAbout';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
	START transaction;
    SET v_out = 1;
    SET v_msg="ok";
    SET v_json = null;
    select json_object(
	'userid',userid,
	'profile_handlername',	profile_handlername,
	'Mother',	Mother,
	'Father',	Father,
	'Sister',	Sister,
	'Brother',	Brother,
	'Gothra',	Gothra,
	'Family_Status',	Family_Status,
	'Family_Income',	Family_Income,
	'Family_Type',	Family_Type,
	'family_native_country',family_native_country,
    'family_native_state',family_native_state,
    'family_native_city',family_native_city,
	'living_with_parents', living_with_parents
    ) into v_json from tab_user_familyAbout where v_userid = userid;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_userLifestyle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_get_userLifestyle`(
IN v_userid INT,
OUT v_out INT,
OUT v_msg varchar(500),
OUT v_json json
)
BEGIN 
	Declare currentSPname varchar(100) DEFAULT 'sp_get_userLifestyle';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
    SET v_json = null;
    select json_object(
	'userid',	userid,
	'love_pets',	love_pets,
	'Owns_house',	Owns_house,
	'Owns_car',	Owns_car,
	'blood_group',	blood_group,
	'Thalassemia',	Thalassemia,
	'religious_belief', religious_belief
    ) into v_json from tab_user_lifestyle where v_userid = userid;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_userMobileAuth` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_get_userMobileAuth`(
	IN v_isdCode INT,
	IN v_mobile BIGINT UNSIGNED,
	IN v_pwd boolean,
	OUT v_out INT,
	OUT v_msg varchar(500),
	OUT v_json json
)
BEGIN 
	Declare currentSPname varchar(100) DEFAULT 'sp_get_userMobileAuth';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 0;
    SET v_msg="ok";
	SET v_json = null;
    SET @pwd = null;
    select userid,password into @userid,@pwd from tab_user_login where v_mobile = mobile AND v_isdCode = isd_code;
    if (v_pwd=true) Then 
		SET v_out=1;
        call sp_get_userPackagePrivacy(@userid,v_out,v_msg,v_json);
	else 
		SET v_out = 0; 
	end if;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_userPackagePrivacy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_get_userPackagePrivacy`(
	IN v_userid INT,
	OUT v_out INT,
	OUT v_msg varchar(500),
    OUT v_json json
)
BEGIN
	Declare currentSPname varchar(100) DEFAULT 'sp_get_userPackagePrivacy';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
    SET v_json = null;
    select json_object(
    'userid',	userid,
	'user_RM_ID',	user_RM_ID,
    'user_status', user_status,
	'package_id',	package_id,
	'package_enddate',	package_enddate,
	'privacy_show_photo',	privacy_show_photo,
	'privacy_show_contact',	privacy_show_contact,
	'privacy_show_name',	privacy_show_name
    ) into v_json from tab_user_packagePrivacy where v_userid = userid;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_userPartnerPref` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_get_userPartnerPref`(
	IN v_userid INT,
	OUT v_out INT,
	OUT v_msg varchar(500),
    OUT v_json json
)
BEGIN 
  	Declare currentSPname varchar(100) DEFAULT 'sp_get_userPartnerPref';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
    SET v_json = null;
    select json_object(
	'userid',	userid,
	'age_greater_than',	age_greater_than,
	'age_less_than',	age_less_than,
	'height_greater_than',	height_greater_than,
	'height_less_than',	height_less_than,
	'country',	country,
	'state',	state,
	'city',	city,
	'education',	education,
	'occupation',	occupation,
	'annual_income_greater_than',	annual_income_greater_than,
	'marital_status',	marital_status,
	'religion',	religion,
	'mother_tongue',	mother_tongue,
	'caste',	caste,
	'Residential_status',	Residential_status,
	'manglik',	manglik,
	'diet',	diet,
	'smoking',	smoking,
	'drinking',	drinking,
	'ready_to_settleAbroad',	ready_to_settleAbroad,
	'Challenged',	Challenged,
	'children_status',	children_status,
	'HIV',	HIV,
	'horoscope_match',	horoscope_match,
	'mandatory_fields',	mandatory_fields
    ) into v_json from tab_user_partnerPref where v_userid = userid;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_userProfile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_get_userProfile`(
	IN v_userid INT,
	OUT v_out INT,
	OUT v_msg varchar(500),
	OUT v_json json
)
BEGIN 
	Declare currentSPname varchar(100) DEFAULT 'sp_get_userProfile';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
    SET v_json = null;
    select json_object(
	'userid',	userid,
	'gender',	gender,
	'fullname',	fullname,
	'marital_status',	marital_status,
	'kyc_status',	kyc_status,
	'dob',	dob,
	'height_cm',	height_cm,
	'country',	country,
	'state',	state,
	'city',	city,
	'education',	education,
	'occupation',	occupation,
	'annual_income',	annual_income,
	'children_status',	children_status,
	'mother_tongue',	mother_tongue,
	'religion',	religion,
	'caste',	caste,
	'residentialstatus',	residentialstatus,
	'manglik',	manglik,
	'diet',	diet,
	'smoking',	smoking,
	'drinking',	drinking,
	'readytosettleabroad',	readytosettleabroad,
	'challenged',	challenged,
	'hiv',	hiv,
	'profile_last_updated_date',	profile_last_updated_date,
	'photo',	photo,
    'college', college
    ) into v_json from tab_user_profile where v_userid = userid;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_userShortlistStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_get_userShortlistStatus`(
    IN v_userid INT,
    IN v_useridShortlist INT,
	OUT v_out INT,
	OUT v_msg varchar(500),
	OUT v_json json
)
BEGIN 
	Declare currentSPname varchar(100) DEFAULT 'sp_get_userShortlistStatus';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    SET v_out = 1;
	SET v_json = null;
	START transaction;
    select shortlist_status into @status1 from tab_user_shortlist where userid=v_userid and 
    userid_shortlist= v_useridShortlist;
    if(@status1='Y') then
		SET v_out = 1;
	else
		SET v_out = 0;
	end if;
    SET v_msg ='ok';
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_userWAstate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_get_userWAstate`(
	IN v_mobileno BIGINT UNSIGNED, 
	OUT v_userid INT,
	OUT v_profileStatus INT,
	OUT v_menuNumber INT,
	OUT v_question varchar(50),
	OUT v_msg varchar(500),
	OUT v_json json
)
BEGIN
	Declare currentSPname varchar(100) DEFAULT 'sp_get_userWAstate';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_menuNumber = -2;
		SET v_question = "";
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_menuNumber = -3; 
		SET v_question = "";
		GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
	END;
    SET v_menuNumber = 0;
    SET v_userid = 0;
    SET v_msg="ok";
    SET v_json = null;
    SET v_question = "";
    SET @v_result=0;
    call sp_get_isMobileRegistered(v_mobileno,v_userid,v_msg,v_json);
    call sp_get_isProfileExist(v_userid,v_profileStatus,v_msg,v_json);
    select menu_number,question into v_menuNumber,v_question from tab_user_WAState where isd_mobile = v_mobileno;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_onPage1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_onPage1`(
    IN v_actionType CHAR,
	IN v_userid INT,
    IN v_profile_for tinyint,
	IN v_gender char,
	IN v_fullname varchar(300),
	IN v_marital_status TINYINT,
	IN v_dob datetime,
	IN v_height_cm INT,
	IN v_children_status TINYINT,
	IN v_mother_tongue TINYINT,
	IN v_religion TINYINT,
	IN v_caste INT,
	IN v_manglik TINYINT,
	IN v_challenged TINYINT,
	IN v_hiv TINYINT,
	IN v_photo varchar(1000),
    IN v_profile_handlername varchar(100), 
	OUT v_out INT,
	OUT v_msg varchar(500),
    OUT v_json JSON
)
BEGIN
	Declare currentSPname varchar(100) DEFAULT 'sp_onPage1';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
	SET v_json = null;	
    if(v_actionType='c') Then
		call sp_create_userAbout(v_userid,v_profile_for,null,null,null,null,v_out,v_msg,v_json);
		if(v_out=1)	Then
			call sp_create_userProfile(v_userid,v_gender,v_fullname,v_marital_status,null,v_dob,
			v_height_cm,null,null,null,null,null,null,v_children_status,
            v_mother_tongue,v_religion,v_caste,null,v_manglik,null,null,null,
            null,v_challenged,v_hiv,v_photo,null,v_out,v_msg,v_json);
			if(v_out=1)	Then
				call sp_update_userField(v_userid,'user_status','1',v_out,v_msg,v_json);
			end if;
		end if;
		if(v_out=1)	Then
			call sp_create_userFamilyAbout(v_userid ,v_profile_handlername,null,null ,null ,null ,
			null,null ,null ,null,null,null,null,null,v_out ,v_msg,v_json);
		end if;
	ELSEIF(v_actionType ='v') Then
		   select json_object(
			'gender',	a.gender,
		'fullname',	a.fullname,
		'marital_status',	a.marital_status,
		'dob',	a.dob,
		'height_cm',	a.height_cm,
		'children_status',	a.children_status,
		'mother_tongue',	a.mother_tongue,
		'religion',	a.religion,
		'caste',	a.caste,
		'manglik',	a.manglik,
		'challenged',	a.challenged,
		'hiv',	a.hiv,
		'photo',	a.photo,
		'profile_handlername',b.profile_handlername,
		'profile_for',c.profile_for
		) into v_json from tab_user_profile a,tab_user_familyAbout b, tab_user_about c where v_userid = a.userid AND v_userid=b.userid AND v_userid=c.userid;
    ELSEIF (v_actionType ='u') Then
 		update tab_user_profile set gender =v_gender,marital_status =v_marital_status,
        fullname = v_fullname,dob = v_dob,height_cm = v_height_cm, children_status = v_children_status,
        mother_tongue = v_mother_tongue,religion = v_religion,caste = v_caste,
        manglik = v_manglik,challenged = v_challenged,hiv = v_hiv,photo = v_photo where v_userid=userid;
        if (v_profile_for <> "") then
			update tab_user_about set profile_for = v_profile_for where v_userid = userid;
        end if;
		if (v_profile_handlername <> "") then
			update tab_user_familyAbout set profile_handlername = v_profile_handlername where v_userid = userid;
        end if;
    END IF;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_onPage2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_onPage2`(
    IN v_actionType CHAR,
	IN v_userid INT,
    IN v_country INT,
	IN v_state INT,
	IN v_city INT,
	IN v_education INT,
	IN v_occupation TINYINT,
	IN v_annual_income TINYINT,
	IN v_residentialstatus TINYINT,
	IN v_readytosettleabroad TINYINT,
	IN v_college varchar(250),
	OUT v_out INT,
	OUT v_msg varchar(500),
	OUT v_json JSON
)
BEGIN
	Declare currentSPname varchar(100) DEFAULT 'sp_onPage2';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
    SET v_json = null;
    if(v_actionType='c' or v_actionType='u' ) Then
		update tab_user_profile SET country = v_country,state = v_state,city=v_city,education=v_education,
        occupation=v_occupation,annual_income=v_annual_income,residentialstatus=v_residentialstatus,
        readytosettleabroad=v_readytosettleabroad,College=v_college where userid=v_userid;
         if(v_actionType='c') Then
			call sp_update_userField(v_userid,'user_status','2',v_out,v_msg,v_json);
        end if;
	ELSEIF(v_actionType ='v') Then
		   select json_object(
			'country',a.country,
			'state',a.state,  
			'city',a.city,
			'education',a.education,  
			'occupation',a.occupation,
			'annual_income',a.annual_income,
			'residentialstatus',a.residentialstatus,
			'readytosettleabroad',a.readytosettleabroad,
			'College',a.College
		) into v_json from tab_user_profile a where v_userid = a.userid;
		End IF;
	commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_onPage3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_onPage3`(
    IN v_actionType CHAR,
	IN v_userid INT,
	IN v_diet TINYINT,
	IN v_smoking TINYINT,
	IN v_drinking TINYINT,
    IN v_love_pets tinyint,
	IN v_Owns_house tinyint,
	IN v_Owns_car tinyint,
	IN v_blood_group tinyint,
	IN v_Thalassemia tinyint,
	IN v_religious_belief varchar(45),
	OUT v_out INT,
	OUT v_msg varchar(500),
    OUT v_json JSON
)
BEGIN
	Declare currentSPname varchar(100) DEFAULT 'sp_onPage3';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
    SET v_json = null;
    if(v_actionType='c') Then
		update tab_user_profile SET diet = v_diet,smoking = v_smoking,drinking=v_drinking where
        v_userid=userid;
        call sp_create_userLifestyle(v_userid,v_love_pets,v_Owns_house,v_Owns_car,v_blood_group,
		v_Thalassemia,v_religious_belief,v_out,v_msg,v_json);
		call sp_update_userField(v_userid,'user_status','3',v_out,v_msg,v_json);
	ELSEIF(v_actionType ='v') Then
		   select json_object(
			'diet',a.diet,
			'smoking',a.smoking,  
			'drinking',a.drinking,
			'love_pets',b.love_pets,  
			'Owns_house',b.Owns_house,
			'Owns_car',b.Owns_car,
			'blood_group',b.blood_group,
			'Thalassemia',b.Thalassemia,
			'religious_belief',b.religious_belief
		) into v_json from tab_user_profile a,tab_user_lifestyle b where v_userid = a.userid and v_userid=b.userid;
	ELSEIF(v_actionType ='u') Then
		update tab_user_profile SET diet = v_diet,smoking = v_smoking,drinking=v_drinking where
        v_userid=userid;
        update tab_user_lifestyle SET love_pets = v_love_pets,Owns_house=v_Owns_house,
        Owns_car = v_Owns_car,blood_group= v_blood_group,Thalassemia=v_Thalassemia,
        religious_belief=v_religious_belief where v_userid=userid;
	End IF;
	commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_onPage4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_onPage4`(
    IN v_actionType CHAR,
	IN v_userid INT,
	IN v_Mother tinyint,
	IN v_Father tinyint,
	IN v_Sister tinyint,
	IN v_Brother tinyint,
	IN v_Gothra varchar(100),
	IN v_Family_Status TINYINT,
	IN v_Family_Income TINYINT,
	IN v_Family_Type TINYINT,
	IN v_family_native_country int,
	IN v_family_native_state int,
	IN v_family_native_city int,
	IN v_living_with_parents TINYINT,
	OUT v_out INT,
	OUT v_msg varchar(500),
	OUT v_json JSON
)
BEGIN
	Declare currentSPname varchar(100) DEFAULT 'sp_onPage4';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
  	SET v_msg='ok';
    SET v_json = null;
    if(v_actionType='c' OR v_actionType='u' ) Then
		update tab_user_familyAbout SET Mother = v_Mother,Father = v_Father,Sister=v_Sister,
        Brother = v_Brother,Gothra = v_Gothra,Family_Status = v_Family_Status,
        Family_Income = v_Family_Income,Family_Type = v_Family_Type,family_native_country = v_family_native_country,
        family_native_state = v_family_native_state,family_native_city = v_family_native_city,
        living_with_parents = v_living_with_parents
        where v_userid=userid;
		if(v_actionType='c') Then
			call sp_update_userField(v_userid,'user_status','4',v_out,v_msg,v_json);
        end if;
        if (ROW_COUNT() = 0) Then
			SET v_msg=CONCAT(currentSPname,': User ID ', v_userid,' does not exist');
			SET v_out = -1;
		End IF;
 	ELSEIF(v_actionType ='v') Then
		   select json_object(
			'Mother',b.Mother,
			'Father',b.Father,  
			'Sister',b.Sister,
			'Brother',b.Brother,  
			'Gothra',b.Gothra,
			'Family_Status',b.Family_Status,
			'Family_Income',b.Family_Income,
			'Family_Type',b.Family_Type,
			'family_native_country',b.family_native_country,
            'family_native_state',b.family_native_state,
            'family_native_city',b.family_native_city,
            'living_with_parents',b.living_with_parents) 
            into v_json from tab_user_familyAbout b where v_userid=b.userid;
	End IF;
	commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_onPage5` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_onPage5`(
    IN v_actionType CHAR,
	IN v_userid INT,
    IN v_about_career varchar(500),
	IN v_about_family varchar(1000),
	IN v_about_education varchar(500),
	IN v_basic_intro varchar(500),
	OUT v_out INT,
	OUT v_msg varchar(500),
    OUT v_json JSON
)
BEGIN
	Declare currentSPname varchar(100) DEFAULT 'sp_onPage5';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
  	SET v_msg='ok';
    SET v_json = null;
    if(v_actionType='c' OR v_actionType='u') Then
		 update tab_user_about set about_career=v_about_career,about_education=v_about_education,
         about_family=v_about_family,basic_intro=v_basic_intro where v_userid=userid;
		if (ROW_COUNT() = 0) Then
			SET v_msg=CONCAT(currentSPname,': User ID ', v_userid,' does not exist');
			SET v_out = -1;
		else
			if(v_actionType='c') Then
				call sp_update_userField(v_userid,'user_status','5',v_out,v_msg,v_json);
			end if;
		end if;
   	ELSEIF(v_actionType ='v') Then
			select json_object('basic_intro',b.basic_intro,'about_family',b.about_family,  
			'about_career',b.about_career,'about_education',b.about_education) 
            into v_json from tab_user_about b where v_userid=b.userid;
	End IF;
	commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_onPagePartnerPref` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_onPagePartnerPref`(
	IN v_actionType char,
	IN v_userid INT,
	IN v_age_greater_than TINYINT UNSIGNED,
	IN v_age_less_than TINYINT UNSIGNED,
	IN v_height_greater_than TINYINT UNSIGNED,
	IN v_height_less_than TINYINT UNSIGNED,
	IN v_country json,
	IN v_state json,
	IN v_city json, 
	IN v_education json,
	IN v_occupation json,
	IN v_annual_income_greater_than TINYINT UNSIGNED,
	IN v_marital_status json,
	IN v_religion json,
	IN v_mother_tongue json,
	IN v_caste json,
	IN v_Residential_status json,
	IN v_manglik json,
	IN v_diet TINYINT,
	IN v_smoking TINYINT,
	IN v_drinking TINYINT,
	IN v_ready_to_settleAbroad TINYINT,
	IN v_Challenged json,
	IN v_children_status json,
	IN v_HIV TINYINT,
	IN v_horoscope_match INT,
	IN v_mandatory_fields json,
	OUT v_out INT,
	OUT v_msg varchar(500),
	OUT v_json json
)
BEGIN  
	Declare currentSPname varchar(100) DEFAULT 'sp_onPagePartnerPref';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
	SET v_json = null;
	if(v_actionType='c') Then 
		INSERT INTO `royalmatrimonial`.`tab_user_partnerPref`(
		`userid`,
		`age_greater_than`,
		`age_less_than`,
		`height_greater_than`,
		`height_less_than`,
		`country`,
		`state`,
		`city`,
		`education`,
		`occupation`,
		`annual_income_greater_than`,
		`marital_status`,
		`religion`,
		`mother_tongue`,
		`caste`,
		`Residential_status`,
		`manglik`,
		`diet`,
		`smoking`,
		`drinking`,
		`ready_to_settleAbroad`,
		`Challenged`,
		`children_status`,
		`HIV`,
		`horoscope_match`,
		`mandatory_fields`)
		Select userid,v_age_greater_than,v_age_less_than,v_height_greater_than,v_height_less_than,v_country,v_state,v_city,v_education,v_occupation,v_annual_income_greater_than,v_marital_status,v_religion,v_mother_tongue,v_caste,v_Residential_status,v_manglik,v_diet,v_smoking,v_drinking,v_ready_to_settleAbroad,v_Challenged,v_children_status,v_HIV,v_horoscope_match,v_mandatory_fields
		from tab_user_login 
		where v_userid=userid; 
		call sp_update_userField(v_userid,'user_status','P',v_out,v_msg,v_json);
		if (ROW_COUNT() = 0) Then
			SET v_msg=CONCAT(currentSPname,': User ID ', v_userid,' does not exist');
			SET v_out = -1;
		End IF;
	elseif (v_actionType='u') Then 
		UPDATE `tab_user_partnerPref` SET
			userid = v_userid,
			age_greater_than= v_age_greater_than,
			age_less_than = v_age_less_than,
			height_greater_than = v_height_greater_than,
			height_less_than = v_height_less_than,
			country = v_country,
			state = v_state,
			city= v_city,
			education= v_education,
			occupation= v_occupation,
			annual_income_greater_than = v_annual_income_greater_than,
			marital_status= v_marital_status,
			religion= v_religion,
			mother_tongue= v_mother_tongue,
			caste= v_caste,
			Residential_status= v_Residential_status,
			manglik= v_manglik,
			diet= v_diet,
			smoking= v_smoking,
			drinking= v_drinking,
			ready_to_settleAbroad= v_ready_to_settleAbroad,
			Challenged= v_Challenged,
			children_status= v_children_status,
			HIV= v_HIV,
			horoscope_match= v_horoscope_match,
			mandatory_fields= v_mandatory_fields
		where v_userid=userid; 
		if (ROW_COUNT() = 0) Then
			SET v_msg=CONCAT(currentSPname,': User ID ', v_userid,' does not exist');
			SET v_out = -1;
		End IF;
	elseif (v_actionType='v') Then
		select json_object(
		'age_greater_than',	a.age_greater_than,
		'age_less_than',	a.age_less_than,
		'height_greater_than',	a.height_greater_than,
		'height_less_than',	a.height_less_than,
		'country',	a.country,
		'city',	a.city,
		'state',	a.state,
		'education',	a.education,
		'occupation',	a.occupation,
		'annual_income_greater_than', a.annual_income_greater_than,
		'marital_status', a.marital_status,
		'religion',	a.religion,
		'mother_tongue', a.mother_tongue,
		'Residential_status',a.Residential_status,
		'manglik',a.manglik,
		'diet',a.diet,
		'smoking',a.smoking,
		'drinking',a.drinking,
		'ready_to_settleAbroad',a.ready_to_settleAbroad,
		'Challenged',a.Challenged,
		'children_status',a.children_status,
		'HIV',a.HIV,
		'horoscope_match',a.horoscope_match,
		'mandatory_fields',a.mandatory_fields
		) into v_json from tab_user_partnerPref a where v_userid = a.userid;
	End IF;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_userShortlist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_set_userShortlist`(
    IN v_userid INT,
    IN v_useridShortlist INT,
    IN v_status char, -- Y active shortlist ; N remove shortlist
	OUT v_out INT,
	OUT v_msg varchar(500),
	OUT v_json json
)
BEGIN 
	Declare currentSPname varchar(100) DEFAULT 'sp_set_userShortlist';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    SET v_out = -1;
	SET v_json = null;
	START transaction;
    if(v_userid=v_useridShortlist) Then
		SET v_out = -4;
        SET v_msg = 'Userid and shortlist userid cannot be same';
	else
		call sp_get_userShortlistStatus(v_userid,v_useridShortlist,v_out,v_msg,v_json);
		if(v_out<0) Then
			INSERT INTO `tab_user_shortlist` (`userid`,`userid_shortlist`,`shortlist_status`) VALUES (v_userid,v_useridShortlist,v_status); 
		ELSE
			Update `tab_user_shortlist` set shortlist_status = v_status where userid = v_userid and userid_shortlist=v_useridShortlist;
		END IF;
		SET v_out =1;
		SET v_msg ='ok';
	end if;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_userWAstate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_set_userWAstate`(
    IN v_isdMobile BIGINT UNSIGNED,
    IN v_menuNumber INT,
    IN v_question varchar(50),
	OUT v_out INT,
	OUT v_msg varchar(500),
	OUT v_json json
)
BEGIN 
	Declare currentSPname varchar(100) DEFAULT 'sp_set_userWAstate';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    SET v_out = -1;
	SET v_json = null;
	START transaction;
    call sp_get_userWAstate(v_isdMobile,@userid,@profilestatus,@menuNumber,@question,@msg,v_json);
		if(@menuNumber<1) Then
			INSERT INTO `tab_user_WAState` (`isd_mobile`,`menu_number`,`question`) VALUES (v_isdMobile,v_menuNumber,v_question);
		ELSE
			Update `tab_user_WAState` set menu_number = v_menuNumber, question=v_question where isd_mobile = v_isdMobile;
		END IF;
	SET v_out =1;
	SET v_msg ='ok';
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tryMatchmaking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_tryMatchmaking`(
	IN user1Profile_userid INT,
    IN v_maxUserid INT,
	IN v_limit INT,
    IN v_viceversaFlag boolean,
    IN v_excludeUsers JSON,
	OUT v_json JSON,
	OUT v_out INT,
	OUT v_msg VARCHAR(500)
)
BEGIN
    Declare currentSPname varchar(100) DEFAULT 'sp_tryMatchmaking';
	DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2;
        SET v_json = null;
		GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
	DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        SET v_json = null;
		GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
    
	select b.marital_status,
	b.age_greater_than, b.age_less_than,
	b.height_greater_than, b.height_less_than,
	b.country,
	b.state,
	b.city,
	b.education,
	b.occupation,
	b.annual_income_greater_than,
	b.children_status,
	b.mother_tongue,
	b.religion,
	b.caste,
	b.Residential_status,
	b.manglik,
	b.diet,
	b.smoking,
	b.drinking,
	b.ready_to_settleAbroad,
	b.Challenged,
	b.HIV,
    b.mandatory_fields
	INTO 
	@v_marital_status,
	@v_age_greater_than, @v_age_less_than,
	@v_height_greater_than, @v_height_less_than,
	@v_country,
	@v_state,
	@v_city,
	@v_education,
	@v_occupation,
	@v_annual_income,
	@v_children_status,
	@v_mother_tongue,
	@v_religion,
	@v_caste,
	@v_residentialstatus,
	@v_manglik,
	@v_diet,
	@v_smoking,
	@v_drinking,
	@v_readytosettleabroad,
	@v_Challenged,
	@v_HIV,
    @v_mandatory_fields
	from tab_user_partnerPref b where b.userid=user1Profile_userid;
	
    SET @user1Profile_userid = user1Profile_userid;
    SET @v_limit1 = v_limit;
    SET @v_maxUserid1 = v_maxUserid;
	if(@v_maxUserid1 = -1 ) then
		select max(userid)+1000 into @v_maxUserid1 from tab_user_profile;
    end if;
    SET @v_mandatoryCols = '';
	SET @v_excludeUsers = v_excludeUsers;
    Select `gender`,`marital_status`,`dob`,`height_cm`,`country`,`state`,`city`,`education`,`occupation`,`annual_income`,
	`children_status`,`mother_tongue`,`religion`,`caste`,`residentialstatus`,`manglik`,`diet`,`smoking`,`drinking`,
	`readytosettleabroad`,`challenged`,`hiv`
	into @user1Profile_gender,@user1Profile_marital_status,@user1Profile_dob ,@user1Profile_height_cm ,
    @user1Profile_country ,	@user1Profile_state ,@user1Profile_city ,@user1Profile_education ,@user1Profile_occupation ,
    @user1Profile_annual_income ,@user1Profile_children_status ,@user1Profile_mother_tongue ,@user1Profile_religion ,
    @user1Profile_caste ,@user1Profile_residentialstatus ,@user1Profile_manglik ,@user1Profile_diet ,
    @user1Profile_smoking ,	@user1Profile_drinking ,@user1Profile_readytosettleabroad ,@user1Profile_challenged ,
    @user1Profile_hiv from tab_user_profile where userid = user1Profile_userid; 
   
	if('height' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND ((@v_height_greater_than <=height_cm) AND (height_cm <= @v_height_less_than)) ');
    End if;
	if('country' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_country) OR country member of(@v_country)) ');
    End if;
	if('state' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_state) OR state member of(@v_state)) ');
    End if;
	if('city' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_city) OR city member of(@v_city)) ');
	End if;
	if('education' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_education) OR education member of(@v_education)) ');
    End if;
	if('occupation' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_occupation) OR occupation member of(@v_occupation))');
    End if;
	if('annual_income' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (@v_annual_income=0 OR @v_annual_income<=annual_income) ');
    End if;
	if('children_status' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_children_status) OR children_status member of(@v_children_status)) ');
    End if;
	if('mother_tongue' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_mother_tongue) OR mother_tongue member of(@v_mother_tongue)) ');
    End if;
	if('religion' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_religion) OR religion member of(@v_religion)) ');
    End if;
	if('caste' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_caste) OR caste member of(@v_caste)) ');
    End if;
	if('residentialstatus' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_Residential_status) OR residentialstatus member of(@v_Residential_status)) ');
    End if;
	if('manglik' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_manglik) OR manglik member of(@v_manglik)) ');
    End if;
	if('diet' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (@v_diet=0 OR @v_diet=diet) ');
    End if;
	if('smoking' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (@v_smoking=0 OR @v_smoking=smoking) ');
    End if;
	if('drinking' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (@v_drinking=0 OR @v_drinking=drinking) ');
    End if;
	if('readytosettleabroad' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (@v_ready_to_settleAbroad=0 OR @v_ready_to_settleAbroad=readytosettleabroad) ');
    End if;
	if('challenged' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (ISNULL(@v_challenged) OR challenged member of(@v_challenged)) ');
    End if;
	if('hiv' member of(@v_mandatory_fields)) Then
		SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,' AND (@v_hiv=0 OR @v_hiv=hiv) ');
    End if;
    if(v_viceversaFlag) then
		SET @v_iSUserPrefMatch = ' AND (func_isUserPrefMatch(tab_user_profile.userid,@user1Profile_userid,@user1Profile_marital_status,
		@user1Profile_dob ,@user1Profile_height_cm ,@user1Profile_country ,	@user1Profile_state ,@user1Profile_city,
		@user1Profile_education,@user1Profile_occupation,@user1Profile_annual_income,@user1Profile_children_status,
		@user1Profile_mother_tongue,@user1Profile_religion,@user1Profile_caste,@user1Profile_residentialstatus,
		@user1Profile_manglik,@user1Profile_diet,@user1Profile_smoking,@user1Profile_drinking,
		@user1Profile_readytosettleabroad,@user1Profile_challenged,@user1Profile_hiv) = 1)';
	else
		SET @v_iSUserPrefMatch = '';
	end if;
    SET @s_score =CONCAT('
    ( (ISNULL(@v_marital_status) OR marital_status member of(@v_marital_status)) 
    + ( (@v_dobUpperLimit <= dob AND dob <= @v_dobLowLimit) )
    + ( ((@v_height_greater_than <=height_cm) AND (height_cm <= @v_height_less_than)) )
    + ( (ISNULL(@v_country) OR country member of(@v_country)) )
    + ( (ISNULL(@v_state) OR state member of(@v_state)) )
    + ( (ISNULL(@v_city) OR city member of(@v_city)) )
    + ( (ISNULL(@v_education) OR education member of(@v_education)) )
    + ( (ISNULL(@v_occupation) OR occupation member of(@v_occupation)) )
    + ( (@v_annual_income_greater_than=0 OR @v_annual_income_greater_than<=annual_income)  )
    + ( (ISNULL(@v_children_status) OR children_status member of(@v_children_status)) )
    + ( (ISNULL(@v_mother_tongue) OR mother_tongue member of(@v_mother_tongue)) )
    + ( (ISNULL(@v_religion) OR religion member of(@v_religion)) )
    + ( (ISNULL(@v_caste) OR caste member of(@v_caste))  )
    + ( (ISNULL(@v_Residential_status) OR residentialstatus member of(@v_Residential_status)) )
    + ( (ISNULL(@v_manglik) OR manglik member of(@v_manglik)) )
    + ( (@v_diet=0 OR @v_diet=diet)  )
    + ( (@v_smoking=0 OR @v_smoking=smoking) )
    + ( (@v_drinking=0 OR @v_drinking=drinking) )
    + ( (@v_ready_to_settleAbroad=0 OR @v_ready_to_settleAbroad=readytosettleabroad) )
    + ( (ISNULL(@v_challenged) OR challenged member of(@v_challenged)) )
    + ( (@v_hiv=0 OR @v_hiv=hiv) ) )'
    );
    SET @v_mandatoryCols = CONCAT(@v_mandatoryCols,@v_iSUserPrefMatch);
	select DATE_SUB(SYSDATE(), INTERVAL @v_age_greater_than YEAR), DATE_SUB(SYSDATE(), INTERVAL @v_age_less_than YEAR) into @v_dobLowLimit,@v_dobUpperLimit;
    SET @s_sql = CONCAT(
    'select json_arrayagg(json_object(''userid'',uid,''fullname'',fname,''photo'',pht,''row'',rw1,
    ''privacy_photo'',pp,''privacy_name'',pname,''privacy_contact'',pcontact,''matching score'',pscore)) into @v_json1 from
    (
    select tab_user_profile.userid as uid,fullname as fname,photo as pht,
    ROW_NUMBER() OVER (order by tab_user_profile.userid desc) rw1,
	privacy_show_photo as pp, privacy_show_contact as pcontact, privacy_show_name as pname,'
    ,@s_score,' as pscore 
    from tab_user_profile  left join tab_user_packagePrivacy on
    tab_user_profile.userid = tab_user_packagePrivacy.userid
    where 
    tab_user_profile.userid<@v_maxUserid1 
    AND @user1Profile_userid <> tab_user_profile.userid
    AND (tab_user_profile.userid member of(@v_excludeUsers) <> 1)
    AND @user1Profile_gender <> gender
    AND (ISNULL(@v_marital_status) OR marital_status member of(@v_marital_status))
    AND (@v_dobUpperLimit<= dob AND dob <=@v_dobLowLimit) ',@v_mandatoryCols,
    ' LIMIT ',@v_limit1,
    ' ) AS SB ' );
    PREPARE stmt FROM @s_sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    SET v_json = @v_json1;
	if(JSON_LENGTH( @v_json1)) >0 Then
		SET v_out = JSON_LENGTH( @v_json1);
	else
		SET v_out = 0;
	end if;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_userField` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_userField`(
	IN v_userid INT,
    IN v_fieldName VARCHAR(50),
	IN v_valueString varchar(1000),
    OUT v_out INT,
    OUT v_msg varchar(500),
    OUT v_json json
)
BEGIN 
	Declare currentSPname varchar(100) DEFAULT 'sp_update_userField';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_json = null;
    if(v_fieldName='emailid') Then
		update tab_user_login set emailid = v_valueString, emailid_verification='N' where v_userid=userid;
	elseif (v_fieldName = 'mobile') Then
    	update tab_user_login set mobile = v_valueString where v_userid=userid;
	elseif(v_fieldName='emailid_verification') Then
		update tab_user_login set emailid_verification=v_valueString where v_userid=userid;
   	elseif (v_fieldName='profile_for') Then
		call sp_get_isUserAboutExist(v_userid,v_out,v_msg,v_json);
        if(v_out>0) then
			update tab_user_about set profile_for=v_valueString where v_userid=userid;
		else
			insert into tab_user_about (userid,profile_for) value(v_userid,v_valueString);
		end if;
    elseif(v_fieldName='gender') Then
		call sp_get_isProfileExist(v_userid,v_out,v_msg,v_json);
        if(v_out>0) then
			update tab_user_profile set gender=v_valueString where v_userid=userid;
		else
			insert into tab_user_profile (userid,gender) value(v_userid,v_valueString);
		end if;
    elseif (v_fieldName='fullname') Then
			update tab_user_profile set fullname=v_valueString where v_userid=userid;
    elseif(v_fieldName='dob') Then  -- send v_valueString= '1987,05,28'; Y-m-d
		update tab_user_profile set dob=STR_TO_DATE(@v_valueString,'%Y,%m,%d') where v_userid=userid; 
	elseif(v_fieldName='marital_status') Then
		update tab_user_profile set marital_status= v_valueString where v_userid=userid;
	elseif(v_fieldName='religion') Then
			update tab_user_profile set religion=v_valueString where v_userid=userid;
	elseif(v_fieldName='manglik') Then
		if(v_valueString >='1' or v_valueString <= '3') Then 
			update tab_user_profile set manglik=v_valueString where v_userid=userid;
        end if;
	elseif(v_fieldName='diet') Then
		if(v_valueString >='1' or v_valueString <= '3') Then 
			update tab_user_profile set diet=v_valueString where v_userid=userid;
        end if;        
	elseif(v_fieldName='smoking') Then
		if(v_valueString >='1' or v_valueString <= '3') Then 
			update tab_user_profile set smoking=v_valueString where v_userid=userid;
        end if;          
	elseif(v_fieldName='drinking') Then
		if(v_valueString >='1' or v_valueString <= '3') Then 
			update tab_user_profile set drinking=v_valueString where v_userid=userid;
        end if;
	elseif(v_fieldName='user_status') Then
			update tab_user_packagePrivacy set user_status=v_valueString where v_userid=userid;
    end if;
    if (ROW_COUNT() = 0) Then
		SET v_msg=CONCAT(currentSPname,': User ID ', v_userid,' does not exist');
		SET v_out = -1;
	else
		    SET v_out = 1;
			SET v_msg="ok";
    End IF;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_userPackage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_update_userPackage`(
	IN v_userid INT,
    IN v_packageid TINYINT,
    IN v_days INT,
    OUT v_out INT,
	OUT v_msg varchar(500),
    OUT v_json json
)
BEGIN 
	Declare currentSPname varchar(100) DEFAULT 'sp_update_userPackage';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
    SET v_json = null;
    -- package exist or not..that is pending
    UPDATE `royalmatrimonial`.`tab_user_packagePrivacy`
	SET
        `package_id` = v_packageid,
        `package_enddate` = DATE_ADD(SYSDATE(),INTERVAL v_days DAY)
        WHERE v_userid = userid;
     if (ROW_COUNT() = 0) Then
		SET v_msg=CONCAT(currentSPname,': User ID ', v_userid,' does not exist');
		SET v_out = -1;
    End IF;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_userPrivacy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `sp_update_userPrivacy`(
	IN v_userid INT,
    IN v_privacy_show_photo char,
    IN v_privacy_show_contact char,
    IN v_privacy_show_name char,
    OUT v_out INT,
	OUT v_msg varchar(500),
    OUT v_json json
)
BEGIN 
	Declare currentSPname varchar(100) DEFAULT 'sp_update_userPrivacy';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN 
		SET v_out = -2; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = MYSQL_ERRNO, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : Erro code - ",@ERRNO);
		ROLLBACK;
	END;
    DECLARE exit handler for sqlwarning BEGIN
		SET v_out = -3; 
        GET STACKED DIAGNOSTICS CONDITION 1 
			@ERRNO = RETURNED_SQLSTATE, @MESSAGE_TEXT = MESSAGE_TEXT;
		SET v_msg = CONCAT(currentSPname,': ',@MESSAGE_TEXT," : SQLSTATE - ",@ERRNO);
		ROLLBACK; -- if any error occures it will rollback changes
	END;
    START transaction;
    SET v_out = 1;
    SET v_msg="ok";
    SET v_json = null;
	UPDATE `royalmatrimonial`.`tab_user_packagePrivacy`
	SET
	`privacy_show_photo` = v_privacy_show_photo,
	`privacy_show_contact` = v_privacy_show_contact,
    `privacy_show_name` = v_privacy_show_name
	WHERE userid = v_userid;
     if (ROW_COUNT() = 0) Then
		SET v_msg=CONCAT(currentSPname,': User ID ', v_userid,' does not exist');
		SET v_out = -1;
    End IF;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `status_json` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`royal`@`localhost` PROCEDURE `status_json`(
    in id INT,
    in religion json ,
    in country json,
    out val int
)
BEGIN
	insert into dummy (`id`,`religion`,`country`) values (id,religion,country);
    -- SELECT JSON_MERGE(
    --   JSON_OBJECT('count', '111',"Key2",4),
    --   JSON_OBJECT('sum_gt_0', '222',"Key3",5.4),
    --   JSON_OBJECT('sum_eq_0', '333')
    -- ) INTO data;
    -- SELECT JSON_MERGE(
    --   JSON_ARRAY(JSON_OBJECT('ID',1'Name', '222',"Age",5))
	   
       -- JSON_OBJECT('sum_eq_0', '333')
     --  ) INTO data;
    -- call status_json(1,2,@jobj);
	-- select @jobj;
     -- Select json_arrayagg(json_object('id',userid,'emailid',emailid)) into data from tab_user_login order by userid ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-18 13:27:16
