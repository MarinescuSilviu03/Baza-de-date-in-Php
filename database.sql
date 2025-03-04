CREATE DATABASE  IF NOT EXISTS `proiect` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proiect`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proiect
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `serie`
--

DROP TABLE IF EXISTS `serie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serie` (
  `idserie` bigint NOT NULL AUTO_INCREMENT,
  `denumire_serie` varchar(255) NOT NULL,
  `numar_grupe` bigint DEFAULT NULL,
  `numar_studenti` bigint DEFAULT NULL,
  PRIMARY KEY (`idserie`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serie`
--

LOCK TABLES `serie` WRITE;
/*!40000 ALTER TABLE `serie` DISABLE KEYS */;
INSERT INTO `serie` VALUES (13,'B',5,145),(15,'D',4,130),(20,'C',3,80);
/*!40000 ALTER TABLE `serie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `idstudents` bigint NOT NULL AUTO_INCREMENT,
  `nume` varchar(255) NOT NULL,
  `prenume` varchar(255) DEFAULT NULL,
  `cnp` bigint DEFAULT NULL,
  `adresa` varchar(255) DEFAULT NULL,
  `numartelefon` varchar(255) DEFAULT NULL,
  `data_nastere` date DEFAULT NULL,
  `idserie` bigint DEFAULT NULL,
  `an_curent` bigint DEFAULT NULL,
  `medie` bigint DEFAULT NULL,
  PRIMARY KEY (`idstudents`),
  KEY `FK1_idx` (`idserie`),
  CONSTRAINT `FK1` FOREIGN KEY (`idserie`) REFERENCES `serie` (`idserie`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (19,'Marinescu','Silviu-Andrei',1,'Bucuresti','07415123','2000-05-10',15,3,10),(20,'Xenopol','Adi',5,'Ploiesti','07621651','2002-05-10',15,1,8),(23,'Ionescu','Eusebiu-Andrei',51567357872,'Timisoara','0723456711','2005-01-28',13,1,7);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `idsubjects` bigint NOT NULL AUTO_INCREMENT,
  `denumire_subject` varchar(255) NOT NULL,
  `an_predare` bigint DEFAULT NULL,
  `semestru_predare` bigint DEFAULT NULL,
  `puncte_credit` bigint DEFAULT NULL,
  `profesor` varchar(255) DEFAULT NULL,
  `idserie` bigint NOT NULL,
  PRIMARY KEY (`idsubjects`),
  KEY `FK2_idx` (`idserie`),
  CONSTRAINT `FK2` FOREIGN KEY (`idserie`) REFERENCES `serie` (`idserie`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (6,'SS3',3,1,5,'Florea',15),(8,'TTI',3,1,5,'Faur',15),(15,'Analiza matematica',1,1,4,'Meghea',13),(17,'Algebra liniara',1,1,5,'Negrescu',13);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-29 18:17:32
