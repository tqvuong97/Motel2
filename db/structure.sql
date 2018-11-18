
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
DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `idArea` int(11) NOT NULL AUTO_INCREMENT,
  `nameArea` varchar(255) NOT NULL,
  `floor` int(11) NOT NULL,
  PRIMARY KEY (`idArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devices` (
  `idDevice` int(11) NOT NULL AUTO_INCREMENT,
  `nameDevice` varchar(255) NOT NULL,
  `branchDevice` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `statusDevice` varchar(255) NOT NULL,
  `dayPurchase` date NOT NULL,
  `costDevice` int(11) NOT NULL,
  `idRoom` int(11) NOT NULL,
  PRIMARY KEY (`idDevice`),
  KEY `devices_rooms` (`idRoom`),
  CONSTRAINT `devices_rooms` FOREIGN KEY (`idRoom`) REFERENCES `rooms` (`idRoom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guests` (
  `idGuest` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) NOT NULL,
  `idCard` int(11) NOT NULL,
  `sex` char(10) NOT NULL,
  `job` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phoneNumber` char(20) NOT NULL,
  `image` varchar(255) NOT NULL,
  `statusGuest` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `idRoom` int(11) NOT NULL,
  PRIMARY KEY (`idGuest`),
  KEY `guests_rooms` (`idRoom`),
  CONSTRAINT `guests_rooms` FOREIGN KEY (`idRoom`) REFERENCES `rooms` (`idRoom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `paymentmanagements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paymentmanagements` (
  `idPM` int(11) NOT NULL AUTO_INCREMENT,
  `dayPM` date NOT NULL,
  `idGuest` int(11) NOT NULL,
  `idService` int(11) NOT NULL,
  `idRoom` int(11) NOT NULL,
  `electricity` int(11) NOT NULL,
  `internet` int(11) NOT NULL,
  `water` int(11) NOT NULL,
  `roomPrice` int(11) NOT NULL,
  `debt` int(11) NOT NULL,
  PRIMARY KEY (`idPM`),
  KEY `paymentmanagements_guests` (`idGuest`),
  KEY `paymentmanagements_rooms` (`idRoom`),
  KEY `paymentmanagements_services` (`idService`),
  CONSTRAINT `paymentmanagements_guests` FOREIGN KEY (`idGuest`) REFERENCES `guests` (`idGuest`),
  CONSTRAINT `paymentmanagements_rooms` FOREIGN KEY (`idRoom`) REFERENCES `rooms` (`idRoom`),
  CONSTRAINT `paymentmanagements_services` FOREIGN KEY (`idService`) REFERENCES `services` (`idService`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `pricelists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pricelists` (
  `idPL` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) NOT NULL,
  `idArea` int(11) NOT NULL,
  PRIMARY KEY (`idPL`),
  KEY `pricelists_areas` (`idArea`),
  CONSTRAINT `pricelists_areas` FOREIGN KEY (`idArea`) REFERENCES `areas` (`idArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `roomcheckouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roomcheckouts` (
  `idRco` int(11) NOT NULL AUTO_INCREMENT,
  `dayRco` date NOT NULL,
  `note` text NOT NULL,
  `idGuest` int(11) NOT NULL,
  PRIMARY KEY (`idRco`),
  KEY `roomcheckouts_guests` (`idGuest`),
  CONSTRAINT `roomcheckouts_guests` FOREIGN KEY (`idGuest`) REFERENCES `guests` (`idGuest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `roomrentalmanagers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roomrentalmanagers` (
  `idRRM` int(11) NOT NULL AUTO_INCREMENT,
  `dayRent` date NOT NULL,
  `statusRent` varchar(255) NOT NULL,
  `deposit` int(11) NOT NULL,
  `idGuest` int(11) NOT NULL,
  PRIMARY KEY (`idRRM`),
  KEY `roomrentalmanagers_guests` (`idGuest`),
  CONSTRAINT `roomrentalmanagers_guests` FOREIGN KEY (`idGuest`) REFERENCES `guests` (`idGuest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `idRoom` int(11) NOT NULL AUTO_INCREMENT,
  `nameRoom` varchar(255) NOT NULL,
  `maxSlot` int(11) NOT NULL,
  `statusRoom` varchar(255) NOT NULL,
  `numOfPeople` int(11) NOT NULL,
  `idArea` int(11) NOT NULL,
  PRIMARY KEY (`idRoom`),
  KEY `rooms_areas` (`idArea`),
  CONSTRAINT `rooms_areas` FOREIGN KEY (`idArea`) REFERENCES `areas` (`idArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `idService` int(11) NOT NULL AUTO_INCREMENT,
  `nameService` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `unitPrice` int(11) NOT NULL,
  PRIMARY KEY (`idService`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `unlock_token` varchar(255) DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

INSERT INTO `schema_migrations` (version) VALUES
('20181002143513'),
('20181002150530');


