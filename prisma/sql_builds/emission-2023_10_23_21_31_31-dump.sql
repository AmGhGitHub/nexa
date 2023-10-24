-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: emissionfactors
-- ------------------------------------------------------
-- Server version	8.0.19

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
INSERT INTO `_prisma_migrations` VALUES ('3e110017-9404-493a-913a-1739c2d94a76','205d7f024f1ab1e760838db2a88299f86be7057d6661d8e29c05e59657064529','2023-10-23 18:42:04.176','20231023184203_updated_stationary_combustion_models',NULL,NULL,'2023-10-23 18:42:03.918',1),('650d37e5-1b6b-4619-8016-51f2f5fca564','eafaa2c2fc26f8e1669d078ba165ca4fca9466cf36159989e149dd47288156a4','2023-10-23 18:45:14.997','20231023184514_optional_heat_content_value',NULL,NULL,'2023-10-23 18:45:14.885',1),('6e567e61-c2eb-410f-a304-c9f20ac829dd','dd01ab43a96c16c5ea6ddd88478dc5f4201596790279c092541e5a740e55b4aa','2023-10-23 17:35:35.771','20231023173535_changed_string_n_chars',NULL,NULL,'2023-10-23 17:35:35.725',1),('8475bb66-e32b-47dd-88fc-9b601c71b6f7','073c79d5b45c169e32c0130d28098412ccc53a6f030a66e185819169d83c9e5a','2023-10-23 18:44:18.299','20231023184418_optional_heat_content_unit',NULL,NULL,'2023-10-23 18:44:18.225',1),('bbd6c6ae-4d0c-46d4-b222-66deaa59c663','1b95c11197e783429a424df96cb83b6e7582c03516ac0dc591f982d0f99b64a5','2023-10-23 17:33:41.514','20231023173341_initial',NULL,NULL,'2023-10-23 17:33:41.414',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scope1_stationarycomsbution`
--

DROP TABLE IF EXISTS `scope1_stationarycomsbution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scope1_stationarycomsbution` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fuel_subtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `co2_emission_factor` double NOT NULL,
  `ch4_emission_factor` double NOT NULL,
  `n2o_emission_factor` double NOT NULL,
  `fuel_type_id` int NOT NULL,
  `heat_content_value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Scope1_StationaryComsbution_fuel_type_id_fkey` (`fuel_type_id`),
  CONSTRAINT `Scope1_StationaryComsbution_fuel_type_id_fkey` FOREIGN KEY (`fuel_type_id`) REFERENCES `scope1_stationarycomsbution_fueltype` (`fuel_type_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scope1_stationarycomsbution`
--

LOCK TABLES `scope1_stationarycomsbution` WRITE;
/*!40000 ALTER TABLE `scope1_stationarycomsbution` DISABLE KEYS */;
INSERT INTO `scope1_stationarycomsbution` VALUES (1,'Anthracite Coal',103.69,11,1.6,1,25.09),(2,'Bituminous Coal',93.28,11,1.6,1,24.93),(3,'Sub-bituminous Coal',97.17,11,1.6,1,17.25),(4,'Lignite Coal',97.72,11,1.6,1,14.21),(5,'Mixed (Commercial Sector)',94.27,11,1.6,1,21.39),(6,'Mixed (Electric Power Sector)',95.52,11,1.6,1,19.73),(7,'Mixed (Industrial Coking)',93.9,11,1.6,1,26.28),(8,'Mixed (Industrial Sector)',94.67,11,1.6,1,22.35),(9,'Coal Coke',113.67,11,1.6,1,24.8),(10,'Municipal Solid Waste',90.7,32,4.2,2,9.95),(11,'Petroleum Coke (Solid)',102.41,32,4.2,2,30),(12,'Plastics',75,32,4.2,2,38),(13,'Tires',85.97,32,4.2,2,28),(14,'Agricultural Byproducts',118.17,32,4.2,3,8.25),(15,'Peat',111.84,32,4.2,3,8),(16,'Solid Byproducts',105.51,32,4.2,3,10.39),(17,'Wood and Wood Residuals',93.8,7.2,3.6,3,17.48),(18,'Natural Gas',53.06,1,0.1,4,0.001026),(19,'Blast Furnace Gas',274.32,0.022,0.1,5,0.000092),(20,'Coke Oven Gas',46.85,0.48,0.1,5,0.000599),(21,'Fuel Gas',59,3,0.6,5,0.001388),(22,'Propane Gas',61.46,3,0.6,5,0.002516),(23,'Landfill Gas',52.07,3.2,0.63,6,0.000485),(24,'Other Biomass Gases',52.07,3.2,0.63,6,0.000655),(25,'Asphalt and Road Oil',75.36,3,0.6,7,0.158),(26,'Aviation Gasoline',69.25,3,0.6,7,0.12),(27,'Butane',64.77,3,0.6,7,0.103),(28,'Butylene',68.72,3,0.6,7,0.105),(29,'Crude Oil',74.54,3,0.6,7,0.138),(30,'Distillate Fuel Oil No. 1',73.25,3,0.6,7,0.139),(31,'Distillate Fuel Oil No. 2',73.96,3,0.6,7,0.138),(32,'Distillate Fuel Oil No. 4',75.04,3,0.6,7,0.146),(33,'Ethane',59.6,3,0.6,7,0.068),(34,'Ethylene',65.96,3,0.6,7,0.058),(35,'Heavy Gas Oils',74.92,3,0.6,7,0.148),(36,'Isobutane',64.94,3,0.6,7,0.099),(37,'Isobutylene',68.86,3,0.6,7,0.103),(38,'Kerosene',75.2,3,0.6,7,0.135),(39,'Kerosene-Type Jet Fuel',72.22,3,0.6,7,0.135),(40,'Liquefied Petroleum Gases (LPG)',61.71,3,0.6,7,0.092),(41,'Lubricants',74.27,3,0.6,7,0.144),(42,'Motor Gasoline',70.22,3,0.6,7,0.125),(43,'Naphtha (<401 deg F)',68.02,3,0.6,7,0.125),(44,'Natural Gasoline',66.88,3,0.6,7,0.11),(45,'Other Oil (>401 deg F)',76.22,3,0.6,7,0.139),(46,'Pentanes Plus',70.02,3,0.6,7,0.11),(47,'Petrochemical Feedstocks',71.02,3,0.6,7,0.125),(48,'Propane',62.87,3,0.6,7,0.091),(49,'Propylene',67.77,3,0.6,7,0.091),(50,'Residual Fuel Oil No. 5',72.93,3,0.6,7,0.14),(51,'Residual Fuel Oil No. 6',75.1,3,0.6,7,0.15),(52,'Special Naphtha',72.34,3,0.6,7,0.125),(53,'Unfinished Oils',74.54,3,0.6,7,0.139),(54,'Used Oil',74,3,0.6,7,0.138),(55,'Biodiesel (100%)',73.84,1.1,0.11,8,0.128),(56,'Ethanol (100%)',68.44,1.1,0.11,8,0.084),(57,'Rendered Animal Fat',71.06,1.1,0.11,8,0.125),(58,'Vegetable Oil',81.55,1.1,0.11,8,0.12),(59,'North American Softwood',94.4,1.9,0.42,9,NULL),(60,'North American Hardwood',93.7,1.9,0.42,9,NULL),(61,'Bagasse',95.5,1.9,0.42,9,NULL),(62,'Bamboo',93.7,1.9,0.42,9,NULL),(63,'Straw',95.1,1.9,0.42,9,NULL);
/*!40000 ALTER TABLE `scope1_stationarycomsbution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scope1_stationarycomsbution_fueltype`
--

DROP TABLE IF EXISTS `scope1_stationarycomsbution_fueltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scope1_stationarycomsbution_fueltype` (
  `fuel_type_id` int NOT NULL,
  `fuel_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heat_content_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `co2_emission_unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ch4_emission_unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `n2o_emission_unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`fuel_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scope1_stationarycomsbution_fueltype`
--

LOCK TABLES `scope1_stationarycomsbution_fueltype` WRITE;
/*!40000 ALTER TABLE `scope1_stationarycomsbution_fueltype` DISABLE KEYS */;
INSERT INTO `scope1_stationarycomsbution_fueltype` VALUES (1,'Coal and Coke','mmBtu/short ton','kgCO2/mmBtu','grCH4/mmBtu','grN2O/mmBtu'),(2,'Other Fuels - Solid','mmBtu/short ton','kgCO2/mmBtu','grCH4/mmBtu','grN2O/mmBtu'),(3,'Biomass Fuels - Solid','mmBtu/short ton','kgCO2/mmBtu','grCH4/mmBtu','grN2O/mmBtu'),(4,'Natural Gas (N.G.)','mmBtu/scf','kgCO2/mmBtu','grCH4/mmBtu','grN2O/mmBtu'),(5,'Other Fuels - Gaseous','mmBtu/scf','kgCO2/mmBtu','grCH4/mmBtu','grN2O/mmBtu'),(6,'Biomass Fuels - Gaseous','mmBtu/scf','kgCO2/mmBtu','grCH4/mmBtu','grN2O/mmBtu'),(7,'Petroleum Products','mmBtu/gallon','kgCO2/mmBtu','grCH4/mmBtu','grN2O/mmBtu'),(8,'Biomass Fuels - Liquid','mmBtu/gallon','kgCO2/mmBtu','grCH4/mmBtu','grN2O/mmBtu'),(9,'Biomass Fuels - Kraft Pulping Liquor',NULL,'kgCO2/mmBtu','grCH4/mmBtu','grN2O/mmBtu');
/*!40000 ALTER TABLE `scope1_stationarycomsbution_fueltype` ENABLE KEYS */;
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

-- Dump completed on 2023-10-23 21:31:32
