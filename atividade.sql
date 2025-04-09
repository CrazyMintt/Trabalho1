CREATE DATABASE  IF NOT EXISTS `atividade` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `atividade`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: atividade
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `veiculos`
--

DROP TABLE IF EXISTS `veiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculos` (
  `idveiculos` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL,
  `vrm` varchar(7) DEFAULT NULL,
  `vin` varchar(17) DEFAULT NULL,
  PRIMARY KEY (`idveiculos`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculos`
--

LOCK TABLES `veiculos` WRITE;
/*!40000 ALTER TABLE `veiculos` DISABLE KEYS */;
INSERT INTO `veiculos` VALUES (1,'Hyundai Wrangler','Crew Cab Pickup','yellow','FY89KKM','LVJGJMXP8ZBB68200'),(2,'Honda Expedition','Hatchback','mint green','HD47PUW','4X8JX3G3R5L394700'),(3,'Kia Explorer','Minivan','teal','BV70QNU','1T8SSJCLG4G571437'),(4,'Nissan Focus','Extended Cab Pickup','lavender','EI29DWJ','HTULCKSHHFFG51611'),(5,'Cadillac ATS','Coupe','lime','ZU43JHP','28100LN0GECE83533'),(6,'Cadillac Model X','Coupe','orange','NZ05KCF','PTGSUZMZEZRL22442'),(7,'Tesla Grand Cherokee','Minivan','magenta','MB86LAX','609TW0WFZ6MR97188'),(8,'Fiat A4','Extended Cab Pickup','lime','AD52OLY','APMNWXXXHRRR20937'),(9,'Chrysler Volt','Passenger Van','mint green','HM18HPP','PJ0HRH478AVL78120'),(10,'Lamborghini LeBaron','SUV','sky blue','SD91IJC','EVFBZMNNFFHP14128'),(11,'Rolls Royce PT Cruiser','SUV','sky blue','JT89LMF','W7JL4WV0MWJY29094'),(12,'BMW Civic','Coupe','mint green','AN87ZDN','U2D079EY0UW747640'),(13,'Tesla Sentra','Crew Cab Pickup','blue','BP41KQX','TYA59A91TAUT34478'),(14,'Bugatti Accord','Convertible','pink','XA70GCQ','R7MCM2BBF8TZ52683'),(15,'Toyota Civic','Coupe','silver','UH90EMQ','JCHSBKNBATD322317'),(16,'Chevrolet Beetle','Coupe','violet','LQ42JIK','CZLA3T8UC2Z023830'),(17,'Kia Fiesta','Extended Cab Pickup','red','OT41IQD','6NVKMLHF4TR366994'),(18,'Ferrari Cruze','Minivan','indigo','CO73ORC','MGHJ03F267CB83525'),(19,'Chrysler Focus','Hatchback','green','DU00ZRD','27DPDCV7EBYT97807'),(20,'Hyundai Explorer','Wagon','white','VV47KGD','LD98A2M8GVEZ71901'),(21,'Honda Charger','Coupe','gold','DG32VOG','SN1YV2M16EED24868'),(22,'Chevrolet Mercielago','Sedan','yellow','OX56SXL','BA8LREJ4VGR654241'),(23,'Chrysler Escalade','Convertible','black','EV49EVX','89U4C2C08TM886520'),(24,'Rolls Royce CTS','Wagon','black','ZC96CJH','FGM107KRT2AV32030'),(25,'Fiat Escalade','Cargo Van','red','GY15XYY','ELWXWZ3A0YBJ48535'),(26,'Tesla Escalade','Coupe','maroon','XN05UVQ','VD31RDPRUYRB82736'),(27,'Nissan Durango','Extended Cab Pickup','pink','QY36RJJ','4W86TN5VJRCD16409'),(28,'Land Rover Durango','Crew Cab Pickup','maroon','XB36MRA','AX2APKKBPSHL36518'),(29,'Smart Explorer','Crew Cab Pickup','violet','IV47FXB','PW3F04N6H5CA57824'),(30,'Rolls Royce V90','Crew Cab Pickup','sky blue','WF47YET','ZCX95M9SRAJT32804'),(31,'Bugatti Roadster','Passenger Van','green','DW25YIX','DPKKWAESSERK24065'),(32,'Volvo 911','Sedan','white','DN25TDZ','5LZNR96LE4WY63998'),(33,'Audi Prius','Sedan','silver','DX98PZX','RZVDX97X66J660840'),(34,'Chrysler Charger','Wagon','sky blue','ID12SFR','RKU0S5T7RME780822'),(35,'Mercedes Benz Civic','SUV','plum','MA27EVV','GXE6JEZ7LVJT78512'),(36,'Dodge Escalade','Passenger Van','white','DO80HHS','ULJNKJ5PFNNS45204'),(37,'Dodge CX-9','Sedan','silver','FD85NGX','S7AJTE0FLJZS92767'),(38,'Maserati F-150','Crew Cab Pickup','grey','QA48ZVY','GRV1UBFZUMDG48345'),(39,'Mini 2','Convertible','plum','UT23QZF','1ULWZ6F9REW168541'),(40,'Fiat 1','Coupe','maroon','MI89CLV','7TRCG22Z18ZL62069'),(41,'Cadillac Impala','Extended Cab Pickup','plum','ZX24HJD','0F8WUMLGETNN40049'),(42,'Chrysler Fortwo','Crew Cab Pickup','grey','CJ46NOV','RHNPLX3CC2GB34122'),(43,'Mazda XC90','Coupe','ivory','KN71SJO','7J1APWPU9CZC25299'),(44,'Honda Camaro','Cargo Van','black','BJ24NEQ','4BYW0R9P68DF26944'),(45,'Honda PT Cruiser','SUV','maroon','PL43PGF','7SB9ASRSZMCY55551'),(46,'Volvo Taurus','Hatchback','turquoise','MX36GVA','J6RTVBL7GTRK81844'),(47,'Volvo Sentra','Cargo Van','lime','NI54XZV','E2VY7SSWPYKP55659'),(48,'BMW Land Cruiser','Minivan','ivory','FI62BTK','ZUYYRP4ZY7YE96176'),(49,'Jaguar Fiesta','Hatchback','tan','OZ36BIG','Y87G06CNV1EA97633'),(50,'Kia Alpine','Sedan','violet','HI01TAO','68JLPSG0H1AC77518'),(51,'Ferrari Golf','Extended Cab Pickup','maroon','EC54QFF','VH3WU7NWJTNJ79164'),(52,'Mini Accord','Extended Cab Pickup','cyan','GY30UJY','WR2L7DJZETDA73000'),(53,'Honda Expedition','Convertible','blue','WS59FYZ','YEXH5VTU3ZEL82728'),(54,'Aston Martin Malibu','Wagon','pink','GY33UVY','DD5J52FTT5TF39567'),(55,'Smart Model Y','Crew Cab Pickup','red','MQ49YES','XR9CYMDUU2TT85686'),(56,'BMW Camaro','Convertible','grey','RD80AWJ','2Y3W5CNZ4KG545747'),(57,'Bugatti Fiesta','Crew Cab Pickup','black','PY79QNJ','6JB43BNZJWNG29524'),(58,'Chevrolet Wrangler','Coupe','green','ZV95FDO','3NPY720MRGUD30505'),(59,'Volkswagen Wrangler','Cargo Van','tan','UO54XER','JNEESUP10WKV95093'),(60,'Fiat Model S','Cargo Van','lime','JU84FBC','Z9CB7MCL1ZRE18429'),(61,'Fiat XTS','Wagon','indigo','UB33ALB','NFAXTTEMMMW495548'),(62,'Lamborghini Jetta','Coupe','pink','LG37QLU','96F0D0ZLHXB075674'),(63,'Smart Fiesta','SUV','mint green','XS33DNF','X0K9R576TSEJ94293'),(64,'Cadillac Impala','Extended Cab Pickup','grey','VN48OKM','R1EDKHEJ3MEC30828'),(65,'Cadillac Grand Cherokee','Passenger Van','magenta','RK18CEU','919XF6UH47XC21912'),(66,'Ferrari Fiesta','Passenger Van','ivory','YB39GDL','SJ3RB2UD9VW813354'),(67,'Rolls Royce Countach','Extended Cab Pickup','lime','KW02HGD','WWLTDG0WARRU63077'),(68,'Rolls Royce Grand Cherokee','Extended Cab Pickup','orchid','OB34PIS','005USK2HNCT967772'),(69,'Ferrari Mustang','Hatchback','teal','TH81TFF','NTSHT6WXG1LV51013'),(70,'Dodge Cruze','SUV','blue','NH72PWK','Z7CA5LKMA7G262903'),(71,'Aston Martin Volt','Cargo Van','sky blue','ZM50HLK','XTW6P5WV0WZH95294'),(72,'Dodge F-150','Coupe','lime','VM05VLM','F4MFCV9V9GJR24561'),(73,'Cadillac Spyder','Crew Cab Pickup','indigo','HZ28LVI','FCBE6UST4ZZC75225'),(74,'Jaguar A8','Convertible','ivory','YN26HMY','C0T1G2TKL8XC40831'),(75,'Volkswagen Grand Cherokee','Extended Cab Pickup','violet','GB78LNB','8ZB6D154EUWE43278'),(76,'Chevrolet 911','Hatchback','magenta','RJ94ZKU','X735LNF2T1HZ87445'),(77,'Rolls Royce F-150','Sedan','olive','OW69QXR','YTE3UUPPCMKP39154'),(78,'Polestar CX-9','Minivan','ivory','KE71XQI','11RE8XM8GNVM33617'),(79,'Chrysler LeBaron','Hatchback','gold','FF34DYP','4KE255H8PAJW29577'),(80,'Volkswagen ATS','Coupe','maroon','RD80GVQ','XCENT18Z6RYW58974'),(81,'Jeep Challenger','Passenger Van','green','ZG59XOH','UR5X0ZXH86S088416'),(82,'Hyundai Civic','Hatchback','teal','CY69XOR','XCWUDPKXH8X478637'),(83,'Volvo Ranchero','Sedan','violet','UG90QUD','ENHX0KXUHNK740021'),(84,'Mercedes Benz Explorer','Extended Cab Pickup','maroon','QN48MYW','57HEL62XT7CF94927'),(85,'Dodge Accord','SUV','gold','IR08ACB','JP1UBG5L02YU18725'),(86,'Ferrari Silverado','Cargo Van','mint green','OK74RLP','YWCXHH57PBWZ38674'),(87,'Audi Golf','Extended Cab Pickup','lime','OK94HRF','PKCLSKK0PYRT74671'),(88,'Toyota Expedition','Coupe','fuchsia','IR20XNK','BT7CXRE3HCAP43491'),(89,'Land Rover Challenger','SUV','teal','XC18OTR','W41R4YEN1EHR87567'),(90,'Mazda ATS','Coupe','indigo','WS91SCO','3W5B4THGZBK392299'),(91,'Hyundai Countach','Sedan','tan','AM36QOM','UP7ZS67SR1V625013'),(92,'Audi Malibu','Convertible','salmon','WJ79HVU','56B90EJ3BDS545688'),(93,'Toyota A4','Wagon','mint green','XB14XSV','888FW82DH6BY50711'),(94,'Kia Camry','Crew Cab Pickup','green','LM23AFD','UKLH8K5DKEG424554'),(95,'Toyota El Camino','Hatchback','azure','DE17EIE','9BY1WEMD86FV20706'),(96,'Chrysler Prius','SUV','tan','YO78PJQ','BCZTZL32DGWK20115'),(97,'Chevrolet Prius','Passenger Van','lime','XX64WVZ','SG7XHM23YCXP30822'),(98,'Bentley Camaro','Minivan','orchid','UV48QIP','WL666GKEENL751582'),(99,'Lamborghini Malibu','Passenger Van','magenta','JA46TAT','LTAL8AS989EY72880'),(100,'Rolls Royce Expedition','Convertible','maroon','FC72MJU','5T0RRKZZK4MR41565');
/*!40000 ALTER TABLE `veiculos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-08 21:23:10
