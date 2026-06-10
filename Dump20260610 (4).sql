-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bib
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adresse` (
  `AdressID` int NOT NULL,
  `PersonenID` int NOT NULL,
  `Strasse` varchar(40) DEFAULT NULL,
  `Hausnummer` varchar(10) DEFAULT NULL,
  `PLZ` int DEFAULT NULL,
  PRIMARY KEY (`AdressID`),
  KEY `PersonenID` (`PersonenID`),
  CONSTRAINT `adresse_ibfk_1` FOREIGN KEY (`PersonenID`) REFERENCES `personen` (`PersonenID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresse`
--

LOCK TABLES `adresse` WRITE;
/*!40000 ALTER TABLE `adresse` DISABLE KEYS */;
INSERT INTO `adresse` VALUES (1,1,'Hauptstraße','12',50667),(2,2,'Bahnhofstraße','4a',40210),(3,3,'Kirchweg','7',20095),(4,4,'Lindenallee','23',80331),(5,5,'Rosenstraße','1',60313),(6,6,'Marktplatz','99',70173),(7,7,'Gartenweg','5b',30159),(8,8,'Ahornstraße','8',50733),(9,9,'Buchenweg','3',10115),(10,10,'Fichtenstraße','19',44135),(11,11,'Eichenallee','2',28195),(12,12,'Kastanienweg','11',99084),(13,13,'Wiesenstraße','6',4103),(14,14,'Bergstraße','30',45127),(15,15,'Talstraße','17',79098),(16,16,'Seestraße','44',24103),(17,17,'Waldweg','9',55116),(18,18,'Feldstraße','21',39104),(19,19,'Parkstraße','13',66111),(20,20,'Dorfstraße','2b',1067),(21,21,'Marktplatz','5',50667),(22,22,'Schillerstraße','18',40213),(23,23,'Goetheweg','4',20097),(24,24,'Mozartstraße','7',80333),(25,25,'Beethovenallee','12',60314),(26,26,'Fontaneweg','3',70174),(27,27,'Rilkestraße','6',30160),(28,28,'Heineweg','22',50735),(29,29,'Kleistgasse','1',10117),(30,30,'Lessingstraße','14',44137),(31,31,'Herderweg','8',28197),(32,32,'Schubertgasse','5',99086),(33,33,'Brahmsweg','19',4105),(34,34,'Wagnerstraße','33',45129),(35,35,'Straussallee','2',79100),(36,36,'Vivaldiweg','11',24105),(37,37,'Chopinstraße','7',55118),(38,38,'Lisztgasse','4',39106),(39,39,'Händelweg','16',66113),(40,40,'Telemannstraße','9',1069),(41,41,'Rembrandtweg','3',50669),(42,42,'Rubensstraße','25',40215),(43,43,'Dürerweg','13',20099),(44,44,'Tizianstraße','6',80335),(45,45,'Raphaelgasse','8',60316),(46,46,'Michelangeloweg','17',70176),(47,47,'Leonardostraße','2',30162),(48,48,'Botticelliweg','20',50737),(49,49,'Caravaggiogasse','5',10119),(50,50,'Vermeerstraße','10',44139),(51,51,'Kantstraße','4',28199),(52,52,'Hegelweg','7',99088),(53,53,'Nietzschestraße','15',4107),(54,54,'Schopenhauerweg','3',45131),(55,55,'Marxgasse','11',79102),(56,56,'Engelsstraße','8',24107),(57,57,'Freudweg','22',55120),(58,58,'Jungstraße','6',39108),(59,59,'Darwinweg','18',66115),(60,60,'Einsteinstraße','1',1071),(61,61,'Newtonweg','9',50671),(62,62,'Curiegasse','14',40217),(63,63,'Hawkingstraße','5',20101),(64,64,'Keplerweg','23',80337),(65,65,'Galileistraße','7',60318),(66,66,'Kopernikusweg','12',70178),(67,67,'Humboldtstraße','4',30164),(68,68,'Linnéweg','16',50739),(69,69,'Pasteurstraße','3',10121),(70,70,'Kochgasse','20',44141),(71,71,'Bibliotheksgasse','3',50667),(72,72,'Bibliotheksgasse','4',50667),(73,73,'Bibliotheksgasse','5',50667),(74,74,'Bibliotheksgasse','6',50667),(75,75,'Bibliotheksgasse','7',50667),(76,76,'Bibliotheksgasse','8',50667),(77,77,'Bibliotheksgasse','9',50667),(78,78,'Bibliotheksgasse','10',50667),(79,1,'Nebenstraße','3',50668),(80,2,'Querweg','7',40211),(81,3,'Hintergasse','2',20096),(82,4,'Seitengasse','9',80332),(83,5,'Zweiggasse','4',60314),(84,6,'Abzweig','1',70174),(85,7,'Querstraße','6',30160),(86,8,'Parallelweg','11',50734),(87,9,'Umgehung','5',10116),(88,10,'Ringstraße','8',44136),(89,11,'Kreisweg','3',28196),(90,12,'Bogenweg','14',99085),(91,13,'Kurvenstraße','2',4104),(92,14,'Wendestraße','7',45128),(93,15,'Rückweg','10',79099),(94,16,'Umleitungsweg','4',24104),(95,17,'Pfadstraße','9',55117),(96,18,'Steigweg','6',39105),(97,19,'Gefällstraße','3',66112),(98,20,'Hangstraße','1',1068),(99,21,'Querverbindung','5',50668),(100,22,'Sackgasse','3',40212);
/*!40000 ALTER TABLE `adresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analogesmedium`
--

DROP TABLE IF EXISTS `analogesmedium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analogesmedium` (
  `MediumID` int NOT NULL,
  `RegalfachID` int NOT NULL,
  PRIMARY KEY (`MediumID`),
  KEY `RegalfachID` (`RegalfachID`),
  CONSTRAINT `analogesmedium_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`) ON DELETE CASCADE,
  CONSTRAINT `analogesmedium_ibfk_2` FOREIGN KEY (`RegalfachID`) REFERENCES `regalfach` (`RegalfachID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analogesmedium`
--

LOCK TABLES `analogesmedium` WRITE;
/*!40000 ALTER TABLE `analogesmedium` DISABLE KEYS */;
INSERT INTO `analogesmedium` VALUES (1,1),(2,2),(3,3),(4,4),(8,5),(9,5),(85,5),(111,5),(10,6),(11,6),(12,6),(86,6),(112,6),(13,7),(14,7),(15,7),(87,7),(113,7),(16,8),(17,8),(18,8),(88,8),(114,8),(19,9),(20,9),(21,9),(89,9),(115,9),(22,10),(23,10),(24,10),(90,10),(116,10),(25,11),(26,11),(27,11),(91,11),(117,11),(28,12),(29,12),(30,12),(92,12),(118,12),(31,13),(32,13),(33,13),(93,13),(119,13),(34,14),(35,14),(36,14),(94,14),(120,14),(37,15),(38,15),(39,15),(95,15),(40,16),(41,16),(42,16),(96,16),(43,17),(44,17),(45,17),(97,17),(46,18),(47,18),(48,18),(98,18),(49,19),(50,19),(51,19),(99,19),(52,20),(53,20),(54,20),(100,20),(55,21),(56,21),(57,21),(101,21),(58,22),(59,22),(60,22),(102,22),(61,23),(62,23),(63,23),(103,23),(64,24),(65,24),(66,24),(104,24),(67,25),(68,25),(69,25),(105,25),(70,26),(71,26),(72,26),(106,26),(73,27),(74,27),(75,27),(107,27),(76,28),(77,28),(78,28),(108,28),(79,29),(80,29),(81,29),(109,29),(82,30),(83,30),(84,30),(110,30);
/*!40000 ALTER TABLE `analogesmedium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ausleihe`
--

DROP TABLE IF EXISTS `ausleihe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ausleihe` (
  `AusleiheID` int NOT NULL,
  `Ausleihedatum` date DEFAULT NULL,
  `Rueckgabedatum` date DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `MitgliedID` int NOT NULL,
  `MediumID` int NOT NULL,
  PRIMARY KEY (`AusleiheID`),
  KEY `MitgliedID` (`MitgliedID`),
  KEY `MediumID` (`MediumID`),
  CONSTRAINT `ausleihe_ibfk_1` FOREIGN KEY (`MitgliedID`) REFERENCES `mitglied` (`PersonenID`) ON DELETE CASCADE,
  CONSTRAINT `ausleihe_ibfk_2` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ausleihe`
