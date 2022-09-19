-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: disys
-- ------------------------------------------------------
-- Server version	8.0.27

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

CREATE SCHEMA IF NOT EXISTS `disys` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `disys`.`cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disys`.`cliente` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `disys`.`cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `disys`.`cliente` VALUES (1,'Eleandro Pereira da Silva'),(2,'LASERCHIP'),(3,'DISYS'),(4,'Andréa'),(5,'João'),(6,'Pedro');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `disys`.`pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disys`.`pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `idcliente` bigint NOT NULL,
  `valorpedido` decimal(10,2) NOT NULL,
  `dataemissao` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedido_FK` (`idcliente`),
  CONSTRAINT `pedido_FK` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `disys`.`pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (7,2,3800.00,'2022-08-10'),(8,3,4500.00,'2022-08-12'),(9,2,8300.00,'2022-08-12');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `disys`.`produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disys`.`produto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `valorvenda` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `produto_un` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `disys`.`produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `disys`.`produto` VALUES (1,'Teste',2250.00),(2,'Televisor',1900.00),(3,'Monitor',500.00);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `pedidoitens`
--

DROP TABLE IF EXISTS `disys`.`pedidoitens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disys`.`pedidoitens` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `idpedido` bigint NOT NULL,
  `idproduto` bigint NOT NULL,
  `valorunitario` decimal(10,2) NOT NULL,
  `quantidade` decimal(10,2) NOT NULL,
  `valorprodutos` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidoitens_FK` (`idpedido`),
  KEY `pedidoitens_FK_1` (`idproduto`),
  CONSTRAINT `pedidoitens_FK` FOREIGN KEY (`idpedido`) REFERENCES `pedido` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pedidoitens_FK_1` FOREIGN KEY (`idproduto`) REFERENCES `produto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidoitens`
--

LOCK TABLES `disys`.`pedidoitens` WRITE;
/*!40000 ALTER TABLE `pedidoitens` DISABLE KEYS */;
INSERT INTO `disys`.`pedidoitens` VALUES (7,7,2,1900.00,2.00,3800.00),(10,8,1,2250.00,2.00,4500.00),(11,9,2,1900.00,2.00,3800.00),(12,9,1,2250.00,2.00,4500.00);
/*!40000 ALTER TABLE `pedidoitens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'disys'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-12 12:16:53
