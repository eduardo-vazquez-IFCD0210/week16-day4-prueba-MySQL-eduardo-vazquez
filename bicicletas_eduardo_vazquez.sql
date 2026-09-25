CREATE DATABASE  IF NOT EXISTS `bicicletas_eduardo_vazquez` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bicicletas_eduardo_vazquez`;
-- MySQL dump 10.13  Distrib 8.0.46, for macos15 (arm64)
--
-- Host: localhost    Database: bicicletas_eduardo_vazquez
-- ------------------------------------------------------
-- Server version	26.7.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '3967ea7a-ac32-11f1-964c-81a8c6e93b6e:1-11';

--
-- Table structure for table `Bicicletas`
--

DROP TABLE IF EXISTS `Bicicletas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bicicletas` (
  `idBicicletas` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `material` varchar(45) DEFAULT NULL,
  `precioEuros` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idBicicletas`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bicicletas`
--

LOCK TABLES `Bicicletas` WRITE;
/*!40000 ALTER TABLE `Bicicletas` DISABLE KEYS */;
INSERT INTO `Bicicletas` VALUES (1,'Trek','Marlin 7','Aluminio',899.99),(2,'Orbea','Alma H30','Aluminio',1199.00),(3,'Specialized','Rockhopper','Aluminio',749.99),(4,'Cannondale','Trail 5','Aluminio',999.00),(5,'Scott','Scale 940','Carbono',1899.99),(6,'Giant','Talon 1','Aluminio',1099.00),(7,'BMC','Twostroke','Carbono',2499.00),(8,'Cube','Attention','Aluminio',849.50),(9,'Merida','Big Nine 500','Aluminio',1299.99),(10,'Canyon','Grand Canyon 7','Aluminio',1599.00),(11,'Santa Cruz','Chameleon','Aluminio',2199.00),(12,'BH','Expert 4.0','Carbono',1799.99),(13,'Focus','Raven 8.7','Carbono',2299.00),(14,'Giant','XTC Advanced','Carbono',2799.00),(15,'Orbea','Oiz H30','Aluminio',1999.00),(16,'Trek','Procaliber 9.5','Carbono',2499.99),(17,'Scott','Aspect 950','Aluminio',699.00),(18,'Cube','Reaction C62','Carbono',2099.00),(19,'Cannondale','Scalpel','Carbono',3299.00),(20,'Merida','Big Nine 300','Aluminio',949.00);
/*!40000 ALTER TABLE `Bicicletas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Clientes`
--

DROP TABLE IF EXISTS `Clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clientes` (
  `idClientes` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  PRIMARY KEY (`idClientes`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clientes`
--

