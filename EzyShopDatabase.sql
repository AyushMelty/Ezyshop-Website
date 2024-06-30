CREATE DATABASE  IF NOT EXISTS `ezyshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ezyshop`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: ezyshop
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `idAdmin` int NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `admin_username` varchar(45) NOT NULL,
  PRIMARY KEY (`idAdmin`),
  KEY `Username_idx` (`admin_username`),
  CONSTRAINT `admin_username` FOREIGN KEY (`admin_username`) REFERENCES `login` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (101,'Mead','KuSSwj1DV12y','gfifield0'),(102,'Josi','aUZK52F71x1','ggreneham1'),(103,'Shaine','ZflHGWd0rq','rcranny2'),(104,'Wood','ylbw33KJrJK','lcolthurst3'),(105,'Mariel','YwUAVOLH','apetrasch4'),(106,'Damon','sAje4RS0T4','dflye5'),(107,'Amber','CTyPf5AD','kmccathy6'),(108,'Trudy','HvrNv3USkb1','cmalkin7'),(109,'Joel','DmxocQ1','tmcard8'),(110,'Tadeo','CfQW6JFHR','obuckberry9'),(111,'Mort','oDTEYXB','cmonarda'),(112,'Adella','HuRGoK','ptesdaleb'),(113,'Orsa','6bnVWh3H','nconigsbyc'),(114,'Hetty','8dKrgrz6GD','imcconigald'),(115,'Even','cvf0d0oFm','swhiscarde'),(116,'Kale','0A7GuO','dgrendonf'),(117,'Erie','SpM2EG50sb1','challeyboneg'),(118,'Bryon','qL2e5uiIk','sgynnh'),(119,'Hiram','NQd5rHseua','gsuarezi'),(120,'Terrance','mCYk5dQ9slu','ispickettj'),(121,'Nikolaos','Zvdbayejbw5','cgritsaevk'),(122,'Ann-marie','xSZYqf8','jantonignettil'),(123,'Buffy','n1hvT3p3xq','rceeleym'),(124,'Donal','NYEHKZWU','dwillmotn'),(125,'Harrison','7bJJGH','abrettoro'),(126,'Consolata','uIyj0cs','aliffep'),(127,'Donnie','UoPEDu7Nj','bslewcockq'),(128,'Koralle','5mnc3deKLH','ahilhouser'),(129,'Elbertine','fqDJhm0eGCK','mlittlewoods'),(130,'Nariko','iYTtrk7','ksweynsont'),(131,'Steven','82qQ4tUiP9R','ldaudrayu'),(132,'Alyosha','dbS4WsL','mmcclevertyv'),(133,'Maurizio','wr2juIGHV1e','dnichew'),(134,'Matthus','BoF3jH7gHZ','hillemx'),(135,'Ethyl','80Ws4RJmK','ghyndy'),(136,'Agna','VxcKfbJewiU','aancketillz'),(137,'Gayelord','D8XDVtOZ1','jkatt10'),(138,'Abigale','dBGBYjC','jconquest11'),(139,'Morry','9hyrlWoaXPR','pcleef12'),(140,'Donnamarie','oP0HbsymPA','mgasparro13'),(141,'Annnora','XS8nHeyH','athomton14'),(142,'Ethan','ohCN4dI','nlucy15'),(143,'Barclay','teD1ATGw','mpilmoor16'),(144,'Neilla','VWa8rWtIWh','jjacomb17'),(145,'Opaline','n2v7Uo0Cm8','nvanshin18'),(146,'Cesare','p2cDeYaokqid','chessenthaler19'),(147,'Hamel','nNOvrwi4Sc1','lfielden1a'),(148,'Wandie','ymIXpqP','kblincoe1b'),(149,'Alvin','mATR2728rI','gfarland1c'),(150,'Raleigh','fLO2apL','hszymanek1d'),(151,'Abbie','sWN2TZIQmY','rlorden1e'),(152,'Mallissa','9xlU031kZ','twinterflood1f'),(153,'Franky','hwgemni9c0dp','pcollihole1g'),(154,'Herold','Bw8ChTN','candrat1h'),(155,'Ingrid','1t0ENZ8bHil','trathke1i'),(156,'Candida','OqLdRTSlp','jtottie1j'),(157,'Case','DW6czO','erobottham1k'),(158,'Tammie','34LDGuTBW0v2','mhurrion1l'),(159,'Nikos','ARJI6WBvXefP','dreijmers1m'),(160,'Rachael','8LlhN2','kisham1n'),(161,'Alasteir','Sy25OWTm','rdochon1o'),(162,'Corette','ER63EY','onayer1p'),(163,'Filia','WBHpnlEAtDM','mattenborrow1q'),(164,'Phillipp','vSMtHIuiH7w','acosely1r'),(165,'Drew','QHIxp7Ybgr','mpersian1s'),(166,'Wendel','ZXTghC','tjakaway1t'),(167,'Zea','In56khyc9Sr','srosedale1u'),(168,'Barbabas','mgeIJEoKM','kitzchaky1v'),(169,'Ninnetta','L1lcs7NW','ncaroll1w'),(170,'Kacie','fTc1yaf','ebeggini1x'),(171,'Morlee','N3Z3ljOad','ctregaskis1y'),(172,'Cecil','D8BpdX','hperfect1z'),(173,'Bryant','cyThrH6GPj','bbullingham20'),(174,'Gaelan','Ru9lWP0k0NI','egrinter21'),(175,'Gay','Rvv8mCce','cjordison22'),(176,'Ellen','isxudpXfb','jbeames23'),(177,'Noel','cdPPq37MK','cbeynkn24'),(178,'Manya','LVs6U1c','fgrimme25'),(179,'Sterling','5UiuOG','megginson26'),(180,'Konstanze','txBb8s2haa','tbedson27'),(181,'Amelita','4NfrDO2JTs5','jrawnsley28'),(182,'Sharline','foZDWGAf','rbenneyworth29'),(183,'Karoline','awMLClcZSF2','wbyway2a'),(184,'Chen','R8bnRU7QjS','jkuhnwald2b'),(185,'Rod','iEdV8oHK2','apetriello2c'),(186,'Dolli','WZ1GZ3udTUh','alimbourne2d'),(187,'Lawrence','l33s52eMFZbx','eassard2e'),(188,'Jarid','M2RkhxYj58','mmushawe2f'),(189,'Frederick','QyaYCyuGaf','gbillings2g'),(190,'Reinaldo','11Vrzqah','atuther2h'),(191,'Davey','eGRiYl1p','elindro2i'),(192,'Torr','lOpUgTDQT','tmabbot2j'),(193,'Dorie','lMbRu7wXYgN','kadamthwaite2k'),(194,'Ashly','soWtk0TMJ','jsanderson2l'),(195,'Maura','TPqrIfSLjf','jbruno2m'),(196,'Trumann','UKMoJZGvY','jsettle2n'),(197,'Jobina','iHPjRC5','clies2o'),(198,'Teresa','8l5U8sJP','bpingston2p'),(199,'Serge','Y1doKwnZWbT','avineall2q'),(200,'Jase','qcWiCB2','aharty2r'),(201,'123456','1234567','1234567'),(202,'ayushji','ayushji','ayushji'),(203,'seo','123','spi'),(204,'safkj','123','drstrange');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing` (
  `idbilling` int NOT NULL,
  `payment` varchar(45) NOT NULL,
  `refcartid` int NOT NULL,
  PRIMARY KEY (`idbilling`),
  KEY `refcartid_idx` (`refcartid`),
  CONSTRAINT `refcartid` FOREIGN KEY (`refcartid`) REFERENCES `cart` (`idcart`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
INSERT INTO `billing` VALUES (600,'COD',1000),(601,'COD',1001),(602,'COD',1002),(603,'COD',1003),(604,'COD',1004),(605,'COD',1005),(606,'COD',1006),(607,'COD',1007),(608,'COD',1008),(609,'COD',1009),(610,'COD',1010),(611,'COD',1011),(612,'COD',1012),(613,'COD',1013),(614,'COD',1014),(615,'COD',1015),(616,'COD',1016),(617,'COD',1017),(618,'COD',1018),(619,'COD',1019),(620,'COD',1020),(621,'COD',1021),(622,'COD',1022),(623,'Net Banking',1023),(624,'Net Banking',1024),(625,'Net Banking',1025),(626,'Net Banking',1026),(627,'Net Banking',1027),(628,'Net Banking',1028),(629,'Net Banking',1029),(630,'Net Banking',1030),(631,'Net Banking',1031),(632,'Net Banking',1032),(633,'Net Banking',1033),(634,'Net Banking',1034),(635,'Net Banking',1035),(636,'Net Banking',1036),(637,'Net Banking',1037),(638,'Net Banking',1038),(639,'Net Banking',1039),(640,'Net Banking',1040),(641,'Net Banking',1041),(642,'Net Banking',1042),(643,'Net Banking',1043),(644,'Net Banking',1044),(645,'UPI',1045),(646,'UPI',1046),(647,'UPI',1047),(648,'UPI',1048),(649,'UPI',1049),(650,'UPI',1050),(651,'UPI',1051),(652,'UPI',1052),(653,'UPI',1053),(654,'UPI',1054),(655,'UPI',1055),(656,'UPI',1056),(657,'UPI',1057),(658,'UPI',1058),(659,'UPI',1059),(660,'UPI',1060),(661,'UPI',1061),(662,'UPI',1062),(663,'Debit Card',1063),(664,'Debit Card',1064),(665,'Debit Card',1065),(666,'Debit Card',1066),(667,'Debit Card',1067),(668,'Debit Card',1068),(669,'Debit Card',1069),(670,'Debit Card',1070),(671,'Debit Card',1071),(672,'Debit Card',1072),(673,'Debit Card',1073),(674,'Debit Card',1074),(675,'Debit Card',1075),(676,'Debit Card',1076),(677,'Debit Card',1077),(678,'Debit Card',1078),(679,'Debit Card',1079),(680,'Debit Card',1080),(681,'Debit Card',1081),(682,'Debit Card',1082),(683,'Debit Card',1083),(684,'Debit Card',1084),(685,'Debit Card',1085),(686,'Debit Card',1086),(687,'Debit Card',1087),(688,'Debit Card',1088),(689,'Debit Card',1089),(690,'Debit Card',1090),(691,'Debit Card',1091),(692,'Credit Card',1092),(693,'Credit Card',1093),(694,'Credit Card',1094),(695,'Credit Card',1095),(696,'Credit Card',1096),(697,'Credit Card',1097),(698,'Credit Card',1098),(699,'Credit Card',1099);
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `idcart` int NOT NULL,
  `address` varchar(45) NOT NULL,
  `amount` int NOT NULL,
  `id` int NOT NULL,
  PRIMARY KEY (`idcart`),
  KEY `ref_custid_idx` (`id`),
  CONSTRAINT `id` FOREIGN KEY (`id`) REFERENCES `customer` (`idcustomer`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (400,'Setúbal',14730826,300),(401,'asaflj',296,301),(402,'asljf',216,302),(403,'alsjfk',136,303),(404,'aslkfj',96,304),(405,'delhi',28,305),(406,'saf',0,306),(407,'djkf',2000,307),(1000,'Room 824',15628502,200),(1001,'4th Floor',19902,201),(1002,'Apt 1698',80185,202),(1003,'PO Box 40505',62856,203),(1004,'Apt 1224',41933,204),(1005,'Room 1421',62296,205),(1006,'Room 514',93687,206),(1007,'Suite 65',88499,207),(1008,'Suite 40',36098,208),(1009,'Apt 1953',14246,209),(1010,'Apt 940',6067,210),(1011,'Room 702',55628,211),(1012,'Apt 1407',90462,212),(1013,'Suite 25',24059,213),(1014,'8th Floor',70819,214),(1015,'PO Box 20383',819,215),(1016,'Room 199',87660,216),(1017,'1st Floor',74279,217),(1018,'Room 1153',28717,218),(1019,'PO Box 17430',30835,219),(1020,'Apt 1540',98846,220),(1021,'PO Box 30769',72755,221),(1022,'PO Box 84963',56940,222),(1023,'19th Floor',1400,223),(1024,'18th Floor',13694,224),(1025,'PO Box 62662',79821,225),(1026,'Suite 76',95438,226),(1027,'16th Floor',265,227),(1028,'Room 237',87494,228),(1029,'3rd Floor',19992,229),(1030,'PO Box 441',6793,230),(1031,'6th Floor',66138,231),(1032,'Apt 1128',3779,232),(1033,'Suite 18',45641,233),(1034,'PO Box 90743',16211,234),(1035,'Suite 62',95173,235),(1036,'Apt 1862',96101,236),(1037,'PO Box 64587',33887,237),(1038,'Suite 64',27869,238),(1039,'Room 451',73831,239),(1040,'Room 966',61016,240),(1041,'Room 1723',46707,241),(1042,'Suite 60',51114,242),(1043,'Room 571',59046,243),(1044,'16th Floor',5607,244),(1045,'Suite 81',37008,245),(1046,'Suite 9',74585,246),(1047,'Suite 76',11551,247),(1048,'Room 1020',46673,248),(1049,'Apt 356',24613,249),(1050,'Suite 16',66884,250),(1051,'Room 731',19528,251),(1052,'19th Floor',66465,252),(1053,'PO Box 40643',73388,253),(1054,'Room 1009',6025,254),(1055,'PO Box 28927',34502,255),(1056,'PO Box 47210',99461,256),(1057,'Room 1747',97422,257),(1058,'PO Box 33498',98443,258),(1059,'6th Floor',89212,259),(1060,'Suite 88',79122,260),(1061,'Suite 46',91410,261),(1062,'Suite 19',34414,262),(1063,'Suite 12',40665,263),(1064,'Suite 41',31214,264),(1065,'PO Box 477',69562,265),(1066,'Suite 36',9891,266),(1067,'PO Box 53250',21976,267),(1068,'Suite 1',65215,268),(1069,'Room 241',15165,269),(1070,'16th Floor',23324,270),(1071,'Apt 1767',36453,271),(1072,'Apt 809',50325,272),(1073,'Room 1030',71570,273),(1074,'Apt 1166',36990,274),(1075,'PO Box 90318',26257,275),(1076,'Room 563',84527,276),(1077,'Room 874',67717,277),(1078,'Apt 740',26540,278),(1079,'PO Box 1845',74961,279),(1080,'Room 1686',43029,280),(1081,'Apt 4',84223,281),(1082,'14th Floor',78708,282),(1083,'Suite 59',53494,283),(1084,'Room 294',44094,284),(1085,'Suite 71',67438,285),(1086,'11th Floor',95024,286),(1087,'Room 1204',6479,287),(1088,'Room 278',81135,288),(1089,'Suite 45',19769,289),(1090,'18th Floor',99491,290),(1091,'Apt 839',44503,291),(1092,'Suite 40',88148,292),(1093,'Suite 9',96484,293),(1094,'Apt 1602',53279,294),(1095,'1st Floor',1928,295),(1096,'Suite 81',26666,296),(1097,'Suite 40',59334,297),(1098,'PO Box 94682',42033,298),(1099,'PO Box 59862',41694,299);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartwithproducts`
