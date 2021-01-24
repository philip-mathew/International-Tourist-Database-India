-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: dmaproject
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmployeeID` varchar(12) NOT NULL,
  `EmployeeFirst_Name` varchar(45) NOT NULL,
  `EmployeeLast_Name` varchar(45) NOT NULL,
  `EmployeePosition` varchar(45) NOT NULL,
  `EmployeeDOB` date NOT NULL,
  `EmployeeAddress` varchar(45) NOT NULL,
  `EmployeePhoneNo` int(11) NOT NULL,
  `EmployeeGovtIDScan` blob,
  `EmployeeGender` varchar(45) NOT NULL,
  `Employeework_hotelid` int(11) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  KEY `HotelID_idx` (`Employeework_hotelid`),
  CONSTRAINT `HotelID` FOREIGN KEY (`Employeework_hotelid`) REFERENCES `property` (`PropertyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('BT105','Tom','Rony','Receptionist','1998-04-14','Huntington Ave',4589544,NULL,'male',102),('BT809','John','Smith','Driver','1984-12-12','Smith Street',1458789,NULL,'male',101),('CE382','Tony','Mathew','Chef','1988-12-12','Wringer Dr',3227381,NULL,'male',104),('CE384','Priya','Smith','Manager','1961-10-10','Hesston Ter',2838742,NULL,'female',104),('DQ483','Ern','Timothy','Receptionist','1988-12-09','Req Street',2828275,NULL,'male',105),('EX543','Emily','Kapoor','Chef','1968-12-23','Wall Street',1478954,NULL,'female',102),('FG443','Thomas','Man','Receptionist ','1977-10-03','Main street',2984844,NULL,'male',110),('GH448','Shalini','Krishnan','Manager','1985-10-03','Jaq street',2848522,NULL,'female',107),('HQ586','Ann','Thomas','Receptionist','1987-12-04','MG Road ',8827271,NULL,'female',108),('HW558','Danny','Boy','Manager','1984-12-05','Lake View',9282721,NULL,'male',109),('IQ662','Immanuel','Zak','Chef','1985-10-12','SQ Home',4484829,NULL,'male',117),('IS684','Athul','Sebastian','Chef','1985-06-06','UT Drive',9918353,NULL,'male',125),('IT674','Vishal','Shaji','Manager','1985-06-06','IT Street',8828221,NULL,'male',124),('IW992','Jacob','Jose','Manager','1990-10-13','US Main',7738231,NULL,'male',126),('OT558','Messi','Cristiano','Receptionist','1994-02-02','MD Road',9928233,NULL,'male',118),('OT993','Peter','Parker','Manager','1998-09-09','Manhattan',8829292,NULL,'male',118),('RE459','Rose','John','Manager','1966-10-04','TK Road',1138395,NULL,'female',113),('RE568','Peter','Manesqi','Manager','1960-03-02','RGH Road',7373728,NULL,'male',119),('RE883','Gerrad','Tom','Manager','1980-12-04','Smith Street',6783833,NULL,'male',111),('RT558','Irfan','Khan','Chef','1956-12-10','Hill Road',8484211,NULL,'male',120),('RT568','Rini','Kurian','Chef','1987-09-10','SH Mount',9393922,NULL,'female',112),('RT685','Raj','Krish','Manager','1976-10-13','MG Road',5757382,NULL,'male',103),('RU994','Anna','Ben','Receptionist ','1977-12-05','RK Road',1198443,NULL,'female',114),('RY557','Virat','Kholi','Receptionist ','1981-11-11','Hq Street',9928113,NULL,'male',121),('SE394','Anu','Matt','Manager','1956-12-13','Lake view',6543832,NULL,'female',106),('TH060','Jenny','Pen','Manager','1967-04-03','KK Street',9928832,NULL,'female',123),('TU339','Philip','Mathew','Chef','1991-12-12','RR Road',7738282,NULL,'male',122),('TU882','Mrugendra','Maniekar','Manager','1995-08-10','TL Street',5858282,NULL,'male',122),('TY558','Tomy','Jose','Chef','1988-10-12','WQ Street',7768432,NULL,'male',115),('UT994','Cait','Feeney','Manager','1967-12-13','FS House',8483482,NULL,'female',116),('YU453','Misty','Mark','Chef','1977-05-12','KT Road',7372732,NULL,'female',123);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homestay`
--

DROP TABLE IF EXISTS `homestay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homestay` (
  `HSPropertyID` int(11) NOT NULL,
  `Classification` varchar(45) NOT NULL,
  PRIMARY KEY (`HSPropertyID`),
  CONSTRAINT `homestay_ID` FOREIGN KEY (`HSPropertyID`) REFERENCES `property` (`PropertyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homestay`
--

LOCK TABLES `homestay` WRITE;
/*!40000 ALTER TABLE `homestay` DISABLE KEYS */;
INSERT INTO `homestay` VALUES (102,'Diamond'),(104,'Silver'),(113,'Silver'),(114,'Diamond'),(115,'SIlver'),(116,'Bronze'),(118,'Silver'),(121,'Bronze'),(123,'Diamond'),(124,'Silver');
/*!40000 ALTER TABLE `homestay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `HTPropertyID` int(11) NOT NULL,
  `Star_Category` varchar(45) NOT NULL,
  PRIMARY KEY (`HTPropertyID`),
  CONSTRAINT `Hotel_ID` FOREIGN KEY (`HTPropertyID`) REFERENCES `property` (`PropertyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (101,'5'),(103,'3'),(105,'4'),(106,'2'),(107,'5'),(109,'5'),(110,'4'),(111,'2'),(112,'3'),(117,'6'),(119,'4'),(120,'4'),(122,'2'),(125,'3'),(126,'4');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `international_tourists`
--

DROP TABLE IF EXISTS `international_tourists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `international_tourists` (
  `PassportNo` varchar(15) NOT NULL,
  `TouristDOB` date NOT NULL,
  `TouristFirst_Name` varchar(45) NOT NULL,
  `TouristLast_Name` varchar(45) NOT NULL,
  `TouristEmail_ID` varchar(45) NOT NULL,
  `TouristPhoneNo` int(11) NOT NULL,
  `TouristGender` varchar(45) NOT NULL,
  `TouristCountry` varchar(45) NOT NULL,
  `TouristPassportExpDt` date NOT NULL,
  `TouristVisaNo` varchar(15) NOT NULL,
  `TouristVisaExpDt` date NOT NULL,
  `TouristPassportScan` blob,
  `TouristVisaScan` blob,
  `DataUpdatedby` int(11) NOT NULL,
  `DataUpdateDate` datetime NOT NULL,
  PRIMARY KEY (`PassportNo`),
  KEY `UserID_idx` (`DataUpdatedby`),
  CONSTRAINT `UserID` FOREIGN KEY (`DataUpdatedby`) REFERENCES `property_admin` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `international_tourists`
--

LOCK TABLES `international_tourists` WRITE;
/*!40000 ALTER TABLE `international_tourists` DISABLE KEYS */;
INSERT INTO `international_tourists` VALUES ('A7452111','1945-01-01','Andrew','Symmonds','asymmonds@gmail.com',1477777212,'male','Australia','2020-05-05','IN1422112','2024-04-12',NULL,NULL,1001,'0000-00-00 00:00:00'),('B7895623','2000-01-01','Angelina','Jolie','aj@gmail.com',1234556665,'female','UK','2023-09-02','IN4444621','2020-08-02',NULL,NULL,1002,'0000-00-00 00:00:00'),('D3213321','2005-02-14','Jenna','Fishcer','jennaf@hotmail.com',1234777777,'female','Italy','2021-06-29','IN5666654','2022-01-25',NULL,NULL,1001,'0000-00-00 00:00:00'),('D3213455','1995-07-04','John','Hancock','jh@gmail.com',2147483647,'male','USA','2030-01-28','IN1277788','2021-04-03',NULL,NULL,1001,'0000-00-00 00:00:00'),('E3233223','2000-12-14','Kate','Winslet','kate@yahoo.com',2147483647,'female','USA','2020-01-02','IN4578951','2024-08-08',NULL,NULL,1003,'0000-00-00 00:00:00'),('F4514478','1965-04-25','Brad','Pitt','bp@yahoo.com',2147483647,'male','Germany','2020-02-14','IN4111111','2022-03-02',NULL,NULL,1002,'0000-00-00 00:00:00'),('M8967854','1993-05-10','Matt','Baton','mbaton@gmail.com',2147483647,'male','UK','2025-09-12','IN7865886','2020-04-01',NULL,NULL,1001,'0000-00-00 00:00:00'),('N6744323','2001-07-11','Annabella','Mattis','anbmat@gmail.com',2147483647,'female','France','2024-08-12','IN6632113','2020-03-02',NULL,NULL,1003,'0000-00-00 00:00:00'),('N7854563','1999-04-04','Ryan','Harris','ryan@gmail.com',2147483647,'male','USA','2022-07-04','IN4512123','2020-04-01',NULL,NULL,1001,'0000-00-00 00:00:00'),('Q1444214','1921-02-15','Rocky','Balboa','rb@gmail.com',2147483647,'male','USA','2025-12-12','IN7895412','2022-07-08',NULL,NULL,1002,'0000-00-00 00:00:00'),('Q7444717','2004-01-02','Andrew','Flintoff','af@gmail.com',2147483647,'male','UK','2035-10-10','IN2456214','2023-10-14',NULL,NULL,1001,'0000-00-00 00:00:00'),('W752111','1966-03-03','JK','Rowling','jkr@gmail.com',1455125154,'female','USA','2022-01-04','IN4512224','2022-03-04',NULL,NULL,1002,'0000-00-00 00:00:00'),('W788744','1997-11-14','Raj','Shetty','rs@yahoo.com',1224777888,'male','Nepal','2020-11-11','IN1245587','2030-10-14',NULL,NULL,1001,'0000-00-00 00:00:00'),('Z1212123','1998-04-14','Shakira','LNU','shak@yahoo.com',2147483647,'female','Columbia','2021-05-04','IN4741221','2024-08-08',NULL,NULL,1003,'0000-00-00 00:00:00'),('Z3431122','1987-04-15','Lionel','Messi','lm14@gmail.com',2147483647,'male','Argentina','2021-08-05','IN4555147','2023-04-05',NULL,NULL,1001,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `international_tourists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `PropertyID` int(11) NOT NULL,
  `PropertyName` varchar(45) NOT NULL,
  `PropertyAddress` varchar(45) NOT NULL,
  `PropertyEmailID` varchar(45) NOT NULL,
  `PropertyPhoneNo` int(11) NOT NULL,
  `PropertyLicenseNo` int(11) NOT NULL,
  `PropertyLicenseExpDt` date NOT NULL,
  `PropertyNo_of_Rooms` int(11) NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `PropertyAdmin` int(11) NOT NULL,
  PRIMARY KEY (`PropertyID`),
  UNIQUE KEY `HotelID_UNIQUE` (`PropertyID`),
  KEY `UserID_idx` (`PropertyAdmin`),
  CONSTRAINT `USERID_fk1` FOREIGN KEY (`PropertyAdmin`) REFERENCES `property_admin` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (101,'Taj Mahal','Bandra, Mumabi MH','mailj@tj.com',455544,41228454,'2024-12-12',500,'Hotel',1001),(102,'PH Homes','Vembanad Lake, Kerala','mail@phf.com',459012,66940321,'2022-03-01',7,'Homestay',1003),(103,'Taj Hills','Munnar, Kerala','mail@tj.com',405922,41205943,'2024-01-01',450,'Hotel',1001),(104,'Hills Nest','Thekkady, Kerala','mail@hillnest.com',586921,59309842,'2022-04-04',4,'Homestay',1004),(105,'Backwater Ripples','Vembanad Lake, Kerala','mail@bwr.com',596032,60592948,'2024-05-05',104,'Hotel',1005),(106,'City View Delhi','Delhi, New Delhi','mail@cityview.com',405912,60503918,'2024-06-01',45,'Hotel',1006),(107,'Beach Cottage','Baga Beach, Goa','mail@beachcottage.com',695032,50312934,'2021-01-01',22,'Hotel',1007),(108,'Cliff Home','Varkala Beach, Kerala','mail@cliffhome.com',987392,4924742,'2022-05-12',8,'Homestay',1008),(109,'Taj Lake','Vembanad Lake, Kerala','mail@tj.com',902938,9284211,'2022-06-07',45,'Hotel',1001),(110,'City View Bangalore','MG Road, Bangalore','mail@cityview.com',829492,40299282,'2023-07-01',40,'Hotel',1006),(111,'Tea Hills','Ooty, Tamil Nadu','mail@teahills.com',768532,87654374,'2021-02-02',16,'Hotel',1009),(112,'Coffee Hills','Coorg, Karnataka','mail@Cofhills.com',849432,35729457,'2023-08-09',20,'Hotel',1010),(113,'Diary Farm Home','Cumbam, Tamil Nadu','mail@dfh.com',924277,75848322,'2024-11-11',5,'Homestay',1011),(114,'Mk Farms','Worli, Mumbai, MH','mail@mkf.com',455223,78984422,'2020-04-04',5,'Homestay',1002),(115,'Lake View','Salt Lake, Kerala','mail@lkview.com',958321,94938481,'2023-09-10',7,'Homestay',1012),(116,'Himalayan Home','Mt trail, Kashmir','mail@himhome.com',748392,83827372,'2025-07-13',4,'Homestay',1013),(117,'City View Chennai','MG Road, Chennai','mail@cityview.com',928134,47473821,'2024-03-04',35,'Hotel',1006),(118,'Village Homes','Tribal village, Orissa','mail@vilhomes.com',949284,93827723,'2023-09-12',6,'Homestay',1014),(119,'Prime Property','Bandra, Mumbai','mail@primprop.com',984742,37474921,'2024-10-10',24,'Hotel',1015),(120,'The Ark Tents','Amritsar, Punjab','mail@theark.com',585839,84827193,'2023-09-12',16,'Hotel',1016),(121,'The Ark Palace ','Jaipur, Rajasthan','mail@theark.com',588205,48372742,'2021-10-01',7,'Homestay',1016),(122,'City View Kolkata','MG Road, West Bengal','mail@cityview.com',837472,74727482,'2022-09-05',24,'Hotel',1006),(123,'Salt flats homes','Salt flats, Gujarat','mail@saltflats.com',948572,85738113,'2024-05-05',4,'Homestay',1017),(124,'Northeast homes','Tea hills, Assam','mail@nehomes.com',858382,82918331,'2024-06-06',5,'Homestay',1018),(125,'Central Hotel','MG Road, Hyderabad','mail@centhot.com',728211,92882373,'2025-01-02',40,'Hotel',1019),(126,'The Majestic','MG Road, Chennai','mail@themaj.com',448281,17347832,'2025-01-04',30,'Hotel',1020);
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_admin`
--

DROP TABLE IF EXISTS `property_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_admin` (
  `UserID` int(11) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_admin`
--

LOCK TABLES `property_admin` WRITE;
/*!40000 ALTER TABLE `property_admin` DISABLE KEYS */;
INSERT INTO `property_admin` VALUES (1001,'abcd123'),(1002,'qwerty123'),(1003,'fdse321'),(1004,'rrtu4592'),(1005,'rit493jf3'),(1006,'riw2k2302'),(1007,'feewieww'),(1008,'eiejweiqqj'),(1009,'sjdi2ofj2fs'),(1010,'didido42'),(1011,'qirtu31'),(1012,'idid3f94f'),(1013,'eiwrovfif'),(1014,'eisfsoos'),(1015,'eisktirwq'),(1016,'rieoiv592'),(1017,'rrivpse2'),(1018,'dddiwoe'),(1019,'fisdoif2'),(1020,'fsisdiejv');
/*!40000 ALTER TABLE `property_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stay`
--

DROP TABLE IF EXISTS `stay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stay` (
  `StayPropertyID` int(11) NOT NULL,
  `StayPassportNo` varchar(15) NOT NULL,
  `StayingFrom` datetime NOT NULL,
  `StatingTo` datetime NOT NULL,
  PRIMARY KEY (`StayPropertyID`,`StayPassportNo`),
  KEY `PropertyID_idx` (`StayPropertyID`),
  KEY `PassportID_idx` (`StayPassportNo`),
  CONSTRAINT `PassportID` FOREIGN KEY (`StayPassportNo`) REFERENCES `international_tourists` (`PassportNo`),
  CONSTRAINT `PropertyID` FOREIGN KEY (`StayPropertyID`) REFERENCES `property` (`PropertyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stay`
--

LOCK TABLES `stay` WRITE;
/*!40000 ALTER TABLE `stay` DISABLE KEYS */;
INSERT INTO `stay` VALUES (101,'A7452111','2019-01-01 00:00:00','2019-01-01 00:00:00'),(101,'B7895623','2020-04-01 00:00:00','2020-04-11 00:00:00'),(101,'D3213455','2019-06-22 00:00:00','2019-06-28 00:00:00'),(101,'N6744323','2019-08-08 00:00:00','2019-08-10 00:00:00'),(101,'Q7444717','2019-07-05 00:00:00','2019-07-07 00:00:00'),(102,'A7452111','2019-01-12 00:00:00','2019-01-14 00:00:00'),(102,'Q7444717','2019-07-08 00:00:00','2019-07-10 00:00:00'),(103,'Q7444717','2019-07-11 00:00:00','2019-07-20 00:00:00'),(106,'F4514478','2020-04-04 00:00:00','2020-04-22 00:00:00'),(110,'W788744','2019-05-01 00:00:00','2019-05-03 00:00:00'),(111,'Z3431122','2020-04-23 00:00:00','2020-04-24 00:00:00'),(112,'D3213455','2019-06-30 00:00:00','2019-07-02 00:00:00'),(116,'F4514478','2020-04-14 00:00:00','2020-04-17 00:00:00'),(117,'W752111','2019-02-02 00:00:00','2019-02-11 00:00:00'),(118,'W752111','2019-02-12 00:00:00','2019-02-14 00:00:00'),(121,'Q1444214','2019-08-01 00:00:00','2019-09-01 00:00:00'),(126,'M8967854','2019-01-05 00:00:00','2019-01-10 00:00:00'),(126,'N6744323','2019-08-11 00:00:00','2019-08-12 00:00:00'),(126,'Z3431122','2020-04-18 00:00:00','2020-04-22 00:00:00');
/*!40000 ALTER TABLE `stay` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-18 16:02:09