LOCK TABLES `Clientes` WRITE;
/*!40000 ALTER TABLE `Clientes` DISABLE KEYS */;
INSERT INTO `Clientes` VALUES (1,'Ada','Lovelace','ada.lovelace@email.com','600100001'),(2,'Alan','Turing','alan.turing@email.com','600100002'),(3,'Grace','Hopper','grace.hopper@email.com','600100003'),(4,'Dennis','Ritchie','dennis.ritchie@email.com','600100004'),(5,'Ken','Thompson','ken.thompson@email.com','600100005'),(6,'Margaret','Hamilton','margaret.hamilton@email.com','600100006'),(7,'Tim','Berners-Lee','tim.bernerslee@email.com','600100007'),(8,'Donald','Knuth','donald.knuth@email.com','600100008'),(9,'Edsger','Dijkstra','edsger.dijkstra@email.com','600100009'),(10,'John','von Neumann','john.vonneumann@email.com','600100010'),(11,'Barbara','Liskov','barbara.liskov@email.com','600100011'),(12,'James','Gosling','james.gosling@email.com','600100012'),(13,'Bjarne','Stroustrup','bjarne.stroustrup@email.com','600100013'),(14,'Linus','Torvalds','linus.torvalds@email.com','600100014'),(15,'Guido','van Rossum','guido.vanrossum@email.com','600100015'),(16,'Brendan','Eich','brendan.eich@email.com','600100016'),(17,'James','McCarthy','james.mccarthy@email.com','600100017'),(18,'Niklaus','Wirth','niklaus.wirth@email.com','600100018'),(19,'Sophie','Wilson','sophie.wilson@email.com','600100019'),(20,'Vint','Cerf','vint.cerf@email.com','600100020');
/*!40000 ALTER TABLE `Clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Detalle_Pedido`
--

DROP TABLE IF EXISTS `Detalle_Pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Detalle_Pedido` (
  `idDetalle_Pedido` int NOT NULL AUTO_INCREMENT,
  `cantidad` int NOT NULL,
  `FK_idPedidos` int NOT NULL,
  `FK_idBicicletas` int NOT NULL,
  PRIMARY KEY (`idDetalle_Pedido`),
  KEY `fk_Detalle_Pedido_Pedidos1_idx` (`FK_idPedidos`),
  KEY `fk_Detalle_Pedido_Bicicletas1_idx` (`FK_idBicicletas`),
  CONSTRAINT `fk_Detalle_Pedido_Bicicletas1` FOREIGN KEY (`FK_idBicicletas`) REFERENCES `Bicicletas` (`idBicicletas`),
  CONSTRAINT `fk_Detalle_Pedido_Pedidos1` FOREIGN KEY (`FK_idPedidos`) REFERENCES `Pedidos` (`idPedidos`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Detalle_Pedido`
--

LOCK TABLES `Detalle_Pedido` WRITE;
/*!40000 ALTER TABLE `Detalle_Pedido` DISABLE KEYS */;
INSERT INTO `Detalle_Pedido` VALUES (1,2,1,2),(2,1,2,5),(3,3,3,1),(4,1,4,7),(5,2,5,10),(6,1,6,3),(7,2,7,9),(8,1,8,14),(9,1,9,6),(10,2,10,12),(11,1,11,19),(12,3,12,4),(13,1,13,16),(14,2,14,8),(15,1,15,11),(16,2,16,18),(17,1,17,20),(18,3,18,17),(19,1,19,13),(20,2,20,15);
/*!40000 ALTER TABLE `Detalle_Pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pedidos`
--

DROP TABLE IF EXISTS `Pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pedidos` (
  `idPedidos` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `FK_idClientes` int NOT NULL,
  PRIMARY KEY (`idPedidos`),
  KEY `fk_Pedidos_Clientes_idx` (`FK_idClientes`),
  CONSTRAINT `fk_Pedidos_Clientes` FOREIGN KEY (`FK_idClientes`) REFERENCES `Clientes` (`idClientes`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pedidos`
--

LOCK TABLES `Pedidos` WRITE;
/*!40000 ALTER TABLE `Pedidos` DISABLE KEYS */;
INSERT INTO `Pedidos` VALUES (1,'2026-09-01',1),(2,'2026-09-02',2),(3,'2026-09-03',3),(4,'2026-09-04',4),(5,'2026-09-05',5),(6,'2026-09-06',6),(7,'2026-09-07',7),(8,'2026-09-08',8),(9,'2026-09-09',9),(10,'2026-09-10',10),(11,'2026-09-11',11),(12,'2026-09-12',12),(13,'2026-09-13',13),(14,'2026-09-14',14),(15,'2026-09-15',15),(16,'2026-09-16',16),(17,'2026-09-17',17),(18,'2026-09-18',18),(19,'2026-09-19',19),(20,'2026-09-20',20);
/*!40000 ALTER TABLE `Pedidos` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-25 11:26:18

-- ============================================================================
-- 4. CONSULTAS SQL DE EVALUACIÓN
-- ============================================================================

-- 4.1- Muestra las bicicletas cuyo precio sea mayor de 1000 €.
SELECT * 
FROM Bicicletas 
WHERE precioEuros > 1000;

-- 4.2- Muestra las bicicletas ordenadas de mayor a menor precio.
SELECT * 
FROM Bicicletas 
ORDER BY precioEuros DESC;

-- 4.3- Busca los clientes cuyo nombre empiece por "A".
SELECT * 
FROM Clientes 
WHERE nombre LIKE 'A%';

-- 4.4- Muestra las bicicletas con precio entre 500 € y 1500 €.
SELECT * 
FROM Bicicletas 
WHERE precioEuros BETWEEN 500 AND 1500;

-- 4.5- ¿Cuántos clientes hay?
SELECT COUNT(*) AS total_clientes 
FROM Clientes;

-- 4.6- Muestra el nombre del cliente y la fecha de su pedido.
SELECT c.nombre, p.fecha
FROM Clientes c
JOIN Pedidos p ON c.idClientes = p.FK_idClientes;

-- 4.7- Muestra cliente, bicicleta comprada y fecha del pedido.
SELECT c.nombre AS cliente, b.modelo AS bicicleta, p.fecha
FROM Pedidos p
JOIN Clientes c ON p.FK_idClientes = c.idClientes
JOIN Detalle_Pedido dp ON p.idPedidos = dp.FK_idPedidos
JOIN Bicicletas b ON dp.FK_idBicicletas = b.idBicicletas;

-- 4.8- Muestra nombre del cliente, bicicleta y precio de las bicicletas compradas por clientes cuyo nombre empiece por "A"
SELECT c.nombre AS cliente, b.modelo AS bicicleta, b.precioEuros AS precio
FROM Pedidos p
JOIN Clientes c ON p.FK_idClientes = c.idClientes
JOIN Detalle_Pedido dp ON p.idPedidos = dp.FK_idPedidos
JOIN Bicicletas b ON dp.FK_idBicicletas = b.idBicicletas
WHERE c.nombre LIKE 'A%';