--

DROP TABLE IF EXISTS `cartwithproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartwithproducts` (
  `cartref_id` int NOT NULL,
  `prodref_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `relation_id` int NOT NULL,
  PRIMARY KEY (`relation_id`),
  KEY `cartref_id_idx` (`cartref_id`),
  KEY `prodref_id_idx` (`prodref_id`),
  CONSTRAINT `cartref_id` FOREIGN KEY (`cartref_id`) REFERENCES `cart` (`idcart`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prodref_id` FOREIGN KEY (`prodref_id`) REFERENCES `products` (`idProducts`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartwithproducts`
--

LOCK TABLES `cartwithproducts` WRITE;
/*!40000 ALTER TABLE `cartwithproducts` DISABLE KEYS */;
INSERT INTO `cartwithproducts` VALUES (1000,300,2,1),(1000,302,2,2),(1000,304,2,4),(1000,306,2,5),(1000,300,2,6),(1000,300,5,7),(400,300,1,8),(400,399,15,9),(1099,399,1,10),(401,399,2,11),(401,394,1,12),(401,397,1,13),(402,399,2,14),(402,393,2,15),(402,399,2,16),(402,393,2,17),(403,399,2,18),(403,392,2,19),(404,399,2,20),(404,393,2,21),(405,399,2,22),(405,396,2,23),(407,401,100,24),(407,402,1,25);
/*!40000 ALTER TABLE `cartwithproducts` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `red_quan` AFTER INSERT ON `cartwithproducts` FOR EACH ROW update products set Stock=Stock-new.quantity where idProducts=new.prodref_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `quanupdate` BEFORE UPDATE ON `cartwithproducts` FOR EACH ROW update products set Stock=Stock-(new.quantity-old.quantity) where idProducts=old.prodref_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `idcustomer` int NOT NULL,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `StreetNo` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Pincode` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `ref_name` varchar(45) NOT NULL,
  `cashback` int DEFAULT '0',
  PRIMARY KEY (`idcustomer`),
  KEY `ref_name_idx` (`ref_name`),
  CONSTRAINT `ref_name` FOREIGN KEY (`ref_name`) REFERENCES `login` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (200,'Roshelle','Donoher','7','Butuan','Pays de la Loire','655669','03/12/2022','hTiK2OFKJNc','gfifield0',20000),(201,'Gwyn','Todarello','75699','Soroti','Pays de la Loire','116220','08/20/2022','XbqTlOt2','ggreneham1',0),(202,'Katina','Britch','396','Mayenne','Pays de la Loire','834727','10/18/2022','xqmmnG','rcranny2',20000),(203,'Noni','Polini','740','Ústí nad Orlicí','Pays de la Loire','846021','11/30/2022','Fp9ZmDRg79B6','lcolthurst3',20000),(204,'Hebert','Biggen','9','Gornja Koprivna','Pays de la Loire','218091','11/30/2022','0duiG7','apetrasch4',0),(205,'Leonelle','Shevill','52155','Pokhara','Pays de la Loire','219272','06/22/2022','SyVA6T','dflye5',20000),(206,'Terrie','Simukov','21225','Barice','Pays de la Loire','50333','02/09/2023','cTCx3xwx535R','kmccathy6',20000),(207,'Arabel','McElwee','27434','Semarang','Pays de la Loire','721384','02/08/2023','IhzwpMO','cmalkin7',20000),(208,'Buffy','Watkin','2','Dukuhmencek Lor','Pays de la Loire','895323','03/11/2022','PYtVrY2rRo','tmcard8',0),(209,'Lina','Jenney','4','Bolo','Pays de la Loire','910742','10/06/2022','p44TcI6bO5nz','obuckberry9',0),(210,'Shoshana','Balsom','7','Bantacan','Pays de la Loire','205414','06/19/2022','5XCrCndQuki','cmonarda',0),(211,'Trumann','Lattimer','553','Gamawa','Pays de la Loire','459520','06/02/2022','RqwrfcecPZHy','ptesdaleb',20000),(212,'Rebekah','Sponton','44807','Ishqoshim','Pays de la Loire','950336','12/20/2022','a8TFFFsxXCgj','nconigsbyc',20000),(213,'Alida','Escudier','303','Majan','Pays de la Loire','742690','09/28/2022','44ZSmjZ5gN','imcconigald',0),(214,'Stuart','Pankethman','42','Luan Balu','Pays de la Loire','670438','06/12/2022','WMZQ6xeZxZQv','swhiscarde',20000),(215,'Adler','Dahlbom','9','Qiligang','Pays de la Loire','188304','09/05/2022','2TWLL123Gq','dgrendonf',0),(216,'Aloisia','Gabler','37','Limon','Pays de la Loire','788952','10/06/2022','LfZOuzCN','challeyboneg',20000),(217,'Michelina','Gilhooley','68440','Pryluky','Pays de la Loire','480738','09/29/2022','4l1i1X05n','sgynnh',20000),(218,'Talya','Ivashkov','2','Bacnotan','Pays de la Loire','990679','05/11/2022','yzwLDPi','gsuarezi',0),(219,'Winnie','Dolling','2','La Salud','Pays de la Loire','989635','10/08/2022','ZegoOiRCSP4','ispickettj',0),(220,'Costa','Varnham','3','Uherský Ostroh','Pays de la Loire','61545','05/29/2022','hmhfPRHNa1','cgritsaevk',20000),(221,'Baily','Illwell','90327','Alcoy','Pays de la Loire','497719','03/04/2022','RhM3wEZ','jantonignettil',20000),(222,'Anabelle','Comelini','824','Pasargunung','Pays de la Loire','198973','04/14/2022','WJypkfx4','rceeleym',20000),(223,'Dayle','Andrich','83908','Chiguirip','Pays de la Loire','485056','10/06/2022','cI65HqkR','dwillmotn',0),(224,'Giselle','Heffernan','949','Umm Ruwaba','Pays de la Loire','24208','12/31/2022','hKtRQwGvEZgd','abrettoro',0),(225,'Tommy','Tomney','963','Dubna','Pays de la Loire','858180','12/20/2022','i6DGz0WdSDo','aliffep',20000),(226,'Sly','Erik','88','Fartura','Pays de la Loire','2616','09/26/2022','zZEBvFpzk8','bslewcockq',20000),(227,'Hewe','Wainwright','236','Soutinho','Porto','690061','03/07/2022','W3bqWVlZwQ','ahilhouser',0),(228,'Brittani','Freire','52','Trondheim','Sor-Trondelag','931392','01/22/2023','xwCO7uPtW','mlittlewoods',20000),(229,'Randie','Coalburn','4142','Tambalisa','Sor-Trondelag','142904','09/12/2022','JeGSyP4CyoJy','ksweynsont',0),(230,'Christian','Kitto','1','Gaozhou','Sor-Trondelag','926380','04/24/2022','t4lpGRqNrf9c','ldaudrayu',0),(231,'Sarette','Glyde','3978','El Socorro','Sor-Trondelag','772153','06/16/2022','EqcuHM6eSFe','mmcclevertyv',20000),(232,'Darline','Parrish','606','Kombapari','Sor-Trondelag','965779','01/21/2023','gAkAmNYE','dnichew',0),(233,'Freida','Wollacott','1','Briceni','Sor-Trondelag','993351','03/30/2022','x4oVIjT2CAML','hillemx',0),(234,'Tore','Smyley','6112','Bode Sadu','Sor-Trondelag','688421','07/02/2022','l51tXy','ghyndy',0),(235,'Mark','Loudiane','6','Cibiru','Sor-Trondelag','390225','03/04/2022','T5oPR1nT2zI','aancketillz',20000),(236,'Brinn','O\'Nowlan','4810','Mand?l','Sor-Trondelag','965835','11/25/2022','YJSF2IrMuCH','jkatt10',20000),(237,'Tony','MacArdle','39','Nizhniye Achaluki','Sor-Trondelag','541551','06/19/2022','JyHKKaZK','jconquest11',0),(238,'Wainwright','Kinge','2','Harper','Sor-Trondelag','874808','07/30/2022','rrmmfxSc90JR','pcleef12',0),(239,'Lauren','Finessy','3730','Alminhas','Braga','850926','11/21/2022','YTCJdi6','mgasparro13',20000),(240,'Dinny','Laidler','79943','Baohe','Braga','541417','10/12/2022','ZkyAJ9eDVLBg','athomton14',20000),(241,'Heath','Duckerin','733','Combapata','Braga','25720','03/12/2022','2KoyEgJuz','nlucy15',0),(242,'Faber','Siemantel','35','Awgu','Braga','527794','12/22/2022','jQMHUvXVpr6k','mpilmoor16',20000),(243,'Bendicty','Littell','32','Abonnema','Braga','797274','10/14/2022','TRn0t704ATvM','jjacomb17',20000),(244,'Almeria','Cranham','92','Finspång','Östergötland','915182','01/12/2023','zw4Jp7hbe','nvanshin18',0),(245,'Rhonda','Yanson','35','Kashiwazaki','Östergötland','337674','01/19/2023','XrCRn0zz','chessenthaler19',0),(246,'Charles','Imloch','9','Dzhetygara','Östergötland','754900','04/29/2022','2md7YZ','lfielden1a',20000),(247,'Bianka','Layfield','16','Dera Bugti','Östergötland','395835','01/24/2023','IyCe7HDzxY','kblincoe1b',0),(248,'Micheal','Delhanty','426','Lesnoye','Östergötland','516235','12/27/2022','hkpeCW','gfarland1c',0),(249,'Cornelius','Itzakovitz','44499','Claresholm','Alberta','587013','09/21/2022','2woN7Qzf0Ab','hszymanek1d',0),(250,'Gage','Thomazet','94','Tanjungampalu','Alberta','368586','10/27/2022','kX26cfBn','rlorden1e',20000),(251,'Stevy','Diboll','2862','Ashtarak','Alberta','449055','06/24/2022','EhKOFGP6BZG','twinterflood1f',0),(252,'Bev','Fisby','7','Bayeux','Basse-Normandie','841662','07/16/2022','jJi24rYhkjC','pcollihole1g',20000),(253,'Terencio','Cleall','38813','Sop Moei','Basse-Normandie','511326','12/10/2022','Ybpl2OoqQn','candrat1h',20000),(254,'Gratia','Dunster','8','Sukacai Tengah','Basse-Normandie','965269','08/19/2022','Lfnwcw6mj','trathke1i',0),(255,'Greggory','Lowell','1395','Takum','Basse-Normandie','313356','03/17/2022','QslXcb','jtottie1j',0),(256,'Lynnette','MacIlurick','312','Lupo','Basse-Normandie','172270','09/01/2022','dJSYXrje','erobottham1k',20000),(257,'Trix','Skate','3','Pustá Polom','Basse-Normandie','940639','07/05/2022','sbqha4','mhurrion1l',20000),(258,'Clemmy','Graalmans','9','Yanjiatai','Basse-Normandie','891103','07/13/2022','j3QZgH','dreijmers1m',20000),(259,'Karlotte','Dinan','944','Birr','Basse-Normandie','516196','12/31/2022','erWsXl','kisham1n',20000),(260,'Eamon','Cornhill','9','Las Lomas','Basse-Normandie','591041','02/04/2023','WGj5nzn4qXV5','rdochon1o',20000),(261,'Dacia','Heyburn','94031','Birigui','Basse-Normandie','909437','02/07/2023','8klU2Bi','onayer1p',20000),(262,'Binky','Teaser','39861','San Miguel','Basse-Normandie','331417','08/26/2022','XsiJSk1Wo','mattenborrow1q',0),(263,'Franklyn','Meneghi','7','Sibanicú','Basse-Normandie','509654','01/23/2023','EBdd1LC','acosely1r',0),(264,'Rupert','Shoobridge','12','Bergen','Hordaland','896739','09/23/2022','1VYRGC','mpersian1s',0),(265,'Gradey','Hammerberg','528','Cayambe','Hordaland','835379','02/24/2022','VO6Tske8wJna','tjakaway1t',20000),(266,'Eugenia','Blaase','49','Pandan','Hordaland','858481','01/18/2023','B7bvKf2GZpYn','srosedale1u',0),(267,'Giraud','Kos','6974','L??ng B?ng','Hordaland','586240','06/11/2022','pGnS89','kitzchaky1v',0),(268,'Priscilla','Tuminelli','7','Lugovskoy','Hordaland','581637','02/05/2023','juiVlwkVN','ncaroll1w',20000),(269,'Addy','Caiger','7','Guankou','Hordaland','509305','03/18/2022','7IjACXbxd8A','ebeggini1x',0),(270,'Sheryl','Antal','3','Trubchevsk','Hordaland','171157','10/05/2022','WIDOHfv6A','ctregaskis1y',0),(271,'Lukas','Martinet','99158','Oinófyta','Hordaland','835846','11/29/2022','N6ztliPQKN','hperfect1z',0),(272,'Sela','Mundle','90946','Banjar Timbrah','Hordaland','886224','11/23/2022','4j22eV','bbullingham20',20000),(273,'Allegra','Fay','78','Montfort-sur-Meu','Bretagne','341920','08/16/2022','3w1GC1','egrinter21',20000),(274,'Putnem','Keelin','425','Latacunga','Setúbal','854819','01/04/2023','rrSpj0ltdbsM','cjordison22',0),(275,'Shana','Aslen','3','Kra?niczyn','Setúbal','67700','09/11/2022','CzOfZNS','jbeames23',0),(276,'Eolande','Wandrich','740','Gelatik','Setúbal','81714','10/25/2022','MRpcY0Soidzr','cbeynkn24',20000),(277,'Aldous','Blaver','7140','Klang','Setúbal','375950','07/03/2022','NTGKZIFsV0k8','fgrimme25',20000),(278,'Leodora','Feldberger','6229','Cândido Mota','Setúbal','558166','09/02/2022','ZTmMic8','megginson26',0),(279,'Jeniece','Priestland','98185','Manzanares','Setúbal','236885','06/02/2022','9cvEsQYZX','tbedson27',20000),(280,'Herve','Dowse','37466','Nanmen','Setúbal','568637','06/08/2022','X6Uu7XQ','jrawnsley28',0),(281,'Salvatore','Starrs','743','Bula','Setúbal','715049','09/26/2022','6c0IZLkEhY','rbenneyworth29',20000),(282,'Torrie','Halsworth','27591','Dobje pri Planini','Setúbal','780370','07/22/2022','MyiNEq7','wbyway2a',20000),(283,'Lazare','Gutridge','878','Orekhovo-Borisovo Severnoye','Setúbal','261860','12/17/2022','w4YclP','jkuhnwald2b',20000),(284,'Jaymee','Pioli','50958','Satu Nou','Setúbal','323057','03/04/2022','iUOyvZf8WexT','apetriello2c',0),(285,'Goldi','MacGown','7','Varpaisjärvi','Setúbal','357122','09/21/2022','WskGI9AKZ','alimbourne2d',20000),(286,'Lindsey','Zylbermann','948','Arlöv','Setúbal','321890','03/19/2022','6FF8pdQXv','eassard2e',20000),(287,'Miltie','Pamphilon','0','Lingyang','Setúbal','745195','07/18/2022','CQm7fhP5gl','mmushawe2f',0),(288,'Gerrie','Nunns','42121','Madala','Setúbal','228328','03/02/2022','lpoOlW5bO','gbillings2g',20000),(289,'Andy','Arguile','29','Pruchnik','Setúbal','45164','11/13/2022','oNOVUZBr6PMO','atuther2h',0),(290,'Chloe','Charlick','207','Hongdun','Setúbal','527264','01/21/2023','pYVrePdkqrEp','elindro2i',20000),(291,'Weider','Marks','7874','Quinta da Queimada','Setúbal','202347','12/20/2022','YRm3GO','tmabbot2j',0),(292,'Fredra','O\'Luney','489','Imsida','Setúbal','860499','07/15/2022','99040PYcGCBi','kadamthwaite2k',20000),(293,'Josefina','Ruegg','40','El Carmen','Setúbal','274977','12/04/2022','tIgnZXt1E','jsanderson2l',20000),(294,'Antonie','Jobke','85635','Karangsumber','Setúbal','934193','05/27/2022','vqJ4QAVZPd','jbruno2m',20000),(295,'Flory','Freyn','22','Oliveira do Conde','Setúbal','66180','11/11/2022','ypkbZhg','jsettle2n',0),(296,'Lidia','Kinrade','9','Lubniewice','Setúbal','550320','06/12/2022','j5gxLoOwIu1B','clies2o',0),(297,'Gerry','Marians','7','Yinhedahan’er','Setúbal','767601','06/21/2022','od4oJm','bpingston2p',20000),(298,'Catlee','Warmington','269','Dalam','Setúbal','703376','08/10/2022','w72KaUOaWOY','avineall2q',0),(299,'Gussie','Catenot','74','Vale de Vila','Setúbal','479035','10/30/2022','Qv99UGC8pws','aharty2r',0),(300,'a','Catenot','74','Vale de Vila','Setúbal','479035','10/30/2022','root','ayush',0),(301,'sadlj','asldkjf','24345','kdslafj','asaflj','345432','1324534','1234','noddy',0),(302,'nosdf','sajdf','sdkalfj','sakdj','asljf','slkjf','aslkdf','1234','tintin',0),(303,'alksdj','aslkej','salkfj','aslkjf','alsjfk','13','234q2','1234','mimba',0),(304,'askljf','salfkdj','12424','sdlfk','aslkfj','23423','345234','1234','pops',0),(305,'asfl','asf','1234','delhi','delhi','1234','11/11/1111','1234','merabeta',0),(306,'sadlkj','sfklj','12344','sadf','saf','12344','11/11/2004','1234','madir',0),(307,'abc','delta','cjhkajdf','jdkf','djkf','632','23/09/2003','123','ati',0);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_cart` AFTER INSERT ON `customer` FOR EACH ROW insert into cart values(new.idcustomer+100,new.State,0,new.idcustomer) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `deliveryid` int NOT NULL,
  `status` int DEFAULT NULL,
  `cust_id` int DEFAULT NULL,
  PRIMARY KEY (`deliveryid`),
  KEY `refcustid_idx` (`cust_id`),
  CONSTRAINT `cust_id` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`idcustomer`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,0,200),(2,0,307),(3,0,306),(4,0,306);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `fb`
--

DROP TABLE IF EXISTS `fb`;
/*!50001 DROP VIEW IF EXISTS `fb`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fb` AS SELECT 
 1 AS `avg(star)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `refcustid` int NOT NULL,
  `star` int DEFAULT NULL,
  PRIMARY KEY (`refcustid`),
  KEY `thefeedback` (`refcustid`),
  CONSTRAINT `refcustid` FOREIGN KEY (`refcustid`) REFERENCES `customer` (`idcustomer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (306,4),(307,3);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `idrole` int NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'12345','123456'),(1,'1234567','1234567'),(3,'aancketillz','NzND5H35jQH'),(5,'abrettoro','cz8weo'),(1,'acosely1r','fGTcce'),(4,'aharty2r','dQGT0dk'),(4,'ahilhouser','XTLEmYR5Uqd'),(8,'aliffep','iYxmLnEgxVjC'),(0,'alimbourne2d','ys6xWs8J'),(7,'apetrasch4','MeoQtpWu'),(9,'apetriello2c','cNu7dYXgyi'),(2,'aryesh','123'),(9,'athomton14','D0e40Gvx'),(3,'ati','123'),(7,'atuther2h','0Uz62su'),(5,'avineall2q','DB8LazAe5KP'),(0,'ayush','root'),(1,'ayushji','ayushji'),(2,'bbullingham20','XLJ3lDC06'),(2,'bpingston2p','65GFId'),(1,'bslewcockq','OD8BHTlMPFq'),(9,'candrat1h','B3Ez51R5e3fU'),(4,'cbeynkn24','CV65OqjWu'),(2,'cgritsaevk','oqIkZ2'),(8,'challeyboneg','OIyLBYA1L'),(0,'chessenthaler19','lrlA30fbA'),(8,'cjordison22','bqqbZK3vE'),(9,'clies2o','vGmonaaHum6B'),(0,'cmalkin7','mx9Ylu6'),(4,'cmonarda','yHK3qxHBBJ'),(3,'ctregaskis1y','XnyS6k'),(9,'dflye5','C9Y2V97Z'),(8,'dgrendonf','QEMgsKHVB50o'),(2,'dnichew','cEgw38Wy'),(6,'dreijmers1m','hSy5H4'),(1,'drstrange','123'),(1,'dwillmotn','Kn8w3qqqKAJq'),(6,'eassard2e','EX3qDNm8'),(9,'ebeggini1x','SfrSH4AG'),(1,'egrinter21','5WgAmKJ'),(7,'elindro2i','VfLPH3PsNI'),(1,'erobottham1k','sIlH8KSD7l'),(3,'fgrimme25','wA1kQfiECFO'),(5,'gbillings2g','VIvy1XZQa9DY'),(6,'gfarland1c','pRaDpU2FoCs'),(1,'gfifield0','YhpHax'),(7,'ggreneham1','3D9plI'),(2,'ghyndy','u3I67JIB9P6'),(3,'gsuarezi','6VPs7pOZt'),(8,'hillemx','7FxfSsFDr'),(2,'hperfect1z','Si4YmJgX'),(9,'hszymanek1d','yiwaMiSx'),(8,'imcconigald','lAdST6AF'),(8,'ispickettj','B1boQ6X'),(8,'jantonignettil','RHUeMWXiYUq'),(4,'jbeames23','0WXwqLo'),(8,'jbruno2m','KEsHrNL'),(6,'jconquest11','RwnL9ro8'),(8,'jjacomb17','YbqfnmPzV'),(9,'jkatt10','WK6OPoE8doX'),(9,'jkuhnwald2b','pzmx2Tx'),(3,'jrawnsley28','zTtb8wItaU'),(3,'jsanderson2l','WdTEwoQm'),(8,'jsettle2n','S6jIGAe'),(0,'jtottie1j','c5yOsBe8S'),(5,'kadamthwaite2k','JRtUNE8V'),(9,'kblincoe1b','xoIGhASS4sqb'),(4,'kisham1n','UiKWAbMM49H'),(1,'kitzchaky1v','JbIvDIzzO'),(4,'kmccathy6','PnUll05oc'),(6,'ksweynsont','YHYkhWiwM7'),(1,'lcolthurst3','lcKxXi6hi'),(4,'ldaudrayu','7pFJxS0R'),(9,'lfielden1a','xTYXaMwkr6'),(3,'madir','1234'),(4,'mattenborrow1q','s1QLKvZwM'),(4,'megginson26','OjB6fgMNy'),(3,'merabeta','1234'),(7,'mgasparro13','4EFiKv7XGhPx'),(1,'mhurrion1l','wcYrej2ow9yp'),(3,'mimba','1234'),(7,'mlittlewoods','BnGH6QY'),(7,'mmcclevertyv','uG1QYSCkvEs6'),(6,'mmushawe2f','dcBsyW16KXag'),(7,'mpersian1s','S9cQLQI'),(7,'mpilmoor16','2aL2grjS'),(2,'ncaroll1w','QVuo7R3eyq'),(8,'nconigsbyc','KNPLdpFHOYc'),(6,'nlucy15','L8ITakuMZY'),(3,'noddy','1234'),(3,'nvanshin18','Zd7C2bSZlM'),(2,'obuckberry9','TCzhInr'),(9,'onayer1p','S0an5OlP3'),(1,'pcleef12','Ytj9wnFME'),(0,'pcollihole1g','TiP1BAb'),(3,'pops','1234'),(1,'ptesdaleb','aSPD1l'),(6,'rbenneyworth29','PLZNKvi'),(5,'rceeleym','dqp5i8GrMA'),(8,'rcranny2','6jimLon'),(8,'rdochon1o','4fB1jwwARj'),(0,'rlorden1e','cp7gK0GkAWB'),(1,'sgynnh','eS24om5t'),(2,'spa','123'),(1,'spi','123'),(2,'spo','123'),(0,'srosedale1u','ZZBepng0pv'),(3,'swhiscarde','osHYl3jzq71'),(1,'tbedson27','cZF0Rnzo5A'),(3,'tintin','1234'),(0,'tjakaway1t','H2lx0wZRLJOI'),(1,'tmabbot2j','ZZU6rEF'),(0,'tmcard8','UGYZA6m'),(4,'trathke1i','qswKHNaQo'),(2,'twinterflood1f','Ia2HbzFXTjk'),(8,'wbyway2a','Aem6oGN');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderid` int NOT NULL,
  `payment` varchar(45) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `custid` int DEFAULT NULL,
  PRIMARY KEY (`orderid`),
  KEY `custid_idx` (`custid`),
  CONSTRAINT `custid` FOREIGN KEY (`custid`) REFERENCES `customer` (`idcustomer`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'COD',500,200),(2,'COD',300,201),(3,'UPI',180,307),(4,'COD',45,307),(5,'COD',45,307),(6,'COD',45,307),(7,'COD',9,307),(8,'COD',18,307),(9,'COD',18,307),(10,'COD',2120,306),(11,'COD',18,306);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `idProducts` int NOT NULL,
  `ProductName` varchar(45) NOT NULL,
  `Stock` int NOT NULL,
  `Price` int NOT NULL,
  `Discount` int NOT NULL,
  `Category` varchar(45) NOT NULL,
  `ref_userid` int NOT NULL,
  PRIMARY KEY (`idProducts`),
  KEY `ref_userid_idx` (`ref_userid`),
  CONSTRAINT `ref_userid` FOREIGN KEY (`ref_userid`) REFERENCES `vendor` (`idvendor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (300,'Beer - Rickards Red',844,100,43,'Food',1),(302,'Truffle Cups - Red',235,1344,28,'Food',3),(304,'Energy Drink',21,123,15,'Food',5),(306,'Cheese - Pied De Vents',475,68,2,'Alchohol',7),(307,'Strawberries - California',601,46,44,'Food',8),(308,'Glass - Wine, Plastic, Clear 5 Oz',879,345,40,'Fruit',9),(309,'Broom - Push',929,345,98,'Alchohol',10),(310,'Wine - White, Concha Y Toro',114,786,48,'Alchohol',11),(311,'Noodles - Steamed Chow Mein',782,556,47,'Fruit',12),(312,'Muffin Mix - Lemon Cranberry',211,270945,68,'Fruit',13),(313,'Tahini Paste',853,5456,51,'Fruit',14),(314,'Cup - 6oz, Foam',277,6,64,'Vegetable',15),(315,'Bread - Roll, Whole Wheat',133,56,31,'Fruit',16),(316,'Pork Ham Prager',178,45,64,'Vegetable',17),(317,'Juice - Pineapple, 341 Ml',43,675,72,'Alchohol',18),(318,'Turkey - Whole, Fresh',117,441797,86,'Vegetable',19),(319,'Asparagus - White, Fresh',65,76,47,'Alchohol',20),(320,'Ecolab - Ster Bac',612,68,42,'Alchohol',21),(322,'Pepper - Sorrano',777,35,82,'Vegetable',23),(323,'Syrup - Chocolate',399,35,59,'Vegetable',24),(324,'Pepper - Julienne, Frozen',549,34,50,'Vegetable',25),(325,'Coffee - Dark Roast',981,656,46,'Vegetable',26),(326,'Shrimp - Baby, Cold Water',136,767,92,'Alchohol',27),(327,'Cheese - St. Andre',418,87,57,'Alchohol',28),(328,'Maintenance Removal Charge',908,45,86,'Alchohol',29),(329,'Soda Water - Club Soda, 355 Ml',480,45,65,'Vegetable',30),(330,'Onions - Dried, Chopped',584,3,85,'Alchohol',31),(332,'Pie Box - Cello Window 2.5',618,3,70,'Fruit',33),(333,'Soup - Campbells Broccoli',960,7,59,'Alchohol',34),(335,'Milk - Buttermilk',483,67,19,'Alchohol',36),(336,'Bar Energy Chocchip',696,9,46,'Alchohol',37),(337,'Lemon Tarts',392,345,71,'Drink',38),(338,'Dooleys Toffee',8,78,57,'Fruit',39),(339,'Appetiser - Bought',421,678,50,'Vegetable',40),(340,'Liqueur Banana, Ramazzotti',314,456,35,'Fruit',41),(341,'Veal - Heart',196,34,17,'Vegetable',42),(342,'Longan',547,34,71,'Drink',43),(343,'Gatorade - Fruit Punch',556,55,86,'Drink',44),(344,'Bread - Bagels, Mini',290,57,76,'Drink',45),(345,'Bay Leaf Fresh',761,86,49,'Drink',46),(347,'Jam - Raspberry,jar',334,98978,49,'Alchohol',48),(349,'Melon - Honey Dew',644,9,42,'Food',50),(350,'Tuna - Sushi Grade',263,5,89,'Fruit',51),(352,'Rolled Oats',523,322,47,'Food',53),(353,'Yokaline',552,52,84,'Fruit',54),(354,'Jam - Apricot',718,56,42,'Alchohol',55),(355,'Mushroom - Porcini Frozen',542,56,76,'Fruit',56),(356,'Sauce - Balsamic Viniagrette',522,67,88,'Vegetable',57),(357,'Walkers Special Old Whiskey',796,34,42,'Fruit',58),(358,'Basil - Pesto Sauce',867,675,79,'Vegetable',59),(360,'Ginsing - Fresh',152,5,46,'Drink',61),(361,'Oil - Peanut',931,3534,60,'Alchohol',62),(362,'Chick Peas - Canned',260,34,31,'Alchohol',63),(363,'Syrup - Monin, Irish Cream',736,3,86,'Alchohol',64),(364,'Salsify, Organic',523,6,74,'Alchohol',65),(365,'Water Chestnut - Canned',103,7,41,'Drink',66),(366,'Wine - Champagne Brut Veuve',835,68,55,'Drink',67),(367,'Coffee - 10oz Cup 92961',904,5,35,'Fruit',68),(368,'Island Oasis - Mango Daiquiri',3,4,56,'Vegetable',69),(369,'Grapefruit - Pink',319,7,61,'Fruit',70),(370,'Trout - Rainbow, Frozen',749,56,50,'Vegetable',71),(371,'Bread - Hamburger Buns',111,578,34,'Alchohol',72),(372,'Pie Filling - Cherry',605,7868,76,'Drink',73),(373,'Celery Root',146,56,60,'Drink',74),(374,'V8 - Berry Blend',7,122,99,'Fruit',75),(375,'Lid - 0090 Clear',794,3,75,'Vegetable',76),(376,'Apron',220,4,24,'Mat',77),(377,'Beer - Sleemans Honey Brown',737,66,51,'Vegetable',78),(378,'Bagelers - Cinn / Brown',121,78,31,'Fruit',79),(379,'Gatorade - Xfactor Berry',44,6,20,'Vegetable',80),(381,'Trout - Hot Smkd, Dbl Fillet',662,7,45,'Mat',82),(382,'Chips - Doritos',634,5,39,'Vegetable',83),(383,'Mushroom - Enoki, Dry',289,300,38,'Fruit',84),(384,'Urban Zen Drinks',907,577,80,'Vegetable',85),(385,'Lobster - Canned Premium',312,529658,47,'Fruit',86),(386,'Bar Mix - Lemon',570,477,48,'Vegetable',87),(387,'Cod - Black Whole Fillet',171,455,79,'Fruit',88),(388,'Food Colouring - Pink',582,333,95,'Vegetable',89),(389,'Eggplant - Asian',267,27654,71,'Mat',90),(390,'Sprite - 355 Ml',191,65,30,'Mat',91),(392,'Cheese - Le Cheve Noir',830,4,98,'Vegetable',93),(393,'Lychee - Canned',27,4,26,'Fruit',94),(394,'Beef - Ground, Extra Lean, Fresh',249,65,72,'Vegetable',95),(396,'Praline Paste',747,100,5,'Vegetable',97),(397,'Wine - Trimbach Pinot Blanc',759,6,47,'Fruit',98),(398,'Bagel - Whole White Sesame',971,5656,93,'Vegetable',99),(399,'Bagel - Whole White Sesame',38,10,10,'Fruit',99),(401,'Cauliflower',0,25,20,'Vegetable',102),(402,'wire',4,10,0,'electric',103);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `idvendor` int NOT NULL,
  `vendorname` varchar(45) NOT NULL,
  `venphno` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `ref_username` varchar(45) NOT NULL,
  `ref_adminid` int DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idvendor`),
  KEY `ref_username_idx` (`ref_username`),
  KEY `ref_adminid_idx` (`ref_adminid`),
  CONSTRAINT `ref_adminid` FOREIGN KEY (`ref_adminid`) REFERENCES `admin` (`idAdmin`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ref_username` FOREIGN KEY (`ref_username`) REFERENCES `login` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (1,'Garold','5236799730','425 Nobel Pass','gfifield0',101,NULL),(2,'Dela','8389027073','20306 Buhler Parkway','ggreneham1',101,NULL),(3,'Anselm','7748943379','45 Esch Court','rcranny2',101,NULL),(5,'Egon','2174901905','30641 Maple Park','apetrasch4',101,NULL),(6,'Farah','8015778641','2766 Rockefeller Road','dflye5',101,NULL),(7,'Cathy','2218357460','36 Stephen Place','kmccathy6',101,NULL),(8,'Helaina','9097725127','4730 Packers Circle','cmalkin7',101,NULL),(9,'Tillie','8654694598','9 Kim Drive','tmcard8',101,NULL),(10,'Tommi','5719227128','399 Thackeray Terrace','obuckberry9',101,NULL),(11,'Whitney','5962003364','03 Raven Circle','cmonarda',101,NULL),(12,'Enriqueta','9351333036','669 Buena Vista Center','ptesdaleb',101,NULL),(13,'Wayne','7586023606','34 Moose Court','nconigsbyc',101,NULL),(14,'Zerk','4932904356','1 Spenser Lane','imcconigald',101,NULL),(15,'Marilyn','7037182184','0481 Northridge Crossing','swhiscarde',102,NULL),(16,'Baird','8124100634','0810 Burning Wood Park','dgrendonf',102,NULL),(17,'Averil','1591196619','989 Logan Park','challeyboneg',102,NULL),(18,'Fifine','9701346017','5 Melby Center','sgynnh',102,NULL),(19,'Cicely','4872492379','0 Chinook Place','gsuarezi',102,NULL),(20,'Baudoin','8312837686','0 Valley Edge Circle','ispickettj',102,NULL),(21,'Casi','6646035501','19360 Ridgeway Parkway','cgritsaevk',102,NULL),(22,'Katrinka','7829070507','2 Mitchell Pass','jantonignettil',102,NULL),(23,'Loy','8082714327','87 Pawling Parkway','rceeleym',102,NULL),(24,'Winn','4656411911','7 Beilfuss Alley','dwillmotn',102,NULL),(25,'Maggee','3925341490','681 Lake View Drive','abrettoro',102,NULL),(26,'Nessie','4729993510','16 Jackson Trail','aliffep',102,NULL),(27,'Maighdiln','4518740710','4427 Raven Center','bslewcockq',102,NULL),(28,'Ware','5919786504','49 Artisan Circle','ahilhouser',102,NULL),(29,'Claudelle','8018672964','1 Kropf Pass','mlittlewoods',102,NULL),(30,'Hunfredo','1293726526','529 Nevada Road','ksweynsont',102,NULL),(31,'Yance','9737235176','8257 Union Circle','ldaudrayu',102,NULL),(32,'Nicole','7501807883','22 Independence Way','mmcclevertyv',102,NULL),(33,'Gaby','2081664455','84 Waywood Court','dnichew',102,NULL),(34,'Veriee','1889262971','46 Blackbird Circle','hillemx',102,NULL),(35,'Corenda','7912941229','2 Washington Crossing','ghyndy',102,NULL),(36,'Keefe','1915779769','8553 North Plaza','aancketillz',102,NULL),(37,'Hy','8827651153','58 Helena Street','jkatt10',102,NULL),(38,'Jozef','2022982874','0591 Duke Parkway','jconquest11',102,NULL),(39,'Bryant','5857413965','428 Kinsman Parkway','pcleef12',102,NULL),(40,'Ginelle','8808010404','82737 John Wall Parkway','mgasparro13',102,NULL),(41,'Ambrosio','5444492877','7 Brown Circle','athomton14',102,NULL),(42,'Marje','9839445676','0 Marcy Way','nlucy15',102,NULL),(43,'Gerri','3018118411','3888 Burrows Way','mpilmoor16',102,NULL),(44,'Selie','5951447086','9 Hoffman Drive','jjacomb17',102,NULL),(45,'Billye','2468194113','15 Gateway Crossing','nvanshin18',102,NULL),(46,'Graeme','4378618362','77 Gina Junction','chessenthaler19',108,NULL),(47,'Wendye','5132611844','29528 Onsgard Avenue','lfielden1a',108,NULL),(48,'Christie','1679297926','37588 2nd Road','kblincoe1b',108,NULL),(49,'Raul','5938302882','2 Kenwood Avenue','gfarland1c',108,NULL),(50,'Carolee','8708868159','5794 Kropf Drive','hszymanek1d',108,NULL),(51,'Edgard','3683106329','06287 Merchant Point','rlorden1e',108,NULL),(52,'Daren','4381127640','292 Fremont Hill','twinterflood1f',108,NULL),(53,'Clarance','3999116251','6 Heffernan Junction','pcollihole1g',108,NULL),(54,'Pattin','6514485058','079 Cordelia Street','candrat1h',108,NULL),(55,'Irina','4523739994','717 Harper Crossing','trathke1i',108,NULL),(56,'Efrem','8554569780','97522 Warrior Circle','jtottie1j',108,NULL),(57,'Juieta','6818781468','6 Burning Wood Crossing','erobottham1k',108,NULL),(58,'Dolli','9062609927','825 International Terrace','mhurrion1l',108,NULL),(59,'Garland','8493800961','9457 Summer Ridge Place','dreijmers1m',108,NULL),(60,'Guido','2474272806','2018 Sycamore Junction','kisham1n',108,NULL),(61,'Janeczka','8806138464','42 American Ash Parkway','rdochon1o',108,NULL),(62,'Siward','3005446220','6036 Arapahoe Parkway','onayer1p',108,NULL),(63,'Lory','4091367995','8 Corscot Center','mattenborrow1q',108,NULL),(64,'Ermengarde','5499336116','77094 Forster Road','acosely1r',108,NULL),(65,'Lauritz','3433008380','668 Lakeland Parkway','mpersian1s',108,NULL),(66,'Kayne','7879228708','61122 Utah Junction','tjakaway1t',108,NULL),(67,'Cheston','5309531353','36 Welch Circle','srosedale1u',108,NULL),(68,'Nadia','9204762204','9111 Porter Hill','kitzchaky1v',108,NULL),(69,'Niccolo','4671866858','6383 Corscot Point','ncaroll1w',108,NULL),(70,'Wilbur','4186557450','9761 Meadow Valley Lane','ebeggini1x',108,NULL),(71,'Xavier','3162153204','9 Talmadge Drive','ctregaskis1y',108,NULL),(72,'Martelle','6617415071','9503 Blaine Alley','hperfect1z',108,NULL),(73,'Allyn','4497019268','8662 Colorado Park','bbullingham20',108,NULL),(74,'Lonni','8029487799','06661 Crescent Oaks Plaza','egrinter21',108,NULL),(75,'Giustino','9786296009','960 Saint Paul Alley','cjordison22',108,NULL),(76,'Lek','5774770929','1760 Maple Street','jbeames23',108,NULL),(77,'Maurie','8657759983','1048 Farragut Plaza','cbeynkn24',108,NULL),(78,'Barnebas','3563745634','624 Dawn Lane','fgrimme25',108,NULL),(79,'Ham','3158511432','13984 Mitchell Pass','megginson26',108,NULL),(80,'Alexio','4711141852','16 Goodland Crossing','tbedson27',108,NULL),(81,'Hill','4586549898','26 Mariners Cove Junction','jrawnsley28',108,NULL),(82,'Roseanna','7171590290','4 Haas Drive','rbenneyworth29',108,NULL),(83,'Francene','5612004978','95142 West Drive','wbyway2a',108,NULL),(84,'Andreana','7511023363','4 Waywood Pass','jkuhnwald2b',108,NULL),(85,'Bar','4288690185','9818 Upham Center','apetriello2c',108,NULL),(86,'Tamarra','3952751353','61 Fuller Center','alimbourne2d',108,NULL),(87,'Andrey','2443323277','4 Toban Trail','eassard2e',108,NULL),(88,'Jasen','3911797298','4 Macpherson Way','mmushawe2f',108,NULL),(89,'Natka','2911221503','4918 Golf Course Street','gbillings2g',108,NULL),(90,'Ad','7548175802','6214 Merry Plaza','atuther2h',108,NULL),(91,'Kirstyn','5674472979','7 Golf Alley','elindro2i',108,NULL),(92,'Bradley','5954067568','29674 Leroy Trail','tmabbot2j',108,NULL),(93,'Rachael','9964290551','454 Crest Line Avenue','kadamthwaite2k',108,NULL),(94,'Loralee','6765890097','01 Crescent Oaks Center','jsanderson2l',108,NULL),(95,'Melessa','2059678059','15 American Alley','jbruno2m',108,NULL),(96,'Lisbeth','4846650742','20123 Maple Street','jsettle2n',108,NULL),(97,'Roderich','1152840543','41865 Novick Center','clies2o',108,NULL),(98,'Katerina','3729944226','3 Bonner Junction','bpingston2p',108,NULL),(99,'Audra','9198880382','80796 Mayer Drive','avineall2q',108,NULL),(100,'Willie','8219984508','3549 Westridge Court','aharty2r',108,NULL),(102,'ahd','7246389724','hasd','spo',203,'123'),(103,'aryesh','23423','slfkj','aryesh',204,'123');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ezyshop'
--

--
-- Dumping routines for database 'ezyshop'
--

--
-- Final view structure for view `fb`
--

/*!50001 DROP VIEW IF EXISTS `fb`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fb` AS select avg(`feedback`.`star`) AS `avg(star)` from `feedback` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-09  0:19:27
