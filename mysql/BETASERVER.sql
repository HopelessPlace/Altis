-- MySQL dump 10.14  Distrib 5.5.47-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: AltisLife
-- ------------------------------------------------------
-- Server version	5.5.47-MariaDB-1ubuntu0.14.04.1

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
-- Table structure for table `containers`
--

DROP TABLE IF EXISTS `containers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `containers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(32) NOT NULL,
  `classname` varchar(32) NOT NULL,
  `pos` varchar(64) DEFAULT NULL,
  `inventory` varchar(500) NOT NULL,
  `gear` text NOT NULL,
  `dir` varchar(64) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `owned` tinyint(4) DEFAULT '0',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `containers`
--

LOCK TABLES `containers` WRITE;
/*!40000 ALTER TABLE `containers` DISABLE KEYS */;
/*!40000 ALTER TABLE `containers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gangs`
--

DROP TABLE IF EXISTS `gangs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gangs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `members` text,
  `maxmembers` int(2) DEFAULT '8',
  `bank` int(100) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gangs`
--

LOCK TABLES `gangs` WRITE;
/*!40000 ALTER TABLE `gangs` DISABLE KEYS */;
INSERT INTO `gangs` VALUES (1,'76561198141963049','Admins','\"[`76561198141963049`,`76561198160766401`,`76561198062142044`,`76561198137980125`]\"',8,0,1,'2016-02-28 23:35:55'),(2,'76561198015751541','deine mudda','\"[`76561198015751541`]\"',8,0,1,'2016-03-08 17:38:23');
/*!40000 ALTER TABLE `gangs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houses`
--

DROP TABLE IF EXISTS `houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(32) NOT NULL,
  `pos` varchar(64) DEFAULT NULL,
  `owned` tinyint(4) DEFAULT '0',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houses`
--

LOCK TABLES `houses` WRITE;
/*!40000 ALTER TABLE `houses` DISABLE KEYS */;
INSERT INTO `houses` VALUES (4,'76561198141963049','[14338.5,18614.2,-0.0096723]',1,'2016-03-05 20:23:11'),(5,'76561198141963049','[10734.9,10979.2,0.93379]',1,'2016-03-05 20:23:47');
/*!40000 ALTER TABLE `houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `uid` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `aliases` text NOT NULL,
  `playerid` varchar(50) NOT NULL,
  `cash` int(100) NOT NULL DEFAULT '0',
  `bankacc` int(100) NOT NULL DEFAULT '0',
  `coplevel` enum('0','1','2','3','4','5','6','7') NOT NULL DEFAULT '0',
  `mediclevel` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `civ_licenses` text NOT NULL,
  `cop_licenses` text NOT NULL,
  `med_licenses` text NOT NULL,
  `civ_gear` text NOT NULL,
  `cop_gear` text NOT NULL,
  `med_gear` text NOT NULL,
  `civ_stats` varchar(21) NOT NULL DEFAULT '"[100,100,0]"',
  `cop_stats` varchar(21) NOT NULL DEFAULT '"[100,100,0]"',
  `med_stats` varchar(21) NOT NULL DEFAULT '"[100,100,0]"',
  `arrested` tinyint(1) NOT NULL DEFAULT '0',
  `adminlevel` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `donatorlvl` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `blacklist` tinyint(1) NOT NULL DEFAULT '0',
  `playtime` varchar(25) NOT NULL DEFAULT '"[0,0,0]"',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `playerid` (`playerid`),
  KEY `name` (`name`),
  KEY `blacklist` (`blacklist`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (16,'[ONYX] Dr. Ignaz Möbius','\"[`[DHS] Dr. Ignaz Möbius`]\"','76561198141963049',0,788265728,'0','4','\"[[`license_civ_driver`,1],[`license_civ_boat`,1],[`license_civ_pilot`,1],[`license_civ_trucking`,1],[`license_civ_gun`,0],[`license_civ_dive`,0],[`license_civ_home`,1],[`license_civ_oil`,0],[`license_civ_diamond`,0],[`license_civ_salt`,0],[`license_civ_sand`,0],[`license_civ_iron`,0],[`license_civ_copper`,0],[`license_civ_cement`,0],[`license_civ_medmarijuana`,0],[`license_civ_cocaine`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,1],[`license_civ_rebel`,1]]\"','\"[[`license_cop_cAir`,1],[`license_cop_cg`,1]]\"','\"[[`license_med_mAir`,1]]\"','\"[`U_C_Poloshirt_stripped`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,``,[`Rangefinder`],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"','\"[`U_Rangemaster`,``,``,``,`H_Beret_blk_POLICE`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"','\"[`U_C_Scientist`,``,`B_AssaultPack_blk`,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`,`NVGoggles`],[],[],[`FirstAidKit`,`FirstAidKit`],[],[`Medikit`,`ToolKit`],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"','\"[100,100]\"','\"[80,70]\"','\"[100,100]\"',0,'0','0',0,'\"[0,0,0]\"','2016-02-29 17:52:49'),(17,'Balu','\"[`Dimitri Putin`]\"','76561198015751541',763799,16440951,'7','4','\"[[`license_civ_driver`,1],[`license_civ_boat`,1],[`license_civ_pilot`,1],[`license_civ_trucking`,1],[`license_civ_gun`,0],[`license_civ_dive`,0],[`license_civ_home`,0],[`license_civ_oil`,0],[`license_civ_diamond`,0],[`license_civ_salt`,0],[`license_civ_sand`,0],[`license_civ_iron`,0],[`license_civ_copper`,0],[`license_civ_cement`,0],[`license_civ_medmarijuana`,0],[`license_civ_cocaine`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,1],[`license_civ_rebel`,1]]\"','\"[[`license_cop_cAir`,1],[`license_cop_cg`,1]]\"','\"[[`license_med_mAir`,1]]\"','\"[`U_IG_Guerilla1_1`,`V_HarnessO_brn`,`B_Carryall_oli`,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],`srifle_DMR_01_F`,``,[],[`10Rnd_762x54_Mag`,`10Rnd_762x54_Mag`],[],[],[],[`10Rnd_762x54_Mag`,`10Rnd_762x54_Mag`,`10Rnd_762x54_Mag`,`10Rnd_762x54_Mag`,`10Rnd_762x54_Mag`,`10Rnd_762x54_Mag`],[``,``,`optic_Hamr`,``],[``,``,``,``],[]]\"','\"[`U_Rangemaster`,`V_TacVest_blk_POLICE`,``,`G_Shades_Black`,`H_Cap_police`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`,`NVGoggles`],``,`hgun_P07_snds_F`,[],[],[],[],[],[`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`],[``,``,``,``],[`muzzle_snds_L`,``,``,``],[]]\"','\"[`U_B_CombatUniform_mcam_tshirt`,`V_PlateCarrierSpec_rgr`,`B_AssaultPack_rgr_Medic`,``,`H_HelmetB_light_desert`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemRadio`,`NVGoggles`],[],[],[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"','\"[55,35]\"','\"[100,100]\"','\"[100,100]\"',0,'0','0',0,'\"[0,0,0]\"','2016-02-29 23:57:44'),(18,'IceCube','\"[`IceCube`]\"','76561198160766401',117500,1269998,'7','4','\"[[`license_civ_driver`,0],[`license_civ_boat`,0],[`license_civ_pilot`,0],[`license_civ_trucking`,0],[`license_civ_gun`,0],[`license_civ_dive`,0],[`license_civ_home`,0],[`license_civ_oil`,0],[`license_civ_diamond`,0],[`license_civ_salt`,0],[`license_civ_sand`,0],[`license_civ_iron`,0],[`license_civ_copper`,0],[`license_civ_cement`,0],[`license_civ_medmarijuana`,0],[`license_civ_cocaine`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_rebel`,0]]\"','\"[[`license_cop_cAir`,0],[`license_cop_cg`,0]]\"','\"[[`license_med_mAir`,0]]\"','\"[`U_C_Poloshirt_salmon`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[[`peach`,9]]]\"','\"[`U_Rangemaster`,``,``,``,`H_HelmetB_light_desert`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemRadio`,`NVGoggles`],`arifle_MX_pointer_F`,`hgun_P07_F`,[`FirstAidKit`],[`30Rnd_65x39_caseless_mag`,`Chemlight_green`],[],[],[],[],[``,`acc_pointer_IR`,``,``],[``,``,``,``],[]]\"','\"[`U_Rangemaster`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],[],[],[`FirstAidKit`,`FirstAidKit`],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"','\"[60,40]\"','\"[100,100]\"','\"[100,100]\"',0,'0','0',0,'\"[0,0,0]\"','2016-03-02 20:31:21'),(19,'Matthew C.','\"[`Matthew C.`]\"','76561198062142044',0,3700,'0','0','\"[[`license_civ_driver`,0],[`license_civ_boat`,0],[`license_civ_pilot`,0],[`license_civ_trucking`,0],[`license_civ_gun`,0],[`license_civ_dive`,0],[`license_civ_home`,0],[`license_civ_oil`,0],[`license_civ_diamond`,0],[`license_civ_salt`,0],[`license_civ_sand`,0],[`license_civ_iron`,0],[`license_civ_copper`,0],[`license_civ_cement`,0],[`license_civ_medmarijuana`,0],[`license_civ_cocaine`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_rebel`,0]]\"','\"[]\"','\"[]\"','\"[`U_C_Poloshirt_blue`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],[],[],[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"','\"[]\"','\"[]\"','\"[90,90]\"','\"[100,100,0]\"','\"[100,100,0]\"',0,'0','0',0,'\"[0,0,0]\"','2016-03-03 14:06:55'),(20,'[DHS] Leticia von Onyxia','\"[`[DHS] Leticia von Onyxia`]\"','76561197990821646',0,1400,'0','0','\"[[`license_civ_driver`,0],[`license_civ_boat`,0],[`license_civ_pilot`,0],[`license_civ_trucking`,0],[`license_civ_gun`,0],[`license_civ_dive`,0],[`license_civ_home`,0],[`license_civ_oil`,0],[`license_civ_diamond`,0],[`license_civ_salt`,0],[`license_civ_sand`,0],[`license_civ_iron`,0],[`license_civ_copper`,0],[`license_civ_cement`,0],[`license_civ_medmarijuana`,0],[`license_civ_cocaine`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_rebel`,0]]\"','\"[]\"','\"[]\"','\"[`U_C_Poloshirt_burgundy`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"','\"[]\"','\"[]\"','\"[90,80]\"','\"[100,100,0]\"','\"[100,100,0]\"',0,'0','0',0,'\"[0,0,0]\"','2016-03-03 18:19:02'),(21,'[ONYX] Dr.V.Kalasch','\"[`rocco_000`]\"','76561198059903131',615608,17978500,'0','5','\"[]\"','\"[]\"','\"[[`license_med_mAir`,0]]\"','\"[]\"','\"[]\"','\"[`U_C_Scientist`,``,`B_Bergen_blk`,``,`H_Cap_blu`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`NVGoggles`],[],[],[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[[`waterBottle`,3],[`rabbit`,1]]]\"','\"[100,100,0]\"','\"[100,100,0]\"','\"[90,90]\"',0,'0','0',0,'\"[0,0,0]\"','2016-03-08 21:39:59'),(22,'(Chinamann) Kaiser','\"[`(Chinamann) Kaiser`]\"','76561198021826291',1,12478975,'0','0','\"[[`license_civ_driver`,0],[`license_civ_boat`,0],[`license_civ_pilot`,0],[`license_civ_trucking`,0],[`license_civ_gun`,0],[`license_civ_dive`,0],[`license_civ_home`,0],[`license_civ_oil`,0],[`license_civ_diamond`,0],[`license_civ_salt`,0],[`license_civ_sand`,0],[`license_civ_iron`,0],[`license_civ_copper`,0],[`license_civ_cement`,0],[`license_civ_medmarijuana`,0],[`license_civ_cocaine`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_rebel`,0]]\"','\"[]\"','\"[]\"','\"[`U_Marshal`,`V_TacVest_blk_POLICE`,`B_Bergen_blk`,`G_Tactical_Clear`,`H_Beret_blk`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`,`NVGoggles_OPFOR`,`Rangefinder`],`srifle_DMR_03_DMS_F`,``,[`ItemGPS`],[],[`NVGoggles_OPFOR`,`Rangefinder`],[],[`acc_flashlight`],[`20Rnd_762x51_Mag`,`20Rnd_762x51_Mag`,`20Rnd_762x51_Mag`,`20Rnd_762x51_Mag`,`20Rnd_762x51_Mag`,`20Rnd_762x51_Mag`,`20Rnd_762x51_Mag`,`20Rnd_762x51_Mag`],[``,`acc_flashlight`,`optic_DMS`,``],[``,``,``,``],[]]\"','\"[]\"','\"[]\"','\"[90,80]\"','\"[100,100,0]\"','\"[100,100,0]\"',0,'0','0',0,'\"[0,0,0]\"','2016-03-10 19:44:11');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicles` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `side` varchar(15) NOT NULL,
  `classname` varchar(32) NOT NULL,
  `type` varchar(12) NOT NULL,
  `pid` varchar(32) NOT NULL,
  `alive` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `plate` int(20) NOT NULL,
  `color` int(20) NOT NULL,
  `inventory` varchar(500) NOT NULL,
  `gear` text NOT NULL,
  `fuel` double NOT NULL DEFAULT '1',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `side` (`side`),
  KEY `pid` (`pid`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (6,'civ','O_MRAP_02_F','Car','76561198141963049',1,0,259337,0,'[[],0]','[]',1,'2016-02-29 15:28:48'),(7,'civ','O_MRAP_02_F','Car','76561198141963049',1,0,547604,0,'[[],0]','[]',1,'2016-02-29 16:19:45'),(8,'civ','B_Quadbike_01_F','Car','76561198141963049',1,0,126605,1,'\"[[],0]\"','\"[]\"',1,'2016-02-29 16:39:23'),(9,'civ','B_G_Offroad_01_F','Car','76561198141963049',1,0,47670,0,'\"[[],0]\"','\"[]\"',1,'2016-02-29 16:39:33'),(10,'civ','B_G_Offroad_01_F','Car','76561198141963049',1,0,240661,0,'[[],0]','[]',1,'2016-02-29 17:40:53'),(12,'civ','B_Heli_Light_01_F','Air','76561198141963049',1,0,212422,13,'[[],0]','[]',1,'2016-02-29 17:51:10'),(14,'civ','B_Heli_Light_01_F','Air','76561198141963049',1,0,635269,13,'[[],0]','[]',1,'2016-02-29 18:02:06'),(15,'civ','B_Heli_Light_01_F','Air','76561198141963049',1,0,923800,12,'[[],0]','[]',1,'2016-02-29 18:48:17'),(23,'civ','C_SUV_01_F','Car','76561198015751541',1,0,3036,1,'[[],0]','[]',1,'2016-03-01 16:26:43'),(44,'civ','C_SUV_01_F','Car','76561198015751541',1,0,73056,2,'\"[[],0]\"','\"[]\"',1,'2016-03-05 22:01:52'),(45,'civ','C_SUV_01_F','Car','76561198015751541',1,0,440565,3,'[[],0]','[]',1,'2016-03-06 00:08:54'),(46,'cop','C_Offroad_01_F','Car','76561198160766401',1,0,104930,7,'[[],0]','[]',1,'2016-03-06 00:12:29'),(47,'civ','B_Quadbike_01_F','Car','76561198015751541',1,0,946489,3,'[[],0]','[]',1,'2016-03-06 00:18:33'),(48,'civ','B_Quadbike_01_F','Car','76561198015751541',1,0,575562,3,'[[],0]','[]',1,'2016-03-06 00:18:52'),(49,'cop','C_Offroad_01_F','Car','76561198160766401',1,0,77197,7,'[[],0]','[]',1,'2016-03-06 00:28:32'),(50,'civ','B_Heli_Light_01_F','Air','76561198015751541',1,0,690890,13,'[[],0]','[]',1,'2016-03-06 00:39:27'),(51,'cop','C_Hatchback_01_sport_F','Car','76561198160766401',1,0,572772,6,'[[],0]','[]',1,'2016-03-06 00:41:58'),(56,'cop','B_Heli_Transport_01_F','Air','76561198015751541',1,0,516250,0,'[[],0]','[]',1,'2016-03-06 04:31:19'),(57,'med','C_Van_01_box_F','Car','76561198160766401',1,0,970203,2,'[[],0]','[]',1,'2016-03-06 19:43:34'),(58,'cop','B_Quadbike_01_F','Car','76561198160766401',1,0,144878,1,'[[],0]','[]',1,'2016-03-06 20:12:47'),(60,'med','C_Van_01_box_F','Car','76561198160766401',1,0,986576,2,'\"[[],0]\"','\"[]\"',1,'2016-03-06 20:28:49'),(73,'cop','B_Quadbike_01_F','Car','76561198015751541',1,0,84082,0,'[[],0]','\"[[[],[]],[[],[]],[[],[]],[[],[]]]\"',0.999364,'2016-03-07 00:09:09'),(75,'cop','B_Quadbike_01_F','Car','76561198015751541',1,0,357867,1,'[[],0]','[]',1,'2016-03-07 00:20:59'),(76,'cop','C_Offroad_01_F','Car','76561198015751541',1,0,107183,7,'[[],0]','[]',1,'2016-03-07 00:21:23'),(79,'med','C_Van_01_box_F','Car','76561198015751541',1,1,321273,2,'[[],0]','[]',1,'2016-03-07 00:41:10'),(85,'cop','B_Heli_Light_01_F','Air','76561198015751541',1,0,94865,0,'[[],0]','[]',1,'2016-03-08 03:32:06'),(86,'med','C_Offroad_01_F','Car','76561198015751541',0,1,664179,8,'[[],0]','\"[[[],[]],[[],[]],[[],[]],[[],[]]]\"',0.99492,'2016-03-08 03:33:06'),(87,'med','C_Offroad_01_F','Car','76561198015751541',0,1,868486,8,'[[],0]','[]',1,'2016-03-08 03:33:37'),(89,'civ','C_SUV_01_F','Car','76561198015751541',1,0,726606,3,'\"[[],0]\"','\"[]\"',1,'2016-03-08 17:32:04'),(93,'med','B_Truck_01_medical_F','Car','76561198059903131',1,0,525877,0,'[[],0]','\"[[[],[]],[[],[]],[[],[]],[[],[]]]\"',1,'2016-03-08 22:47:18'),(94,'med','O_Truck_03_medical_F','Car','76561198059903131',1,0,409365,0,'[[],0]','\"[[[],[]],[[],[]],[[],[]],[[],[]]]\"',1,'2016-03-08 22:48:28'),(95,'med','I_Truck_02_medical_F','Car','76561198059903131',1,0,493510,0,'[[],0]','\"[[[],[]],[[],[]],[[],[]],[[],[]]]\"',1,'2016-03-08 22:48:52'),(96,'med','C_Van_01_box_F','Car','76561198059903131',1,0,26553,2,'[[],0]','\"[[[],[]],[[],[]],[[],[]],[[],[]]]\"',1,'2016-03-08 22:49:05'),(97,'med','C_Offroad_01_F','Car','76561198059903131',1,0,307570,8,'[[],0]','\"[[[],[]],[[],[]],[[],[]],[[],[]]]\"',1,'2016-03-08 22:49:43'),(98,'med','O_Heli_Light_02_unarmed_F','Air','76561198059903131',1,0,591509,4,'\"[[],0]\"','\"[]\"',1,'2016-03-08 22:51:53'),(110,'med','B_Truck_01_medical_F','Car','76561198141963049',1,0,490441,0,'[[],0]','\"[[[],[]],[[],[]],[[],[]],[[],[]]]\"',0.998733,'2016-03-09 01:32:17'),(111,'med','C_Van_01_box_F','Car','76561198141963049',1,0,172706,2,'[[],0]','\"[[[],[]],[[],[]],[[],[]],[[],[]]]\"',1,'2016-03-09 01:52:04'),(112,'med','O_Heli_Light_02_unarmed_F','Air','76561198141963049',1,0,766402,4,'[[],0]','[]',1,'2016-03-09 02:12:21'),(113,'civ','C_SUV_01_F','Car','76561198141963049',1,0,680634,3,'\"[[],0]\"','\"[]\"',1,'2016-03-10 22:39:34'),(114,'med','C_Van_01_box_F','Car','76561198015751541',1,1,306468,2,'[[],0]','\"[[[],[]],[[],[]],[[],[]],[[],[]]]\"',0.99831,'2016-03-11 00:42:33'),(115,'med','B_Truck_01_medical_F','Car','76561198015751541',0,1,795423,0,'\"[[],0]\"','\"[]\"',1,'2016-03-11 00:46:22'),(116,'med','C_Offroad_01_F','Car','76561198015751541',1,1,430577,8,'\"[[],0]\"','\"[]\"',1,'2016-03-11 00:48:36');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wanted`
--

DROP TABLE IF EXISTS `wanted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wanted` (
  `wantedID` varchar(50) NOT NULL,
  `wantedName` varchar(52) NOT NULL,
  `wantedCrimes` text NOT NULL,
  `wantedBounty` int(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`wantedID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wanted`
--

LOCK TABLES `wanted` WRITE;
/*!40000 ALTER TABLE `wanted` DISABLE KEYS */;
INSERT INTO `wanted` VALUES ('76561198015751541','Balu','[]',0,0,'2016-03-06 00:46:50'),('76561198021826291','(Chinamann) Kaiser','\"[`211`,`211`]\"',200,1,'2016-03-10 22:45:13'),('76561198062142044','Matthew C.','[]',0,0,'2016-02-29 01:20:06'),('76561198137980125','[P]John Sinclair','\"[`187`,`187`]\"',4000,1,'2016-02-29 01:40:23'),('76561198141963049','[ONYX] Dr. Ignaz Möbius','[]',0,0,'2016-03-03 01:01:07'),('76561198160766401','IceCube','[]',0,0,'2016-02-29 00:04:14');
/*!40000 ALTER TABLE `wanted` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-11  1:57:16
