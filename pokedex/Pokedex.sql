-- MariaDB dump 10.18  Distrib 10.5.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mlem
-- ------------------------------------------------------
-- Server version	10.5.8-MariaDB-1:10.5.8+maria~focal

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
-- Table structure for table `CanLearn`
--

DROP TABLE IF EXISTS `CanLearn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CanLearn` (
  `PID` int(11) NOT NULL DEFAULT 0,
  `move_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`PID`,`move_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CanLearn`
--

LOCK TABLES `CanLearn` WRITE;
/*!40000 ALTER TABLE `CanLearn` DISABLE KEYS */;
INSERT INTO `CanLearn` VALUES (1,33),(2,33),(3,33),(6,17),(7,33),(8,33),(9,33),(10,33),(10,81),(11,106),(13,81),(14,106),(16,17),(16,33),(17,17),(17,33),(18,17),(18,33),(19,33),(20,33),(29,33),(30,33),(31,33),(32,33),(33,33),(34,33),(35,1),(39,1),(41,17),(42,17),(48,33),(49,33),(133,33),(134,33),(135,33),(136,33);
/*!40000 ALTER TABLE `CanLearn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Found`
--

DROP TABLE IF EXISTS `Found`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Found` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `PID` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `height_feet` int(11) DEFAULT NULL,
  `height_inches` int(11) DEFAULT NULL,
  `weight` decimal(5,1) DEFAULT NULL,
  `dex_number` varchar(4) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `LID` varchar(255) DEFAULT 'Unknown',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Found`
--

LOCK TABLES `Found` WRITE;
/*!40000 ALTER TABLE `Found` DISABLE KEYS */;
INSERT INTO `Found` VALUES (1,6,61,'Poliwag',2,0,27.3,'060',0,'8'),(2,7,56,'Golduck',5,7,168.9,'055',56,'1'),(3,3,84,'Farfetch',2,7,33.1,'083',0,'6'),(4,4,137,'Flareon',2,11,55.1,'136',134,'7'),(5,1,112,'Rhyhorn',3,3,253.5,'111',0,'5'),(6,3,113,'Rhydon',6,3,264.6,'112',112,'6'),(7,3,114,'Chansey',3,7,76.3,'113',0,'6'),(8,5,115,'Tangela',3,3,77.2,'114',0,'10'),(9,3,116,'Kangaskhan',7,3,176.4,'115',0,'1'),(10,2,117,'Horsea',1,4,17.6,'116',0,'6'),(11,8,118,'Seadra',3,11,55.1,'117',118,'8'),(12,5,119,'Goldeen',2,0,33.1,'118',0,'1'),(13,1,120,'Seaking',4,3,86.0,'119',120,'10'),(14,8,121,'Staryu',2,7,76.1,'120',0,'6'),(15,8,122,'Starmie',3,7,176.4,'121',121,'8'),(16,4,97,'Drowzee',3,3,71.4,'096',0,'4'),(17,5,98,'Hypno',5,3,166.7,'097',97,'6'),(18,4,99,'Krabby',1,4,14.3,'098',0,'7'),(19,5,100,'Kingler',4,3,132.3,'099',99,'5'),(20,1,101,'Voltorb',1,8,22.9,'100',0,'4'),(21,2,102,'Electrode',3,11,146.8,'101',101,'7'),(22,4,103,'Exeggcute',1,4,5.5,'102',0,'1'),(23,3,104,'Exeggutor',6,7,264.6,'103',103,'4'),(24,5,105,'Cubone',1,4,14.3,'104',104,'6'),(25,2,106,'Marowak',3,3,99.2,'105',105,'9'),(26,8,107,'Hitmonlee',4,11,109.8,'106',0,'4'),(27,6,2,'Bulbasaur',2,4,15.2,'001',0,'6');
/*!40000 ALTER TABLE `Found` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger new_pok after insert on Found for each row
insert into pokemon select f.PID, f.name, f.height_feet, f.height_inches, f.weight, f.dex_number, f.parent_id, f.LID
from Found f where exists (select PID from Found where Found.PID not in (select PID from pokemon ) and Found.PID = f.PID) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `LID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Kanto Route 25','A path that winds through the forest and comes out overlooking the sea.'),(2,'Viridian Forest','A deep and sprawling forest that extends around Viridian City. A natural maze, many people become lost inside.'),(3,'Kanto Route 26','An unimaginably difficult mountain road that gives the impression of a test.'),(4,'Violet City','Violet City is located in the central part of Johto'),(5,'Outcast Island','is a small water route on Six Island in the Sevii Islands. It is named after the island that lies at its northern terminus, the farthest of the small islets from the main Six Island'),(6,'Olivine City','Olivine is the major city and is the home to Glitter Lighthouse. It guides the ships to the harbour as well as the S.S. Aqua.'),(7,'Celadon City','is the second largest city in the Kanto Region. It is home to a department store (the largest Pok Mart in Kanto), a hotel, a Game Corner and a mansion.'),(8,'Safari Zone','is a wide-open area in Fuchsia City where the player character can play a Pokmon-catching game.'),(9,'Victory Road','is a cave that holds the only way to the Indigo Plateau, accessed to the west and north of Viridian City.'),(10,'Indigo Plateau',' is the headquarters of the Pokmon League, located in northwest Kanto.');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moves`
--

DROP TABLE IF EXISTS `moves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moves` (
  `move_id` int(11) NOT NULL DEFAULT 0,
  `move_name` varchar(79) CHARACTER SET utf8 NOT NULL,
  `type_id` int(11) NOT NULL,
  `move_power` smallint(6) DEFAULT NULL,
  `move_pp` smallint(6) DEFAULT NULL,
  `move_accuracy` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`move_id`),
  KEY `type_id` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moves`
--

LOCK TABLES `moves` WRITE;
/*!40000 ALTER TABLE `moves` DISABLE KEYS */;
INSERT INTO `moves` VALUES (0,'pound',3,20,10,50),(2,'karate-chop',2,50,25,100),(3,'double-slap',1,15,10,85),(4,'comet-punch',1,18,15,85),(5,'mega-punch',1,80,20,85),(6,'pay-day',1,40,20,100),(7,'fire-punch',10,75,15,100),(8,'ice-punch',15,75,15,100),(9,'thunder-punch',13,75,15,100),(10,'scratch',1,40,35,100),(11,'vice-grip',1,55,30,100),(12,'guillotine',1,NULL,5,30),(13,'razor-wind',1,80,10,100),(14,'swords-dance',1,NULL,20,NULL),(15,'cut',1,50,30,95),(16,'gust',3,40,35,100),(17,'wing-attack',3,60,35,100),(18,'whirlwind',1,NULL,20,NULL),(19,'fly',3,90,15,95),(20,'bind',1,15,20,85),(21,'slam',1,80,20,75),(22,'vine-whip',12,45,25,100),(23,'stomp',1,65,20,100),(24,'double-kick',2,30,30,100),(25,'mega-kick',1,120,5,75),(26,'jump-kick',2,100,10,95),(27,'rolling-kick',2,60,15,85),(28,'sand-attack',5,NULL,15,100),(29,'headbutt',1,70,15,100),(30,'horn-attack',1,65,25,100),(31,'fury-attack',1,15,20,85),(32,'horn-drill',1,NULL,5,30),(33,'tackle',1,50,35,100),(34,'body-slam',1,85,15,100),(35,'wrap',1,15,20,90),(36,'take-down',1,90,20,85),(37,'thrash',1,120,10,100),(38,'double-edge',1,120,15,100),(39,'tail-whip',1,NULL,30,100),(40,'poison-sting',4,15,35,100),(41,'twineedle',7,25,20,100),(42,'pin-missile',7,25,20,95),(43,'leer',1,NULL,30,100),(44,'bite',17,60,25,100),(45,'growl',1,NULL,40,100),(46,'roar',1,NULL,20,NULL),(47,'sing',1,NULL,15,55),(48,'supersonic',1,NULL,20,55),(49,'sonic-boom',1,NULL,20,90),(50,'disable',1,NULL,20,100),(51,'acid',4,40,30,100),(52,'ember',10,40,25,100),(53,'flamethrower',10,90,15,100),(54,'mist',15,NULL,30,NULL),(55,'water-gun',11,40,25,100),(56,'hydro-pump',11,110,5,80),(57,'surf',11,90,15,100),(58,'ice-beam',15,90,10,100),(59,'blizzard',15,110,5,70),(60,'psybeam',14,65,20,100),(61,'bubble-beam',11,65,20,100),(62,'aurora-beam',15,65,20,100),(63,'hyper-beam',1,150,5,90),(64,'peck',3,35,35,100),(65,'drill-peck',3,80,20,100),(66,'submission',2,80,20,80),(67,'low-kick',2,NULL,20,100),(68,'counter',2,NULL,20,100),(69,'seismic-toss',2,NULL,20,100),(70,'strength',1,80,15,100),(71,'absorb',12,20,25,100),(72,'mega-drain',12,40,15,100),(73,'leech-seed',12,NULL,10,90),(74,'growth',1,NULL,20,NULL),(75,'razor-leaf',12,55,25,95),(76,'solar-beam',12,120,10,100),(77,'poison-powder',4,NULL,35,75),(78,'stun-spore',12,NULL,30,75),(79,'sleep-powder',12,NULL,15,75),(80,'petal-dance',12,120,10,100),(81,'string-shot',7,NULL,40,95),(82,'dragon-rage',16,NULL,10,100),(83,'fire-spin',10,35,15,85),(84,'thunder-shock',13,40,30,100),(85,'thunderbolt',13,90,15,100),(86,'thunder-wave',13,NULL,20,100),(87,'thunder',13,110,10,70),(88,'rock-throw',6,50,15,90),(89,'earthquake',5,100,10,100),(90,'fissure',5,NULL,5,30),(91,'dig',5,80,10,100),(92,'toxic',4,NULL,10,90),(93,'confusion',14,50,25,100),(94,'psychic',14,90,10,100),(95,'hypnosis',14,NULL,20,60),(96,'meditate',14,NULL,40,NULL),(97,'agility',14,NULL,30,NULL),(98,'quick-attack',1,40,30,100),(99,'rage',1,20,20,100),(100,'teleport',14,NULL,20,NULL),(101,'night-shade',8,NULL,15,100),(102,'mimic',1,NULL,10,NULL),(103,'screech',1,NULL,40,85),(104,'double-team',1,NULL,15,NULL),(105,'recover',1,NULL,10,NULL),(106,'harden',1,NULL,30,NULL),(107,'minimize',1,NULL,10,NULL),(108,'smokescreen',1,NULL,20,100),(109,'confuse-ray',8,NULL,10,100),(110,'withdraw',11,NULL,40,NULL),(111,'defense-curl',1,NULL,40,NULL),(112,'barrier',14,NULL,20,NULL),(113,'light-screen',14,NULL,30,NULL),(114,'haze',15,NULL,30,NULL),(115,'reflect',14,NULL,20,NULL),(116,'focus-energy',1,NULL,30,NULL),(117,'bide',1,NULL,10,NULL),(118,'metronome',1,NULL,10,NULL),(119,'mirror-move',3,NULL,20,NULL),(120,'self-destruct',1,200,5,100),(121,'egg-bomb',1,100,10,75),(122,'lick',8,30,30,100),(123,'smog',4,30,20,70),(124,'sludge',4,65,20,100),(125,'bone-club',5,65,20,85),(126,'fire-blast',10,110,5,85),(127,'waterfall',11,80,15,100),(128,'clamp',11,35,15,85),(129,'swift',1,60,20,NULL),(130,'skull-bash',1,130,10,100),(131,'spike-cannon',1,20,15,100),(132,'constrict',1,10,35,100),(133,'amnesia',14,NULL,20,NULL),(134,'kinesis',14,NULL,15,80),(135,'soft-boiled',1,NULL,10,NULL),(136,'high-jump-kick',2,130,10,90),(137,'glare',1,NULL,30,100),(138,'dream-eater',14,100,15,100),(139,'poison-gas',4,NULL,40,90),(140,'barrage',1,15,20,85),(141,'leech-life',7,20,15,100),(142,'lovely-kiss',1,NULL,10,75),(143,'sky-attack',3,140,5,90),(144,'transform',1,NULL,10,NULL),(145,'bubble',11,40,30,100),(146,'dizzy-punch',1,70,10,100),(147,'spore',12,NULL,15,100),(148,'flash',1,NULL,20,100),(149,'psywave',14,NULL,15,100),(150,'splash',1,NULL,40,NULL),(151,'acid-armor',4,NULL,20,NULL),(152,'crabhammer',11,100,10,90),(153,'explosion',1,250,5,100),(154,'fury-swipes',1,18,15,80),(155,'bonemerang',5,50,10,90),(156,'rest',14,NULL,10,NULL),(157,'rock-slide',6,75,10,90),(158,'hyper-fang',1,80,15,90),(159,'sharpen',1,NULL,30,NULL),(160,'conversion',1,NULL,30,NULL),(161,'tri-attack',1,80,10,100),(162,'super-fang',1,NULL,10,90),(163,'slash',1,70,20,100),(164,'substitute',1,NULL,10,NULL),(165,'struggle',1,50,NULL,NULL),(166,'sketch',1,NULL,1,NULL),(167,'triple-kick',2,10,10,90),(168,'thief',17,60,25,100),(169,'spider-web',7,NULL,10,NULL),(170,'mind-reader',1,NULL,5,NULL),(171,'nightmare',8,NULL,15,100),(172,'flame-wheel',10,60,25,100),(173,'snore',1,50,15,100),(174,'curse',8,NULL,10,NULL),(175,'flail',1,NULL,15,100),(176,'conversion-2',1,NULL,30,NULL),(177,'aeroblast',3,100,5,95),(178,'cotton-spore',12,NULL,40,100),(179,'reversal',2,NULL,15,100),(180,'spite',8,NULL,10,100),(181,'powder-snow',15,40,25,100),(182,'protect',1,NULL,10,NULL),(183,'mach-punch',2,40,30,100),(184,'scary-face',1,NULL,10,100),(185,'feint-attack',17,60,20,NULL),(186,'sweet-kiss',18,NULL,10,75),(187,'belly-drum',1,NULL,10,NULL),(188,'sludge-bomb',4,90,10,100),(189,'mud-slap',5,20,10,100),(190,'octazooka',11,65,10,85),(191,'spikes',5,NULL,20,NULL),(192,'zap-cannon',13,120,5,50),(193,'foresight',1,NULL,40,NULL),(194,'destiny-bond',8,NULL,5,NULL),(195,'perish-song',1,NULL,5,NULL),(196,'icy-wind',15,55,15,95),(197,'detect',2,NULL,5,NULL),(198,'bone-rush',5,25,10,90),(199,'lock-on',1,NULL,5,NULL),(200,'outrage',16,120,10,100),(201,'sandstorm',6,NULL,10,NULL),(202,'giga-drain',12,75,10,100),(203,'endure',1,NULL,10,NULL),(204,'charm',18,NULL,20,100),(205,'rollout',6,30,20,90),(206,'false-swipe',1,40,40,100),(207,'swagger',1,NULL,15,90),(208,'milk-drink',1,NULL,10,NULL),(209,'spark',13,65,20,100),(210,'fury-cutter',7,40,20,95),(211,'steel-wing',9,70,25,90),(212,'mean-look',1,NULL,5,NULL),(213,'attract',1,NULL,15,100),(214,'sleep-talk',1,NULL,10,NULL),(215,'heal-bell',1,NULL,5,NULL),(216,'return',1,NULL,20,100),(217,'present',1,NULL,15,90),(218,'frustration',1,NULL,20,100),(219,'safeguard',1,NULL,25,NULL),(220,'pain-split',1,NULL,20,NULL),(221,'sacred-fire',10,100,5,95),(222,'magnitude',5,NULL,30,100),(223,'dynamic-punch',2,100,5,50),(224,'megahorn',7,120,10,85),(225,'dragon-breath',16,60,20,100),(226,'baton-pass',1,NULL,40,NULL),(227,'encore',1,NULL,5,100),(228,'pursuit',17,40,20,100),(229,'rapid-spin',1,20,40,100),(230,'sweet-scent',1,NULL,20,100),(231,'iron-tail',9,100,15,75),(232,'metal-claw',9,50,35,95),(233,'vital-throw',2,70,10,NULL),(234,'morning-sun',1,NULL,5,NULL),(235,'synthesis',12,NULL,5,NULL),(236,'moonlight',18,NULL,5,NULL),(237,'hidden-power',1,60,15,100),(238,'cross-chop',2,100,5,80),(239,'twister',16,40,20,100),(240,'rain-dance',11,NULL,5,NULL),(241,'sunny-day',10,NULL,5,NULL),(242,'crunch',17,80,15,100),(243,'mirror-coat',14,NULL,20,100),(244,'psych-up',1,NULL,10,NULL),(245,'extreme-speed',1,80,5,100),(246,'ancient-power',6,60,5,100),(247,'shadow-ball',8,80,15,100),(248,'future-sight',14,120,10,100),(249,'rock-smash',2,40,15,100),(250,'whirlpool',11,35,15,85),(251,'beat-up',17,NULL,10,100),(252,'fake-out',1,40,10,100),(253,'uproar',1,90,10,100),(254,'stockpile',1,NULL,20,NULL),(255,'spit-up',1,NULL,10,100),(256,'swallow',1,NULL,10,NULL),(257,'heat-wave',10,95,10,90),(258,'hail',15,NULL,10,NULL),(259,'torment',17,NULL,15,100),(260,'flatter',17,NULL,15,100),(261,'will-o-wisp',10,NULL,15,85),(262,'memento',17,NULL,10,100),(263,'facade',1,70,20,100),(264,'focus-punch',2,150,20,100),(265,'smelling-salts',1,70,10,100),(266,'follow-me',1,NULL,20,NULL),(267,'nature-power',1,NULL,20,NULL),(268,'charge',13,NULL,20,NULL),(269,'taunt',17,NULL,20,100),(270,'helping-hand',1,NULL,20,NULL),(271,'trick',14,NULL,10,100),(272,'role-play',14,NULL,10,NULL),(273,'wish',1,NULL,10,NULL),(274,'assist',1,NULL,20,NULL),(275,'ingrain',12,NULL,20,NULL),(276,'superpower',2,120,5,100),(277,'magic-coat',14,NULL,15,NULL),(278,'recycle',1,NULL,10,NULL),(279,'revenge',2,60,10,100),(280,'brick-break',2,75,15,100),(281,'yawn',1,NULL,10,NULL),(282,'knock-off',17,65,20,100),(283,'endeavor',1,NULL,5,100),(284,'eruption',10,150,5,100),(285,'skill-swap',14,NULL,10,NULL),(286,'imprison',14,NULL,10,NULL),(287,'refresh',1,NULL,20,NULL),(288,'grudge',8,NULL,5,NULL),(289,'snatch',17,NULL,10,NULL),(290,'secret-power',1,70,20,100),(291,'dive',11,80,10,100),(292,'arm-thrust',2,15,20,100),(293,'camouflage',1,NULL,20,NULL),(294,'tail-glow',7,NULL,20,NULL),(295,'luster-purge',14,70,5,100),(296,'mist-ball',14,70,5,100),(297,'feather-dance',3,NULL,15,100),(298,'teeter-dance',1,NULL,20,100),(299,'blaze-kick',10,85,10,90),(300,'mud-sport',5,NULL,15,NULL),(301,'ice-ball',15,30,20,90),(302,'needle-arm',12,60,15,100),(303,'slack-off',1,NULL,10,NULL),(304,'hyper-voice',1,90,10,100),(305,'poison-fang',4,50,15,100),(306,'crush-claw',1,75,10,95),(307,'blast-burn',10,150,5,90),(308,'hydro-cannon',11,150,5,90),(309,'meteor-mash',9,90,10,90),(310,'astonish',8,30,15,100),(311,'weather-ball',1,50,10,100),(312,'aromatherapy',12,NULL,5,NULL),(313,'fake-tears',17,NULL,20,100),(314,'air-cutter',3,60,25,95),(315,'overheat',10,130,5,90),(316,'odor-sleuth',1,NULL,40,NULL),(317,'rock-tomb',6,60,15,95),(318,'silver-wind',7,60,5,100),(319,'metal-sound',9,NULL,40,85),(320,'grass-whistle',12,NULL,15,55),(321,'tickle',1,NULL,20,100),(322,'cosmic-power',14,NULL,20,NULL),(323,'water-spout',11,150,5,100),(324,'signal-beam',7,75,15,100),(325,'shadow-punch',8,60,20,NULL),(326,'extrasensory',14,80,20,100),(327,'sky-uppercut',2,85,15,90),(328,'sand-tomb',5,35,15,85),(329,'sheer-cold',15,NULL,5,30),(330,'muddy-water',11,90,10,85),(331,'bullet-seed',12,25,30,100),(332,'aerial-ace',3,60,20,NULL),(333,'icicle-spear',15,25,30,100),(334,'iron-defense',9,NULL,15,NULL),(335,'block',1,NULL,5,NULL),(336,'howl',1,NULL,40,NULL),(337,'dragon-claw',16,80,15,100),(338,'frenzy-plant',12,150,5,90),(339,'bulk-up',2,NULL,20,NULL),(340,'bounce',3,85,5,85),(341,'mud-shot',5,55,15,95),(342,'poison-tail',4,50,25,100),(343,'covet',1,60,25,100),(344,'volt-tackle',13,120,15,100),(345,'magical-leaf',12,60,20,NULL),(346,'water-sport',11,NULL,15,NULL),(347,'calm-mind',14,NULL,20,NULL),(348,'leaf-blade',12,90,15,100),(349,'dragon-dance',16,NULL,20,NULL),(350,'rock-blast',6,25,10,90),(351,'shock-wave',13,60,20,NULL),(352,'water-pulse',11,60,20,100),(353,'doom-desire',9,140,5,100),(354,'psycho-boost',14,140,5,90),(355,'roost',3,NULL,10,NULL),(356,'gravity',14,NULL,5,NULL),(357,'miracle-eye',14,NULL,40,NULL),(358,'wake-up-slap',2,70,10,100),(359,'hammer-arm',2,100,10,90),(360,'gyro-ball',9,NULL,5,100),(361,'healing-wish',14,NULL,10,NULL),(362,'brine',11,65,10,100),(363,'natural-gift',1,NULL,15,100),(364,'feint',1,30,10,100),(365,'pluck',3,60,20,100),(366,'tailwind',3,NULL,15,NULL),(367,'acupressure',1,NULL,30,NULL),(368,'metal-burst',9,NULL,10,100),(369,'u-turn',7,70,20,100),(370,'close-combat',2,120,5,100),(371,'payback',17,50,10,100),(372,'assurance',17,60,10,100),(373,'embargo',17,NULL,15,100),(374,'fling',17,NULL,10,100),(375,'psycho-shift',14,NULL,10,100),(376,'trump-card',1,NULL,5,NULL),(377,'heal-block',14,NULL,15,100),(378,'wring-out',1,NULL,5,100),(379,'power-trick',14,NULL,10,NULL),(380,'gastro-acid',4,NULL,10,100),(381,'lucky-chant',1,NULL,30,NULL),(382,'me-first',1,NULL,20,NULL),(383,'copycat',1,NULL,20,NULL),(384,'power-swap',14,NULL,10,NULL),(385,'guard-swap',14,NULL,10,NULL),(386,'punishment',17,NULL,5,100),(387,'last-resort',1,140,5,100),(388,'worry-seed',12,NULL,10,100),(389,'sucker-punch',17,80,5,100),(390,'toxic-spikes',4,NULL,20,NULL),(391,'heart-swap',14,NULL,10,NULL),(392,'aqua-ring',11,NULL,20,NULL),(393,'magnet-rise',13,NULL,10,NULL),(394,'flare-blitz',10,120,15,100),(395,'force-palm',2,60,10,100),(396,'aura-sphere',2,80,20,NULL),(397,'rock-polish',6,NULL,20,NULL),(398,'poison-jab',4,80,20,100),(399,'dark-pulse',17,80,15,100),(400,'night-slash',17,70,15,100),(401,'aqua-tail',11,90,10,90),(402,'seed-bomb',12,80,15,100),(403,'air-slash',3,75,15,95),(404,'x-scissor',7,80,15,100),(405,'bug-buzz',7,90,10,100),(406,'dragon-pulse',16,85,10,100),(407,'dragon-rush',16,100,10,75),(408,'power-gem',6,80,20,100),(409,'drain-punch',2,75,10,100),(410,'vacuum-wave',2,40,30,100),(411,'focus-blast',2,120,5,70),(412,'energy-ball',12,90,10,100),(413,'brave-bird',3,120,15,100),(414,'earth-power',5,90,10,100),(415,'switcheroo',17,NULL,10,100),(416,'giga-impact',1,150,5,90),(417,'nasty-plot',17,NULL,20,NULL),(418,'bullet-punch',9,40,30,100),(419,'avalanche',15,60,10,100),(420,'ice-shard',15,40,30,100),(421,'shadow-claw',8,70,15,100),(422,'thunder-fang',13,65,15,95),(423,'ice-fang',15,65,15,95),(424,'fire-fang',10,65,15,95),(425,'shadow-sneak',8,40,30,100),(426,'mud-bomb',5,65,10,85),(427,'psycho-cut',14,70,20,100),(428,'zen-headbutt',14,80,15,90),(429,'mirror-shot',9,65,10,85),(430,'flash-cannon',9,80,10,100),(431,'rock-climb',1,90,20,85),(432,'defog',3,NULL,15,NULL),(433,'trick-room',14,NULL,5,NULL),(434,'draco-meteor',16,130,5,90),(435,'discharge',13,80,15,100),(436,'lava-plume',10,80,15,100),(437,'leaf-storm',12,130,5,90),(438,'power-whip',12,120,10,85),(439,'rock-wrecker',6,150,5,90),(440,'cross-poison',4,70,20,100),(441,'gunk-shot',4,120,5,80),(442,'iron-head',9,80,15,100),(443,'magnet-bomb',9,60,20,NULL),(444,'stone-edge',6,100,5,80),(445,'captivate',1,NULL,20,100),(446,'stealth-rock',6,NULL,20,NULL),(447,'grass-knot',12,NULL,20,100),(448,'chatter',3,65,20,100),(449,'judgment',1,100,10,100),(450,'bug-bite',7,60,20,100),(451,'charge-beam',13,50,10,90),(452,'wood-hammer',12,120,15,100),(453,'aqua-jet',11,40,20,100),(454,'attack-order',7,90,15,100),(455,'defend-order',7,NULL,10,NULL),(456,'heal-order',7,NULL,10,NULL),(457,'head-smash',6,150,5,80),(458,'double-hit',1,35,10,90),(459,'roar-of-time',16,150,5,90),(460,'spacial-rend',16,100,5,95),(461,'lunar-dance',14,NULL,10,NULL),(462,'crush-grip',1,NULL,5,100),(463,'magma-storm',10,100,5,75),(464,'dark-void',17,NULL,10,80),(465,'seed-flare',12,120,5,85),(466,'ominous-wind',8,60,5,100),(467,'shadow-force',8,120,5,100),(468,'hone-claws',17,NULL,15,NULL),(469,'wide-guard',6,NULL,10,NULL),(470,'guard-split',14,NULL,10,NULL),(471,'power-split',14,NULL,10,NULL),(472,'wonder-room',14,NULL,10,NULL),(473,'psyshock',14,80,10,100),(474,'venoshock',4,65,10,100),(475,'autotomize',9,NULL,15,NULL),(476,'rage-powder',7,NULL,20,NULL),(477,'telekinesis',14,NULL,15,NULL),(478,'magic-room',14,NULL,10,NULL),(479,'smack-down',6,50,15,100),(480,'storm-throw',2,60,10,100),(481,'flame-burst',10,70,15,100),(482,'sludge-wave',4,95,10,100),(483,'quiver-dance',7,NULL,20,NULL),(484,'heavy-slam',9,NULL,10,100),(485,'synchronoise',14,120,10,100),(486,'electro-ball',13,NULL,10,100),(487,'soak',11,NULL,20,100),(488,'flame-charge',10,50,20,100),(489,'coil',4,NULL,20,NULL),(490,'low-sweep',2,65,20,100),(491,'acid-spray',4,40,20,100),(492,'foul-play',17,95,15,100),(493,'simple-beam',1,NULL,15,100),(494,'entrainment',1,NULL,15,100),(495,'after-you',1,NULL,15,NULL),(496,'round',1,60,15,100),(497,'echoed-voice',1,40,15,100),(498,'chip-away',1,70,20,100),(499,'clear-smog',4,50,15,NULL),(500,'stored-power',14,20,10,100),(501,'quick-guard',2,NULL,15,NULL),(502,'ally-switch',14,NULL,15,NULL),(503,'scald',11,80,15,100),(504,'shell-smash',1,NULL,15,NULL),(505,'heal-pulse',14,NULL,10,NULL),(506,'hex',8,65,10,100),(507,'sky-drop',3,60,10,100),(508,'shift-gear',9,NULL,10,NULL),(509,'circle-throw',2,60,10,90),(510,'incinerate',10,60,15,100),(511,'quash',17,NULL,15,100),(512,'acrobatics',3,55,15,100),(513,'reflect-type',1,NULL,15,NULL),(514,'retaliate',1,70,5,100),(515,'final-gambit',2,NULL,5,100),(516,'bestow',1,NULL,15,NULL),(517,'inferno',10,100,5,50),(518,'water-pledge',11,80,10,100),(519,'fire-pledge',10,80,10,100),(520,'grass-pledge',12,80,10,100),(521,'volt-switch',13,70,20,100),(522,'struggle-bug',7,50,20,100),(523,'bulldoze',5,60,20,100),(524,'frost-breath',15,60,10,90),(525,'dragon-tail',16,60,10,90),(526,'work-up',1,NULL,30,NULL),(527,'electroweb',13,55,15,95),(528,'wild-charge',13,90,15,100),(529,'drill-run',5,80,10,95),(530,'dual-chop',16,40,15,90),(531,'heart-stamp',14,60,25,100),(532,'horn-leech',12,75,10,100),(533,'sacred-sword',2,90,15,100),(534,'razor-shell',11,75,10,95),(535,'heat-crash',10,NULL,10,100),(536,'leaf-tornado',12,65,10,90),(537,'steamroller',7,65,20,100),(538,'cotton-guard',12,NULL,10,NULL),(539,'night-daze',17,85,10,95),(540,'psystrike',14,100,10,100),(541,'tail-slap',1,25,10,85),(542,'hurricane',3,110,10,70),(543,'head-charge',1,120,15,100),(544,'gear-grind',9,50,15,85),(545,'searing-shot',10,100,5,100),(546,'techno-blast',1,120,5,100),(547,'relic-song',1,75,10,100),(548,'secret-sword',2,85,10,100),(549,'glaciate',15,65,10,95),(550,'bolt-strike',13,130,5,85),(551,'blue-flare',10,130,5,85),(552,'fiery-dance',10,80,10,100),(553,'freeze-shock',15,140,5,90),(554,'ice-burn',15,140,5,90),(555,'snarl',17,55,15,95),(556,'icicle-crash',15,85,10,90),(557,'v-create',10,180,5,95),(558,'fusion-flare',10,100,5,100),(559,'fusion-bolt',13,100,5,100),(560,'flying-press',2,80,10,95),(561,'mat-block',2,NULL,10,NULL),(562,'belch',4,120,10,90),(563,'rototiller',5,NULL,10,NULL),(564,'sticky-web',7,NULL,20,NULL),(565,'fell-stinger',7,30,25,100),(566,'phantom-force',8,90,10,100),(567,'trick-or-treat',8,NULL,20,100),(568,'noble-roar',1,NULL,30,100),(569,'ion-deluge',13,NULL,25,NULL),(570,'parabolic-charge',13,50,20,100),(571,'forests-curse',12,NULL,20,100),(572,'petal-blizzard',12,90,15,100),(573,'freeze-dry',15,70,20,100),(574,'disarming-voice',18,40,15,NULL),(575,'parting-shot',17,NULL,20,100),(576,'topsy-turvy',17,NULL,20,NULL),(577,'draining-kiss',18,50,10,100),(578,'crafty-shield',18,NULL,10,NULL),(579,'flower-shield',18,NULL,10,NULL),(580,'grassy-terrain',12,NULL,10,NULL),(581,'misty-terrain',18,NULL,10,NULL),(582,'electrify',13,NULL,20,NULL),(583,'play-rough',18,90,10,90),(584,'fairy-wind',18,40,30,100),(585,'moonblast',18,95,15,100),(586,'boomburst',1,140,10,100),(587,'fairy-lock',18,NULL,10,NULL),(588,'kings-shield',9,NULL,10,NULL),(589,'play-nice',1,NULL,20,NULL),(590,'confide',1,NULL,20,NULL),(591,'diamond-storm',6,100,5,95),(592,'steam-eruption',11,110,5,95),(593,'hyperspace-hole',14,80,5,NULL),(594,'water-shuriken',11,15,20,100),(595,'mystical-fire',10,65,10,100),(596,'spiky-shield',12,NULL,10,NULL),(597,'aromatic-mist',18,NULL,20,NULL),(598,'eerie-impulse',13,NULL,15,100),(599,'venom-drench',4,NULL,20,100),(600,'powder',7,NULL,20,100),(601,'geomancy',18,NULL,10,NULL),(602,'magnetic-flux',13,NULL,20,NULL),(603,'happy-hour',1,NULL,30,NULL),(604,'electric-terrain',13,NULL,10,NULL),(605,'dazzling-gleam',18,80,10,100),(606,'celebrate',1,NULL,40,NULL),(607,'hold-hands',1,NULL,40,NULL),(608,'baby-doll-eyes',18,NULL,30,100),(609,'nuzzle',13,20,20,100),(610,'hold-back',1,40,40,100),(611,'infestation',7,20,20,100),(612,'power-up-punch',2,40,20,100),(613,'oblivion-wing',3,80,10,100),(614,'thousand-arrows',5,90,10,100),(615,'thousand-waves',5,90,10,100),(616,'lands-wrath',5,90,10,100),(617,'light-of-ruin',18,140,5,90),(618,'origin-pulse',11,110,10,85),(619,'precipice-blades',5,120,10,85),(620,'dragon-ascent',3,120,5,100),(621,'hyperspace-fury',17,100,5,NULL);
/*!40000 ALTER TABLE `moves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pokemon` (
  `PID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `height_feet` int(11) DEFAULT NULL,
  `height_inches` int(11) DEFAULT NULL,
  `weight` decimal(5,1) DEFAULT NULL,
  `dex_number` varchar(4) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `LID` varchar(255) DEFAULT 'Unknown',
  PRIMARY KEY (`PID`),
  UNIQUE KEY `id` (`PID`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
INSERT INTO `pokemon` VALUES (1,'Mareep',2,1,7.8,'152',0,'1'),(2,'Bulbasaur',2,4,15.2,'001',0,'6'),(3,'Ivysaur',3,3,28.7,'002',2,'4'),(4,'Venusaur',6,7,220.5,'003',3,'4'),(5,'Charmander',2,0,18.7,'004',0,'8'),(6,'Charmeleon',3,7,41.9,'005',5,'7'),(7,'Charizard',5,7,199.5,'006',6,'9'),(8,'Squirtle',1,8,19.8,'007',0,'3'),(9,'Wartortle',3,3,49.6,'008',8,'9'),(10,'Blastoise',5,3,188.5,'009',9,'3'),(11,'Caterpie',1,0,6.4,'010',0,'10'),(12,'Metapod',2,4,21.8,'011',11,'2'),(13,'Butterfree',3,7,70.5,'012',12,'7'),(14,'Weedle',1,0,7.1,'013',0,'1'),(15,'Kakuna',2,0,22.0,'014',14,'1'),(16,'Beedrill',3,3,65.0,'015',15,'4'),(17,'Pidgey',1,0,4.0,'016',0,'4'),(18,'Pidgeotto',3,7,66.1,'017',17,'9'),(19,'Pidgeot',4,11,87.1,'018',18,'4'),(20,'Rattata',1,0,7.7,'019',0,'9'),(21,'Raticate',2,4,40.8,'020',20,'5'),(22,'Spearow',1,0,4.4,'021',0,'8'),(23,'Fearow',3,11,83.8,'022',22,'4'),(24,'Ekans',6,7,15.2,'023',0,'3'),(25,'Arbok',11,6,143.3,'024',24,'6'),(26,'Pikachu',1,4,13.2,'025',0,'8'),(27,'Raichu',2,7,66.1,'026',26,'10'),(28,'Sandshrew',2,0,26.5,'027',0,'8'),(29,'Sandslash',3,3,65.0,'028',28,'10'),(30,'Nidoran (female)',1,4,15.4,'029',0,'6'),(31,'Nidorina',2,7,44.1,'030',30,'7'),(32,'Nidoqueen',4,3,132.3,'031',31,'7'),(33,'Nidoran (male)',1,8,19.8,'032',0,'3'),(34,'Nidorino',2,11,43.0,'033',33,'2'),(35,'Nidoking',4,7,136.7,'034',34,'4'),(36,'Clefairy',2,0,16.5,'035',0,'10'),(37,'Clefable',4,3,88.2,'036',36,'1'),(38,'Vulpix',2,0,21.8,'037',0,'4'),(39,'Ninetales',3,7,43.9,'038',38,'4'),(40,'Jigglypuff',1,8,12.1,'039',0,'8'),(41,'Wigglytuff',3,3,26.5,'040',40,'10'),(42,'Zubat',2,7,16.5,'041',0,'4'),(43,'Golbat',5,3,121.3,'042',42,'8'),(44,'Oddish',1,8,11.9,'043',0,'1'),(45,'Gloom',2,7,19.0,'044',44,'7'),(46,'Vileplume',3,11,41.0,'045',45,'3'),(47,'Paras',1,0,11.9,'046',0,'5'),(48,'Parasect',3,3,65.0,'047',47,'4'),(49,'Venonat',3,3,66.1,'048',0,'6'),(50,'Venomoth',4,11,27.6,'049',49,'6'),(51,'Diglett',0,8,1.8,'050',0,'4'),(52,'Dugtrio',2,4,73.4,'051',51,'10'),(53,'Meowth',1,4,9.3,'052',0,'9'),(54,'Persian',3,3,70.5,'053',53,'2'),(55,'Psyduck',2,7,43.2,'054',0,'Unknown'),(56,'Golduck',5,7,168.9,'055',56,'1'),(57,'Mankey',1,8,61.7,'056',0,'3'),(58,'Primeape',3,3,70.5,'057',57,'4'),(59,'Growlithe',2,4,41.9,'058',0,'9'),(60,'Arcanine',6,3,341.7,'059',59,'1'),(61,'Poliwag',2,0,27.3,'060',0,'8'),(62,'Poliwhirl',3,3,44.1,'061',61,'8'),(63,'Poliwrath',4,3,119.0,'062',62,'5'),(64,'Abra',2,11,43.0,'063',0,'2'),(65,'Kadabra',4,3,124.6,'064',64,'4'),(66,'Alakazam',4,11,105.8,'065',65,'3'),(67,'Machop',2,7,43.0,'066',0,'1'),(68,'Machoke',2,7,155.4,'067',67,'5'),(69,'Machamp',5,3,286.6,'068',68,'4'),(70,'Bellesprout',2,4,8.8,'069',0,'3'),(71,'Weepinbell',3,3,14.1,'070',70,'5'),(72,'Victreebel',5,7,34.2,'071',71,'3'),(73,'Tentacool',2,11,100.3,'072',0,'10'),(74,'Tentacruel',5,3,121.3,'073',73,'9'),(75,'Geodude',1,4,44.1,'074',0,'5'),(76,'Graveler',3,3,231.5,'075',75,'9'),(77,'Golem',4,7,661.4,'076',76,'10'),(78,'Ponyta',3,3,66.1,'077',0,'2'),(79,'Rapidash',5,7,209.4,'078',78,'8'),(80,'Slowpoke',3,11,79.4,'079',0,'4'),(81,'Slowbro',5,3,173.1,'080',80,'8'),(82,'Magnemite',1,0,13.2,'081',0,'5'),(83,'Magneton',3,3,132.3,'082',82,'2'),(84,'Farfetch',2,7,33.1,'083',0,'6'),(85,'Doduo',4,7,86.4,'084',0,'10'),(86,'Dodrio',5,11,187.8,'085',85,'4'),(87,'Seel',3,7,198.4,'086',0,'7'),(88,'Dewgong',5,7,264.6,'087',87,'3'),(89,'Grimer',2,11,66.1,'088',0,'3'),(90,'Muk',3,11,66.1,'089',89,'8'),(91,'Shellder',1,0,8.8,'090',0,'9'),(92,'Cloyster',4,11,292.1,'091',91,'2'),(93,'Gastly',4,3,0.2,'092',0,'4'),(94,'Haunter',5,3,0.2,'093',93,'10'),(95,'Gengar',4,11,89.3,'094',94,'1'),(96,'Onix',28,10,463.0,'095',0,'1'),(97,'Drowzee',3,3,71.4,'096',0,'4'),(98,'Hypno',5,3,166.7,'097',97,'6'),(99,'Krabby',1,4,14.3,'098',0,'7'),(100,'Kingler',4,3,132.3,'099',99,'5'),(101,'Voltorb',1,8,22.9,'100',0,'4'),(102,'Electrode',3,11,146.8,'101',101,'7'),(103,'Exeggcute',1,4,5.5,'102',0,'1'),(104,'Exeggutor',6,7,264.6,'103',103,'4'),(105,'Cubone',1,4,14.3,'104',104,'6'),(106,'Marowak',3,3,99.2,'105',105,'9'),(107,'Hitmonlee',4,11,109.8,'106',0,'4'),(108,'Hitmonchan',4,7,110.7,'107',107,'2'),(109,'Lickitung',3,11,144.4,'108',0,'7'),(110,'Koffing',2,0,2.2,'109',0,'9'),(111,'Weezing',3,11,20.9,'110',110,'Unknown'),(112,'Rhyhorn',3,3,253.5,'111',0,'5'),(113,'Rhydon',6,3,264.6,'112',112,'6'),(114,'Chansey',3,7,76.3,'113',0,'6'),(115,'Tangela',3,3,77.2,'114',0,'10'),(116,'Kangaskhan',7,3,176.4,'115',0,'1'),(117,'Horsea',1,4,17.6,'116',0,'6'),(118,'Seadra',3,11,55.1,'117',118,'8'),(119,'Goldeen',2,0,33.1,'118',0,'1'),(120,'Seaking',4,3,86.0,'119',120,'10'),(121,'Staryu',2,7,76.1,'120',0,'6'),(122,'Starmie',3,7,176.4,'121',121,'8'),(123,'Mr.Mime',4,3,120.1,'122',0,'4'),(124,'Scyther',4,11,123.5,'123',0,'4'),(125,'Jynx',4,7,89.5,'124',0,'7'),(126,'Electabuzz',3,7,66.1,'125',0,'4'),(127,'Magmar',4,3,98.1,'126',0,'6'),(128,'Pinser',4,11,121.3,'127',0,'10'),(129,'Tauros',4,7,194.9,'128',0,'1'),(130,'Magikarp',2,11,22.0,'129',0,'3'),(131,'Gyarados',21,4,518.1,'130',130,'4'),(132,'Lapras',8,2,485.0,'131',0,'9'),(133,'Ditto',1,0,8.8,'132',0,'2'),(134,'Eevee',1,0,14.3,'133',0,'4'),(135,'Vaporeon',3,3,63.9,'134',134,'4'),(136,'Jolteon',2,7,54.0,'135',134,'8'),(137,'Flareon',2,11,55.1,'136',134,'7'),(138,'Porygon',2,7,80.5,'137',0,'10'),(139,'Omanyte',1,4,16.5,'138',0,'9'),(140,'Omastar',3,3,77.2,'139',139,'6'),(141,'Kabuto',1,8,25.4,'140',0,'2'),(142,'Kabutops',4,3,89.3,'141',141,'1'),(143,'Aerodactyl',5,11,130.1,'142',0,'8'),(144,'Articuno',5,7,122.1,'144',0,'8'),(145,'Zapdos',5,3,116.0,'145',0,'6'),(146,'Moltres',6,7,132.3,'146',0,'4'),(147,'Dratini',5,11,7.3,'147',0,'2'),(148,'Dragonair',13,1,36.4,'148',147,'5'),(149,'Dragonite',7,3,463.0,'149',148,'2'),(150,'Mewtwo',6,7,269.0,'150',0,'Unknown'),(151,'Mew',1,4,8.8,'151',0,'Unknown'),(152,'Snorlax',6,11,1014.1,'143',0,'2');
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemon_types`
--

DROP TABLE IF EXISTS `pokemon_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pokemon_types` (
  `type_id` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  PRIMARY KEY (`PID`,`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon_types`
--

LOCK TABLES `pokemon_types` WRITE;
/*!40000 ALTER TABLE `pokemon_types` DISABLE KEYS */;
INSERT INTO `pokemon_types` VALUES (2,1),(9,2),(13,2),(9,3),(13,3),(9,4),(13,4),(6,5),(6,6),(6,7),(7,7),(17,8),(17,9),(17,10),(1,11),(1,12),(1,13),(7,13),(1,14),(13,14),(1,15),(13,15),(1,16),(13,16),(7,17),(12,17),(7,18),(12,18),(7,19),(12,19),(12,20),(12,21),(7,22),(12,22),(7,23),(12,23),(13,24),(13,25),(4,26),(4,27),(10,28),(10,29),(13,30),(13,31),(10,32),(13,32),(13,33),(13,34),(10,35),(13,35),(12,36),(12,37),(6,38),(6,39),(12,40),(12,41),(7,42),(13,42),(7,43),(13,43),(9,44),(13,44),(9,45),(13,45),(9,46),(13,46),(1,47),(9,47),(1,48),(9,48),(1,49),(13,49),(1,50),(13,50),(4,51),(4,52),(12,53),(12,54),(17,55),(17,56),(5,57),(5,58),(6,59),(6,60),(17,61),(17,62),(5,63),(17,63),(14,64),(14,65),(14,66),(5,67),(5,68),(5,69),(9,70),(13,70),(9,71),(13,71),(9,72),(13,72),(13,73),(17,73),(13,74),(17,74),(10,75),(15,75),(10,76),(15,76),(10,77),(15,77),(6,78),(6,79),(14,80),(17,80),(14,81),(17,81),(4,82),(4,83),(7,84),(12,84),(7,85),(12,85),(7,86),(12,86),(17,87),(11,88),(17,88),(13,89),(13,90),(17,91),(11,92),(17,92),(8,93),(13,93),(8,94),(13,94),(8,95),(13,95),(10,96),(15,96),(14,97),(14,98),(17,99),(17,100),(4,101),(4,102),(9,103),(14,103),(9,104),(14,104),(4,105),(4,106),(5,107),(5,108),(12,109),(13,110),(13,111),(10,112),(15,112),(10,113),(15,113),(12,114),(9,115),(12,116),(17,117),(17,118),(17,119),(17,120),(17,121),(14,122),(17,122),(14,123),(1,124),(7,124),(11,125),(14,125),(4,126),(6,127),(1,128),(12,129),(17,130),(7,131),(17,131),(11,132),(17,132),(12,133),(12,134),(17,135),(4,136),(6,137),(12,138),(15,139),(17,139),(15,140),(17,140),(15,141),(17,141),(15,142),(17,142),(7,143),(15,143),(7,144),(11,144),(4,145),(7,145),(6,146),(7,146),(3,147),(3,148),(3,149),(7,149),(14,150),(14,151),(12,152);
/*!40000 ALTER TABLE `pokemon_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemon_users`
--

DROP TABLE IF EXISTS `pokemon_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pokemon_users` (
  `PID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`PID`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon_users`
--

LOCK TABLES `pokemon_users` WRITE;
/*!40000 ALTER TABLE `pokemon_users` DISABLE KEYS */;
INSERT INTO `pokemon_users` VALUES (2,7),(6,3),(7,7),(24,7),(56,2),(142,2),(151,2);
/*!40000 ALTER TABLE `pokemon_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_efficacy`
--

DROP TABLE IF EXISTS `type_efficacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_efficacy` (
  `damage_type_id` int(11) NOT NULL,
  `target_type_id` int(11) NOT NULL,
  `damage_factor` float DEFAULT NULL,
  PRIMARY KEY (`damage_type_id`,`target_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_efficacy`
--

LOCK TABLES `type_efficacy` WRITE;
/*!40000 ALTER TABLE `type_efficacy` DISABLE KEYS */;
INSERT INTO `type_efficacy` VALUES (1,1,1),(1,2,1),(1,3,1),(1,4,1),(1,5,1),(1,6,0.5),(1,7,1),(1,8,0),(1,9,0.5),(1,10,1),(1,11,1),(1,12,1),(1,13,1),(1,14,1),(1,15,1),(1,16,1),(1,17,1),(1,18,1),(2,1,2),(2,2,1),(2,3,0.5),(2,4,0.5),(2,5,1),(2,6,2),(2,7,0.5),(2,8,0),(2,9,2),(2,10,1),(2,11,1),(2,12,1),(2,13,1),(2,14,0.5),(2,15,2),(2,16,1),(2,17,2),(2,18,0.5),(3,1,1),(3,2,2),(3,3,1),(3,4,1),(3,5,1),(3,6,0.5),(3,7,2),(3,8,1),(3,9,0.5),(3,10,1),(3,11,1),(3,12,2),(3,13,0.5),(3,14,1),(3,15,1),(3,16,1),(3,17,1),(3,18,1),(4,1,1),(4,2,1),(4,3,1),(4,4,0.5),(4,5,0.5),(4,6,0.5),(4,7,1),(4,8,0.5),(4,9,0),(4,10,1),(4,11,1),(4,12,2),(4,13,1),(4,14,1),(4,15,1),(4,16,1),(4,17,1),(4,18,2),(5,1,1),(5,2,1),(5,3,0),(5,4,2),(5,5,1),(5,6,2),(5,7,0.5),(5,8,1),(5,9,2),(5,10,2),(5,11,1),(5,12,0.5),(5,13,2),(5,14,1),(5,15,1),(5,16,1),(5,17,1),(5,18,1),(6,1,1),(6,2,0.5),(6,3,2),(6,4,1),(6,5,0.5),(6,6,1),(6,7,2),(6,8,1),(6,9,0.5),(6,10,2),(6,11,1),(6,12,1),(6,13,1),(6,14,1),(6,15,2),(6,16,1),(6,17,1),(6,18,1),(7,1,1),(7,2,0.5),(7,3,0.5),(7,4,0.5),(7,5,1),(7,6,1),(7,7,1),(7,8,0.5),(7,9,0.5),(7,10,0.5),(7,11,1),(7,12,2),(7,13,1),(7,14,2),(7,15,1),(7,16,1),(7,17,2),(7,18,0.5),(8,1,0),(8,2,1),(8,3,1),(8,4,1),(8,5,1),(8,6,1),(8,7,1),(8,8,2),(8,9,1),(8,10,1),(8,11,1),(8,12,1),(8,13,1),(8,14,2),(8,15,1),(8,16,1),(8,17,0.5),(8,18,1),(9,1,1),(9,2,1),(9,3,1),(9,4,1),(9,5,1),(9,6,2),(9,7,1),(9,8,1),(9,9,0.5),(9,10,0.5),(9,11,0.5),(9,12,1),(9,13,0.5),(9,14,1),(9,15,2),(9,16,1),(9,17,1),(9,18,2),(10,1,1),(10,2,1),(10,3,1),(10,4,1),(10,5,1),(10,6,0.5),(10,7,2),(10,8,1),(10,9,2),(10,10,0.5),(10,11,0.5),(10,12,2),(10,13,1),(10,14,1),(10,15,2),(10,16,0.5),(10,17,1),(10,18,1),(11,1,1),(11,2,1),(11,3,1),(11,4,1),(11,5,2),(11,6,2),(11,7,1),(11,8,1),(11,9,1),(11,10,2),(11,11,0.5),(11,12,0.5),(11,13,1),(11,14,1),(11,15,1),(11,16,0.5),(11,17,1),(11,18,1),(12,1,1),(12,2,1),(12,3,0.5),(12,4,0.5),(12,5,2),(12,6,2),(12,7,0.5),(12,8,1),(12,9,0.5),(12,10,0.5),(12,11,2),(12,12,0.5),(12,13,1),(12,14,1),(12,15,1),(12,16,0.5),(12,17,1),(12,18,1),(13,1,1),(13,2,1),(13,3,2),(13,4,1),(13,5,0),(13,6,1),(13,7,1),(13,8,1),(13,9,1),(13,10,1),(13,11,2),(13,12,0.5),(13,13,0.5),(13,14,1),(13,15,1),(13,16,0.5),(13,17,1),(13,18,1),(14,1,1),(14,2,2),(14,3,1),(14,4,2),(14,5,1),(14,6,1),(14,7,1),(14,8,1),(14,9,0.5),(14,10,1),(14,11,1),(14,12,1),(14,13,1),(14,14,0.5),(14,15,1),(14,16,1),(14,17,0),(14,18,1),(15,1,1),(15,2,1),(15,3,2),(15,4,1),(15,5,2),(15,6,1),(15,7,1),(15,8,1),(15,9,0.5),(15,10,0.5),(15,11,0.5),(15,12,2),(15,13,1),(15,14,1),(15,15,0.5),(15,16,2),(15,17,1),(15,18,1),(16,1,1),(16,2,1),(16,3,1),(16,4,1),(16,5,1),(16,6,1),(16,7,1),(16,8,1),(16,9,0.5),(16,10,1),(16,11,1),(16,12,1),(16,13,1),(16,14,1),(16,15,1),(16,16,2),(16,17,1),(16,18,0),(17,1,1),(17,2,0.5),(17,3,1),(17,4,1),(17,5,1),(17,6,1),(17,7,1),(17,8,2),(17,9,1),(17,10,1),(17,11,1),(17,12,1),(17,13,1),(17,14,2),(17,15,1),(17,16,1),(17,17,0.5),(17,18,0.5),(18,1,1),(18,2,2),(18,3,1),(18,4,0.5),(18,5,1),(18,6,1),(18,7,1),(18,8,1),(18,9,0.5),(18,10,0.5),(18,11,1),(18,12,1),(18,13,1),(18,14,1),(18,15,1),(18,16,2),(18,17,2),(18,18,1);
/*!40000 ALTER TABLE `type_efficacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types` (
  `type_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'Normal'),(2,'Fighting'),(3,'Flying'),(4,'Poison'),(5,'Ground'),(6,'Rock'),(7,'Bug'),(8,'Ghost'),(9,'Steel'),(10,'Fire'),(11,'Water'),(12,'Grass'),(13,'Electric'),(14,'Psychic'),(15,'Ice'),(16,'Dragon'),(17,'Dark');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `LID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('meow123@gmail.com',1,9),('mlem123@gmail.com',2,4),('asd123@gmail.com',3,4),('qazwsx@gmail.com',4,5),('aaike001@gmail.com',5,4),('bpopson@gmail.com',6,6),('bronda95@comcast.net',7,5),('bpopson',8,9);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mlem'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-04  5:19:15
