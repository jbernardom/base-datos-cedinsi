CREATE DATABASE  IF NOT EXISTS `mi_cerveza` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mi_cerveza`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mi_cerveza
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idcategoria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `detalle` varchar(255) NOT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Lager','Artesanal'),(2,'Ales','Espumosa');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cerveza`
--

DROP TABLE IF EXISTS `cerveza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cerveza` (
  `idcerveza` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `detalle` varchar(255) NOT NULL,
  `idcategoria` int DEFAULT NULL,
  PRIMARY KEY (`idcerveza`),
  KEY `idcategoria` (`idcategoria`),
  CONSTRAINT `cerveza_ibfk_1` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cerveza`
--

LOCK TABLES `cerveza` WRITE;
/*!40000 ALTER TABLE `cerveza` DISABLE KEYS */;
INSERT INTO `cerveza` VALUES (1,'Porter_especial','extraseca',2),(2,'Lager_bock','seca',1),(3,'Stout_imperial','extraseca',1),(4,'Alex_adiction','seca',2),(5,'Lager_king','Extraseca',1),(6,'Alex_king','Extraseca',2);
/*!40000 ALTER TABLE `cerveza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cerveza_materiaprima`
--

DROP TABLE IF EXISTS `cerveza_materiaprima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cerveza_materiaprima` (
  `idcerveza_materiaprima` int NOT NULL AUTO_INCREMENT,
  `cantidad` varchar(255) NOT NULL,
  `unidad` varchar(255) NOT NULL,
  `idcerveza` int DEFAULT NULL,
  `idmateriaprima` int DEFAULT NULL,
  PRIMARY KEY (`idcerveza_materiaprima`),
  KEY `idcerveza` (`idcerveza`),
  KEY `idmateriaprima` (`idmateriaprima`),
  CONSTRAINT `cerveza_materiaprima_ibfk_1` FOREIGN KEY (`idcerveza`) REFERENCES `cerveza` (`idcerveza`),
  CONSTRAINT `cerveza_materiaprima_ibfk_2` FOREIGN KEY (`idmateriaprima`) REFERENCES `materiaprima` (`idmateriaprima`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cerveza_materiaprima`
--

LOCK TABLES `cerveza_materiaprima` WRITE;
/*!40000 ALTER TABLE `cerveza_materiaprima` DISABLE KEYS */;
INSERT INTO `cerveza_materiaprima` VALUES (1,'985','10',5,3),(2,'1586','15',1,5),(3,'5455','47',4,1),(4,'3258','25',6,2),(5,'653','49',2,4),(6,'3985','33',3,3);
/*!40000 ALTER TABLE `cerveza_materiaprima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiaprima`
--

DROP TABLE IF EXISTS `materiaprima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materiaprima` (
  `idmateriaprima` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `detalle` varchar(255) NOT NULL,
  PRIMARY KEY (`idmateriaprima`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiaprima`
--

LOCK TABLES `materiaprima` WRITE;
/*!40000 ALTER TABLE `materiaprima` DISABLE KEYS */;
INSERT INTO `materiaprima` VALUES (1,'Malta','Cereal'),(2,'Lupulo','Antivacterial'),(3,'Levadura','Hongo'),(4,'Agua','h2O'),(5,'Colorantes','SO2');
/*!40000 ALTER TABLE `materiaprima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo` (
  `idtipo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`idtipo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES (1,'Dark'),(2,'Pales'),(3,'Bocks'),(4,'Stouts'),(5,'Porters'),(6,'Belgians'),(7,'Sours');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_categoria`
--

DROP TABLE IF EXISTS `tipo_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_categoria` (
  `idtipo_categoria` int NOT NULL AUTO_INCREMENT,
  `idtipo` int DEFAULT NULL,
  `idcategoria` int DEFAULT NULL,
  PRIMARY KEY (`idtipo_categoria`),
  KEY `idtipo` (`idtipo`),
  KEY `idcategoria` (`idcategoria`),
  CONSTRAINT `tipo_categoria_ibfk_1` FOREIGN KEY (`idtipo`) REFERENCES `tipo` (`idtipo`),
  CONSTRAINT `tipo_categoria_ibfk_2` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_categoria`
--

LOCK TABLES `tipo_categoria` WRITE;
/*!40000 ALTER TABLE `tipo_categoria` DISABLE KEYS */;
INSERT INTO `tipo_categoria` VALUES (1,7,1),(2,4,1),(3,3,2),(4,7,1),(5,1,2),(6,2,2);
/*!40000 ALTER TABLE `tipo_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mi_cerveza'
--

--
-- Dumping routines for database 'mi_cerveza'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-30 21:26:07
