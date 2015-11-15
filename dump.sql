-- MySQL dump 10.13  Distrib 5.7.9, for Linux (x86_64)
--
-- Host: localhost    Database: sahara_cms
-- ------------------------------------------------------
-- Server version       5.7.9

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
-- Current Database: `sahara_cms`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sahara_cms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sahara_cms`;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'admin','admin@ho.ge','admin','admin',NULL,'2015-11-15 07:49:21','2015-11-15 07:49:21'),(2,'hoge1','hoge1@ho.ge','hoge1','user',NULL,'2015-11-15 07:49:21','2015-11-15 07:49:21'),(3,'hoge2','hoge2@ho.ge','hoge2','user',NULL,'2015-11-15 07:49:21','2015-11-15 07:49:21'),(4,'hoge3','hoge3@ho.ge','hoge3','user',NULL,'2015-11-15 07:49:21','2015-11-15 07:49:21'),(5,'hoge4','hoge4@ho.ge','hoge4','user',NULL,'2015-11-15 07:49:21','2015-11-15 07:49:21'),(6,'hoge5','hoge5@ho.ge','hoge5','user',NULL,'2015-11-15 07:49:21','2015-11-15 07:49:21');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `sahara_pms`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sahara_pms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sahara_pms`;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `desc` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Tajine Pot','The traditional tajine pot is made of pottery, which is sometimes painted or glazed. It consists of two parts: a base unit that is flat and circular with low sides and a large cone- or dome-shaped cover that sits on the base during cooking. The cover is designed to promote the return of all condensation to the bottom. Tajine is traditionally... --Wikipedia','2015-11-15 07:48:56','2015-11-15 07:48:56'),(2,'Argan oil','Argan oil is a plant oil produced from the kernels of the argan tree (Argania spinosa L.) that is endemic to to Morocco. In Morocco, argan oil is used to dip bread in at breakfast or to drizzle on couscous or pasta. World-wide, it is gaining a reputation both as an ingredient in high-end, personal-care products and as a heart-healthy... --Wikipedia','2015-11-15 07:48:56','2015-11-15 07:48:56'),(3,'Babouche','La babouche du persan (papus) compose de pa (pied) et de pus (couvrir), renvoie simplement a chaussure. En France, des le XVIe siecle, apparaissent les formes papouch ou babuc. Cest une chaussure en cuir traditionnelle provenant du monde arabo-musulman. Les babouches des Bedouins sont avec ou sans... --Wikipedia','2015-11-15 07:48:56','2015-11-15 07:48:56'),(4,'Rose water','Rose water is a flavoured water made by steeping rose petals in water. It is the hydrosol portion of the distillate of rose petals, a by-product of the production of rose oil for use in perfume. It is used to flavour food, as a component in some cosmetic and medical preparations, and for religious purposes throughout Europe and Asia... --Wikipedia','2015-11-15 07:48:56','2015-11-15 07:48:56'),(5,'Couscous','Couscous  is a traditional Moroccan dish of semolina (granules of durum wheat) which is cooked by steaming. It is traditionally served with a meat or vegetable stew spooned over it. Couscous is a staple food throughout the North African cuisines of Tunisia, Algeria, Morocco, Mauritania and Libya and to a lesser extent in the Middle East... --Wikipedia','2015-11-15 07:48:56','2015-11-15 07:48:56'),(6,'Maghrebi mint tea','Maghrebi mint tea Maghrebi mint tea, also known as Moroccan, Tuareg, Algerian, Tunisian, or Libyan mint tea, is a green tea prepared with spearmint leaves and sugar, traditional to the Greater Maghreb region (the Northwest African countries of Morocco, Algeria, Tunisia, Libya, and Mauritania). It has since spread throughout North Africa, parts... --Wikipedia','2015-11-15 07:48:56','2015-11-15 07:48:56'),(7,'Spices','A spice is a seed, fruit, root, bark, berry, bud or vegetable substance primarily used for flavoring, coloring or preserving food. Spices are distinguished from herbs, which are parts of leafy green plants used for flavoring or as a garnish. Many spices have antimicrobial properties. This may explain why spices are more commonly used... --Wikipedia','2015-11-15 07:48:56','2015-11-15 07:48:56');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `sahara_oms`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sahara_oms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sahara_oms`;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,'finish','2015-11-15 07:49:08','2015-11-15 07:49:08'),(2,1,2,'started','2015-11-15 07:49:08','2015-11-15 07:49:08'),(3,2,2,'processing','2015-11-15 07:49:08','2015-11-15 07:49:08'),(4,3,2,'finish','2015-11-15 07:49:08','2015-11-15 07:49:08');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-15  7:52:14

