-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: football_db_final_project
-- ------------------------------------------------------
-- Server version	5.6.37

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
-- Table structure for table `league`
--

DROP TABLE IF EXISTS `league`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `league` (
  `LeagueId` int(11) NOT NULL,
  `LeagueName` varchar(45) NOT NULL,
  `LeagueCountry` varchar(45) NOT NULL,
  PRIMARY KEY (`LeagueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `league`
--

LOCK TABLES `league` WRITE;
/*!40000 ALTER TABLE `league` DISABLE KEYS */;
INSERT INTO `league` VALUES (1,'English Premier League','England'),(2,'La Liga','Spain'),(3,'Seria A','Italy');
/*!40000 ALTER TABLE `league` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager` (
  `ManagerId` int(11) NOT NULL,
  `ManagerName` varchar(45) NOT NULL,
  `ManagerAge` double NOT NULL,
  `ManagerCountry` varchar(45) NOT NULL,
  `Team_TeamId` int(11) DEFAULT NULL,
  `ManagerSalary` double NOT NULL,
  PRIMARY KEY (`ManagerId`),
  UNIQUE KEY `Team_TeamId_UNIQUE` (`Team_TeamId`),
  KEY `fk_Manager_Team1_idx` (`Team_TeamId`),
  CONSTRAINT `fk_Manager_Team1` FOREIGN KEY (`Team_TeamId`) REFERENCES `team` (`TeamId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,'Pepita Bartczak',60,'Indonesia',1,100),(2,'Dennie Sabie',49,'Ireland',2,101),(3,'Pooh Fontell',47,'China',3,102),(4,'Jaimie Lukash',40,'China',4,101),(5,'Agna Barnbrook',36,'North Korea',5,100),(6,'De witt Attersoll',35,'Philippines',6,101),(7,'Brocky Ashness',30,'Philippines',7,102),(8,'Kristal Clere',41,'Portugal',8,103),(9,'Dyna Pavlenkov',56,'Ireland',9,104),(10,'Jen Auden',43,'Indonesia',10,103),(11,'Cecilla Laffin',51,'China',11,102),(12,'Lanni Hamprecht',50,'Philippines',12,101),(13,'Korney Caplis',49,'Ukraine',13,103),(14,'Shantee Aronoff',50,'China',14,105),(15,'Rasla Silmon',32,'Ireland',15,104),(16,'Nitin Prince',25,'India',NULL,102),(17,'Jackie Chan',50,'Asia',NULL,103);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `PlayerId` int(11) NOT NULL,
  `PlayerName` varchar(45) NOT NULL,
  `PlayerAge` double NOT NULL,
  `PlayerCountry` varchar(45) NOT NULL,
  `PlayerPosition` varchar(45) NOT NULL,
  `Team_TeamId` int(11) DEFAULT NULL,
  `PlayersContractExpiry` double NOT NULL,
  `PlayerSalary` varchar(45) NOT NULL,
  PRIMARY KEY (`PlayerId`),
  KEY `fk_Player_Team1_idx` (`Team_TeamId`),
  CONSTRAINT `fk_Player_Team1` FOREIGN KEY (`Team_TeamId`) REFERENCES `team` (`TeamId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'Elsworth Mulholland',28,'Liechtenstein','GK',1,2021,'120'),(2,'Marti Desvignes',30,'Canada','GK',2,2018,'122'),(3,'Ronny Gunthorp',24,'Sweden','GK',3,2019,'124'),(4,'Daren Follett',20,'Philippines','GK',4,2017,'126'),(5,'Jameson Jakoviljevic',32,'Russia','GK',5,2021,'128'),(11,'Fremont Stern',29,'Philippines','GK',6,2018,'130'),(12,'Jarred Woodham',27,'Indonesia','GK',7,2018,'132'),(13,'Ileane Ashborn',21,'Indonesia','GK',8,2017,'134'),(14,'Tarrance Ludron',30,'Netherlands','GK',9,2017,'136'),(20,'Ted Ifill',35,'Indonesia','GK',10,2019,'138'),(21,'Catlaina Woolfoot',25,'Reunion','GK',11,2020,'140'),(22,'Emanuel Gosnay',19,'Brazil','GK',12,2018,'142'),(23,'Jerad Litherland',28,'Philippines','GK',13,2021,'144'),(24,'Janela Oolahan',25,'Armenia','GK',14,2019,'146'),(25,'Wallie Jikylls',27,'France','GK',15,2017,'148'),(31,'Ebonee Kean',31,'Russia','GK',1,2017,'150'),(32,'Delia Caukill',27,'Indonesia','GK',2,2017,'152'),(33,'Wes Roycroft',26,'Russia','GK',3,2019,'154'),(34,'Emelen Remington',24,'Ukraine','GK',4,2018,'156'),(35,'Beverie Wahncke',21,'China','GK',5,2020,'158'),(41,'Roselle Lally',35,'Philippines','GK',6,2017,'160'),(42,'Irwin Harriman',18,'Poland','GK',7,2017,'162'),(43,'Shaine Jirasek',18,'Malaysia','GK',8,2017,'164'),(44,'Delainey Anselmi',34,'Peru','GK',9,2018,'166'),(50,'Gabbie Humber',22,'Nigeria','GK',10,2021,'168'),(93,'Amaleta de Clerc',34,'Brazil','DEF',11,2017,'170'),(94,'Smitty Shearstone',33,'Indonesia','DEF',12,2018,'172'),(95,'Vincents Caps',33,'Japan','DEF',13,2017,'174'),(101,'Trever Winchcomb',35,'Myanmar','DEF',14,2019,'176'),(102,'Langston Kliement',26,'Yemen','DEF',15,2019,'178'),(103,'Fiorenze Rideout',29,'Brazil','DEF',1,2019,'120'),(104,'Tabby Vass',23,'Albania','DEF',2,2019,'122'),(110,'Ezechiel Trow',20,'China','DEF',3,2017,'124'),(111,'Georgie Goldsack',24,'Yemen','DEF',4,2019,'126'),(112,'Kile Winsbury',23,'Greece','DEF',5,2017,'128'),(113,'Georgie Sink',32,'Colombia','DEF',6,2017,'130'),(114,'Julietta Truwert',25,'Indonesia','DEF',7,2018,'132'),(115,'Nikkie Earthfield',20,'China','DEF',8,2019,'134'),(121,'Gusty Downham',30,'Azerbaijan','DEF',9,2020,'136'),(122,'Stephen Domenichini',25,'Russia','DEF',10,2017,'138'),(123,'Dede Bartelet',31,'Denmark','DEF',11,2020,'140'),(124,'Henry Muglestone',24,'China','DEF',12,2017,'142'),(125,'Dodi Campbell-Dunlop',27,'Brazil','DEF',13,2018,'144'),(131,'Yulma Basham',25,'Armenia','DEF',14,2021,'146'),(132,'Tab McQuade',21,'Indonesia','DEF',15,2021,'148'),(133,'Murry Ellph',18,'Brazil','DEF',1,2017,'150'),(134,'Paolina Wellbelove',21,'Japan','DEF',2,2021,'152'),(140,'Zarah Dodridge',26,'China','DEF',3,2019,'154'),(141,'Karee Kulic',20,'Brazil','DEF',4,2019,'156'),(142,'Sheelagh Coleborn',20,'Czech Republic','DEF',5,2021,'158'),(143,'Yalonda Southwick',23,'Guatemala','DEF',6,2018,'160'),(144,'Krissy Livard',27,'Norway','DEF',7,2017,'162'),(145,'Jamey Barlthrop',26,'Mexico','DEF',8,2018,'164'),(151,'Roda Hartridge',34,'Honduras','DEF',9,2017,'166'),(152,'Allegra Lansberry',35,'Portugal','DEF',10,2018,'168'),(153,'Bard Fosberry',35,'Indonesia','DEF',11,2018,'170'),(154,'Roanna Duffield',25,'Colombia','DEF',12,2019,'172'),(155,'Norrie Camelia',24,'Russia','DEF',13,2017,'174'),(161,'Vanessa Davidi',18,'China','DEF',14,2020,'176'),(162,'Geno Duce',32,'Peru','DEF',15,2019,'178'),(163,'Benny Alldre',26,'Iran','DEF',1,2018,'120'),(164,'Lorianna Kenwyn',22,'Indonesia','DEF',2,2018,'122'),(170,'Eadmund Jacqueminot',21,'Slovenia','DEF',3,2020,'124'),(171,'Jeanine Jopson',33,'South Africa','DEF',4,2018,'126'),(172,'Danica Matityahu',26,'China','DEF',5,2018,'128'),(173,'Mable Mulcock',28,'Mongolia','DEF',6,2021,'130'),(174,'Isidor Vasiljevic',26,'United States','DEF',7,2021,'132'),(175,'Gael Andrzejak',35,'China','DEF',8,2020,'134'),(181,'Amalita Peverell',24,'United States','DEF',9,2020,'136'),(182,'Janifer Hukins',19,'Canada','DEF',10,2020,'138'),(183,'Fred Marshalleck',31,'Honduras','DEF',11,2020,'140'),(184,'Nana Dedmam',34,'Georgia','DEF',12,2020,'142'),(185,'Putnam Overlow',35,'Indonesia','DEF',13,2019,'144'),(191,'Shirley Syrett',29,'Indonesia','DEF',14,2021,'146'),(192,'Malinda Fawckner',20,'Indonesia','DEF',15,2020,'148'),(193,'Wendy Schubuser',24,'Portugal','DEF',1,2020,'150'),(194,'Avrom Domerc',20,'China','DEF',2,2020,'152'),(200,'Aleda Jerisch',33,'Myanmar','DEF',3,2017,'154'),(201,'Northrop Dashwood',18,'Portugal','DEF',4,2017,'156'),(202,'Glori Aubry',22,'Poland','DEF',5,2020,'158'),(203,'Mill Barribal',30,'China','DEF',6,2021,'160'),(204,'Shannen Harms',20,'Nigeria','DEF',7,2021,'162'),(205,'Janina Dancey',19,'Portugal','DEF',8,2021,'164'),(211,'Arabela Shoutt',24,'South Africa','DEF',9,2018,'166'),(212,'Harbert Hellicar',26,'China','DEF',10,2021,'168'),(213,'Lacee Davidovich',28,'Indonesia','DEF',11,2019,'170'),(214,'Marcelo Hurtado',21,'Russia','DEF',12,2019,'172'),(215,'Archibald Colebeck',28,'China','DEF',13,2018,'174'),(221,'Karlee Leggatt',34,'China','DEF',14,2018,'176'),(222,'Leslie Trethowan',29,'Dominican Republic','DEF',15,2019,'178'),(223,'Geoffry Walsham',32,'Croatia','DEF',1,2020,'120'),(230,'Reinold Maddra',30,'Madagascar','MID',2,2020,'122'),(231,'Trevor Greenard',24,'Japan','MID',3,2019,'124'),(232,'Woodie Coulthart',19,'Ukraine','MID',4,2018,'126'),(233,'Mirelle Norridge',35,'Ukraine','MID',5,2018,'128'),(234,'Neile MacCourt',25,'Russia','MID',6,2019,'130'),(235,'Gilly Mallabon',29,'Cape Verde','MID',7,2021,'132'),(241,'Hyacinth Sheed',31,'Serbia','MID',8,2019,'134'),(242,'Frank Scruton',32,'Bangladesh','MID',9,2017,'136'),(243,'My Treslove',25,'Latvia','MID',10,2017,'138'),(244,'Darcy Evesque',30,'Portugal','MID',11,2020,'140'),(245,'Rosabel Yole',33,'Indonesia','MID',12,2019,'142'),(251,'Cordy Nutty',29,'China','MID',13,2017,'144'),(252,'Constanta Tretwell',21,'United States','MID',14,2020,'146'),(253,'Phil Berget',19,'China','MID',15,2017,'148'),(254,'Flore Santacrole',22,'Martinique','MID',1,2017,'150'),(260,'Gwyn Blindermann',35,'China','MID',2,2021,'152'),(261,'Padraic Meneghelli',24,'Poland','MID',3,2019,'154'),(262,'Malanie Anselmi',27,'Kazakhstan','MID',4,2018,'156'),(263,'Cordelie Aldwick',30,'Russia','MID',5,2021,'158'),(264,'Giralda Gutridge',27,'Netherlands','MID',6,2019,'160'),(265,'Gratiana Starmore',31,'China','MID',7,2017,'162'),(271,'Joelie Claypool',21,'Indonesia','MID',8,2019,'164'),(272,'Amandy Clixby',33,'China','MID',9,2021,'166'),(273,'See Mate',25,'Belarus','MID',10,2020,'168'),(274,'Boyd Blanko',26,'China','MID',11,2018,'170'),(275,'Tibold Nisard',25,'China','MID',12,2021,'172'),(281,'Drusi Chazier',19,'Indonesia','MID',13,2019,'174'),(282,'Darin Hawksworth',33,'Russia','MID',14,2021,'176'),(283,'Saul Rawet',19,'China','MID',15,2021,'178'),(284,'Blondelle Sappson',18,'Botswana','MID',1,2019,'120'),(290,'Griselda Poulsum',25,'Russia','MID',2,2018,'122'),(291,'Shir Worsalls',18,'China','MID',3,2017,'124'),(292,'Pauly McAtamney',28,'China','MID',4,2018,'126'),(293,'Joey Buttriss',30,'Poland','MID',5,2021,'128'),(294,'Myrah Boobyer',33,'Brazil','MID',6,2018,'130'),(295,'Tandi Scarce',18,'France','MID',7,2018,'132'),(301,'Northrup Millward',29,'Czech Republic','MID',8,2021,'134'),(302,'Markos Olifaunt',26,'Mexico','MID',9,2018,'136'),(303,'Marcellus Valentetti',24,'France','MID',10,2021,'138'),(304,'Augie Terran',26,'Greece','MID',11,2018,'140'),(305,'Bamby Douse',27,'China','MID',12,2018,'142'),(311,'Kristin Comford',21,'Indonesia','MID',13,2018,'144'),(312,'Glennis Crocumbe',20,'Serbia','MID',14,2018,'146'),(313,'Flora Lewsley',22,'Indonesia','MID',15,2021,'148'),(314,'Engracia Howie',31,'China','MID',1,2017,'150'),(320,'Bethena Richard',34,'Russia','MID',2,2019,'152'),(321,'Phillip MacColm',35,'Syria','MID',3,2020,'154'),(322,'Dorolice Fairbanks',25,'Rwanda','MID',4,2018,'156'),(323,'Willie Stammirs',27,'China','MID',5,2019,'158'),(324,'Hadlee Norman',35,'China','MID',6,2020,'160'),(325,'Johnnie Lyte',19,'Vietnam','MID',7,2019,'162'),(331,'Ermengarde Beadon',19,'Indonesia','MID',8,2017,'164'),(332,'Manolo Sneesbie',26,'Iceland','MID',9,2019,'166'),(333,'Warde Lechelle',18,'Argentina','MID',10,2020,'168'),(334,'Osmund Crowdy',29,'United States','MID',11,2019,'170'),(335,'Leroi Lidgely',34,'Russia','MID',12,2020,'172'),(341,'Harriette Mercey',22,'Philippines','MID',13,2019,'174'),(342,'Philomena Garlinge',24,'Philippines','MID',14,2021,'176'),(343,'Emmalynne Kwiek',19,'Japan','MID',15,2018,'178'),(344,'Garald Blaycock',30,'Philippines','MID',1,2017,'120'),(350,'Alic Pettegree',29,'Belize','MID',2,2019,'122'),(351,'Evangelia Impy',24,'Philippines','MID',3,2019,'124'),(352,'Carina Loades',33,'Indonesia','MID',4,2020,'126'),(353,'Raphael Gallaccio',27,'Macedonia','MID',5,2018,'128'),(354,'Melanie Bris',32,'Burkina Faso','MID',6,2020,'130'),(355,'Klemens Oblein',22,'Indonesia','MID',7,2017,'132'),(361,'Ludovico Gellion',29,'China','MID',8,2017,'134'),(362,'Hagen Standbridge',29,'Poland','MID',9,2021,'136'),(363,'Garret Iacovacci',20,'Costa Rica','MID',10,2017,'138'),(364,'Sylas Dye',23,'Brazil','MID',11,2019,'140'),(365,'Boyce Loram',25,'China','MID',12,2019,'142'),(371,'Kain Bedle',21,'Ukraine','MID',13,2018,'144'),(372,'Arabella Whistlecraft',31,'Ivory Coast','MID',14,2019,'146'),(373,'Ketty St. John',25,'China','MID',15,2019,'148'),(374,'Dulci Hailwood',30,'Afghanistan','MID',1,2020,'150'),(380,'Englebert Berford',20,'United States','MID',2,2021,'152'),(381,'Page Gossart',29,'Ukraine','MID',3,2018,'154'),(382,'Jewell Pinnegar',28,'Portugal','MID',4,2019,'156'),(383,'Alanson Showler',30,'Brazil','MID',5,2018,'158'),(384,'Melitta Cheatle',24,'France','MID',6,2021,'160'),(385,'Junie Courtier',33,'China','MID',7,2020,'162'),(391,'Fiann Alty',20,'China','MID',8,2017,'164'),(392,'Wade Featherstone',20,'Argentina','MID',9,2017,'166'),(393,'Kathryn Swales',22,'China','MID',10,2018,'168'),(394,'Lonnie Sheirlaw',29,'Tuvalu','MID',11,2021,'170'),(395,'Livy Brito',23,'China','MID',12,2017,'172'),(401,'Katti Brampton',27,'China','MID',13,2018,'174'),(402,'Sharai Gerin',25,'Philippines','MID',14,2019,'176'),(403,'Milton Willcox',19,'Indonesia','MID',15,2021,'178'),(404,'Adey Peedell',29,'Thailand','MID',1,2017,'120'),(410,'Ewart Rablen',28,'Russia','MID',2,2019,'122'),(411,'Olympia Harston',23,'Burkina Faso','MID',3,2018,'124'),(412,'Evelina Cellone',18,'Japan','MID',4,2020,'126'),(413,'Kendal Tindall',33,'Japan','MID',5,2019,'128'),(414,'Tracy Walrond',26,'Greece','MID',6,2020,'130'),(415,'Beaufort Ingon',20,'Canada','MID',7,2017,'132'),(601,'Kris Harsnipe',25,'Portugal','ST',8,2019,'134'),(602,'Jamill Uman',21,'Indonesia','ST',9,2021,'136'),(603,'Hyacinthia Bootland',24,'Indonesia','ST',10,2021,'138'),(604,'Bourke Parchment',31,'Indonesia','ST',11,2020,'140'),(605,'Malachi Ansett',27,'China','ST',12,2020,'142'),(611,'Jeremie Huetson',27,'Poland','ST',13,2020,'144'),(612,'Nancee Aberchirder',21,'United Arab Emirates','ST',14,2021,'146'),(613,'Tessa Widdowson',32,'Sweden','ST',15,2020,'148'),(614,'Reece Boundley',22,'China','ST',1,2018,'150'),(620,'Sutherland Grindrod',27,'China','ST',2,2018,'152'),(621,'Kelsi Jealous',33,'France','ST',3,2021,'154'),(622,'Aaren Uff',35,'Sierra Leone','ST',4,2021,'156'),(623,'Tuesday Snowding',31,'Brazil','ST',5,2018,'158'),(624,'Rosalie Corner',33,'Poland','ST',6,2020,'160'),(625,'Vita Lindell',20,'Philippines','ST',7,2020,'162'),(627,'Messi',30,'Argentina','ST',NULL,2016,'125'),(679,'Ronaldo',31,'Portugal','ST',NULL,2016,'126');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scout`
--

DROP TABLE IF EXISTS `scout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scout` (
  `ScoutId` int(11) NOT NULL,
  `ScoutName` varchar(45) NOT NULL,
  `ScoutAge` double NOT NULL,
  `ScoutCountry` varchar(45) NOT NULL,
  `Team_TeamId` int(11) DEFAULT NULL,
  `ScoutSalary` double NOT NULL,
  PRIMARY KEY (`ScoutId`),
  KEY `fk_Scout_Team1_idx` (`Team_TeamId`),
  CONSTRAINT `fk_Scout_Team1` FOREIGN KEY (`Team_TeamId`) REFERENCES `team` (`TeamId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scout`
--

LOCK TABLES `scout` WRITE;
/*!40000 ALTER TABLE `scout` DISABLE KEYS */;
INSERT INTO `scout` VALUES (1,'Sheff Lysons',50,'Czech Republic',1,100),(2,'Ailina Jeacop',36,'China',2,102),(3,'Conny Axten',55,'Mauritius',3,104),(4,'Tedman Van Waadenburg',42,'Japan',4,106),(5,'Courtnay Merwe',33,'Indonesia',5,108),(6,'Nissy Vinson',46,'Tanzania',6,110),(7,'Orville Valek',46,'South Africa',7,112),(8,'Tallulah Gibbin',36,'Indonesia',8,114),(9,'Phaedra Basant',35,'Indonesia',9,116),(10,'Erminia Castanos',38,'China',10,100),(11,'Reyna Master',36,'Indonesia',11,102),(12,'Elinore Ashford',46,'Panama',12,104),(13,'Kip Emmison',40,'Philippines',13,106),(14,'Elisabeth Nelsen',50,'Canada',14,108),(15,'Maddi Campione',33,'Egypt',15,110),(16,'Aryn Surmeyers',49,'Ukraine',1,112),(17,'Mile Van Der Weedenburg',43,'Philippines',2,114),(18,'Nelli Pinare',38,'Indonesia',3,116),(19,'Consuelo Overel',42,'Morocco',4,100),(20,'Jacquenetta Pimley',51,'Indonesia',5,102),(21,'Clement Stothard',38,'Peru',6,104),(22,'Marlow Poultney',44,'Honduras',7,106),(23,'Haroun Mocquer',52,'Peru',8,108),(24,'Alberik Pardi',51,'Netherlands',9,110),(25,'Waly Heard',52,'Russia',10,112),(26,'Bernadina Asser',37,'Sweden',11,114),(27,'Kary Newark',59,'Russia',12,116),(28,'Rickie Fiddiman',32,'United States',13,100),(29,'Darya Hesse',38,'Brazil',14,102),(30,'Ninette Lars',51,'Netherlands',15,104),(31,'Silvie Ruppelin',35,'China',1,106),(32,'Rriocard Ammer',42,'Thailand',2,108),(33,'Urson Denney',58,'Yemen',3,110),(34,'Alicia Searight',41,'Norway',4,112),(35,'Gypsy Pinner',47,'Peru',5,114),(36,'Karoly Tulloch',38,'China',6,116),(37,'Alexandros Trangmar',38,'United States',7,100),(38,'Beale Ofener',36,'Colombia',8,102),(39,'Ashlee Cuppitt',40,'Philippines',9,104),(40,'Claudia Pauli',45,'Benin',10,106),(41,'Fritz Fahy',32,'France',11,108),(42,'Tamarra Brasier',47,'Russia',12,110),(43,'Franz Mil',42,'South Korea',13,112),(44,'Yardley Kittley',52,'Czech Republic',14,114),(45,'Massimiliano Hindenburg',30,'Indonesia',15,116),(46,'Shin Chan',33,'Korea',NULL,110);
/*!40000 ALTER TABLE `scout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stadium`
--

DROP TABLE IF EXISTS `stadium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stadium` (
  `StadiumId` int(11) NOT NULL,
  `StadiumName` varchar(45) NOT NULL,
  `StadiumCapacity` double NOT NULL,
  `StadiumCostPerSeat` double NOT NULL,
  `StadiumMaintanencePerSeat` double NOT NULL,
  `Team_TeamId` int(11) NOT NULL,
  PRIMARY KEY (`StadiumId`),
  KEY `fk_Stadium_Team1_idx` (`Team_TeamId`),
  CONSTRAINT `fk_Stadium_Team1` FOREIGN KEY (`Team_TeamId`) REFERENCES `team` (`TeamId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stadium`
--

LOCK TABLES `stadium` WRITE;
/*!40000 ALTER TABLE `stadium` DISABLE KEYS */;
INSERT INTO `stadium` VALUES (1,'Law University of Bratislava',76138,226,15,1),(2,'University of Toledo',75535,221,29,2),(3,'University of Connecticut Health Center',76543,174,23,3),(4,'Nebraska Christian College',84002,242,26,4),(5,'Ambrose Alli University',70729,173,28,5),(6,'Bule Hora  University',73125,167,25,6),(7,'Xinjiang University of Finance and Economics',76941,195,14,7),(9,'Kwangwoon University',50014,246,27,9),(10,'University Institute of Oriental Studies',83574,197,15,10),(11,'ITT Technical Institute Portland',83445,205,26,11),(12,'Sri Padmavati Women\'s University',52161,152,22,12),(13,'Universitas Pekalongan',60415,163,10,13),(14,'Swiss Federal Institute of Technology',75549,181,21,14),(15,'South University of Technology ',56121,142,16,15);
/*!40000 ALTER TABLE `stadium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `stadium_earnings`
--

DROP TABLE IF EXISTS `stadium_earnings`;
/*!50001 DROP VIEW IF EXISTS `stadium_earnings`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `stadium_earnings` AS SELECT 
 1 AS `StadiumName`,
 1 AS `Earnings`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `StaffId` int(11) NOT NULL,
  `StaffName` varchar(45) NOT NULL,
  `StaffAge` double NOT NULL,
  `StaffCountry` varchar(45) NOT NULL,
  `StaffDesignation` varchar(45) NOT NULL,
  `Team_TeamId` int(11) DEFAULT NULL,
  PRIMARY KEY (`StaffId`),
  KEY `fk_Staff_Team1_idx` (`Team_TeamId`),
  CONSTRAINT `fk_Staff_Team1` FOREIGN KEY (`Team_TeamId`) REFERENCES `team` (`TeamId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Sissy Feveryear',33,'Portugal','Director',1),(8,'Curtis Arendsen',48,'Egypt','Director of Communications',1),(15,'Romain Paniman',59,'Russia','Safety officer',1),(16,'Schuyler Batchley',48,'Brazil','Stadium manager',1),(22,'Maurie Gerrey',34,'Japan','Head first-team physiotherapist',1),(24,'Kirbee Degli Abbati',38,'Peru','Head of academy physiotherapy',1),(25,'Peri Cabble',56,'Indonesia','Senior academy physiotherapist',1),(27,'Neilla Lyard',50,'China','Club dietician',1),(31,'Orland Davies',58,'Indonesia','Director',2),(38,'Justino Bayles',41,'Indonesia','Director of Communications',2),(45,'Morey Stovin',31,'Botswana','Safety officer',2),(46,'Findlay Dunbavin',54,'Czech Republic','Stadium manager',2),(52,'Darrin Maytum',57,'United States','Head first-team physiotherapist',2),(54,'Sylvia Blenkinsopp',30,'Lithuania','Head of academy physiotherapy',2),(55,'Blithe McKilroe',50,'Poland','Senior academy physiotherapist',2),(57,'Berthe Deaville',38,'China','Club dietician',2),(61,'Walther Jouannisson',38,'Russia','Director',3),(68,'Sayre Duding',31,'Egypt','Director of Communications',3),(75,'Constantia Shorbrook',48,'Indonesia','Safety officer',3),(76,'Lorelei Mattingly',40,'Sweden','Stadium manager',3),(82,'Edik Tatlow',41,'China','Head first-team physiotherapist',3),(84,'Jone Battany',50,'Egypt','Head of academy physiotherapy',3),(85,'Tobye Skitch',48,'Bosnia and Herzegovina','Senior academy physiotherapist',3),(87,'Lida Babcock',49,'Albania','Club dietician',3),(91,'Jeanna Skyrm',54,'Indonesia','Director',4),(98,'Siegfried Scrafton',30,'Sierra Leone','Director of Communications',4),(105,'Selena Katt',49,'China','Safety officer',4),(106,'Poul Perfect',49,'China','Stadium manager',4),(112,'Nollie Denkel',39,'United States','Head first-team physiotherapist',4),(114,'Gardy Cray',46,'Myanmar','Head of academy physiotherapy',4),(115,'Marven Deneve',53,'China','Senior academy physiotherapist',4),(117,'Gunther Lapsley',37,'Japan','Club dietician',4),(121,'Marje Venton',36,'Philippines','Director',5),(128,'Vannie Batiste',53,'United States','Director of Communications',5),(135,'Lonnard Brownhall',57,'China','Safety officer',5),(136,'Dew Kennifick',42,'Peru','Stadium manager',5),(142,'Mylo Jellings',46,'Brazil','Head first-team physiotherapist',5),(144,'Miriam Gildea',43,'Palestinian Territory','Head of academy physiotherapy',5),(145,'Eirena Brittles',31,'Jordan','Senior academy physiotherapist',5),(147,'Eberto Coppeard',36,'Finland','Club dietician',5),(151,'Barbaraanne Davidow',30,'Canada','Director',6),(158,'Pietrek Fawson',41,'Poland','Director of Communications',6),(165,'Barnebas Kittless',60,'Indonesia','Safety officer',6),(166,'Emilie Drane',59,'Angola','Stadium manager',6),(172,'Angelico Siseland',36,'Democratic Republic of the Congo','Head first-team physiotherapist',6),(174,'Dione Bourgeois',45,'Indonesia','Head of academy physiotherapy',6),(175,'Bell Volkes',38,'Portugal','Senior academy physiotherapist',6),(177,'Gal Wildey',32,'Ireland','Club dietician',6),(181,'Amitie Senescall',39,'Czech Republic','Director',7),(188,'Keane Hanning',49,'China','Director of Communications',7),(195,'Ronda Antonat',41,'Slovenia','Safety officer',7),(196,'Avrit Rawdall',31,'Indonesia','Stadium manager',7),(202,'Loren Honsch',60,'Senegal','Head first-team physiotherapist',7),(204,'Bax Hinz',42,'Philippines','Head of academy physiotherapy',7),(205,'Hildy Blooman',50,'China','Senior academy physiotherapist',7),(207,'Daile Kinnen',39,'Kosovo','Club dietician',7),(211,'Nancie Musla',32,'Czech Republic','Director',8),(218,'Vaughn MacFayden',39,'Philippines','Director of Communications',8),(225,'Francyne Forsyde',31,'Yemen','Safety officer',8),(226,'Alphard Maasz',44,'United Kingdom','Stadium manager',8),(232,'Worden Trask',58,'Sweden','Head first-team physiotherapist',8),(234,'Ashia Detoile',35,'Ukraine','Head of academy physiotherapy',8),(235,'Arvie Dohrmann',51,'Indonesia','Senior academy physiotherapist',8),(237,'Meridel Sunock',46,'China','Club dietician',8),(241,'Brandea Ferebee',40,'Croatia','Director',9),(248,'Frans Soles',60,'Pakistan','Director of Communications',9),(255,'Vonny Sturr',51,'Sweden','Safety officer',9),(256,'Creigh Van Oort',48,'Argentina','Stadium manager',9),(262,'Scott Patrickson',32,'Saudi Arabia','Head first-team physiotherapist',9),(264,'Parnell Wadeling',58,'Philippines','Head of academy physiotherapy',9),(265,'Torin MacLennan',46,'Poland','Senior academy physiotherapist',9),(267,'Richy Reily',36,'Ivory Coast','Club dietician',9),(271,'Anatole McCane',38,'Ukraine','Director',10),(278,'Robby Degoix',45,'Morocco','Director of Communications',10),(285,'Eirena Bernardotti',43,'China','Safety officer',10),(286,'Rozanna Cleminson',39,'Portugal','Stadium manager',10),(292,'Bartlett Roseaman',39,'Philippines','Head first-team physiotherapist',10),(294,'Madlen Masserel',55,'Ukraine','Head of academy physiotherapy',10),(295,'Claudelle Slite',31,'Japan','Senior academy physiotherapist',10),(297,'Myra Basnett',48,'Portugal','Club dietician',10),(301,'Darren Alvarez',53,'Netherlands','Director',11),(308,'Bea Pitcaithly',60,'Philippines','Director of Communications',11),(315,'Elie Bolland',31,'Sweden','Safety officer',11),(316,'Saunder Giraudou',40,'Pakistan','Stadium manager',11),(322,'Robinet Clissold',54,'Malaysia','Head first-team physiotherapist',11),(324,'Pascal Fosse',59,'Iceland','Head of academy physiotherapy',11),(325,'Eleni Gillbey',34,'China','Senior academy physiotherapist',11),(327,'Blondie Anthony',54,'Norway','Club dietician',12),(331,'Garnet Gladden',57,'China','Director',12),(338,'Barbara Willcocks',30,'Peru','Director of Communications',12),(345,'Luce McCandless',42,'Philippines','Safety officer',12),(346,'Roderic Lofty',53,'Philippines','Stadium manager',12),(352,'Vonni Leet',51,'Indonesia','Head first-team physiotherapist',12),(354,'Kit Ducker',36,'China','Head of academy physiotherapy',12),(355,'Mayor Rolfe',40,'Guatemala','Senior academy physiotherapist',12),(357,'Mano Deneve',60,'China','Club dietician',12),(361,'Leif Ruprecht',42,'Greece','Director',13),(368,'Nikki Lowten',49,'Indonesia','Director of Communications',13),(375,'Mitzi Danell',51,'Philippines','Safety officer',13),(376,'Selena Botting',51,'Guinea','Stadium manager',13),(382,'Sunshine Jessel',33,'China','Head first-team physiotherapist',13),(384,'Terese Newbury',40,'Poland','Head of academy physiotherapy',13),(385,'Manya Bambra',33,'Poland','Senior academy physiotherapist',13),(387,'Tony Dacks',33,'China','Club dietician',14),(391,'Lowrance Stamper',39,'China','Director',14),(398,'Trstram Golt',31,'Japan','Director of Communications',14),(405,'Derick Wroth',33,'Brazil','Safety officer',14),(406,'Linda Iiannone',36,'Honduras','Stadium manager',14),(412,'Lyndel Swatten',36,'Poland','Head first-team physiotherapist',14),(414,'Clemens Haddow',51,'Poland','Head of academy physiotherapy',14),(415,'Nickie Mooreed',54,'Greece','Senior academy physiotherapist',14),(417,'Tallie Adney',40,'Portugal','Club dietician',14),(421,'Nonna Vauls',36,'China','Director',15),(428,'Mitzi Neicho',41,'Mongolia','Director of Communications',15),(435,'Pansie Wickrath',56,'Croatia','Safety officer',15),(436,'Adrienne Jeanesson',41,'Nigeria','Stadium manager',15),(442,'Jenn Hedylstone',60,'Russia','Head first-team physiotherapist',15),(444,'Staffard Dincey',38,'Portugal','Head of academy physiotherapy',15),(445,'Elisa Emberson',31,'Thailand','Senior academy physiotherapist',15);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `TeamId` int(11) NOT NULL,
  `TeamName` varchar(45) DEFAULT NULL,
  `League_LeagueId` int(11) NOT NULL,
  PRIMARY KEY (`TeamId`),
  KEY `fk_Team_League_idx` (`League_LeagueId`),
  CONSTRAINT `fk_Team_League` FOREIGN KEY (`League_LeagueId`) REFERENCES `league` (`LeagueId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Manchester United',1),(2,'Manchester City',1),(3,'Chelsea',1),(4,'Arsenal',1),(5,'Tottenham Hotspurs',1),(6,'Real Madrid',2),(7,'Barcelona',2),(8,'Atletico Madrid',2),(9,'Celta Vigo',2),(10,'Levante',2),(11,'AC Milan',3),(12,'Inter Milan',3),(13,'Juventus',3),(14,'AS Roma',3),(15,'Genoa',3);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `team_earning_through_stadium`
--

DROP TABLE IF EXISTS `team_earning_through_stadium`;
/*!50001 DROP VIEW IF EXISTS `team_earning_through_stadium`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `team_earning_through_stadium` AS SELECT 
 1 AS `TeamName`,
 1 AS `Earnings`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `team_earnings`
--

DROP TABLE IF EXISTS `team_earnings`;
/*!50001 DROP VIEW IF EXISTS `team_earnings`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `team_earnings` AS SELECT 
 1 AS `teamName`,
 1 AS `Expenses`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `unemployed_manager`
--

DROP TABLE IF EXISTS `unemployed_manager`;
/*!50001 DROP VIEW IF EXISTS `unemployed_manager`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `unemployed_manager` AS SELECT 
 1 AS `ManagerId`,
 1 AS `ManagerName`,
 1 AS `ManagerAge`,
 1 AS `ManagerCountry`,
 1 AS `Team_TeamId`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `unemployed_player`
--

DROP TABLE IF EXISTS `unemployed_player`;
/*!50001 DROP VIEW IF EXISTS `unemployed_player`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `unemployed_player` AS SELECT 
 1 AS `PlayerId`,
 1 AS `PlayerName`,
 1 AS `PlayerAge`,
 1 AS `PlayerCountry`,
 1 AS `PlayerPosition`,
 1 AS `Team_TeamId`,
 1 AS `PlayersContractExpiry`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'football_db_final_project'
--

--
-- Dumping routines for database 'football_db_final_project'
--
/*!50003 DROP PROCEDURE IF EXISTS `Player_contract` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Player_contract`()
BEGIN
Select PlayerName , PlayerPosition from Player where PlayersContractExpiry = 2017;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Player_Salary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Player_Salary`()
BEGIN
select all TeamName , sum(PlayerSalary) as Expenses from team inner join player on team.teamid = player.team_teamId group by teamName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Scout_Salary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Scout_Salary`()
BEGIN
select TeamName , sum(ScoutSalary) as Money from team inner join scout on team.teamId = scout.Team_TeamId group by TeamName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Unemployed_scout` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Unemployed_scout`()
BEGIN
select * from scout where Team_TeamId is null;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `stadium_earnings`
--

/*!50001 DROP VIEW IF EXISTS `stadium_earnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stadium_earnings` AS select `stadium`.`StadiumName` AS `StadiumName`,((`stadium`.`StadiumCapacity` * `stadium`.`StadiumCostPerSeat`) - (`stadium`.`StadiumCapacity` * `stadium`.`StadiumMaintanencePerSeat`)) AS `Earnings` from `stadium` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `team_earning_through_stadium`
--

/*!50001 DROP VIEW IF EXISTS `team_earning_through_stadium`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `team_earning_through_stadium` AS select `team`.`TeamName` AS `TeamName`,((`stadium`.`StadiumCapacity` * `stadium`.`StadiumCostPerSeat`) - (`stadium`.`StadiumCapacity` * `stadium`.`StadiumMaintanencePerSeat`)) AS `Earnings` from (`team` join `stadium` on((`team`.`TeamId` = `stadium`.`Team_TeamId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `team_earnings`
--

/*!50001 DROP VIEW IF EXISTS `team_earnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `team_earnings` AS select `team`.`TeamName` AS `teamName`,(((`stadium`.`StadiumCapacity` * `stadium`.`StadiumCostPerSeat`) - (`stadium`.`StadiumCapacity` * `stadium`.`StadiumMaintanencePerSeat`)) - ((sum(`player`.`PlayerSalary`) + `manager`.`ManagerSalary`) + sum(`scout`.`ScoutSalary`))) AS `Expenses` from ((((`player` join `team` on((`team`.`TeamId` = `player`.`Team_TeamId`))) join `manager` on((`team`.`TeamId` = `manager`.`Team_TeamId`))) join `stadium` on((`team`.`TeamId` = `stadium`.`Team_TeamId`))) join `scout` on((`scout`.`Team_TeamId` = `team`.`TeamId`))) group by `team`.`TeamName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `unemployed_manager`
--

/*!50001 DROP VIEW IF EXISTS `unemployed_manager`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `unemployed_manager` AS select `manager`.`ManagerId` AS `ManagerId`,`manager`.`ManagerName` AS `ManagerName`,`manager`.`ManagerAge` AS `ManagerAge`,`manager`.`ManagerCountry` AS `ManagerCountry`,`manager`.`Team_TeamId` AS `Team_TeamId` from `manager` where isnull(`manager`.`Team_TeamId`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `unemployed_player`
--

/*!50001 DROP VIEW IF EXISTS `unemployed_player`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `unemployed_player` AS select `player`.`PlayerId` AS `PlayerId`,`player`.`PlayerName` AS `PlayerName`,`player`.`PlayerAge` AS `PlayerAge`,`player`.`PlayerCountry` AS `PlayerCountry`,`player`.`PlayerPosition` AS `PlayerPosition`,`player`.`Team_TeamId` AS `Team_TeamId`,`player`.`PlayersContractExpiry` AS `PlayersContractExpiry` from `player` where isnull(`player`.`Team_TeamId`) */;
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

-- Dump completed on 2017-12-13  1:29:13
