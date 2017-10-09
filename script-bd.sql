CREATE DATABASE  IF NOT EXISTS `model` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `model`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: model
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_post_id_index` (`post_id`),
  KEY `comments_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `images_imageable_id_imageable_type_index` (`imageable_id`,`imageable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_01_15_200854_create_posts',1),('2014_01_15_202655_create_texts',1),('2014_01_15_203905_create_tags',1),('2014_01_15_204400_create_users',1),('2014_01_15_205010_create_images',1),('2014_01_22_193621_create_categories',1),('2014_01_22_202355_create_comments',1),('2014_10_12_000000_create_users_table',2),('2014_10_12_100000_create_password_resets_table',2),('2016_06_01_000001_create_oauth_auth_codes_table',2),('2016_06_01_000002_create_oauth_access_tokens_table',2),('2016_06_01_000003_create_oauth_refresh_tokens_table',2),('2016_06_01_000004_create_oauth_clients_table',2),('2016_06_01_000005_create_oauth_personal_access_clients_table',2),('2017_09_15_134151_create_1505472111_roles_table',2),('2017_09_15_134153_create_1505472112_users_table',2),('2017_09_15_134154_add_59bbae729b267_relationships_to_user_table',2),('2017_09_15_134333_create_1505472213_projects_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('49f2c149a738f667741b304310f77152700b817ce864b42001f86d1267efda7abbdb414937cc85bb',1,1,NULL,'[]',1,'2017-10-08 02:50:32','2017-10-08 02:50:32','2018-10-07 23:50:32'),('7e5fa4ed257bc301a389bf535733e7a92ac270db4aa1b709b09ce7b4d7579342dec5a6aeba3d09e5',1,1,NULL,'[]',1,'2017-10-08 02:49:31','2017-10-08 02:49:31','2018-10-07 23:49:31'),('b42cadb219886da7dcc67c8d49b8757f884ecbe198745e366a5fe1035a5d41d6ce000029c26b5096',1,1,NULL,'[]',1,'2017-10-08 02:52:03','2017-10-08 02:52:03','2018-10-07 23:52:03'),('fdf29e9a0c19e78d27068829ceb1400b5c73bb06414b180dc0e3e14779ef5d4307e77041b2232a3b',1,1,NULL,'[]',0,'2017-10-08 03:07:38','2017-10-08 03:07:38','2018-10-08 00:07:38');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
INSERT INTO `oauth_auth_codes` VALUES ('788d338cd44089d64e3925d42115fb23ada1010c091e49a7abccf8a2603cd8d4c144b118acbe5649',1,1,'[]',1,'2017-10-08 00:00:30'),('8983888a10059713558f167a3db3235a4fb8dd0a4892b6d67e37f27c96f12725310cd76ba214dd88',1,1,'[]',1,'2017-10-07 23:59:30'),('be5ad5d849a4a0a3ae5279df16066d053741e1505aa88cacc3c4631ad9ca1f1b447369c902aaa3b8',1,1,'[]',1,'2017-10-08 00:02:02'),('ddba7568f74e56995ad08b5cb4cb4d974cd4a0450ef596db4db2dcc21041602e6a138804461e3f86',1,1,'[]',0,'2017-10-07 23:48:47'),('e509aa715b00682b57967af7e0537ad98a49ffde7e7bb1fe4c57c2e871c5607c38f4f2abc1d5e6ac',1,1,'[]',1,'2017-10-08 00:17:36');
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,1,'cliente','qvNY5oyoZvcIPPSM8A6ZPOdx9qbXUTCl7IyRxuzx','http://127.0.0.1:9000/callback',0,0,0,'2017-10-07 16:56:52','2017-10-07 20:42:03');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES ('7f13dbfa586038e552f9987470326c0db8db683a93b7b8e827729e81a5cc11c6a4a757e41af4fe9e','49f2c149a738f667741b304310f77152700b817ce864b42001f86d1267efda7abbdb414937cc85bb',0,'2018-10-07 23:50:32'),('8c4b9d165b3ecee946e975f03bcb00a71c6d73cd624b9c8f768b4c92c6086a2c71fefd6590d60f9c','b42cadb219886da7dcc67c8d49b8757f884ecbe198745e366a5fe1035a5d41d6ce000029c26b5096',0,'2018-10-07 23:52:03'),('ad38c60ec93a2e5dad1c523c4f3771338ab723c52455fecd707d572a1f82e1058013b1882de6fdf7','7e5fa4ed257bc301a389bf535733e7a92ac270db4aa1b709b09ce7b4d7579342dec5a6aeba3d09e5',0,'2018-10-07 23:49:31'),('cd01b88055135b80d2cc9a6cba018ba871378448b002c16dd985abe8e46ccb0c5adb86e080bfb041','fdf29e9a0c19e78d27068829ceb1400b5c73bb06414b180dc0e3e14779ef5d4307e77041b2232a3b',0,'2018-10-08 00:07:38');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tag`
--

DROP TABLE IF EXISTS `post_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tag` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  KEY `post_tag_post_id_tag_id_index` (`post_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tag`
--

LOCK TABLES `post_tag` WRITE;
/*!40000 ALTER TABLE `post_tag` DISABLE KEYS */;
INSERT INTO `post_tag` VALUES (1,3),(1,5),(2,1),(3,1),(3,4),(4,6),(5,2);
/*!40000 ALTER TABLE `post_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_created_at_index` (`created_at`),
  KEY `posts_category_id_index` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Post About HTML/CSS',1,'2017-02-07 13:14:21','2017-02-07 13:14:21',1),(2,'Post About PHP',2,'2017-02-07 13:14:21','2017-02-07 13:14:21',2),(3,'Post About PHP/MySQL',1,'2017-02-07 13:14:21','2017-02-07 13:14:21',3),(4,'Post About MongoDB',2,'2017-02-07 13:14:21','2017-02-07 13:14:21',1),(5,'Post About jQuery',1,'2017-02-07 13:14:21','2017-02-07 13:14:21',2);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `projects_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Sample project','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas facilisis mattis diam, at aliquam tellus congue vel. Vivamus et elit et purus feugiat sodales. Nam volutpat nec risus eu feugiat. In sed egestas ex, vel commodo ex. Sed sed semper metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In tincidunt efficitur bibendum. Sed porta mollis porta. Nulla tincidunt fermentum ex, in sollicitudin ex eleifend id. Pellentesque eget vestibulum lectus. Vestibulum elementum ante eget sagittis dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse convallis malesuada tellus lacinia eleifend.','2017-10-07 16:54:02','2017-10-07 16:54:02',NULL),(2,'Sample project 2','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas facilisis mattis diam, at aliquam tellus congue vel. Vivamus et elit et purus feugiat sodales. Nam volutpat nec risus eu feugiat. In sed egestas ex, vel commodo ex. Sed sed semper metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In tincidunt efficitur bibendum. Sed porta mollis porta. Nulla tincidunt fermentum ex, in sollicitudin ex eleifend id. Pellentesque eget vestibulum lectus. Vestibulum elementum ante eget sagittis dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse convallis malesuada tellus lacinia eleifend.','2017-10-07 16:54:02','2017-10-07 16:54:02',NULL),(3,'Sample project 3','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas facilisis mattis diam, at aliquam tellus congue vel. Vivamus et elit et purus feugiat sodales. Nam volutpat nec risus eu feugiat. In sed egestas ex, vel commodo ex. Sed sed semper metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In tincidunt efficitur bibendum. Sed porta mollis porta. Nulla tincidunt fermentum ex, in sollicitudin ex eleifend id. Pellentesque eget vestibulum lectus. Vestibulum elementum ante eget sagittis dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse convallis malesuada tellus lacinia eleifend.','2017-10-07 16:54:02','2017-10-07 16:54:02',NULL);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrator (can create other users)','2017-10-07 16:54:02','2017-10-07 16:54:02'),(2,'Simple user','2017-10-07 16:54:02','2017-10-07 16:54:02');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'PHP'),(2,'Javascript'),(3,'CSS'),(4,'MySQL'),(5,'HTML'),(6,'MongoDB');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `texts`
--

DROP TABLE IF EXISTS `texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `texts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `texts_post_id_index` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `texts`
--

LOCK TABLES `texts` WRITE;
/*!40000 ALTER TABLE `texts` DISABLE KEYS */;
INSERT INTO `texts` VALUES (1,'Lorem ipsum dolor sit amet, no vim virtute detracto comprehensam, iudico mentitum inimicus ad cum. Ne vocibus civibus corpora sea. Clita nominati ut est, at wisi accumsan cum. Voluptatum persequeris per an, ut aperiri delenit vix. Et agam eros omittantur cum, mutat cetero sed te. Iuvaret voluptaria sententiae ea qui, choro discere reprehendunt at nam.\n\nEx periculis rationibus usu. Esse omnes lucilius et mei. No vel debet deterruisset, quo an enim omnis dignissim. Errem choro invenire est te, vis semper mandamus intellegebat ei, cum dico omnium an. Cibo tollit causae quo in. Magna aeterno ponderum ad eos, libris fabulas cum no, has audire ceteros platonem ut.\n\nVim ne diam vitae. Et has maiorum pericula. No doming inermis eos, et prima disputando sea. Ei ludus aperiam tractatos mei. Vim zril debitis facilisi ad. Veri vidit choro mea ex.\n\nUt stet fabellas mediocritatem usu. Pri solet argumentum at. Cum no agam labitur, te animal neglegentur pro, eam clita iriure et. Veri erroribus ad mel.',1),(2,'Lorem ipsum dolor sit amet, no vim virtute detracto comprehensam, iudico mentitum inimicus ad cum. Ne vocibus civibus corpora sea. Clita nominati ut est, at wisi accumsan cum. Voluptatum persequeris per an, ut aperiri delenit vix. Et agam eros omittantur cum, mutat cetero sed te. Iuvaret voluptaria sententiae ea qui, choro discere reprehendunt at nam.\n\nEx periculis rationibus usu. Esse omnes lucilius et mei. No vel debet deterruisset, quo an enim omnis dignissim. Errem choro invenire est te, vis semper mandamus intellegebat ei, cum dico omnium an. Cibo tollit causae quo in. Magna aeterno ponderum ad eos, libris fabulas cum no, has audire ceteros platonem ut.\n\nVim ne diam vitae. Et has maiorum pericula. No doming inermis eos, et prima disputando sea. Ei ludus aperiam tractatos mei. Vim zril debitis facilisi ad. Veri vidit choro mea ex.\n\nUt stet fabellas mediocritatem usu. Pri solet argumentum at. Cum no agam labitur, te animal neglegentur pro, eam clita iriure et. Veri erroribus ad mel.',2),(3,'Lorem ipsum dolor sit amet, no vim virtute detracto comprehensam, iudico mentitum inimicus ad cum. Ne vocibus civibus corpora sea. Clita nominati ut est, at wisi accumsan cum. Voluptatum persequeris per an, ut aperiri delenit vix. Et agam eros omittantur cum, mutat cetero sed te. Iuvaret voluptaria sententiae ea qui, choro discere reprehendunt at nam.\n\nEx periculis rationibus usu. Esse omnes lucilius et mei. No vel debet deterruisset, quo an enim omnis dignissim. Errem choro invenire est te, vis semper mandamus intellegebat ei, cum dico omnium an. Cibo tollit causae quo in. Magna aeterno ponderum ad eos, libris fabulas cum no, has audire ceteros platonem ut.\n\nVim ne diam vitae. Et has maiorum pericula. No doming inermis eos, et prima disputando sea. Ei ludus aperiam tractatos mei. Vim zril debitis facilisi ad. Veri vidit choro mea ex.\n\nUt stet fabellas mediocritatem usu. Pri solet argumentum at. Cum no agam labitur, te animal neglegentur pro, eam clita iriure et. Veri erroribus ad mel.',3),(4,'Lorem ipsum dolor sit amet, no vim virtute detracto comprehensam, iudico mentitum inimicus ad cum. Ne vocibus civibus corpora sea. Clita nominati ut est, at wisi accumsan cum. Voluptatum persequeris per an, ut aperiri delenit vix. Et agam eros omittantur cum, mutat cetero sed te. Iuvaret voluptaria sententiae ea qui, choro discere reprehendunt at nam.\n\nEx periculis rationibus usu. Esse omnes lucilius et mei. No vel debet deterruisset, quo an enim omnis dignissim. Errem choro invenire est te, vis semper mandamus intellegebat ei, cum dico omnium an. Cibo tollit causae quo in. Magna aeterno ponderum ad eos, libris fabulas cum no, has audire ceteros platonem ut.\n\nVim ne diam vitae. Et has maiorum pericula. No doming inermis eos, et prima disputando sea. Ei ludus aperiam tractatos mei. Vim zril debitis facilisi ad. Veri vidit choro mea ex.\n\nUt stet fabellas mediocritatem usu. Pri solet argumentum at. Cum no agam labitur, te animal neglegentur pro, eam clita iriure et. Veri erroribus ad mel.',4),(5,'Lorem ipsum dolor sit amet, no vim virtute detracto comprehensam, iudico mentitum inimicus ad cum. Ne vocibus civibus corpora sea. Clita nominati ut est, at wisi accumsan cum. Voluptatum persequeris per an, ut aperiri delenit vix. Et agam eros omittantur cum, mutat cetero sed te. Iuvaret voluptaria sententiae ea qui, choro discere reprehendunt at nam.\n\nEx periculis rationibus usu. Esse omnes lucilius et mei. No vel debet deterruisset, quo an enim omnis dignissim. Errem choro invenire est te, vis semper mandamus intellegebat ei, cum dico omnium an. Cibo tollit causae quo in. Magna aeterno ponderum ad eos, libris fabulas cum no, has audire ceteros platonem ut.\n\nVim ne diam vitae. Et has maiorum pericula. No doming inermis eos, et prima disputando sea. Ei ludus aperiam tractatos mei. Vim zril debitis facilisi ad. Veri vidit choro mea ex.\n\nUt stet fabellas mediocritatem usu. Pri solet argumentum at. Cum no agam labitur, te animal neglegentur pro, eam clita iriure et. Veri erroribus ad mel.',5);
/*!40000 ALTER TABLE `texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `73986_59bbae71c15cf` (`role_id`),
  CONSTRAINT `73986_59bbae71c15cf` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@admin.com','$2y$10$H.m7G9qWwYFcY7ZZZkIKBOxnQSbNj6LyaZZ2JknhkK9xeqqSJ.sTu','33gzbdPmgDqkAXclGNPi4w7Byzw0aDZmcQFipSmtT00UF47fWGAgoEUvZr7q','2017-10-07 16:54:02','2017-10-07 16:54:02',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-09  8:41:20
