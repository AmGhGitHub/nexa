-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: emissionfactors
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('2402d0cd-fa13-45f6-b875-f6cfcc918e54','4df37e0fc533977bbedca12fc332753c51cd422203acc942e75f503f99ec8cf8','2023-10-25 03:18:18.093','20231025031817_removed_optional_columns',NULL,NULL,'2023-10-25 03:18:17.915',1),('53e4303c-db61-4bce-b044-3b42b58010ef','16bc5fa34433519d6522bdd33ae200a674badd8beb37271902c0edec1179fa67','2023-10-25 02:29:54.709','20231025022954_init',NULL,NULL,'2023-10-25 02:29:54.451',1),('55053d4e-5b01-4ae8-90aa-a626f5222f6c','f376b4f3d87b6fd5aa63f3353b3cadd2e3b174c5059b20183c052b4cb13359c8','2023-10-25 02:44:18.593','20231025024418_updated_names_for_emis_factors',NULL,NULL,'2023-10-25 02:44:18.546',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combus_fuel`
--

DROP TABLE IF EXISTS `combus_fuel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `combus_fuel` (
  `fuelTypeId` int NOT NULL,
  `fuelType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fuelSubtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`fuelTypeId`),
  UNIQUE KEY `Combus_Fuel_fuelType_fuelSubtype_key` (`fuelType`,`fuelSubtype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combus_fuel`
--

LOCK TABLES `combus_fuel` WRITE;
/*!40000 ALTER TABLE `combus_fuel` DISABLE KEYS */;
INSERT INTO `combus_fuel` VALUES (23,'Biomass Fuels - Gaseous','Landfill Gas'),(24,'Biomass Fuels - Gaseous','Other Biomass Gases'),(61,'Biomass Fuels - Kraft Pulping Liquor','Bagasse'),(62,'Biomass Fuels - Kraft Pulping Liquor','Bamboo'),(60,'Biomass Fuels - Kraft Pulping Liquor','North American Hardwood'),(59,'Biomass Fuels - Kraft Pulping Liquor','North American Softwood'),(63,'Biomass Fuels - Kraft Pulping Liquor','Straw'),(55,'Biomass Fuels - Liquid','Biodiesel (100%)'),(56,'Biomass Fuels - Liquid','Ethanol (100%)'),(57,'Biomass Fuels - Liquid','Rendered Animal Fat'),(58,'Biomass Fuels - Liquid','Vegetable Oil'),(14,'Biomass Fuels - Solid','Agricultural Byproducts'),(15,'Biomass Fuels - Solid','Peat'),(16,'Biomass Fuels - Solid','Solid Byproducts'),(17,'Biomass Fuels - Solid','Wood and Wood Residuals'),(1,'Coal and Coke','Anthracite Coal'),(2,'Coal and Coke','Bituminous Coal'),(9,'Coal and Coke','Coal Coke'),(4,'Coal and Coke','Lignite Coal'),(5,'Coal and Coke','Mixed (Commercial Sector)'),(6,'Coal and Coke','Mixed (Electric Power Sector)'),(7,'Coal and Coke','Mixed (Industrial Coking)'),(8,'Coal and Coke','Mixed (Industrial Sector)'),(3,'Coal and Coke','Sub-bituminous Coal'),(18,'Natural Gas (N.G.)','Natural Gas'),(19,'Other Fuels - Gaseous','Blast Furnace Gas'),(20,'Other Fuels - Gaseous','Coke Oven Gas'),(21,'Other Fuels - Gaseous','Fuel Gas'),(22,'Other Fuels - Gaseous','Propane Gas'),(10,'Other Fuels - Solid','Municipal Solid Waste'),(11,'Other Fuels - Solid','Petroleum Coke (Solid)'),(12,'Other Fuels - Solid','Plastics'),(13,'Other Fuels - Solid','Tires'),(25,'Petroleum Products','Asphalt and Road Oil'),(26,'Petroleum Products','Aviation Gasoline'),(27,'Petroleum Products','Butane'),(28,'Petroleum Products','Butylene'),(29,'Petroleum Products','Crude Oil'),(30,'Petroleum Products','Distillate Fuel Oil No. 1'),(31,'Petroleum Products','Distillate Fuel Oil No. 2'),(32,'Petroleum Products','Distillate Fuel Oil No. 4'),(33,'Petroleum Products','Ethane'),(34,'Petroleum Products','Ethylene'),(35,'Petroleum Products','Heavy Gas Oils'),(36,'Petroleum Products','Isobutane'),(37,'Petroleum Products','Isobutylene'),(38,'Petroleum Products','Kerosene'),(39,'Petroleum Products','Kerosene-Type Jet Fuel'),(40,'Petroleum Products','Liquefied Petroleum Gases (LPG)'),(41,'Petroleum Products','Lubricants'),(42,'Petroleum Products','Motor Gasoline'),(43,'Petroleum Products','Naphtha (<401 deg F)'),(44,'Petroleum Products','Natural Gasoline'),(45,'Petroleum Products','Other Oil (>401 deg F)'),(46,'Petroleum Products','Pentanes Plus'),(47,'Petroleum Products','Petrochemical Feedstocks'),(48,'Petroleum Products','Propane'),(49,'Petroleum Products','Propylene'),(50,'Petroleum Products','Residual Fuel Oil No. 5'),(51,'Petroleum Products','Residual Fuel Oil No. 6'),(52,'Petroleum Products','Special Naphtha'),(53,'Petroleum Products','Unfinished Oils'),(54,'Petroleum Products','Used Oil');
/*!40000 ALTER TABLE `combus_fuel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_combus_emis`
--

DROP TABLE IF EXISTS `st_combus_emis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_combus_emis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fuelTypeId` int NOT NULL,
  `emissionBase` enum('HEAT_CONTENT','QUANTITY') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ch4EmisFct` double NOT NULL,
  `ch4EmisFctUnitId` int NOT NULL,
  `n2oEmisFct` double NOT NULL,
  `n2oEmisFctUnitId` int NOT NULL,
  `co2EmisFct` double NOT NULL,
  `co2EmisFctUnitId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `St_Combus_Emis_fuelTypeId_fkey` (`fuelTypeId`),
  KEY `St_Combus_Emis_co2EmisFctUnitId_fkey` (`co2EmisFctUnitId`),
  KEY `St_Combus_Emis_ch4EmisFctUnitId_fkey` (`ch4EmisFctUnitId`),
  KEY `St_Combus_Emis_n2oEmisFctUnitId_fkey` (`n2oEmisFctUnitId`),
  CONSTRAINT `St_Combus_Emis_ch4EmisFctUnitId_fkey` FOREIGN KEY (`ch4EmisFctUnitId`) REFERENCES `unit` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `St_Combus_Emis_co2EmisFctUnitId_fkey` FOREIGN KEY (`co2EmisFctUnitId`) REFERENCES `unit` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `St_Combus_Emis_fuelTypeId_fkey` FOREIGN KEY (`fuelTypeId`) REFERENCES `combus_fuel` (`fuelTypeId`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `St_Combus_Emis_n2oEmisFctUnitId_fkey` FOREIGN KEY (`n2oEmisFctUnitId`) REFERENCES `unit` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_combus_emis`
--

LOCK TABLES `st_combus_emis` WRITE;
/*!40000 ALTER TABLE `st_combus_emis` DISABLE KEYS */;
INSERT INTO `st_combus_emis` VALUES (1,1,'HEAT_CONTENT',11,5,1.6,6,103.69,4),(2,2,'HEAT_CONTENT',11,5,1.6,6,93.28,4),(3,3,'HEAT_CONTENT',11,5,1.6,6,97.17,4),(4,4,'HEAT_CONTENT',11,5,1.6,6,97.72,4),(5,5,'HEAT_CONTENT',11,5,1.6,6,94.27,4),(6,6,'HEAT_CONTENT',11,5,1.6,6,95.52,4),(7,7,'HEAT_CONTENT',11,5,1.6,6,93.9,4),(8,8,'HEAT_CONTENT',11,5,1.6,6,94.67,4),(9,9,'HEAT_CONTENT',11,5,1.6,6,113.67,4),(10,10,'HEAT_CONTENT',32,5,4.2,6,90.7,4),(11,11,'HEAT_CONTENT',32,5,4.2,6,102.41,4),(12,12,'HEAT_CONTENT',32,5,4.2,6,75,4),(13,13,'HEAT_CONTENT',32,5,4.2,6,85.97,4),(14,14,'HEAT_CONTENT',32,5,4.2,6,118.17,4),(15,15,'HEAT_CONTENT',32,5,4.2,6,111.84,4),(16,16,'HEAT_CONTENT',32,5,4.2,6,105.51,4),(17,17,'HEAT_CONTENT',7.2,5,3.6,6,93.8,4),(18,18,'HEAT_CONTENT',1,5,0.1,6,53.06,4),(19,19,'HEAT_CONTENT',0.022,5,0.1,6,274.32,4),(20,20,'HEAT_CONTENT',0.48,5,0.1,6,46.85,4),(21,21,'HEAT_CONTENT',3,5,0.6,6,59,4),(22,22,'HEAT_CONTENT',3,5,0.6,6,61.46,4),(23,23,'HEAT_CONTENT',3.2,5,0.63,6,52.07,4),(24,24,'HEAT_CONTENT',3.2,5,0.63,6,52.07,4),(25,25,'HEAT_CONTENT',3,5,0.6,6,75.36,4),(26,26,'HEAT_CONTENT',3,5,0.6,6,69.25,4),(27,27,'HEAT_CONTENT',3,5,0.6,6,64.77,4),(28,28,'HEAT_CONTENT',3,5,0.6,6,68.72,4),(29,29,'HEAT_CONTENT',3,5,0.6,6,74.54,4),(30,30,'HEAT_CONTENT',3,5,0.6,6,73.25,4),(31,31,'HEAT_CONTENT',3,5,0.6,6,73.96,4),(32,32,'HEAT_CONTENT',3,5,0.6,6,75.04,4),(33,33,'HEAT_CONTENT',3,5,0.6,6,59.6,4),(34,34,'HEAT_CONTENT',3,5,0.6,6,65.96,4),(35,35,'HEAT_CONTENT',3,5,0.6,6,74.92,4),(36,36,'HEAT_CONTENT',3,5,0.6,6,64.94,4),(37,37,'HEAT_CONTENT',3,5,0.6,6,68.86,4),(38,38,'HEAT_CONTENT',3,5,0.6,6,75.2,4),(39,39,'HEAT_CONTENT',3,5,0.6,6,72.22,4),(40,40,'HEAT_CONTENT',3,5,0.6,6,61.71,4),(41,41,'HEAT_CONTENT',3,5,0.6,6,74.27,4),(42,42,'HEAT_CONTENT',3,5,0.6,6,70.22,4),(43,43,'HEAT_CONTENT',3,5,0.6,6,68.02,4),(44,44,'HEAT_CONTENT',3,5,0.6,6,66.88,4),(45,45,'HEAT_CONTENT',3,5,0.6,6,76.22,4),(46,46,'HEAT_CONTENT',3,5,0.6,6,70.02,4),(47,47,'HEAT_CONTENT',3,5,0.6,6,71.02,4),(48,48,'HEAT_CONTENT',3,5,0.6,6,62.87,4),(49,49,'HEAT_CONTENT',3,5,0.6,6,67.77,4),(50,50,'HEAT_CONTENT',3,5,0.6,6,72.93,4),(51,51,'HEAT_CONTENT',3,5,0.6,6,75.1,4),(52,52,'HEAT_CONTENT',3,5,0.6,6,72.34,4),(53,53,'HEAT_CONTENT',3,5,0.6,6,74.54,4),(54,54,'HEAT_CONTENT',3,5,0.6,6,74,4),(55,55,'HEAT_CONTENT',1.1,5,0.11,6,73.84,4),(56,56,'HEAT_CONTENT',1.1,5,0.11,6,68.44,4),(57,57,'HEAT_CONTENT',1.1,5,0.11,6,71.06,4),(58,58,'HEAT_CONTENT',1.1,5,0.11,6,81.55,4),(59,59,'HEAT_CONTENT',1.9,5,0.42,6,94.4,4),(60,60,'HEAT_CONTENT',1.9,5,0.42,6,93.7,4),(61,61,'HEAT_CONTENT',1.9,5,0.42,6,95.5,4),(62,62,'HEAT_CONTENT',1.9,5,0.42,6,93.7,4),(63,63,'HEAT_CONTENT',1.9,5,0.42,6,95.1,4),(64,1,'QUANTITY',276,8,40,9,2602,7),(65,2,'QUANTITY',274,8,40,9,2325,7),(66,3,'QUANTITY',190,8,28,9,1676,7),(67,4,'QUANTITY',156,8,23,9,1389,7),(68,5,'QUANTITY',235,8,34,9,2016,7),(69,6,'QUANTITY',217,8,32,9,1885,7),(70,7,'QUANTITY',289,8,42,9,2468,7),(71,8,'QUANTITY',246,8,36,9,2116,7),(72,9,'QUANTITY',273,8,40,9,2819,7),(73,10,'QUANTITY',318,8,42,9,902,7),(74,11,'QUANTITY',960,8,126,9,3072,7),(75,12,'QUANTITY',1216,8,160,9,2850,7),(76,13,'QUANTITY',896,8,118,9,2407,7),(77,14,'QUANTITY',264,8,35,9,975,7),(78,15,'QUANTITY',256,8,34,9,895,7),(79,16,'QUANTITY',332,8,44,9,1096,7),(80,17,'QUANTITY',126,8,63,9,1640,7),(81,18,'QUANTITY',0.00103,11,0.0001,12,0.05444,10),(82,19,'QUANTITY',0.000002,11,0.000009,12,0.02524,10),(83,20,'QUANTITY',0.000288,11,0.00006,12,0.02806,10),(84,21,'QUANTITY',0.004164,11,0.000833,12,0.08189,10),(85,22,'QUANTITY',0.007548,11,0.00151,12,0.15463,10),(86,23,'QUANTITY',0.001552,11,0.000306,12,0.025254,10),(87,24,'QUANTITY',0.002096,11,0.000413,12,0.034106,10),(88,25,'QUANTITY',0.47,14,0.09,15,11.91,13),(89,26,'QUANTITY',0.36,14,0.07,15,8.31,13),(90,27,'QUANTITY',0.31,14,0.06,15,6.67,13),(91,28,'QUANTITY',0.32,14,0.06,15,7.22,13),(92,29,'QUANTITY',0.41,14,0.08,15,10.29,13),(93,30,'QUANTITY',0.42,14,0.08,15,10.18,13),(94,31,'QUANTITY',0.41,14,0.08,15,10.21,13),(95,32,'QUANTITY',0.44,14,0.09,15,10.96,13),(96,33,'QUANTITY',0.2,14,0.04,15,4.05,13),(97,34,'QUANTITY',0.17,14,0.03,15,3.83,13),(98,35,'QUANTITY',0.44,14,0.09,15,11.09,13),(99,36,'QUANTITY',0.3,14,0.06,15,6.43,13),(100,37,'QUANTITY',0.31,14,0.06,15,7.09,13),(101,38,'QUANTITY',0.41,14,0.08,15,10.15,13),(102,39,'QUANTITY',0.41,14,0.08,15,9.75,13),(103,40,'QUANTITY',0.28,14,0.06,15,5.68,13),(104,41,'QUANTITY',0.43,14,0.09,15,10.69,13),(105,42,'QUANTITY',0.38,14,0.08,15,8.78,13),(106,43,'QUANTITY',0.38,14,0.08,15,8.5,13),(107,44,'QUANTITY',0.33,14,0.07,15,7.36,13),(108,45,'QUANTITY',0.42,14,0.08,15,10.59,13),(109,46,'QUANTITY',0.33,14,0.07,15,7.7,13),(110,47,'QUANTITY',0.38,14,0.08,15,8.88,13),(111,48,'QUANTITY',0.27,14,0.05,15,5.72,13),(112,49,'QUANTITY',0.27,14,0.05,15,6.17,13),(113,50,'QUANTITY',0.42,14,0.08,15,10.21,13),(114,51,'QUANTITY',0.45,14,0.09,15,11.27,13),(115,52,'QUANTITY',0.38,14,0.08,15,9.04,13),(116,53,'QUANTITY',0.42,14,0.08,15,10.36,13),(117,54,'QUANTITY',0.41,14,0.08,15,10.21,13),(118,55,'QUANTITY',0.14,14,0.01,15,9.45,13),(119,56,'QUANTITY',0.09,14,0.01,15,5.75,13),(120,57,'QUANTITY',0.14,14,0.01,15,8.88,13),(121,58,'QUANTITY',0.13,14,0.01,15,9.79,13);
/*!40000 ALTER TABLE `st_combus_emis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_combus_heatcont`
--

DROP TABLE IF EXISTS `st_combus_heatcont`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_combus_heatcont` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fuelTypeId` int NOT NULL,
  `heatContentValue` double NOT NULL,
  `heatContentUnitId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `St_Combus_HeatCont_fuelTypeId_fkey` (`fuelTypeId`),
  KEY `St_Combus_HeatCont_heatContentUnitId_fkey` (`heatContentUnitId`),
  CONSTRAINT `St_Combus_HeatCont_fuelTypeId_fkey` FOREIGN KEY (`fuelTypeId`) REFERENCES `combus_fuel` (`fuelTypeId`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `St_Combus_HeatCont_heatContentUnitId_fkey` FOREIGN KEY (`heatContentUnitId`) REFERENCES `unit` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_combus_heatcont`
--

LOCK TABLES `st_combus_heatcont` WRITE;
/*!40000 ALTER TABLE `st_combus_heatcont` DISABLE KEYS */;
INSERT INTO `st_combus_heatcont` VALUES (1,1,25.09,1),(2,2,24.93,1),(3,3,17.25,1),(4,4,14.21,1),(5,5,21.39,1),(6,6,19.73,1),(7,7,26.28,1),(8,8,22.35,1),(9,9,24.8,1),(10,10,9.95,1),(11,11,30,1),(12,12,38,1),(13,13,28,1),(14,14,8.25,1),(15,15,8,1),(16,16,10.39,1),(17,17,17.48,1),(18,18,0.001026,2),(19,19,0.000092,2),(20,20,0.000599,2),(21,21,0.001388,2),(22,22,0.002516,2),(23,23,0.000485,2),(24,24,0.000655,2),(25,25,0.158,3),(26,26,0.12,3),(27,27,0.103,3),(28,28,0.105,3),(29,29,0.138,3),(30,30,0.139,3),(31,31,0.138,3),(32,32,0.146,3),(33,33,0.068,3),(34,34,0.058,3),(35,35,0.148,3),(36,36,0.099,3),(37,37,0.103,3),(38,38,0.135,3),(39,39,0.135,3),(40,40,0.092,3),(41,41,0.144,3),(42,42,0.125,3),(43,43,0.125,3),(44,44,0.11,3),(45,45,0.139,3),(46,46,0.11,3),(47,47,0.125,3),(48,48,0.091,3),(49,49,0.091,3),(50,50,0.14,3),(51,51,0.15,3),(52,52,0.125,3),(53,53,0.139,3),(54,54,0.138,3),(55,55,0.128,3),(56,56,0.084,3),(57,57,0.125,3),(58,58,0.12,3);
/*!40000 ALTER TABLE `st_combus_heatcont` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit` (
  `id` int NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` VALUES (1,'mmBut/short-ton'),(2,'mmBtu/scf'),(3,'mmBtu/gallon'),(4,'kgCO2/mmBtu'),(5,'grCH4/mmBtu'),(6,'grN2O/mmBtu'),(7,'kgCO2/short-ton'),(8,'grCH4/short-ton'),(9,'grN2O/short-ton'),(10,'kgCO2/scf'),(11,'grCH4/scf'),(12,'grN2O/scf'),(13,'kgCO2/gallon'),(14,'grCH4/gallon'),(15,'grN2O/gallon');
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'emissionfactors'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-24 22:21:13
