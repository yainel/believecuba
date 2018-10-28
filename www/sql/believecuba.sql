CREATE DATABASE  IF NOT EXISTS `believecuba` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `believecuba`;
-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: believecuba
-- ------------------------------------------------------
-- Server version	5.7.23

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

--
-- Table structure for table `seguridad_grupo`
--

DROP TABLE IF EXISTS `seguridad_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguridad_grupo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_599A728B5E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguridad_grupo`
--

LOCK TABLES `seguridad_grupo` WRITE;
/*!40000 ALTER TABLE `seguridad_grupo` DISABLE KEYS */;
INSERT INTO `seguridad_grupo` VALUES (8,'Administrador','a:8:{i:0;s:15:\"MODULO_PERSONAL\";i:1;s:24:\"MODULO_CONTROL_PRESENCIA\";i:2;s:14:\"MODULO_CUADROS\";i:3;s:27:\"MODULO_SEGURIDAD_INDUSTRIAL\";i:4;s:22:\"MODULO_ATENCION_HOMBRE\";i:5;s:19:\"MODULO_SISTEMA_PAGO\";i:6;s:21:\"MODULO_EVAL_DESEMPENO\";i:7;s:14:\"MODULO_SISTEMA\";}','Todos los módulos del sistema.'),(9,'Personal','a:2:{i:0;s:15:\"MODULO_PERSONAL\";i:1;s:19:\"MODULO_SISTEMA_PAGO\";}','Control de Personal y Salarios.');
/*!40000 ALTER TABLE `seguridad_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguridad_grupo_usuario`
--

DROP TABLE IF EXISTS `seguridad_grupo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguridad_grupo_usuario` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `IDX_AA759131A76ED395` (`user_id`),
  KEY `IDX_AA759131FE54D947` (`group_id`),
  CONSTRAINT `FK_AA759131A76ED395` FOREIGN KEY (`user_id`) REFERENCES `seguridad_usuario` (`id`),
  CONSTRAINT `FK_AA759131FE54D947` FOREIGN KEY (`group_id`) REFERENCES `seguridad_grupo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguridad_grupo_usuario`
--

LOCK TABLES `seguridad_grupo_usuario` WRITE;
/*!40000 ALTER TABLE `seguridad_grupo_usuario` DISABLE KEYS */;
INSERT INTO `seguridad_grupo_usuario` VALUES (2,8),(2,9),(3,8),(3,9),(5,9),(7,8),(7,9);
/*!40000 ALTER TABLE `seguridad_grupo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguridad_usuario`
--

DROP TABLE IF EXISTS `seguridad_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguridad_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `nombre_completo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `carne_identidad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_89D1E84992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_89D1E849A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_89D1E849C05FB297` (`confirmation_token`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguridad_usuario`
--

LOCK TABLES `seguridad_usuario` WRITE;
/*!40000 ALTER TABLE `seguridad_usuario` DISABLE KEYS */;
INSERT INTO `seguridad_usuario` VALUES (2,'nane','nane','yainel@atiss.une.cu','yainel@atiss.une.cu',1,NULL,'$2y$13$kz8XlXgqgR65MNj63AqVY.ioIUdrn14z39SmS0vpUiqJhTFHQOVqy','2018-08-04 22:00:23',NULL,NULL,'a:0:{}','Yainel García Alfonso','86052315807'),(3,'pepe','pepe','pepe@atiss.une.cu','pepe@atiss.une.cu',1,NULL,'$2y$13$fOWbSTg.urdr8.JD5//rquR.Qlsjcz5wyem77BL14U7jmpYuoLJMm','2018-06-04 14:20:34',NULL,NULL,'a:0:{}','Pepe González','175698214592'),(4,'nemecio','nemecio','nemecio@atiss.une.cu','nemecio@atiss.une.cu',1,NULL,'$2y$13$GZP8QXC9tMHBZmNGq1Gbke4vj8JyEwKPQX1PAyZ5pm2YFFjZ9CcJO',NULL,NULL,NULL,'a:0:{}','Nemecio capote','56842398561'),(5,'elpidio','elpidio','palmiche@atiss.une.cu','palmiche@atiss.une.cu',0,NULL,'$2y$13$d0UU7NFk40bCGOHQiaAgWufnRrpFHk.1VoaizKF.j6WhXrlVQmn2C',NULL,NULL,NULL,'a:0:{}','Elpidio Valdés','54873129566'),(7,'believecuba','believecuba','believecuba@facebook.com','believecuba@facebook.com',1,NULL,'$2y$13$.6uiAeF9l1.7bQ4aU.wREO3I73bE.ykjjVq5OMiH7sQBSoKf4BMg.','2018-08-06 03:12:11',NULL,NULL,'a:0:{}','believecuba','00000000000');
/*!40000 ALTER TABLE `seguridad_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-05 23:39:37
