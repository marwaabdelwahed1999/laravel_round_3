-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: laravel_round_3
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB 

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
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cars_category_id_foreign` (`category_id`),
  CONSTRAINT `cars_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'Bins-Hamill','Fugit tempora iste odit officiis et cumque et.',1,'https://via.placeholder.com/640x400.png/007711?text=animals+et',3,NULL,'2024-01-22 23:04:22','2024-01-22 23:04:22'),(2,'Lowe Ltd','Et debitis et perspiciatis optio molestiae soluta.',0,'https://via.placeholder.com/640x400.png/007733?text=animals+vel',6,NULL,'2024-01-22 23:04:22','2024-01-22 23:04:22'),(3,'Emmerich Ltd','Aperiam ea ut veniam id omnis ratione repellendus.',1,'https://via.placeholder.com/640x400.png/00ddaa?text=animals+iure',2,NULL,'2024-01-22 23:04:22','2024-01-22 23:04:22'),(4,'Balistreri, Fay and Grant','Quo accusantium omnis quam quasi.',0,'https://via.placeholder.com/640x400.png/001155?text=animals+corrupti',4,NULL,'2024-01-22 23:04:22','2024-01-22 23:04:22'),(5,'Strosin Inc','Cum distinctio quisquam nihil consequuntur repellendus.',1,'https://via.placeholder.com/640x400.png/0000ee?text=animals+eius',2,NULL,'2024-01-22 23:04:22','2024-01-22 23:04:22'),(6,'McCullough Ltd','Qui vel assumenda placeat ducimus.',0,'https://via.placeholder.com/640x400.png/00ff55?text=animals+corrupti',1,NULL,'2024-01-22 23:04:22','2024-01-22 23:04:22'),(7,'Emmerich-Maggio','Ut repellendus velit nostrum omnis ut neque qui optio.',1,'https://via.placeholder.com/640x400.png/00eedd?text=animals+delectus',4,NULL,'2024-01-22 23:04:22','2024-01-22 23:04:22'),(8,'Walsh-Hammes','Nostrum recusandae sint debitis et qui beatae.',0,'https://via.placeholder.com/640x400.png/0000bb?text=animals+occaecati',6,NULL,'2024-01-22 23:04:22','2024-01-22 23:04:22'),(9,'Grady, Dicki and Parker','Est non provident saepe vel vel.',0,'https://via.placeholder.com/640x400.png/008844?text=animals+est',7,NULL,'2024-01-22 23:04:22','2024-01-22 23:04:22'),(10,'Effertz-Little','Rerum quaerat consequatur sit alias vero.',0,'https://via.placeholder.com/640x400.png/007799?text=animals+corporis',6,NULL,'2024-01-22 23:04:22','2024-01-22 23:04:22');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'magnam','2024-01-22 23:04:21','2024-01-22 23:04:21'),(2,'mollitia','2024-01-22 23:04:21','2024-01-22 23:04:21'),(3,'aut','2024-01-22 23:04:21','2024-01-22 23:04:21'),(4,'sunt','2024-01-22 23:04:21','2024-01-22 23:04:21'),(5,'quia','2024-01-22 23:04:21','2024-01-22 23:04:21'),(6,'ut','2024-01-22 23:04:21','2024-01-22 23:04:21'),(7,'laudantium','2024-01-22 23:04:21','2024-01-22 23:04:21'),(8,'adipisci','2024-01-22 23:04:22','2024-01-22 23:04:22'),(9,'ducimus','2024-01-22 23:04:22','2024-01-22 23:04:22'),(10,'non','2024-01-22 23:04:22','2024-01-22 23:04:22');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_us_mail`
--

DROP TABLE IF EXISTS `contact_us_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_us_mail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us_mail`
--

LOCK TABLES `contact_us_mail` WRITE;
/*!40000 ALTER TABLE `contact_us_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_us_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2014_10_12_100000_create_password_resets_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2022_01_01_114024_create_categories_table',1),(7,'2023_12_31_150052_create_cars_table',1),(8,'2024_01_16_005449_create_contact_us_mail_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expired` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Mr. Evert Zulauf','demetrius87@example.net','2024-01-22 23:04:21','$2y$12$61JtERq2V1m5dzF2.aeo5e69L9nMbZJvApmkVGnDkk6V9QPkqywey','(747) 497-1875','3LudwXRei0','2024-01-22 23:04:21','2024-01-22 23:08:39',0),(2,'Stefan Stroman III','ruben21@example.com','2024-01-22 23:04:21','$2y$12$61JtERq2V1m5dzF2.aeo5e69L9nMbZJvApmkVGnDkk6V9QPkqywey','+1 (309) 500-1291','OonYVtcFDR','2024-01-22 23:04:21','2024-01-22 23:08:39',0),(3,'Zella Ortiz','clementine.mcdermott@example.org','2024-01-22 23:04:21','$2y$12$61JtERq2V1m5dzF2.aeo5e69L9nMbZJvApmkVGnDkk6V9QPkqywey','+1-463-300-2282','06y5H15yqS','2024-01-22 23:04:21','2024-01-22 23:08:39',0),(4,'Fabiola Hane','clementine01@example.net','2024-01-22 23:04:21','$2y$12$61JtERq2V1m5dzF2.aeo5e69L9nMbZJvApmkVGnDkk6V9QPkqywey','703.692.2299','0u6EeHJxkE','2024-01-22 23:04:21','2024-01-22 23:08:39',0),(5,'Domingo Schimmel','kristy.cummerata@example.net','2024-01-22 23:04:21','$2y$12$61JtERq2V1m5dzF2.aeo5e69L9nMbZJvApmkVGnDkk6V9QPkqywey','(678) 677-7611','q3aqacQD2p','2024-01-22 23:04:21','2024-01-22 23:08:39',0),(6,'Prof. Clementine Beier','jessyca05@example.net','2024-01-22 23:04:21','$2y$12$61JtERq2V1m5dzF2.aeo5e69L9nMbZJvApmkVGnDkk6V9QPkqywey','937-233-1225','99mLhnojdi','2024-01-22 23:04:21','2024-01-22 23:08:39',0),(7,'Jazmin Reilly','upton.edyth@example.com','2024-01-22 23:04:21','$2y$12$61JtERq2V1m5dzF2.aeo5e69L9nMbZJvApmkVGnDkk6V9QPkqywey','978-899-8228','pxLLBkq7Wv','2024-01-22 23:04:21','2024-01-22 23:08:40',0),(8,'Zella Olson','johns.jamir@example.com','2024-01-22 23:04:21','$2y$12$61JtERq2V1m5dzF2.aeo5e69L9nMbZJvApmkVGnDkk6V9QPkqywey','+19783320367','sCrAnPddO9','2024-01-22 23:04:21','2024-01-22 23:08:40',0),(9,'Bryon Lindgren','lindsay64@example.org','2024-01-22 23:04:21','$2y$12$61JtERq2V1m5dzF2.aeo5e69L9nMbZJvApmkVGnDkk6V9QPkqywey','(804) 261-2828','SLusda3I5a','2024-01-22 23:04:21','2024-01-22 23:08:40',0),(10,'Dr. Micaela Hoppe DDS','patricia17@example.org','2024-01-22 23:04:21','$2y$12$61JtERq2V1m5dzF2.aeo5e69L9nMbZJvApmkVGnDkk6V9QPkqywey','847.953.0041','2OVmrlzMNF','2024-01-22 23:04:21','2024-01-22 23:08:40',0);
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

-- Dump completed on 2024-01-23  4:02:36
