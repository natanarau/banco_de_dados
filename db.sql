-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `classe`
--

DROP TABLE IF EXISTS `classe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `dateTime` timestamp NULL DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastUpdatedBy` int NOT NULL,
  `teacherId` int NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lastUpdatedBy` (`lastUpdatedBy`),
  KEY `teacherId` (`teacherId`),
  CONSTRAINT `classe_ibfk_1` FOREIGN KEY (`lastUpdatedBy`) REFERENCES `users` (`id`),
  CONSTRAINT `classe_ibfk_2` FOREIGN KEY (`teacherId`) REFERENCES `teachers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classe`
--

LOCK TABLES `classe` WRITE;
/*!40000 ALTER TABLE `classe` DISABLE KEYS */;
INSERT INTO `classe` VALUES (5,'TURMA DAS 7','2024-09-18 07:00:00','2024-09-22 15:42:06','2024-09-22 15:42:06',1,1,'ATIVA');
/*!40000 ALTER TABLE `classe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `cel` varchar(100) NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastUpdatedBy` int NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lastUpdatedBy` (`lastUpdatedBy`),
  CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`lastUpdatedBy`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Fernanda Silva','84 99999-9999','2024-09-17 21:01:55','2024-09-17 21:01:55',1,'ATIVO'),(2,'Renata Vieira','84 99999-9999','2024-09-17 21:02:37','2024-09-17 21:02:37',1,'ATIVO'),(3,'Andreia Araujo','84 99999-9999','2024-09-17 21:02:43','2024-09-17 21:02:43',1,'ATIVO'),(4,'Jessika Larissa','84 99999-9999','2024-09-17 21:02:49','2024-09-17 21:02:49',1,'INATIVO'),(5,'Monica Ferreira','84 99999-9999','2024-09-17 21:03:02','2024-09-17 21:03:02',1,'ATIVO'),(6,'Lucas Matos','84 99999-9999','2024-09-17 21:03:06','2024-09-17 21:03:06',1,'ATIVO'),(7,'Paulo Glir','84 99999-9999','2024-09-17 21:03:12','2024-09-17 21:03:12',1,'ATIVO'),(8,'Felipe Bueno','84 99999-9999','2024-09-17 21:03:20','2024-09-17 21:03:20',1,'ATIVO'),(9,'Thiago Henrique','84 99999-9999','2024-09-17 21:03:26','2024-09-17 21:03:26',1,'ATIVO'),(10,'Ailma Siqueira','84 99999-9999','2024-09-17 21:03:39','2024-09-17 21:03:39',1,'ATIVO'),(11,'Neide Siqueira','84 99999-9999','2024-09-17 21:03:46','2024-09-17 21:03:46',1,'ATIVO'),(12,'Leomar Nogueira','84 99999-9999','2024-09-17 21:04:02','2024-09-17 21:04:02',1,'ATIVO'),(13,'Gabriel Andrade','84 99999-9999','2024-09-17 21:04:12','2024-09-17 21:04:12',1,'ATIVO'),(14,'Renato Albane','84 99999-9999','2024-09-17 21:04:35','2024-09-17 21:04:35',1,'ATIVO'),(15,'Sonia Araujo','84 99999-9999','2024-09-17 21:04:46','2024-09-17 21:04:46',1,'ATIVO'),(16,'Isa Maria','85 99999-9999','2024-09-22 14:24:33','2024-09-22 14:24:33',1,'ATIVO');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientsClass`
--

DROP TABLE IF EXISTS `clientsClass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientsClass` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clientId` int NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastUpdatedBy` int NOT NULL,
  `classeId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clientId` (`clientId`),
  KEY `lastUpdatedBy` (`lastUpdatedBy`),
  KEY `classeId` (`classeId`),
  CONSTRAINT `classeId` FOREIGN KEY (`classeId`) REFERENCES `classe` (`id`),
  CONSTRAINT `clientsClass_ibfk_1` FOREIGN KEY (`clientId`) REFERENCES `clients` (`id`),
  CONSTRAINT `clientsClass_ibfk_2` FOREIGN KEY (`lastUpdatedBy`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientsClass`
--

LOCK TABLES `clientsClass` WRITE;
/*!40000 ALTER TABLE `clientsClass` DISABLE KEYS */;
INSERT INTO `clientsClass` VALUES (48,9,'2024-09-22 15:44:20','2024-09-22 15:44:20',1,5),(49,3,'2024-09-23 20:24:16','2024-09-23 20:24:16',1,5);
/*!40000 ALTER TABLE `clientsClass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `numberOfClass` int NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastUpdatedBy` int NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lastUpdatedBy` (`lastUpdatedBy`),
  CONSTRAINT `package_ibfk_1` FOREIGN KEY (`lastUpdatedBy`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (1,'PACOTE 1',4,190,'2024-09-17 21:01:55','2024-09-17 21:01:55',1,'ATIVO'),(2,'PACOTE 2',6,240,'2024-09-17 21:02:55','2024-09-17 21:09:39',1,'ATIVO'),(3,'PACOTE 3',12,340,'2024-09-17 21:02:55','2024-09-17 21:09:50',1,'ATIVO'),(4,'PACOTE 4',24,540,'2024-09-17 21:02:55','2024-09-17 21:10:00',1,'ATIVO'),(5,'PACOTE 5',30,640,'2024-09-22 14:28:51','2024-09-22 14:28:51',1,'ATIVO');
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packageClient`
--

DROP TABLE IF EXISTS `packageClient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packageClient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clientId` int NOT NULL,
  `packageId` int NOT NULL,
  `remaining` int NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastUpdatedBy` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lastUpdatedBy` (`lastUpdatedBy`),
  KEY `clientId` (`clientId`),
  CONSTRAINT `clientId` FOREIGN KEY (`clientId`) REFERENCES `clients` (`id`),
  CONSTRAINT `packageClient_ibfk_1` FOREIGN KEY (`lastUpdatedBy`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packageClient`
--

LOCK TABLES `packageClient` WRITE;
/*!40000 ALTER TABLE `packageClient` DISABLE KEYS */;
INSERT INTO `packageClient` VALUES (16,9,1,3,'2024-09-22 15:43:15','2024-09-22 15:43:15',1),(17,3,3,11,'2024-09-23 20:24:10','2024-09-23 20:24:10',1);
/*!40000 ALTER TABLE `packageClient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `cel` varchar(100) NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastUpdatedBy` int NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lastUpdatedBy` (`lastUpdatedBy`),
  CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`lastUpdatedBy`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'Tobias','84 99999-9999','2024-09-18 12:29:13','2024-09-18 12:29:13',1,'ATIVO'),(2,'Lucas','84 99999-9999','2024-09-22 14:33:21','2024-09-22 14:33:21',1,'ATIVO');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `cel` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Natã Araujo','84 99999-9999','ATIVO','2024-09-17 20:50:19','2024-09-17 20:50:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-23 17:53:30
