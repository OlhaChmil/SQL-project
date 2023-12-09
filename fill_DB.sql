-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_25
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-cll-lve

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
-- Table structure for table `channels`
--

DROP TABLE IF EXISTS `channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channels` (
  `channels_id` int(11) NOT NULL AUTO_INCREMENT,
  `channels_name` varchar(100) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `channels_price` int(11) NOT NULL,
  PRIMARY KEY (`channels_id`),
  UNIQUE KEY `channels_name` (`channels_name`),
  KEY `idx_channels_price` (`channels_price`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channels`
--

LOCK TABLES `channels` WRITE;
/*!40000 ALTER TABLE `channels` DISABLE KEYS */;
INSERT INTO `channels` VALUES (1,'booking.com','Cumque iste voluptas enim corrupti ut. Qui est corporis vero repellendus iure voluptas. Dignissimos ',141),(2,'expedia.com','Alias ea eligendi et provident. Itaque optio voluptas quae itaque. Vero animi cupiditate veniam cupi',150),(3,'own.web','Tenetur molestiae qui sit sint et corrupti. Voluptatem quod omnis doloremque perspiciatis. Nihil vol',135),(4,'direct','Rerum rerum illum et. Deserunt et explicabo quia esse. Maiores ex ipsa dolorem.',110);
/*!40000 ALTER TABLE `channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `country_of_residence` varchar(100) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Bauch','Emmy','1977-11-15','80',NULL,'lind.kailyn@example.net',6176939),(2,'Rau','Monroe','2015-09-28','531',NULL,'satterfield.crystal@example.org',301),(3,'Romaguera','Elise','1977-12-17','229171',NULL,'howell85@example.net',864535),(4,'Bailey','Kraig','2016-05-27','25319',NULL,'reyes82@example.net',442776),(5,'Predovic','Amelia','1992-12-15','3',NULL,'hailie99@example.com',93426),(6,'Daugherty','Camryn','2003-04-04','570',NULL,'frami.robyn@example.com',138584070),(7,'Ullrich','Gerald','1983-08-29','',NULL,'xheaney@example.org',236),(8,'Hintz','Brett','1986-12-13','',NULL,'lesch.hunter@example.net',338),(9,'Cummings','Javier','1972-01-22','1',NULL,'ruben03@example.org',3876),(10,'Cormier','Fausto','1986-06-17','',NULL,'ephraim84@example.net',0),(11,'Goldner','Fredrick','1979-04-30','340',NULL,'dare.katelin@example.net',419),(12,'Doyle','Horacio','2016-10-27','33884737',NULL,'noel71@example.net',9),(13,'Bartell','Reymundo','1994-01-31','424111',NULL,'michele.lindgren@example.net',4782909),(14,'Zulauf','Emerald','1972-01-04','3562902',NULL,'tiana69@example.net',423781848),(15,'Rau','Louie','2004-09-01','9463',NULL,'brennon20@example.org',5393533),(16,'Maggio','Stuart','1989-09-01','167805',NULL,'rice.brown@example.net',3181971),(17,'Pouros','Damien','2000-09-21','8129',NULL,'gisselle.batz@example.net',143153),(18,'Rolfson','Ken','2020-10-26','464656216',NULL,'dkertzmann@example.org',6),(19,'Rogahn','Dane','1987-12-22','362',NULL,'blanda.christine@example.org',568885),(20,'Turcotte','Garret','2016-05-07','7',NULL,'aryanna.daugherty@example.net',577609),(21,'Batz','Irving','2022-10-25','36',NULL,'vbartoletti@example.net',839453),(22,'Walsh','Jairo','1994-05-11','119228725',NULL,'ewaelchi@example.org',4),(23,'Morissette','Annalise','2003-06-11','70',NULL,'alison73@example.net',97049787),(24,'Treutel','Kali','2018-04-12','4647',NULL,'block.ova@example.org',651144603),(25,'Turcotte','Baby','1971-09-07','',NULL,'florencio97@example.org',872),(26,'Wolf','Lillie','1990-01-31','5323',NULL,'zkoss@example.com',3002962),(27,'Jacobson','Doris','1985-03-12','13401285',NULL,'fae.schroeder@example.org',999119967),(28,'Boyer','Evans','1992-11-03','94568',NULL,'bechtelar.houston@example.org',325208600),(29,'Olson','Antonetta','1982-04-18','1',NULL,'joy.vandervort@example.org',25),(30,'Lehner','Adell','2011-12-12','2638699',NULL,'cielo59@example.org',68),(31,'Ratke','Ethyl','2008-12-07','',NULL,'bbayer@example.org',19),(32,'Nicolas','Jarvis','1970-12-21','6553075',NULL,'ldach@example.net',333848),(33,'Torp','Zack','1988-05-03','20694323',NULL,'scarlett64@example.net',44085),(34,'Heller','Edmond','2006-06-25','6',NULL,'tia.ankunding@example.com',84703),(35,'Bernier','Mozell','2019-10-18','7922236',NULL,'braulio.labadie@example.org',21),(36,'Kemmer','Dino','1984-06-13','41',NULL,'simonis.anjali@example.org',2313096),(37,'Leuschke','Michel','1988-07-13','57',NULL,'buckridge.waino@example.org',12472510),(38,'Graham','Shawna','1984-01-01','346',NULL,'gwillms@example.com',14943590),(39,'Koelpin','Cecelia','1993-01-15','',NULL,'istracke@example.com',679463),(40,'Zulauf','Stacey','1998-12-20','42',NULL,'rdach@example.com',276169),(41,'Cartwright','Mario','1999-12-16','5744',NULL,'virginie.gerhold@example.org',3137209),(42,'O\'Kon','Fritz','1985-02-22','538',NULL,'lawson36@example.com',4335),(43,'Schiller','Eric','1994-07-04','4738',NULL,'brody.tromp@example.com',977),(44,'Emmerich','Lavonne','2012-01-12','5667',NULL,'schamberger.aron@example.org',298),(45,'Ankunding','Leopold','2011-05-19','7',NULL,'reynolds.favian@example.com',436704559),(46,'Abshire','Mabel','1983-02-06','578248731',NULL,'bhauck@example.net',56780),(47,'Nader','Cleo','2018-03-27','',NULL,'dickinson.elenora@example.com',441083),(48,'Schneider','Leda','1970-06-25','432561',NULL,'chaim.murphy@example.com',3305487),(49,'Lind','Martine','1987-08-13','',NULL,'ydurgan@example.org',32419),(50,'Mills','Zackery','1971-07-15','7',NULL,'ernser.kasey@example.org',35287342),(51,'Carter','Ansley','1987-12-21','',NULL,'goldner.roel@example.com',8843),(52,'Kutch','Russ','2017-11-12','5566',NULL,'qmarvin@example.net',7322),(53,'Will','Wendell','2017-03-18','134827',NULL,'spinka.al@example.org',799),(54,'Jones','Vernon','2023-03-09','2997',NULL,'iwisoky@example.com',143132),(55,'Stoltenberg','Davonte','2007-02-17','944',NULL,'lexi10@example.net',253109927),(56,'Morissette','Vincent','1985-09-14','90',NULL,'yhessel@example.net',581),(57,'Hudson','Thad','1997-01-01','160',NULL,'emiliano.crona@example.org',81414813),(58,'Adams','Leonel','1988-10-24','5362034',NULL,'dwiegand@example.net',37562610),(59,'Braun','Amira','1992-08-25','807473',NULL,'anya79@example.org',5314643),(60,'Welch','Grover','1970-01-08','320',NULL,'zhansen@example.com',4043),(61,'Flatley','Karianne','2008-03-03','',NULL,'jakubowski.wanda@example.net',717),(62,'Beer','Reilly','2022-08-20','9758819',NULL,'thermiston@example.org',26876228),(63,'Stanton','Eliane','1982-10-13','604',NULL,'zwilkinson@example.net',7),(64,'Kuphal','Helmer','2018-09-26','587113208',NULL,'wuckert.leon@example.org',394411),(65,'Smitham','Hayden','1994-03-12','562112685',NULL,'lisette.gusikowski@example.org',27804),(66,'Schaefer','Raymundo','2002-05-06','',NULL,'ystamm@example.org',5882862),(67,'Cummerata','D\'angelo','1972-10-26','9',NULL,'bernita.kautzer@example.org',90),(68,'Harber','Krystina','1999-09-18','86162',NULL,'kemmer.carley@example.com',1701018),(69,'Ward','Beulah','1994-02-23','',NULL,'zhudson@example.org',22040),(70,'Bernier','Nedra','1970-05-08','59104',NULL,'adrienne.daugherty@example.org',902941700),(71,'Abbott','Vergie','2022-05-24','7522222',NULL,'florine.dietrich@example.com',2),(72,'Mills','Adrain','2012-07-18','85706',NULL,'ankunding.lilyan@example.com',38455),(73,'Wilderman','Alexandra','1974-04-06','705',NULL,'xhayes@example.org',8151586),(74,'Dickens','Ara','2022-12-19','7443',NULL,'werner08@example.com',5),(75,'Von','Bert','1987-04-19','250',NULL,'crona.dawson@example.com',784797190),(76,'Emard','Joana','1978-03-29','476',NULL,'americo.purdy@example.org',2350632),(77,'Pacocha','Krystina','2002-11-17','279',NULL,'kohler.rose@example.net',507809170),(78,'Hilpert','Abdiel','1972-01-19','868991071',NULL,'lschulist@example.org',17371612),(79,'Hirthe','Alisha','1982-06-12','501331',NULL,'agustin40@example.com',441946494),(80,'Hansen','Torrance','1999-09-18','68',NULL,'margaretta11@example.org',302578),(81,'Cassin','Eino','1993-02-05','90',NULL,'abigale.mills@example.org',775),(82,'Klocko','Corine','1997-02-26','8251',NULL,'citlalli.towne@example.com',693992),(83,'Bauch','Lukas','2020-10-27','848427',NULL,'martina08@example.com',8842),(84,'Paucek','Brendon','1984-09-16','525274',NULL,'columbus11@example.net',587709),(85,'Hane','Marlen','1990-07-23','38543776',NULL,'oren32@example.com',3),(86,'Stehr','Birdie','2010-02-25','7576',NULL,'andreane.smitham@example.net',590931883),(87,'Bartell','Augustine','2006-08-14','51683',NULL,'angela.witting@example.com',155041246),(88,'Ondricka','Lowell','1970-02-15','3123894',NULL,'zyost@example.com',415838),(89,'VonRueden','Miles','1984-03-27','41',NULL,'brakus.judah@example.net',846586),(90,'Casper','Osvaldo','1970-10-11','9791',NULL,'irunte@example.com',59),(91,'Pouros','Jovanny','1973-11-27','7237912',NULL,'ezequiel41@example.org',160),(92,'Lesch','Anabelle','2013-09-13','1308859',NULL,'xwindler@example.com',389),(93,'Feil','Baby','1980-10-15','967',NULL,'oscar.turner@example.net',1879),(94,'Buckridge','Randal','2007-04-29','70',NULL,'rbrekke@example.net',705),(95,'Boyer','Darrel','1999-11-17','1204170',NULL,'keira.morar@example.com',629),(96,'Jacobi','Lea','1973-05-13','335178020',NULL,'rylan67@example.com',67924449),(97,'Will','Sam','1996-01-16','2186',NULL,'raynor.dolores@example.com',575271687),(98,'Kiehn','Rebecca','1975-05-28','8',NULL,'candice79@example.net',71696235),(99,'Ondricka','Jarrod','1984-05-04','8963',NULL,'kdurgan@example.net',27),(100,'Gerlach','Maybelle','2008-10-12','4753557',NULL,'danika84@example.net',3950);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `employee_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Deborah','Roob',''),(2,'Nathen','Considine',''),(3,'Avis','Oberbrunner',''),(4,'Trenton','Schowalter',''),(5,'Jaquelin','Carter',''),(6,'Joshuah','Hickle',''),(7,'Ada','Labadie',''),(8,'Howell','Williamson',''),(9,'Rosella','Bechtelar',''),(10,'Nayeli','Bode','');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `payment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reservation` bigint(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `channels` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `reservation` (`reservation`),
  KEY `channels` (`channels`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`reservation`) REFERENCES `reservation` (`reservation_id`),
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`channels`) REFERENCES `channels` (`channels_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,601,0,'2020-09-08',1),(2,602,9385836,'1986-12-09',2),(3,603,138812,'1995-07-04',3),(4,604,3,'2012-10-20',4),(5,605,15,'1986-09-05',1),(6,606,42,'2016-02-09',2),(7,607,55930359,'2012-01-27',3),(8,608,538451,'1972-01-31',4),(9,609,1,'2002-12-15',1),(10,610,32,'1992-01-01',2),(11,611,7200657,'2011-01-25',3),(12,612,11660,'1995-11-22',4),(13,613,3296351,'2009-06-11',1),(14,614,3393123,'2022-09-21',2),(15,615,0,'1998-03-06',3),(16,616,7096993,'2018-06-06',4),(17,617,303,'2005-01-28',1),(18,618,77,'1993-05-09',2),(19,619,146,'2005-10-31',3),(20,620,144010,'1991-04-28',4),(21,621,644,'1991-07-08',1),(22,622,34032,'1971-05-15',2),(23,623,4,'2023-05-14',3),(24,624,1,'2012-10-16',4),(25,625,2,'2021-05-01',1),(26,626,146074,'1974-11-04',2),(27,627,0,'2010-12-25',3),(28,628,136542,'1975-02-28',4),(29,629,377696543,'1987-12-15',1),(30,630,987,'1972-07-28',2),(31,631,1640743,'2007-07-23',3),(32,632,50779,'1991-03-14',4),(33,633,426843571,'1973-10-22',1),(34,634,78939645,'1990-07-12',2),(35,635,923761,'2022-01-27',3),(36,636,5,'2014-03-20',4),(37,637,68995676,'1982-09-22',1),(38,638,0,'1982-06-26',2),(39,639,87095537,'1970-04-25',3),(40,640,34,'1972-04-04',4),(41,641,4,'1990-08-27',1),(42,642,0,'1980-03-30',2),(43,643,30049,'1999-08-04',3),(44,644,2367,'1992-02-13',4),(45,645,14090,'1994-05-19',1),(46,646,49,'1984-03-13',2),(47,647,91829387,'2013-10-14',3),(48,648,59416,'1975-12-26',4),(49,649,384839,'2007-05-18',1),(50,650,307137648,'1971-03-24',2),(51,651,56913,'1979-03-12',3),(52,652,2119840,'2002-12-25',4),(53,653,98,'2019-10-30',1),(54,654,457333,'1976-08-07',2),(55,655,13255404,'2020-03-05',3),(56,656,3711224,'1973-10-05',4),(57,657,447531,'2015-07-17',1),(58,658,3,'2021-12-25',2),(59,659,17816950,'2022-01-31',3),(60,660,87339467,'2010-11-20',4),(61,661,0,'1992-07-12',1),(62,662,157009,'1972-11-09',2),(63,663,19,'2002-05-24',3),(64,664,5,'1983-06-05',4),(65,665,6415,'2010-04-03',1),(66,666,8521,'2011-01-12',2),(67,667,2,'1989-05-04',3),(68,668,0,'1984-12-31',4),(69,669,0,'2018-06-04',1),(70,670,0,'1974-04-16',2),(71,671,188,'2015-04-06',3),(72,672,13,'1971-09-03',4),(73,673,59379,'2022-10-19',1),(74,674,6,'1988-12-02',2),(75,675,1,'1987-07-17',3),(76,676,491905,'2021-09-09',4),(77,677,0,'2019-08-02',1),(78,678,1086845,'2009-04-14',2),(79,679,39323,'1992-09-25',3),(80,680,0,'1973-03-23',4),(81,681,14,'1981-08-28',1),(82,682,40861,'1988-04-25',2),(83,683,0,'1982-02-09',3),(84,684,1,'2021-06-25',4),(85,685,0,'2007-07-12',1),(86,686,0,'2005-12-03',2),(87,687,865,'1979-11-12',3),(88,688,258,'1995-01-15',4),(89,689,1395,'1970-11-05',1),(90,690,238,'1985-11-03',2),(91,691,25,'1978-02-24',3),(92,692,0,'2001-06-18',4),(93,693,15,'2019-10-25',1),(94,694,37532615,'2003-07-13',2),(95,695,0,'2012-03-24',3),(96,696,735360,'1983-07-01',4),(97,697,925144,'1999-01-29',1),(98,698,3075,'2016-10-03',2),(99,699,45996,'2023-12-03',3),(100,700,0,'2016-10-21',4);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests` (
  `request_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reservation` bigint(20) NOT NULL,
  `received` datetime DEFAULT current_timestamp(),
  `channels` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` enum('approved','pending','declined','cancelled') DEFAULT NULL,
  `processed_by` bigint(20) NOT NULL,
  PRIMARY KEY (`request_id`),
  KEY `reservation` (`reservation`),
  KEY `channels` (`channels`),
  KEY `processed_by` (`processed_by`),
  CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`reservation`) REFERENCES `reservation` (`reservation_id`),
  CONSTRAINT `requests_ibfk_2` FOREIGN KEY (`channels`) REFERENCES `channels` (`channels_id`),
  CONSTRAINT `requests_ibfk_3` FOREIGN KEY (`processed_by`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT INTO `requests` VALUES (41,601,'1980-02-23 04:16:11',1,'Nihil est soluta esse. Cum ut et quidem nulla. Fuga deleniti voluptas voluptatem illum minus optio. Dignissimos quis dignissimos sit.','declined',1),(42,602,'2003-04-03 11:11:42',2,'Aut temporibus voluptatum rerum quo repellendus eum animi. Natus reprehenderit vel et eum necessitatibus omnis necessitatibus. Omnis ut esse impedit qui. Magnam inventore sequi rem dolorem velit.','cancelled',2),(43,603,'2011-01-01 18:45:17',3,'Sit qui cupiditate enim eveniet quia eaque aut. Autem fugiat cupiditate odit magni quod earum est. Porro quis sit aut dolor et et. Adipisci ut quo nobis hic enim perspiciatis quas.','pending',3),(44,604,'1989-12-26 17:45:12',4,'Quia voluptatem natus non. Qui dolor tempora aut illo id aliquid omnis. Necessitatibus sed et at amet et porro cumque eveniet. Laudantium voluptatem quaerat est.','approved',4),(45,605,'1993-02-28 16:08:20',1,'Qui tempora eos sit quo autem corrupti. Enim quasi explicabo rem quia. Reprehenderit temporibus numquam beatae quia. Saepe quo nulla molestiae assumenda dignissimos beatae.','cancelled',5),(46,606,'2018-06-17 17:46:26',2,'In necessitatibus aut dolorem cum cum fuga. Qui quaerat voluptas laboriosam dicta velit. Quod aliquam vel illum quas ipsam. Magnam cum laboriosam deleniti quis sapiente fugit explicabo.','pending',6),(47,607,'1998-11-20 09:24:01',3,'Soluta quo quis sunt. Qui quae laudantium consequuntur suscipit aspernatur fugiat. Qui id est labore aut rerum praesentium. Sapiente sed doloremque blanditiis molestias dolorem exercitationem dicta.','declined',7),(48,608,'2011-09-24 05:20:46',4,'Assumenda provident omnis voluptatem. Deserunt molestiae esse aut aliquid deserunt nulla. Impedit consequuntur nihil tempore quia. Et sed nihil totam modi cupiditate.','declined',8),(49,609,'2007-11-04 13:01:04',1,'Voluptatibus maxime quae voluptas. Velit reiciendis ut dolorem aperiam. Esse voluptates sed occaecati eos quis et velit.','approved',9),(50,610,'1998-10-03 09:45:10',2,'Quas rem modi expedita rerum molestiae. Non nemo dignissimos non incidunt quam ipsum. Sed et quas quasi dignissimos totam totam voluptate. Corporis molestiae cupiditate aspernatur minima.','pending',10),(51,611,'2005-12-07 01:26:03',3,'Nam quia ut fugiat cumque omnis impedit repellat aut. Animi consequatur expedita unde sint vitae aliquid et. Eius voluptatibus deleniti non dolorem suscipit et. Quod quas dolorem culpa occaecati.','approved',1),(52,612,'2012-03-06 02:20:42',4,'Provident rerum aut quo laudantium. Et velit ut dolore pariatur qui incidunt. Sapiente et aut harum qui non.','declined',2),(53,613,'1997-03-16 16:11:02',1,'Ut quos voluptas omnis quibusdam qui. Sapiente quibusdam ipsum voluptas dolorem voluptates necessitatibus. Rerum adipisci hic atque non et tenetur. Odio voluptatum dolorem illum facilis ut.','cancelled',3),(54,614,'2002-05-03 23:42:56',2,'Vitae quaerat itaque ut veniam quod blanditiis. Enim accusamus tempora eum quisquam quia. Aut quis quis minima voluptatem non.','approved',4),(55,615,'1973-07-28 09:22:27',3,'Dolorem molestiae vel excepturi eos minima rerum voluptatibus. In dignissimos facilis nulla facilis accusantium repellat ea quasi. Suscipit aut quasi doloribus ullam a voluptas. Totam culpa eius in qui et vel adipisci.','declined',5),(56,616,'1984-04-13 23:46:23',4,'Aut nesciunt consequatur dolores quia autem. Odio est dicta dolor aut porro sint. Illum esse voluptas sit et. Rerum quae voluptatem ut impedit at qui reiciendis.','pending',6),(57,617,'2015-10-09 06:24:46',1,'Libero et quis cumque reiciendis et numquam dolor. Velit et quos magni necessitatibus. Saepe quis optio et ut. Optio sit qui velit ut adipisci non esse.','pending',7),(58,618,'2008-05-01 21:25:58',2,'Maxime accusamus repudiandae autem sit aut. Laborum placeat eum cumque perspiciatis quae harum modi. Qui magnam ex vel occaecati culpa suscipit.','pending',8),(59,619,'1991-06-11 13:11:10',3,'Molestias sed non porro labore. Necessitatibus modi voluptas pariatur autem iusto id. Aliquam quas non velit rerum architecto ex.','declined',9),(60,620,'2007-10-22 09:29:16',4,'Architecto magni doloribus quidem autem. Hic veniam ipsam illo dolorem et distinctio magni atque. Sed quis mollitia odio saepe aut.','pending',10);
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `reservation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `guest` bigint(20) NOT NULL,
  `room` int(11) NOT NULL,
  `channels` int(11) DEFAULT NULL,
  `check_in` date DEFAULT NULL,
  `check_out` date DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `reservation_status` enum('expected','checked in','checked out','cancelled') DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `guest` (`guest`),
  KEY `room` (`room`),
  KEY `channels` (`channels`),
  KEY `fk_reservation_channels` (`price`),
  CONSTRAINT `fk_reservation_channels` FOREIGN KEY (`price`) REFERENCES `channels` (`channels_price`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`guest`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`room`) REFERENCES `rooms` (`room_id`),
  CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`channels`) REFERENCES `channels` (`channels_id`)
) ENGINE=InnoDB AUTO_INCREMENT=701 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (601,1,1,1,'1998-11-17','2001-03-18',110,'checked out'),(602,2,2,2,'1982-01-24','2022-04-09',135,'expected'),(603,3,3,3,'1987-11-14','2022-11-12',141,'cancelled'),(604,4,4,4,'2013-02-17','1981-06-29',150,'cancelled'),(605,5,5,1,'1998-01-23','1990-09-22',110,'checked in'),(606,6,6,2,'1985-11-26','1998-05-10',135,'cancelled'),(607,7,7,3,'2012-01-20','2023-07-16',141,'expected'),(608,8,8,4,'1978-11-08','1987-12-06',150,'checked out'),(609,9,9,1,'1980-03-30','1986-02-18',110,'expected'),(610,10,10,2,'1999-04-26','2009-07-23',135,'checked in'),(611,11,11,3,'2017-11-19','2023-10-13',141,'expected'),(612,12,12,4,'2005-11-01','1995-08-07',150,'cancelled'),(613,13,13,1,'2019-11-21','1972-11-24',110,'expected'),(614,14,14,2,'1988-01-16','1973-04-18',135,'cancelled'),(615,15,15,3,'1985-03-03','1986-07-11',141,'checked out'),(616,16,16,4,'1990-08-11','2016-06-20',150,'checked in'),(617,17,17,1,'1979-02-07','2023-11-14',110,'expected'),(618,18,18,2,'2011-05-10','2000-12-25',135,'checked out'),(619,19,19,3,'1970-06-28','1984-12-06',141,'checked out'),(620,20,20,4,'2011-01-08','1980-09-09',150,'cancelled'),(621,21,21,1,'2000-05-13','1981-02-16',110,'expected'),(622,22,22,2,'2010-01-25','1972-09-30',135,'cancelled'),(623,23,23,3,'1983-05-09','1977-04-09',141,'cancelled'),(624,24,24,4,'1980-05-27','1998-09-02',150,'expected'),(625,25,25,1,'1987-02-18','2002-07-18',110,'cancelled'),(626,26,26,2,'2022-07-25','1981-08-16',135,'checked out'),(627,27,27,3,'2013-02-25','2022-07-29',141,'checked out'),(628,28,28,4,'1974-05-16','2023-07-07',150,'checked out'),(629,29,29,1,'1982-08-13','2009-06-14',110,'checked in'),(630,30,30,2,'1975-11-09','2019-05-07',135,'cancelled'),(631,31,31,3,'2004-03-31','1998-05-24',141,'cancelled'),(632,32,32,4,'2006-11-19','2010-06-26',150,'checked out'),(633,33,33,1,'1986-03-30','2000-05-18',110,'expected'),(634,34,34,2,'2011-06-29','2014-09-06',135,'expected'),(635,35,35,3,'2023-12-03','1973-05-01',141,'cancelled'),(636,36,36,4,'1973-03-19','2023-04-07',150,'cancelled'),(637,37,37,1,'2013-12-07','2003-06-04',110,'checked out'),(638,38,38,2,'2022-03-03','2009-11-07',135,'cancelled'),(639,39,39,3,'2005-01-28','2017-10-05',141,'cancelled'),(640,40,40,4,'1995-01-02','2014-03-31',150,'checked out'),(641,41,41,1,'1981-10-27','1992-01-30',110,'checked out'),(642,42,42,2,'1976-10-07','1999-10-02',135,'checked out'),(643,43,43,3,'2001-02-22','1988-11-28',141,'expected'),(644,44,44,4,'2003-09-30','1989-03-02',150,'cancelled'),(645,45,45,1,'2004-04-11','2022-10-25',110,'expected'),(646,46,46,2,'1973-04-09','1994-12-07',135,'checked out'),(647,47,47,3,'1993-04-25','2011-01-16',141,'cancelled'),(648,48,48,4,'2021-02-02','1981-04-09',150,'expected'),(649,49,49,1,'1988-03-17','1975-11-10',110,'expected'),(650,50,50,2,'1999-05-20','1992-07-28',135,'checked in'),(651,51,1,3,'1972-11-23','1997-01-14',141,'expected'),(652,52,2,4,'1993-11-29','2013-06-10',150,'checked out'),(653,53,3,1,'1995-12-21','1977-12-13',110,'checked out'),(654,54,4,2,'2010-10-06','1998-04-30',135,'checked in'),(655,55,5,3,'1998-10-31','1976-06-08',141,'expected'),(656,56,6,4,'1979-01-23','2017-10-07',150,'checked in'),(657,57,7,1,'1983-08-25','1990-03-05',110,'expected'),(658,58,8,2,'1998-01-30','2023-06-16',135,'expected'),(659,59,9,3,'1986-12-17','1986-03-04',141,'checked in'),(660,60,10,4,'1975-09-28','1972-07-26',150,'checked out'),(661,61,11,1,'1981-09-14','1992-11-22',110,'expected'),(662,62,12,2,'1992-12-15','2002-04-02',135,'expected'),(663,63,13,3,'1985-03-28','2020-09-05',141,'checked out'),(664,64,14,4,'1984-02-27','1999-05-18',150,'checked in'),(665,65,15,1,'1994-01-15','1977-12-23',110,'checked in'),(666,66,16,2,'2001-10-17','1983-01-14',135,'expected'),(667,67,17,3,'1983-07-23','1990-02-28',141,'checked in'),(668,68,18,4,'1999-06-19','2019-11-10',150,'expected'),(669,69,19,1,'1984-05-12','1984-12-16',110,'expected'),(670,70,20,2,'1972-04-20','2010-08-01',135,'checked out'),(671,71,21,3,'1981-04-23','2022-06-27',141,'checked out'),(672,72,22,4,'2012-08-17','1994-07-28',150,'expected'),(673,73,23,1,'2005-05-30','2016-12-10',110,'checked out'),(674,74,24,2,'2015-04-19','2020-05-15',135,'expected'),(675,75,25,3,'2018-07-12','2000-05-07',141,'cancelled'),(676,76,26,4,'2010-03-12','2001-07-20',150,'checked in'),(677,77,27,1,'2022-01-31','1979-04-06',110,'cancelled'),(678,78,28,2,'1973-06-02','1977-09-09',135,'expected'),(679,79,29,3,'2013-02-25','1975-08-11',141,'cancelled'),(680,80,30,4,'1992-11-09','1992-07-28',150,'expected'),(681,81,31,1,'2003-05-16','1991-07-10',110,'cancelled'),(682,82,32,2,'2020-05-22','2012-06-03',135,'checked in'),(683,83,33,3,'1992-04-07','1991-01-19',141,'expected'),(684,84,34,4,'2006-10-23','2013-05-16',150,'checked in'),(685,85,35,1,'1994-02-21','2016-06-06',110,'checked in'),(686,86,36,2,'1970-01-04','1981-11-07',135,'checked in'),(687,87,37,3,'1989-08-02','1993-08-19',141,'checked in'),(688,88,38,4,'1992-10-21','2021-02-19',150,'checked in'),(689,89,39,1,'1977-08-13','1982-09-25',110,'checked out'),(690,90,40,2,'2003-02-16','1991-03-06',135,'expected'),(691,91,41,3,'2006-05-20','2021-10-10',141,'checked out'),(692,92,42,4,'2011-05-25','2016-05-12',150,'checked out'),(693,93,43,1,'1992-11-15','1984-01-25',110,'checked in'),(694,94,44,2,'1977-08-16','1992-07-19',135,'checked in'),(695,95,45,3,'2013-05-25','2009-12-01',141,'cancelled'),(696,96,46,4,'2002-07-03','1985-05-05',150,'checked in'),(697,97,47,1,'2020-10-02','2017-07-28',110,'cancelled'),(698,98,48,2,'1989-09-02','2022-07-31',135,'cancelled'),(699,99,49,3,'2001-01-19','2000-04-23',141,'expected'),(700,100,50,4,'1983-02-03','1977-03-27',150,'cancelled');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_type` varchar(100) NOT NULL,
  `room_number` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'',7,'Molestias quasi quisquam voluptatibus necessitatibus voluptas quis repudiandae qui. Eveniet aut sed '),(2,'',8927461,'Ad voluptatem consequatur eaque sint qui ut. Hic aliquam quo veritatis cum. Dolores voluptatem est s'),(3,'',76,'Architecto minus consequatur quibusdam culpa. Asperiores est consequatur voluptatem suscipit magni. '),(4,'',7338,'Vel quo accusantium et sit. Possimus odio animi ducimus doloremque. Quia labore asperiores aliquid v'),(5,'',1324,'Assumenda quasi ipsa est consequatur explicabo accusamus. Nostrum aperiam deserunt sequi corporis vo'),(6,'',4,'Quam aperiam aspernatur mollitia praesentium dignissimos harum voluptas ducimus. Fugit eos repellat '),(7,'',8567962,'Enim dolorem ab debitis nesciunt quia modi maxime adipisci. A nihil consectetur illum aut. Sit iusto'),(8,'',2503463,'Voluptates qui commodi pariatur et impedit. In cupiditate saepe excepturi aliquid eveniet voluptas. '),(9,'',0,'Quo occaecati dolorum ut voluptatum nemo laudantium non. Aut aspernatur quia architecto aliquid dolo'),(10,'',5,'Alias ea error mollitia aut. Odit aut aut sed consequatur. Non eum facere rerum ipsa culpa numquam c'),(11,'',0,'Reiciendis aut sunt deserunt. Velit totam itaque occaecati error et et veniam. Sint non quisquam aut'),(12,'',0,'Deleniti quae autem nesciunt laboriosam quo officia sit. Id cumque eveniet suscipit maiores quos ull'),(13,'',895066,'Ipsum et officiis nisi quia adipisci aut. Eum ad asperiores molestiae architecto sed. Et quam hic et'),(14,'',0,'Ut earum perspiciatis doloribus enim. Rerum molestias ab et repellendus nulla qui aut corrupti. Reru'),(15,'',0,'Nemo ex cumque totam voluptate vero molestiae magni. Nihil dolores mollitia molestias commodi. Ab qu'),(16,'',97722,'Mollitia deserunt et et. Placeat veritatis ut rerum. Maiores id ducimus illo. Unde natus voluptatem '),(17,'',892024639,'Necessitatibus et aut et deleniti modi quidem. Alias quasi quis quaerat porro quasi repellendus vita'),(18,'',693,'Eos tenetur aut qui veritatis. Porro autem itaque dolorum qui. Perferendis earum debitis aliquam vel'),(19,'',398,'Eaque eum et officia ad quia minus et. Dolorum officiis cum nihil culpa. Blanditiis in labore delect'),(20,'',199581,'Qui delectus possimus voluptatem. Natus eum porro cumque asperiores. Aut ex eligendi quod rerum saep'),(21,'',0,'Nulla consequatur laudantium sit ut cupiditate dicta et quos. Pariatur eveniet pariatur incidunt ut '),(22,'',767894,'Quis hic est asperiores ipsum consequatur esse occaecati quas. Incidunt enim doloribus aliquam vel n'),(23,'',575225,'Temporibus minus officiis quo est. Ut deserunt molestiae temporibus impedit. Eum ab ut voluptatibus '),(24,'',4304975,'Ipsum non labore ratione animi. Molestiae qui nisi qui rerum quae. Iusto commodi non voluptatem aspe'),(25,'',43931668,'Sit deleniti eligendi est eos voluptas omnis. Consequatur iure laboriosam sint numquam facilis. Expl'),(26,'',51223,'Quod eos atque aut ut repellendus porro. Ut sunt fugiat inventore eius at. Ratione quo eos repudiand'),(27,'',16937,'Adipisci aspernatur nobis optio pariatur similique. Reiciendis dolorem et dolorum quia laborum dolor'),(28,'',79,'Sunt sit incidunt minus sunt. Voluptatibus odit sed suscipit. Doloribus cupiditate necessitatibus se'),(29,'',7943046,'Quam voluptatem ipsam ex velit distinctio sint dolorem. Est vero enim nihil aliquam et. Omnis amet h'),(30,'',428089123,'Tempore quia cumque mollitia et aliquid qui. Ad sunt dolores voluptas iure vero. Qui nihil doloribus'),(31,'',218317,'Dolorum qui enim vero debitis. Qui id ad esse nesciunt porro. Ut id aliquid sint aliquid omnis quam.'),(32,'',0,'Sint odit veniam maiores vitae corporis amet. Esse vel mollitia quo facilis provident rerum et. Sequ'),(33,'',85416,'Natus amet eveniet praesentium. Error fugit quae asperiores quis nobis. Distinctio ut autem rerum of'),(34,'',1953367,'Ut laboriosam eveniet qui adipisci iste unde sint consequatur. Accusantium adipisci velit nihil occa'),(35,'',4,'Itaque et harum culpa harum rem et aspernatur nihil. In veritatis expedita sed molestias quibusdam q'),(36,'',64363,'Eos at qui similique impedit omnis vel unde ea. Reiciendis repellendus aut qui porro. Facere dolor i'),(37,'',398922,'Pariatur et fugiat quia delectus qui. Esse inventore aspernatur et sit aut ab et. Eos rerum ea et et'),(38,'',0,'Eaque possimus numquam eum minus. Occaecati voluptate voluptatem quia dolor. Quis eos nemo sunt dist'),(39,'',98,'Qui eius dolorum reprehenderit ipsam molestias recusandae temporibus maiores. Laboriosam cum aut off'),(40,'',259499,'Consequatur similique non similique rerum neque aliquid. Ducimus accusamus et excepturi sapiente. Qu'),(41,'',19087,'Accusantium reprehenderit aut ea dolorem molestiae quis facere. Et consequatur iste delectus dolor f'),(42,'',242,'Omnis cumque aut et possimus omnis odio a tempora. Consequatur dignissimos velit hic repellendus lau'),(43,'',99504384,'Omnis nemo ab earum laudantium. Deleniti sunt rerum dolor fuga labore explicabo. Voluptas omnis quia'),(44,'',90,'Voluptatem numquam eum architecto maiores dolor aut voluptatum. Et ut beatae dolor dolores voluptate'),(45,'',9,'Vitae voluptas molestiae facere cupiditate. Optio dolores ut id pariatur. Temporibus totam veniam ac'),(46,'',700051,'Laudantium quia iste perspiciatis corrupti occaecati cumque eum. Sint sit aspernatur laboriosam quib'),(47,'',321140,'Id odio aliquam enim dolorem quos. Quidem omnis reiciendis harum et fuga. Tenetur rem minima occaeca'),(48,'',774861,'Voluptate voluptatum ad nam est. Totam ut in vel qui tenetur voluptates qui libero.'),(49,'',70,'Aut a assumenda minus sequi corrupti. Voluptatem harum expedita repellat omnis numquam. Harum assume'),(50,'',0,'Et expedita accusamus ea id deleniti recusandae aut molestiae. Esse laudantium adipisci impedit eius');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-07 23:14:26
