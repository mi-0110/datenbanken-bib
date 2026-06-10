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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-10 10:44:56