--

LOCK TABLES `ausleihe` WRITE;
/*!40000 ALTER TABLE `ausleihe` DISABLE KEYS */;
INSERT INTO `ausleihe` VALUES (1,'2024-01-05','2024-01-19',1,1,8),(2,'2024-01-10','2024-01-24',1,2,10),(3,'2024-01-15','2024-01-29',1,3,12),(4,'2024-01-20','2024-02-03',0,4,1),(5,'2024-02-01','2024-02-15',1,5,11),(6,'2024-02-10','2024-02-24',0,6,2),(7,'2024-02-15','2024-03-01',1,7,15),(8,'2024-02-20','2024-03-06',1,8,17),(9,'2024-03-01','2024-03-15',0,9,3),(10,'2024-03-10','2024-03-24',1,10,21),(11,'2024-03-15','2024-03-29',1,11,23),(12,'2024-03-20','2024-04-03',0,12,4),(13,'2024-04-01','2024-04-15',1,13,27),(14,'2024-04-10','2024-04-24',1,14,29),(15,'2024-04-15','2024-04-29',0,15,5),(16,'2024-04-20','2024-05-04',1,16,33),(17,'2024-05-01','2024-05-15',1,17,35),(18,'2024-05-10','2024-05-24',0,18,6),(19,'2024-05-15','2024-05-29',1,19,39),(20,'2024-05-20','2024-06-03',0,20,7),(21,'2024-06-01','2024-06-15',1,21,43),(22,'2024-06-10','2024-06-24',1,22,45),(23,'2024-06-15','2024-06-29',1,23,47),(24,'2024-06-20','2024-07-04',0,24,14),(25,'2024-07-01','2024-07-15',1,25,51),(26,'2024-07-10','2024-07-24',1,26,53),(27,'2024-07-15','2024-07-29',0,27,16),(28,'2024-07-20','2024-08-03',1,28,57),(29,'2024-08-01','2024-08-15',1,29,59),(30,'2024-08-10','2024-08-24',0,30,18),(31,'2024-08-15','2024-08-29',1,31,63),(32,'2024-08-20','2024-09-03',1,32,65),(33,'2024-09-01','2024-09-15',0,33,20),(34,'2024-09-10','2024-09-24',1,34,69),(35,'2024-09-15','2024-09-29',1,35,70),(36,'2024-09-20','2024-10-04',0,36,22),(37,'2024-10-01','2024-10-15',1,37,74),(38,'2024-10-10','2024-10-24',1,38,76),(39,'2024-10-15','2024-10-29',0,39,24),(40,'2024-10-20','2024-11-03',1,40,80),(41,'2024-11-01','2024-11-15',1,41,82),(42,'2024-11-10','2024-11-24',0,42,26),(43,'2024-11-15','2024-11-29',1,43,86),(44,'2024-11-20','2024-12-04',1,44,88),(45,'2024-12-01','2024-12-15',0,45,28),(46,'2024-12-05','2024-12-19',1,46,92),(47,'2024-12-10','2024-12-24',1,47,94),(48,'2024-12-15','2024-12-29',0,48,30),(49,'2025-01-05','2025-01-19',1,49,98),(50,'2025-01-10','2025-01-24',0,50,32);
/*!40000 ALTER TABLE `ausleihe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digitalesmedium`
--

DROP TABLE IF EXISTS `digitalesmedium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `digitalesmedium` (
  `MediumID` int NOT NULL,
  `Downloadlink` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`MediumID`),
  CONSTRAINT `digitalesmedium_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digitalesmedium`
--

LOCK TABLES `digitalesmedium` WRITE;
/*!40000 ALTER TABLE `digitalesmedium` DISABLE KEYS */;
INSERT INTO `digitalesmedium` VALUES (121,'https://bib.de/dl/java-grundkurs.epub'),(122,'https://bib.de/dl/cpp-programmierung.epub'),(123,'https://bib.de/dl/html-css.epub'),(124,'https://bib.de/dl/react-handbuch.epub'),(125,'https://bib.de/dl/docker-kubernetes.epub'),(126,'https://bib.de/dl/netzwerke-verstehen.epub'),(127,'https://bib.de/dl/it-sicherheit.epub'),(128,'https://bib.de/dl/data-science-python.epub'),(129,'https://bib.de/dl/sql-komplett.epub'),(130,'https://bib.de/dl/algorithmen.epub'),(131,'https://bib.de/dl/statistik-einsteiger.epub'),(132,'https://bib.de/dl/bwl-kompakt.epub'),(133,'https://bib.de/dl/marketing-grundlagen.epub'),(134,'https://bib.de/dl/finanzen-buchhaltung.epub'),(135,'https://bib.de/dl/projektmanagement.epub'),(136,'https://bib.de/dl/englisch-grammatik.epub'),(137,'https://bib.de/dl/spanisch-anfaenger.epub'),(138,'https://bib.de/dl/japanisch-grundkurs.epub'),(139,'https://bib.de/dl/geschichte-europas.epub'),(140,'https://bib.de/dl/weltgeschichte.epub'),(141,'https://bib.de/dl/astronomie.epub'),(142,'https://bib.de/dl/biologie-grundlagen.epub'),(143,'https://bib.de/dl/chemie-kompakt.epub'),(144,'https://bib.de/dl/physik-grundkurs.epub'),(145,'https://bib.de/dl/mathematik-anfaenger.epub'),(146,'https://bib.de/dl/psychologie.epub'),(147,'https://bib.de/dl/soziologie.epub'),(148,'https://bib.de/dl/politikwissenschaft.epub'),(149,'https://bib.de/dl/rechtskunde.epub'),(150,'https://bib.de/dl/medizin.epub'),(151,'https://bib.de/dl/ernaehrungswissenschaft.epub'),(152,'https://bib.de/dl/philosophie-20jh.epub'),(153,'https://bib.de/dl/ethik-moral.epub'),(154,'https://bib.de/dl/maschinelles-lernen.epub'),(155,'https://bib.de/dl/deep-learning.epub'),(156,'https://bib.de/dl/cloud-computing.epub'),(157,'https://bib.de/dl/agile-softwareentwicklung.epub'),(158,'https://bib.de/dl/clean-code.epub'),(159,'https://bib.de/dl/design-patterns.epub'),(160,'https://bib.de/dl/pragmatic-programmer.epub'),(161,'https://bib.de/dl/klassische-musik-vol2.mp3'),(162,'https://bib.de/dl/hobbit-hoerbuch.mp3'),(163,'https://bib.de/dl/sapiens.mp3'),(164,'https://bib.de/dl/atomic-habits.mp3'),(165,'https://bib.de/dl/universum-in-dir.mp3'),(166,'https://bib.de/dl/1984-hoerbuch.mp3'),(167,'https://bib.de/dl/herr-der-ringe-hoerbuch.mp3'),(168,'https://bib.de/dl/harry-potter-1-hoerbuch.mp3'),(169,'https://bib.de/dl/alchemist-hoerbuch.mp3'),(170,'https://bib.de/dl/kunst-des-krieges.mp3'),(171,'https://bib.de/dl/ikigai.mp3'),(172,'https://bib.de/dl/quiet.mp3'),(173,'https://bib.de/dl/thinking-fast-slow.mp3'),(174,'https://bib.de/dl/power-of-now.mp3'),(175,'https://bib.de/dl/outliers.mp3'),(176,'https://bib.de/dl/rich-dad-poor-dad.mp3'),(177,'https://bib.de/dl/deep-work.mp3'),(178,'https://bib.de/dl/essentialism.mp3'),(179,'https://bib.de/dl/zero-to-one.mp3'),(180,'https://bib.de/dl/lean-startup.mp3'),(181,'https://bib.de/dl/start-with-why.mp3'),(182,'https://bib.de/dl/educated.mp3'),(183,'https://bib.de/dl/becoming.mp3'),(184,'https://bib.de/dl/born-a-crime.mp3'),(185,'https://bib.de/dl/mans-search-for-meaning.mp3'),(186,'https://bib.de/dl/meditations.mp3'),(187,'https://bib.de/dl/obstacle-is-way.mp3'),(188,'https://bib.de/dl/ego-is-enemy.mp3'),(189,'https://bib.de/dl/cant-hurt-me.mp3'),(190,'https://bib.de/dl/subtle-art.mp3'),(191,'https://bib.de/dl/digital-minimalism.mp3'),(192,'https://bib.de/dl/good-to-great.mp3'),(193,'https://bib.de/dl/dare-to-lead.mp3'),(194,'https://bib.de/dl/letters-from-stoic.mp3'),(195,'https://bib.de/dl/ego-is-enemy-vol2.mp3'),(196,'https://bib.de/dl/cant-hurt-me-bonus.mp3'),(197,'https://bib.de/dl/7-habits.mp3'),(198,'https://bib.de/dl/blink.mp3'),(199,'https://bib.de/dl/mans-search-vol2.mp3'),(200,'https://bib.de/dl/unfuck-yourself.mp3');
/*!40000 ALTER TABLE `digitalesmedium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lieferung`
--

DROP TABLE IF EXISTS `lieferung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lieferung` (
  `LieferID` int NOT NULL,
  `Bestelldatum` date DEFAULT NULL,
  `Lieferdatum` date DEFAULT NULL,
  `Lieferstatus` tinyint(1) DEFAULT NULL,
  `AdressID` int NOT NULL,
  `MitgliedID` int NOT NULL,
  `MitarbeiterID` int NOT NULL,
  PRIMARY KEY (`LieferID`),
  KEY `AdressID` (`AdressID`),
  KEY `MitgliedID` (`MitgliedID`),
  KEY `MitarbeiterID` (`MitarbeiterID`),
  CONSTRAINT `lieferung_ibfk_1` FOREIGN KEY (`AdressID`) REFERENCES `adresse` (`AdressID`) ON DELETE CASCADE,
  CONSTRAINT `lieferung_ibfk_2` FOREIGN KEY (`MitgliedID`) REFERENCES `mitglied` (`PersonenID`) ON DELETE CASCADE,
  CONSTRAINT `lieferung_ibfk_3` FOREIGN KEY (`MitarbeiterID`) REFERENCES `mitarbeiter` (`PersonenID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lieferung`
--

LOCK TABLES `lieferung` WRITE;
/*!40000 ALTER TABLE `lieferung` DISABLE KEYS */;
INSERT INTO `lieferung` VALUES (1,'2024-03-10','2024-03-13',1,1,1,6),(2,'2024-06-20','2024-06-23',1,10,10,7),(3,'2024-09-05','2024-09-08',1,25,25,71),(4,'2024-11-15',NULL,0,40,40,72),(5,'2025-01-20',NULL,0,55,55,71);
/*!40000 ALTER TABLE `lieferung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahnung`
--

DROP TABLE IF EXISTS `mahnung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mahnung` (
  `MahnungID` int NOT NULL,
  `Mahnungsdatum` date DEFAULT NULL,
  `Mahnstufe` int DEFAULT NULL,
  `Betrag` double DEFAULT NULL,
  `Bezahlt` tinyint(1) DEFAULT NULL,
  `Bezahldatum` date DEFAULT NULL,
  `AusleiheID` int NOT NULL,
  `MitgliedID` int NOT NULL,
  `MitarbeiterID` int NOT NULL,
  PRIMARY KEY (`MahnungID`),
  KEY `AusleiheID` (`AusleiheID`),
  KEY `MitgliedID` (`MitgliedID`),
  KEY `MitarbeiterID` (`MitarbeiterID`),
  CONSTRAINT `mahnung_ibfk_1` FOREIGN KEY (`AusleiheID`) REFERENCES `ausleihe` (`AusleiheID`) ON DELETE CASCADE,
  CONSTRAINT `mahnung_ibfk_2` FOREIGN KEY (`MitgliedID`) REFERENCES `mitglied` (`PersonenID`) ON DELETE CASCADE,
  CONSTRAINT `mahnung_ibfk_3` FOREIGN KEY (`MitarbeiterID`) REFERENCES `mitarbeiter` (`PersonenID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahnung`
--

LOCK TABLES `mahnung` WRITE;
/*!40000 ALTER TABLE `mahnung` DISABLE KEYS */;
INSERT INTO `mahnung` VALUES (1,'2024-02-04',1,2.5,1,'2024-02-08',4,4,6),(2,'2024-02-25',1,2.5,0,NULL,6,6,7),(3,'2024-03-11',2,5,0,NULL,6,6,6),(4,'2024-03-16',1,2.5,1,'2024-03-20',9,9,71),(5,'2024-04-04',1,2.5,0,NULL,12,12,7),(6,'2024-04-19',2,5,0,NULL,12,12,6),(7,'2024-05-30',3,10,0,NULL,12,12,71),(8,'2024-04-30',1,2.5,1,'2024-05-03',15,15,6),(9,'2024-05-25',1,2.5,0,NULL,18,18,72),(10,'2024-06-04',1,2.5,0,NULL,20,20,7),(11,'2024-06-19',2,5,1,'2024-06-25',20,20,6),(12,'2024-07-05',1,2.5,0,NULL,24,24,71),(13,'2024-07-28',1,2.5,1,'2024-08-01',27,27,72),(14,'2024-08-25',1,2.5,0,NULL,30,30,7),(15,'2024-09-16',1,2.5,0,NULL,33,33,6),(16,'2024-10-05',1,2.5,1,'2024-10-09',36,36,71),(17,'2024-10-30',1,2.5,0,NULL,39,39,72),(18,'2024-11-25',1,2.5,0,NULL,42,42,7),(19,'2024-12-16',1,2.5,1,'2024-12-20',45,45,6),(20,'2025-01-25',1,2.5,0,NULL,50,50,71);
/*!40000 ALTER TABLE `mahnung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medium`
--

DROP TABLE IF EXISTS `medium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medium` (
  `MediumID` int NOT NULL,
  `Titel` varchar(40) DEFAULT NULL,
  `Typ` varchar(40) DEFAULT NULL,
  `Erscheinungsjahr` date DEFAULT NULL,
  `Beschreibung` varchar(80) DEFAULT NULL,
  `Verfuegbarkeit` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`MediumID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medium`
--

LOCK TABLES `medium` WRITE;
/*!40000 ALTER TABLE `medium` DISABLE KEYS */;
INSERT INTO `medium` VALUES (1,'Der Herr der Ringe','Buch','1954-07-29','Fantasy-Epos von J.R.R. Tolkien',1),(2,'Harry Potter Bd. 1','Buch','1997-06-26','Zaubererlehrling an der Hogwarts-Schule',1),(3,'National Geographic Mai 2024','Zeitschrift','2024-05-01','Wissenschaft und Natur',1),(4,'Die Verwandlung','Buch','1915-01-01','Erzählung von Franz Kafka',1),(5,'Python für Einsteiger','eBook','2021-09-10','Einführung in die Programmierung',1),(6,'Datenbanken kompakt','eBook','2020-04-15','Grundlagen relationaler Datenbanken',1),(7,'Klassische Musik Vol. 1','Hörbuch','2019-12-01','Mozart, Beethoven, Bach',1),(8,'Faust I','Buch','1808-01-01','Tragödie von Johann Wolfgang von Goethe',1),(9,'1984','Buch','1949-06-08','Dystopie von George Orwell',1),(10,'Der Alchemist','Buch','1988-01-01','Roman von Paulo Coelho',1),(11,'Homo Deus','Buch','2015-09-04','Sachbuch von Yuval Noah Harari',1),(12,'Das Parfum','Buch','1985-03-01','Roman von Patrick Süskind',1),(13,'Siddharta','Buch','1922-01-01','Roman von Hermann Hesse',1),(14,'Die Leiden des jungen Werthers','Buch','1774-01-01','Briefroman von Goethe',1),(15,'Der Prozess','Buch','1925-01-01','Roman von Franz Kafka',1),(16,'Schachnovelle','Buch','1942-01-01','Novelle von Stefan Zweig',1),(17,'Im Westen nichts Neues','Buch','1929-01-01','Antikriegsroman von E.M. Remarque',1),(18,'Der Steppenwolf','Buch','1927-01-01','Roman von Hermann Hesse',1),(19,'Buddenbrooks','Buch','1901-01-01','Roman von Thomas Mann',0),(20,'Der Zauberberg','Buch','1924-01-01','Roman von Thomas Mann',1),(21,'Effi Briest','Buch','1896-01-01','Roman von Theodor Fontane',1),(22,'Homo Faber','Buch','1957-01-01','Roman von Max Frisch',1),(23,'Der Vorleser','Buch','1995-01-01','Roman von Bernhard Schlink',1),(24,'Tschick','Buch','2010-01-01','Roman von Wolfgang Herrndorf',1),(25,'Fahrenheit 451','Buch','1953-10-19','Dystopie von Ray Bradbury',0),(26,'Brave New World','Buch','1932-01-01','Dystopie von Aldous Huxley',1),(27,'Der große Gatsby','Buch','1925-04-10','Roman von F. Scott Fitzgerald',1),(28,'Moby Dick','Buch','1851-10-18','Roman von Herman Melville',1),(29,'Anna Karenina','Buch','1878-01-01','Roman von Leo Tolstoi',1),(30,'Verbrechen und Strafe','Buch','1866-01-01','Roman von Fjodor Dostojewski',1),(31,'Die Brüder Karamasow','Buch','1880-01-01','Roman von Fjodor Dostojewski',1),(32,'Krieg und Frieden','Buch','1869-01-01','Roman von Leo Tolstoi',1),(33,'Don Quijote','Buch','1605-01-01','Roman von Miguel de Cervantes',1),(34,'Der Fremde','Buch','1942-01-01','Roman von Albert Camus',1),(35,'Die Pest','Buch','1947-01-01','Roman von Albert Camus',1),(36,'Der Name der Rose','Buch','1980-01-01','Roman von Umberto Eco',1),(37,'Sofies Welt','Buch','1991-01-01','Roman von Jostein Gaarder',0),(38,'Das Lied von Eis und Feuer Bd.1','Buch','1996-08-01','Fantasy von George R.R. Martin',1),(39,'Dune','Buch','1965-08-01','Science-Fiction von Frank Herbert',1),(40,'Enders Game','Buch','1985-01-15','Science-Fiction von Orson Scott Card',1),(41,'Hitchhikers Guide','Buch','1979-10-12','Comedy-Sci-Fi von Douglas Adams',0),(42,'Foundation','Buch','1951-05-01','Science-Fiction von Isaac Asimov',1),(43,'Der Schwarm','Buch','2004-03-01','Thriller von Frank Schätzing',1),(44,'Illuminati','Buch','2000-01-01','Thriller von Dan Brown',1),(45,'Der Da Vinci Code','Buch','2003-03-18','Thriller von Dan Brown',1),(46,'Der Medicus','Buch','1986-01-01','Historischer Roman von Noah Gordon',1),(47,'Die Säulen der Erde','Buch','1989-09-01','Historischer Roman von Ken Follett',1),(48,'Fahrenheit 451','Buch','1953-10-19','Dystopie von Ray Bradbury 2. Ex.',1),(49,'Psychologie des Überzeugens','Buch','1984-01-01','Sachbuch von Robert Cialdini',1),(50,'Das Kapital','Buch','1867-09-14','Werk von Karl Marx',1),(51,'Eine kurze Geschichte der Zeit','Buch','1988-04-01','Sachbuch von Stephen Hawking',1),(52,'Der seltsame Fall des Dr. Jekyll','Buch','1886-01-05','Novelle von Robert Louis Stevenson',1),(53,'Dracula','Buch','1897-05-26','Gothic-Roman von Bram Stoker',1),(54,'Frankenstein','Buch','1818-01-01','Roman von Mary Shelley',1),(55,'Die Schatzinsel','Buch','1883-11-14','Abenteuerroman von R.L. Stevenson',0),(56,'Robinson Crusoe','Buch','1719-04-25','Roman von Daniel Defoe',1),(57,'Oliver Twist','Buch','1838-01-01','Roman von Charles Dickens',1),(58,'Jane Eyre','Buch','1847-10-16','Roman von Charlotte Brontë',1),(59,'Stolz und Vorurteil','Buch','1813-01-28','Roman von Jane Austen',1),(60,'Der alte Mann und das Meer','Buch','1952-09-01','Novelle von Ernest Hemingway',1),(61,'Der Fänger im Roggen','Buch','1951-07-16','Roman von J.D. Salinger',1),(62,'Von Mäusen und Menschen','Buch','1937-01-30','Novelle von John Steinbeck',1),(63,'Und dann gabs keines mehr','Buch','1939-11-06','Krimi von Agatha Christie',1),(64,'Mord im Orientexpress','Buch','1934-01-01','Krimi von Agatha Christie',1),(65,'Der Hund von Baskerville','Buch','1902-04-01','Krimi von Arthur Conan Doyle',1),(66,'Das Bildnis des Dorian Gray','Buch','1891-07-01','Roman von Oscar Wilde',1),(67,'Der Graf von Monte Christo','Buch','1844-08-28','Abenteuerroman von Alexandre Dumas',0),(68,'Die drei Musketiere','Buch','1844-03-14','Abenteuerroman von Alexandre Dumas',1),(69,'Das Tagebuch der Anne Frank','Buch','1947-06-25','Autobiografie von Anne Frank',1),(70,'Harry Potter Bd. 2','Buch','1998-07-02','Die Kammer des Schreckens',1),(71,'Harry Potter Bd. 3','Buch','1999-07-08','Der Gefangene von Askaban',1),(72,'Harry Potter Bd. 4','Buch','2000-07-08','Der Feuerkelch',1),(73,'Harry Potter Bd. 5','Buch','2003-06-21','Der Orden des Phönix',1),(74,'Harry Potter Bd. 6','Buch','2005-07-16','Der Halbblutprinz',1),(75,'Harry Potter Bd. 7','Buch','2007-07-21','Die Heiligtümer des Todes',1),(76,'Der Hobbit','Buch','1937-09-21','Abenteuerroman von J.R.R. Tolkien',1),(77,'Der Herr der Ringe Bd. 2','Buch','1954-11-11','Die zwei Türme von Tolkien',1),(78,'Der Herr der Ringe Bd. 3','Buch','1955-10-20','Die Rückkehr des Königs von Tolkien',0),(79,'Eragon','Buch','2003-08-26','Fantasy von Christopher Paolini',1),(80,'Tintenherz','Buch','2003-01-01','Fantasy von Cornelia Funke',1),(81,'Die unendliche Geschichte','Buch','1979-09-01','Fantasy von Michael Ende',1),(82,'Momo','Buch','1973-01-01','Roman von Michael Ende',1),(83,'Jim Knopf','Buch','1960-01-01','Kinderbuch von Michael Ende',1),(84,'Pippi Langstrumpf','Buch','1945-11-26','Kinderbuch von Astrid Lindgren',1),(85,'Michel aus Lönneberga','Buch','1963-01-01','Kinderbuch von Astrid Lindgren',1),(86,'Ronja Räubertochter','Buch','1981-01-01','Kinderbuch von Astrid Lindgren',1),(87,'Emil und die Detektive','Buch','1929-01-01','Kinderbuch von Erich Kästner',1),(88,'Das doppelte Lottchen','Buch','1949-01-01','Kinderbuch von Erich Kästner',1),(89,'Der kleine Prinz','Buch','1943-04-06','Roman von Antoine de Saint-Exupéry',1),(90,'Alice im Wunderland','Buch','1865-11-26','Roman von Lewis Carroll',0),(91,'Winnie Puuh','Buch','1926-10-14','Kinderbuch von A.A. Milne',1),(92,'Gulliver s Reisen','Buch','1726-10-28','Satire von Jonathan Swift',1),(93,'Die Schneekönigin','Buch','1844-12-21','Märchen von Hans Christian Andersen',1),(94,'Grimms Märchen','Buch','1812-12-20','Märchensammlung der Gebrüder Grimm',1),(95,'1000 Meilen unter dem Meer','Buch','1870-03-20','Abenteuer von Jules Verne',1),(96,'Reise zum Mittelpunkt der Erde','Buch','1864-11-25','Abenteuer von Jules Verne',1),(97,'In 80 Tagen um die Welt','Buch','1872-01-01','Abenteuer von Jules Verne',1),(98,'Die Zeitmaschine','Buch','1895-05-07','Science-Fiction von H.G. Wells',1),(99,'Der Krieg der Welten','Buch','1898-01-01','Science-Fiction von H.G. Wells',1),(100,'Die Insel des Dr. Moreau','Buch','1896-04-01','Science-Fiction von H.G. Wells',1),(101,'National Geographic Jan 2024','Zeitschrift','2024-01-01','Wissenschaft und Natur',1),(102,'National Geographic Feb 2024','Zeitschrift','2024-02-01','Wissenschaft und Natur',1),(103,'National Geographic Mrz 2024','Zeitschrift','2024-03-01','Wissenschaft und Natur',1),(104,'Spiegel 01/2024','Zeitschrift','2024-01-06','Nachrichtenmagazin',1),(105,'Spiegel 06/2024','Zeitschrift','2024-02-03','Nachrichtenmagazin',1),(106,'Spiegel 12/2024','Zeitschrift','2024-03-16','Nachrichtenmagazin',1),(107,'Geo Jan 2024','Zeitschrift','2024-01-01','Geografie und Reisen',1),(108,'Geo Apr 2024','Zeitschrift','2024-04-01','Geografie und Reisen',1),(109,'Geo Jun 2024','Zeitschrift','2024-06-01','Geografie und Reisen',1),(110,'c t Magazin Jan 2024','Zeitschrift','2024-01-01','Computer und Technik',1),(111,'c t Magazin Apr 2024','Zeitschrift','2024-04-01','Computer und Technik',1),(112,'c t Magazin Jun 2024','Zeitschrift','2024-06-01','Computer und Technik',1),(113,'Stern 02/2024','Zeitschrift','2024-02-01','Aktuelles und Reportagen',1),(114,'Stern 04/2024','Zeitschrift','2024-04-01','Aktuelles und Reportagen',1),(115,'Stern 08/2024','Zeitschrift','2024-08-01','Aktuelles und Reportagen',1),(116,'Focus 03/2024','Zeitschrift','2024-03-04','Nachrichtenmagazin',1),(117,'Focus 07/2024','Zeitschrift','2024-07-08','Nachrichtenmagazin',1),(118,'Zeit Magazin Jan 2024','Zeitschrift','2024-01-04','Kultur und Gesellschaft',1),(119,'Zeit Magazin Apr 2024','Zeitschrift','2024-04-04','Kultur und Gesellschaft',1),(120,'Brigitte 01/2024','Zeitschrift','2024-01-03','Mode und Lifestyle',1),(121,'Java Grundkurs','eBook','2020-06-01','OOP mit Java für Einsteiger',0),(122,'C++ Programmierung','eBook','2021-03-15','Modernes C++ von Grund auf',1),(123,'HTML und CSS','eBook','2022-07-01','Webseiten gestalten',1),(124,'React Handbuch','eBook','2023-01-10','Moderne Webentwicklung',1),(125,'Docker und Kubernetes','eBook','2022-05-20','Container und Orchestrierung',0),(126,'Netzwerke verstehen','eBook','2019-08-08','TCP/IP und Protokolle',1),(127,'IT-Sicherheit Grundlagen','eBook','2021-11-01','Cybersecurity für Einsteiger',1),(128,'Data Science mit Python','eBook','2022-09-15','Pandas, NumPy und Matplotlib',1),(129,'SQL komplett','eBook','2020-02-01','Alle SQL-Befehle erklärt',0),(130,'Algorithmen und Datenstrukturen','eBook','2018-04-01','Grundlagen der Informatik',1),(131,'Statistik für Einsteiger','eBook','2021-06-10','Grundlagen der Statistik',1),(132,'BWL kompakt','eBook','2020-01-15','Betriebswirtschaft',1),(133,'Marketing Grundlagen','eBook','2022-03-01','Klassisches und digitales Marketing',0),(134,'Finanzen und Buchhaltung','eBook','2019-07-07','Buchführung leicht gemacht',1),(135,'Projektmanagement','eBook','2021-10-10','Agile und klassische Methoden',1),(136,'Englisch Grammatik','eBook','2020-05-05','Comprehensive English Grammar',1),(137,'Spanisch für Anfänger','eBook','2021-02-14','Spanisch schnell lernen',0),(138,'Japanisch Grundkurs','eBook','2022-11-11','Hiragana Katakana Kanji',1),(139,'Geschichte Europas','eBook','2021-04-04','Von der Antike bis heute',1),(140,'Weltgeschichte kompakt','eBook','2019-06-06','Wichtigste Ereignisse',1),(141,'Astronomie für Neugierige','eBook','2022-02-02','Das Universum verstehen',0),(142,'Biologie Grundlagen','eBook','2020-10-10','Leben und Ökosysteme',1),(143,'Chemie kompakt','eBook','2021-08-08','Organische und anorganische Chemie',1),(144,'Physik Grundkurs','eBook','2019-12-12','Mechanik Optik Elektrizität',1),(145,'Mathematik für Anfänger','eBook','2022-06-06','Analysis und Lineare Algebra',0),(146,'Psychologie Grundlagen','eBook','2019-05-05','Kognition und Verhalten',1),(147,'Soziologie Einführung','eBook','2022-08-08','Gesellschaft und Strukturen',1),(148,'Politikwissenschaft kompakt','eBook','2020-11-11','Demokratie und polit. Systeme',1),(149,'Rechtskunde für Einsteiger','eBook','2021-09-09','Bürgerliches und öffentl. Recht',0),(150,'Medizin Grundwissen','eBook','2019-03-03','Anatomie und Physiologie',1),(151,'Ernährungswissenschaft','eBook','2022-04-04','Gesunde Ernährung',1),(152,'Philosophie des 20. Jh.','eBook','2020-03-03','Existentialismus bis Postmoderne',1),(153,'Ethik und Moral','eBook','2021-07-07','Grundfragen der Ethik',0),(154,'Maschinelles Lernen','eBook','2022-01-01','ML Grundlagen mit Python',1),(155,'Deep Learning','eBook','2021-05-05','Neuronale Netze verstehen',1),(156,'Cloud Computing','eBook','2020-07-07','AWS Azure Google Cloud',1),(157,'Agile Softwareentwicklung','eBook','2019-10-10','Scrum Kanban und Co.',0),(158,'Clean Code','eBook','2008-08-11','Robert C. Martin',1),(159,'Design Patterns','eBook','1994-10-21','Gang of Four',1),(160,'The Pragmatic Programmer','eBook','1999-10-30','Andrew Hunt David Thomas',1),(161,'Klassische Musik Vol. 2','Hörbuch','2020-12-01','Vivaldi Händel Telemann',1),(162,'Der Hobbit Hörbuch','Hörbuch','2012-05-10','Gelesen von Achim Buch',1),(163,'Sapiens','Hörbuch','2018-07-22','Geschichte der Menschheit',1),(164,'Atomic Habits','Hörbuch','2020-10-16','Die 1% Methode',0),(165,'Das Universum in dir','Hörbuch','2021-06-30','Neurowissenschaft',1),(166,'1984 Hörbuch','Hörbuch','2015-01-01','Gelesen von Hannes Hellmann',1),(167,'Der Herr der Ringe Hörbuch','Hörbuch','2001-11-19','Ungekürzte Lesung',0),(168,'Harry Potter Bd.1 Hörbuch','Hörbuch','1999-11-01','Gelesen von Rufus Beck',1),(169,'Der Alchemist Hörbuch','Hörbuch','2008-03-01','Christian Brückner',1),(170,'Die Kunst des Krieges','Hörbuch','2010-06-15','Sun Tzu',1),(171,'Ikigai','Hörbuch','2019-04-01','Japanische Lebenskunst',0),(172,'Quiet','Hörbuch','2012-01-24','Stärke der Introvertierten',1),(173,'Thinking Fast and Slow','Hörbuch','2011-10-25','Daniel Kahneman',1),(174,'The Power of Now','Hörbuch','2001-09-01','Eckhart Tolle',1),(175,'Outliers','Hörbuch','2008-11-18','Malcolm Gladwell',0),(176,'Rich Dad Poor Dad','Hörbuch','1997-04-01','Robert Kiyosaki',1),(177,'Deep Work','Hörbuch','2016-01-05','Cal Newport',1),(178,'Essentialism','Hörbuch','2014-04-15','Greg McKeown',1),(179,'Zero to One','Hörbuch','2014-09-16','Peter Thiel',0),(180,'The Lean Startup','Hörbuch','2011-09-13','Eric Ries',1),(181,'Start with Why','Hörbuch','2009-10-29','Simon Sinek',1),(182,'Educated','Hörbuch','2018-02-20','Tara Westover',1),(183,'Becoming','Hörbuch','2018-11-13','Michelle Obama',0),(184,'Born a Crime','Hörbuch','2016-11-15','Trevor Noah',1),(185,'Mans Search for Meaning','Hörbuch','1946-01-01','Viktor Frankl',1),(186,'Meditations','Hörbuch','2002-07-02','Marcus Aurelius',1),(187,'The Obstacle is the Way','Hörbuch','2014-05-01','Ryan Holiday',0),(188,'Ego is the Enemy','Hörbuch','2016-06-14','Ryan Holiday',1),(189,'Cant Hurt Me','Hörbuch','2018-12-04','David Goggins',1),(190,'The Subtle Art','Hörbuch','2016-09-13','Mark Manson',1),(191,'Digital Minimalism','Hörbuch','2019-02-05','Cal Newport',0),(192,'Good to Great','Hörbuch','2001-10-16','Jim Collins',1),(193,'Dare to Lead','Hörbuch','2018-10-09','Brené Brown',1),(194,'Letters from a Stoic','Hörbuch','2004-01-01','Seneca',1),(195,'Ego is the Enemy Vol.2','Hörbuch','2017-06-14','Ryan Holiday',0),(196,'Can t Hurt Me Bonus','Hörbuch','2019-12-04','David Goggins Extended',1),(197,'The 7 Habits','Hörbuch','1989-08-15','Stephen Covey',1),(198,'Blink','Hörbuch','2005-01-11','Malcolm Gladwell',1),(199,'Man s Search Vol.2','Hörbuch','2000-01-01','Viktor Frankl Fortsetzung',0),(200,'Unfuck Yourself','Hörbuch','2016-11-01','Gary John Bishop',1);
/*!40000 ALTER TABLE `medium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mitarbeiter`
--

DROP TABLE IF EXISTS `mitarbeiter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mitarbeiter` (
  `PersonenID` int NOT NULL,
  `Position` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`PersonenID`),
  CONSTRAINT `mitarbeiter_ibfk_1` FOREIGN KEY (`PersonenID`) REFERENCES `personen` (`PersonenID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitarbeiter`
--

LOCK TABLES `mitarbeiter` WRITE;
/*!40000 ALTER TABLE `mitarbeiter` DISABLE KEYS */;
INSERT INTO `mitarbeiter` VALUES (6,'Bibliothekar'),(7,'Verwaltung'),(71,'Bibliothekar'),(72,'Verwaltung'),(73,'Bibliothekar'),(74,'IT-Support'),(75,'Leitung'),(76,'Bibliothekar'),(77,'Verwaltung'),(78,'IT-Support');
/*!40000 ALTER TABLE `mitarbeiter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mitglied`
--

DROP TABLE IF EXISTS `mitglied`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mitglied` (
  `PersonenID` int NOT NULL,
  `Registrierungsdatum` date DEFAULT NULL,
  PRIMARY KEY (`PersonenID`),
  CONSTRAINT `mitglied_ibfk_1` FOREIGN KEY (`PersonenID`) REFERENCES `personen` (`PersonenID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitglied`
--

LOCK TABLES `mitglied` WRITE;
/*!40000 ALTER TABLE `mitglied` DISABLE KEYS */;
INSERT INTO `mitglied` VALUES (1,'2022-03-15'),(2,'2021-07-01'),(3,'2023-01-20'),(4,'2020-11-05'),(5,'2024-02-28'),(6,'2019-06-10'),(7,'2022-08-22'),(8,'2021-03-03'),(9,'2023-09-14'),(10,'2020-05-30'),(11,'2024-01-07'),(12,'2018-12-19'),(13,'2022-11-11'),(14,'2023-04-25'),(15,'2021-10-08'),(16,'2019-02-14'),(17,'2024-03-01'),(18,'2020-07-17'),(19,'2023-06-06'),(20,'2022-09-29'),(21,'2021-04-12'),(22,'2020-08-03'),(23,'2023-12-01'),(24,'2019-11-20'),(25,'2022-05-05'),(26,'2021-01-15'),(27,'2020-03-28'),(28,'2023-07-07'),(29,'2018-09-09'),(30,'2024-04-04'),(31,'2022-02-02'),(32,'2021-06-16'),(33,'2020-10-10'),(34,'2023-03-03'),(35,'2019-07-25'),(36,'2022-12-12'),(37,'2021-08-08'),(38,'2020-04-04'),(39,'2023-10-10'),(40,'2018-06-06'),(41,'2024-05-05'),(42,'2022-01-01'),(43,'2021-09-09'),(44,'2020-02-02'),(45,'2023-05-05'),(46,'2019-03-03'),(47,'2022-07-07'),(48,'2021-11-11'),(49,'2020-06-06'),(50,'2023-08-08'),(51,'2018-04-04'),(52,'2024-06-06'),(53,'2022-10-10'),(54,'2021-02-02'),(55,'2020-09-09'),(56,'2023-11-11'),(57,'2019-05-05'),(58,'2022-04-04'),(59,'2021-12-12'),(60,'2020-01-01'),(61,'2023-02-02'),(62,'2018-08-08'),(63,'2024-07-07'),(64,'2022-06-06'),(65,'2021-10-10'),(66,'2020-12-12'),(67,'2023-04-04'),(68,'2019-08-08'),(69,'2022-11-11'),(70,'2021-05-05');
/*!40000 ALTER TABLE `mitglied` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personen`
--

DROP TABLE IF EXISTS `personen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personen` (
  `PersonenID` int NOT NULL,
  `Vorname` varchar(40) DEFAULT NULL,
  `Nachname` varchar(40) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Passwort` varchar(40) DEFAULT NULL,
  `AdressID` int DEFAULT NULL,
  PRIMARY KEY (`PersonenID`),
  KEY `AdressID` (`AdressID`),
  CONSTRAINT `personen_ibfk_1` FOREIGN KEY (`AdressID`) REFERENCES `adresse` (`AdressID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personen`
--

LOCK TABLES `personen` WRITE;
/*!40000 ALTER TABLE `personen` DISABLE KEYS */;
INSERT INTO `personen` VALUES (1,'Anna','Müller','anna.mueller@mail.de','pass1234',1),(2,'Ben','Schmidt','ben.schmidt@mail.de','pass5678',2),(3,'Clara','Weber','clara.weber@mail.de','pass9012',3),(4,'David','Fischer','david.fischer@mail.de','pass3456',4),(5,'Eva','Becker','eva.becker@mail.de','pass7890',5),(6,'Frank','Hoffmann','frank.hoffmann@bib.de','admin111',6),(7,'Gabi','Koch','gabi.koch@bib.de','admin222',7),(8,'Hans','Bauer','hans.bauer@mail.de','pass1008',8),(9,'Ida','Richter','ida.richter@mail.de','pass1009',9),(10,'Jonas','Klein','jonas.klein@mail.de','pass1010',10),(11,'Klara','Wolf','klara.wolf@mail.de','pass1011',11),(12,'Leon','Schröder','leon.schroeder@mail.de','pass1012',12),(13,'Mia','Neumann','mia.neumann@mail.de','pass1013',13),(14,'Noah','Schwarz','noah.schwarz@mail.de','pass1014',14),(15,'Olivia','Zimmermann','olivia.zimm@mail.de','pass1015',15),(16,'Paul','Braun','paul.braun@mail.de','pass1016',16),(17,'Quinn','Krüger','quinn.krueger@mail.de','pass1017',17),(18,'Rosa','Hartmann','rosa.hartmann@mail.de','pass1018',18),(19,'Sam','Lange','sam.lange@mail.de','pass1019',19),(20,'Tina','Werner','tina.werner@mail.de','pass1020',20),(21,'Uwe','Krause','uwe.krause@mail.de','pass1021',21),(22,'Vera','Lehmann','vera.lehmann@mail.de','pass1022',22),(23,'Walter','Fuchs','walter.fuchs@mail.de','pass1023',23),(24,'Xena','Weiß','xena.weiss@mail.de','pass1024',24),(25,'Yannick','Ziegler','yannick.ziegler@mail.de','pass1025',25),(26,'Zoe','Herrmann','zoe.herrmann@mail.de','pass1026',26),(27,'Anton','Schäfer','anton.schaefer@mail.de','pass1027',27),(28,'Britta','Köhler','britta.koehler@mail.de','pass1028',28),(29,'Carl','Huber','carl.huber@mail.de','pass1029',29),(30,'Diana','Kaiser','diana.kaiser@mail.de','pass1030',30),(31,'Elias','Möller','elias.moeller@mail.de','pass1031',31),(32,'Franziska','Peters','franziska.peters@mail.de','pass1032',32),(33,'Georg','Roth','georg.roth@mail.de','pass1033',33),(34,'Helene','Walter','helene.walter@mail.de','pass1034',34),(35,'Igor','Schmitt','igor.schmitt@mail.de','pass1035',35),(36,'Julia','Schneider','julia.schneider@mail.de','pass1036',36),(37,'Karl','Maier','karl.maier@mail.de','pass1037',37),(38,'Lisa','Brandt','lisa.brandt@mail.de','pass1038',38),(39,'Max','Günther','max.guenther@mail.de','pass1039',39),(40,'Nina','König','nina.koenig@mail.de','pass1040',40),(41,'Otto','Sommer','otto.sommer@mail.de','pass1041',41),(42,'Petra','Kühn','petra.kuehn@mail.de','pass1042',42),(43,'Ralf','Vogel','ralf.vogel@mail.de','pass1043',43),(44,'Sandra','Berg','sandra.berg@mail.de','pass1044',44),(45,'Thomas','Winter','thomas.winter@mail.de','pass1045',45),(46,'Ursula','Schubert','ursula.schubert@mail.de','pass1046',46),(47,'Viktor','Seidel','viktor.seidel@mail.de','pass1047',47),(48,'Wendy','Haas','wendy.haas@mail.de','pass1048',48),(49,'Xavier','Franke','xavier.franke@mail.de','pass1049',49),(50,'Yvonne','Horn','yvonne.horn@mail.de','pass1050',50),(51,'Zacharias','Albrecht','zacharias.albrecht@mail.de','pass1051',51),(52,'Amelie','Busch','amelie.busch@mail.de','pass1052',52),(53,'Bruno','Dietrich','bruno.dietrich@mail.de','pass1053',53),(54,'Carla','Ernst','carla.ernst@mail.de','pass1054',54),(55,'Denis','Fiedler','denis.fiedler@mail.de','pass1055',55),(56,'Elena','Grimm','elena.grimm@mail.de','pass1056',56),(57,'Fabian','Hahn','fabian.hahn@mail.de','pass1057',57),(58,'Gloria','Illing','gloria.illing@mail.de','pass1058',58),(59,'Hannes','Jung','hannes.jung@mail.de','pass1059',59),(60,'Irene','Kern','irene.kern@mail.de','pass1060',60),(61,'Jan','Lauer','jan.lauer@mail.de','pass1061',61),(62,'Katrin','Metz','katrin.metz@mail.de','pass1062',62),(63,'Lars','Naumann','lars.naumann@mail.de','pass1063',63),(64,'Monika','Ott','monika.ott@mail.de','pass1064',64),(65,'Niklas','Pohl','niklas.pohl@mail.de','pass1065',65),(66,'Olga','Rau','olga.rau@mail.de','pass1066',66),(67,'Peter','Sauer','peter.sauer@mail.de','pass1067',67),(68,'Renate','Thiel','renate.thiel@mail.de','pass1068',68),(69,'Stefan','Urban','stefan.urban@mail.de','pass1069',69),(70,'Teresa','Vogt','teresa.vogt@mail.de','pass1070',70),(71,'Herbert','Wagner','herbert.wagner@bib.de','admin003',71),(72,'Ines','Becker','ines.becker2@bib.de','admin004',72),(73,'Jürgen','Meyer','juergen.meyer@bib.de','admin005',73),(74,'Karin','Bruns','karin.bruns@bib.de','admin006',74),(75,'Ludwig','Dorn','ludwig.dorn@bib.de','admin007',75),(76,'Maria','Engel','maria.engel@bib.de','admin008',76),(77,'Norbert','Franz','norbert.franz@bib.de','admin009',77),(78,'Olaf','Götz','olaf.goetz@bib.de','admin010',78);
/*!40000 ALTER TABLE `personen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regalfach`
--

DROP TABLE IF EXISTS `regalfach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regalfach` (
  `RegalfachID` int NOT NULL,
  `Regalnummer` int DEFAULT NULL,
  `Fachnummer` int DEFAULT NULL,
  PRIMARY KEY (`RegalfachID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regalfach`
--

LOCK TABLES `regalfach` WRITE;
/*!40000 ALTER TABLE `regalfach` DISABLE KEYS */;
INSERT INTO `regalfach` VALUES (1,1,1),(2,1,2),(3,2,1),(4,3,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,4),(10,2,5),(11,3,1),(12,3,2),(13,3,3),(14,3,4),(15,3,5),(16,4,1),(17,4,2),(18,4,3),(19,4,4),(20,4,5),(21,5,1),(22,5,2),(23,5,3),(24,5,4),(25,5,5),(26,6,1),(27,6,2),(28,6,3),(29,6,4),(30,6,5);
/*!40000 ALTER TABLE `regalfach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservierung`
--

DROP TABLE IF EXISTS `reservierung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservierung` (
  `ReservierungsID` int NOT NULL,
  `Reservierungsstart` date DEFAULT NULL,
  `Reservierungsende` date DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `MediumID` int NOT NULL,
  `MitgliedID` int NOT NULL,
  `MitarbeiterID` int NOT NULL,
  PRIMARY KEY (`ReservierungsID`),
  KEY `MediumID` (`MediumID`),
  KEY `MitgliedID` (`MitgliedID`),
  KEY `MitarbeiterID` (`MitarbeiterID`),
  CONSTRAINT `reservierung_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`) ON DELETE CASCADE,
  CONSTRAINT `reservierung_ibfk_2` FOREIGN KEY (`MitgliedID`) REFERENCES `mitglied` (`PersonenID`) ON DELETE CASCADE,
  CONSTRAINT `reservierung_ibfk_3` FOREIGN KEY (`MitarbeiterID`) REFERENCES `mitarbeiter` (`PersonenID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservierung`
--

LOCK TABLES `reservierung` WRITE;
/*!40000 ALTER TABLE `reservierung` DISABLE KEYS */;
INSERT INTO `reservierung` VALUES (1,'2024-01-20','2024-02-03',1,9,1,6),(2,'2024-02-05','2024-02-19',0,13,3,7),(3,'2024-03-01','2024-03-15',1,17,5,6),(4,'2024-03-20','2024-04-03',1,21,10,71),(5,'2024-04-10','2024-04-24',0,25,15,7),(6,'2024-05-01','2024-05-15',1,29,20,72),(7,'2024-05-20','2024-06-03',1,33,25,6),(8,'2024-06-10','2024-06-24',0,37,30,71),(9,'2024-07-01','2024-07-15',1,41,35,7),(10,'2024-08-05','2024-08-19',1,45,40,6),(11,'2024-09-01','2024-09-15',0,49,45,72),(12,'2024-10-10','2024-10-24',1,53,50,71),(13,'2024-11-01','2024-11-15',1,57,55,7),(14,'2024-12-05','2024-12-19',0,61,60,6),(15,'2025-01-10','2025-01-24',1,65,65,71);
/*!40000 ALTER TABLE `reservierung` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-10 12:07:23
