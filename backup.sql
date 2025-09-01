-- MySQL dump 10.13  Distrib 9.0.1, for macos14.4 (x86_64)
--
-- Host: localhost    Database: portfolio_db
-- ------------------------------------------------------
-- Server version	9.3.0

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add profile model',7,'add_profilemodel'),(26,'Can change profile model',7,'change_profilemodel'),(27,'Can delete profile model',7,'delete_profilemodel'),(28,'Can view profile model',7,'view_profilemodel'),(29,'Can add project model',8,'add_projectmodel'),(30,'Can change project model',8,'change_projectmodel'),(31,'Can delete project model',8,'delete_projectmodel'),(32,'Can view project model',8,'view_projectmodel'),(33,'Can add skill model',9,'add_skillmodel'),(34,'Can change skill model',9,'change_skillmodel'),(35,'Can delete skill model',9,'delete_skillmodel'),(36,'Can view skill model',9,'view_skillmodel'),(37,'Can add summary model',10,'add_summarymodel'),(38,'Can change summary model',10,'change_summarymodel'),(39,'Can delete summary model',10,'delete_summarymodel'),(40,'Can view summary model',10,'view_summarymodel');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$N6bYogTFzjRt0JKzDMA6c8$yF8yGzkzvxxMsoPsUZ4FlJQ+uSbJyzypyW5A6jghUkA=','2025-08-18 10:27:11.864930',1,'sivaport','','','mypostbox.sivasankar@gmail.com',1,1,'2025-08-15 15:17:11.583530');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-08-15 15:19:58.357146','1','ProfileModel object (1)',1,'[{\"added\": {}}]',7,1),(2,'2025-08-15 15:27:58.296077','1','ProfileModel object (1)',3,'',7,1),(3,'2025-08-15 15:28:49.855172','2','ProfileModel object (2)',1,'[{\"added\": {}}]',7,1),(4,'2025-08-15 15:32:03.059327','1','SummaryModel object (1)',1,'[{\"added\": {}}]',10,1),(5,'2025-08-15 18:23:10.696055','1','summary',2,'[{\"changed\": {\"fields\": [\"Summary\"]}}]',10,1),(6,'2025-08-15 18:52:07.358771','1','skills',1,'[{\"added\": {}}]',9,1),(7,'2025-08-15 18:52:45.012997','2','CSS',1,'[{\"added\": {}}]',9,1),(8,'2025-08-15 18:52:51.218521','1','HTML',2,'[{\"changed\": {\"fields\": [\"Skill\"]}}]',9,1),(9,'2025-08-15 18:53:05.761151','3','BOOTSTRAP',1,'[{\"added\": {}}]',9,1),(10,'2025-08-15 18:53:22.981777','4','JavaScript',1,'[{\"added\": {}}]',9,1),(11,'2025-08-15 18:53:30.501770','3','Bootstrap',2,'[{\"changed\": {\"fields\": [\"Skill\"]}}]',9,1),(12,'2025-08-15 18:53:46.480507','5','Python',1,'[{\"added\": {}}]',9,1),(13,'2025-08-15 18:54:05.377584','6','Django',1,'[{\"added\": {}}]',9,1),(14,'2025-08-15 18:54:18.966217','7','Mysql',1,'[{\"added\": {}}]',9,1),(15,'2025-08-15 18:54:31.688493','8','Numpy',1,'[{\"added\": {}}]',9,1),(16,'2025-08-15 18:54:43.361317','9','Pandas',1,'[{\"added\": {}}]',9,1),(17,'2025-08-15 18:54:53.215049','10','Github',1,'[{\"added\": {}}]',9,1),(18,'2025-08-15 19:49:04.787821','6','Django',3,'',9,1),(19,'2025-08-15 19:49:49.674026','11','Django',1,'[{\"added\": {}}]',9,1),(20,'2025-08-16 15:49:27.826005','12','Git',1,'[{\"added\": {}}]',9,1),(21,'2025-08-16 15:57:04.946324','1','Blog Website',1,'[{\"added\": {}}]',8,1),(22,'2025-08-16 16:06:10.694257','1','Blog Website',2,'[]',8,1),(23,'2025-08-16 16:07:24.790051','2','Expense Tracker',1,'[{\"added\": {}}]',8,1),(24,'2025-08-16 16:26:35.243466','2','Expense Tracker',2,'[{\"changed\": {\"fields\": [\"Project desc\"]}}]',8,1),(25,'2025-08-18 10:34:59.321702','3','Personal Mail App',1,'[{\"added\": {}}]',8,1),(26,'2025-08-18 11:03:14.962995','4','To-Do Application',1,'[{\"added\": {}}]',8,1),(27,'2025-08-18 11:04:19.672881','5','Weather Application',1,'[{\"added\": {}}]',8,1),(28,'2025-08-18 11:04:58.055402','6','Console Bank Application',1,'[{\"added\": {}}]',8,1),(29,'2025-08-18 11:07:16.615325','1','Blog Website',2,'[{\"changed\": {\"fields\": [\"Tech stack\"]}}]',8,1),(30,'2025-08-18 11:07:22.073444','2','Expense Tracker',2,'[{\"changed\": {\"fields\": [\"Tech stack\"]}}]',8,1),(31,'2025-08-18 16:21:39.165683','6','Console Bank Application',2,'[{\"changed\": {\"fields\": [\"Project desc\"]}}]',8,1),(32,'2025-08-18 16:26:04.660913','5','Weather Application',2,'[{\"changed\": {\"fields\": [\"Project desc\"]}}]',8,1),(33,'2025-08-18 16:28:30.040820','4','To-Do Application',2,'[{\"changed\": {\"fields\": [\"Project desc\"]}}]',8,1),(34,'2025-08-18 16:31:58.337910','3','Personal Mail App',2,'[{\"changed\": {\"fields\": [\"Project desc\"]}}]',8,1),(35,'2025-08-18 16:33:48.232913','2','Expense Tracker',2,'[{\"changed\": {\"fields\": [\"Project desc\"]}}]',8,1),(36,'2025-08-18 16:36:34.775856','1','Blog Website',2,'[{\"changed\": {\"fields\": [\"Project desc\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'myapp','profilemodel'),(8,'myapp','projectmodel'),(9,'myapp','skillmodel'),(10,'myapp','summarymodel'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-08-15 15:16:26.422041'),(2,'auth','0001_initial','2025-08-15 15:16:26.593344'),(3,'admin','0001_initial','2025-08-15 15:16:26.643884'),(4,'admin','0002_logentry_remove_auto_add','2025-08-15 15:16:26.649584'),(5,'admin','0003_logentry_add_action_flag_choices','2025-08-15 15:16:26.656018'),(6,'contenttypes','0002_remove_content_type_name','2025-08-15 15:16:26.700139'),(7,'auth','0002_alter_permission_name_max_length','2025-08-15 15:16:26.722393'),(8,'auth','0003_alter_user_email_max_length','2025-08-15 15:16:26.738277'),(9,'auth','0004_alter_user_username_opts','2025-08-15 15:16:26.743937'),(10,'auth','0005_alter_user_last_login_null','2025-08-15 15:16:26.763073'),(11,'auth','0006_require_contenttypes_0002','2025-08-15 15:16:26.764544'),(12,'auth','0007_alter_validators_add_error_messages','2025-08-15 15:16:26.769984'),(13,'auth','0008_alter_user_username_max_length','2025-08-15 15:16:26.794475'),(14,'auth','0009_alter_user_last_name_max_length','2025-08-15 15:16:26.817708'),(15,'auth','0010_alter_group_name_max_length','2025-08-15 15:16:26.830510'),(16,'auth','0011_update_proxy_permissions','2025-08-15 15:16:26.837233'),(17,'auth','0012_alter_user_first_name_max_length','2025-08-15 15:16:26.861768'),(18,'myapp','0001_initial','2025-08-15 15:16:26.887700'),(19,'sessions','0001_initial','2025-08-15 15:16:26.898205'),(20,'myapp','0002_alter_projectmodel_tech_stack','2025-08-16 15:21:28.938312'),(21,'myapp','0003_rename_priject_image_projectmodel_project_image','2025-08-16 15:58:54.207216');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('8w3a26u2n9mika7kc37x53mvntsz3zsz','.eJxVjEEOwiAQRe_C2hCRGQou3XsGMgyDVA1NSrsy3l2bdKHb_977LxVpXWpcu8xxzOqsjDr8bon4IW0D-U7tNmme2jKPSW-K3mnX1ynL87K7fweVev3WRU7OBMCjOCIuCbBQQs4eLLvMIuLdAI4NhQAgiBYxDd569sUmS-r9AQRvOHc:1unHnx:ftvEBI3YydsFEeqtmvuwJFggwU_11v_YEqglYBkv8jk','2025-08-30 14:22:45.297988'),('a3dhffcc8y27xq6l11o6pqy4n1957fwo','.eJxVjEEOwiAQRe_C2hCRGQou3XsGMgyDVA1NSrsy3l2bdKHb_977LxVpXWpcu8xxzOqsjDr8bon4IW0D-U7tNmme2jKPSW-K3mnX1ynL87K7fweVev3WRU7OBMCjOCIuCbBQQs4eLLvMIuLdAI4NhQAgiBYxDd569sUmS-r9AQRvOHc:1umwBL:twSEjUX7g5R3ANA2Dg5Lbgk8jkU3-R5yOy4Av1ttR7Y','2025-08-29 15:17:27.527567'),('hbgcrj7avf43utf88bsrjxv76muton6h','.eJxVjEEOwiAQRe_C2hCRGQou3XsGMgyDVA1NSrsy3l2bdKHb_977LxVpXWpcu8xxzOqsjDr8bon4IW0D-U7tNmme2jKPSW-K3mnX1ynL87K7fweVev3WRU7OBMCjOCIuCbBQQs4eLLvMIuLdAI4NhQAgiBYxDd569sUmS-r9AQRvOHc:1unx55:II22Qc6uhrt7D-mYIlMWNiVZCldsg2q8BoEiYQTIrRg','2025-09-01 10:27:11.872494');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_profilemodel`
--

DROP TABLE IF EXISTS `myapp_profilemodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_profilemodel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `profile` varchar(100) NOT NULL,
  `cover` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_profilemodel`
--

LOCK TABLES `myapp_profilemodel` WRITE;
/*!40000 ALTER TABLE `myapp_profilemodel` DISABLE KEYS */;
INSERT INTO `myapp_profilemodel` VALUES (2,'myimage.jpeg','pexels-francesco-ungaro-2325447.jpg');
/*!40000 ALTER TABLE `myapp_profilemodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_projectmodel`
--

DROP TABLE IF EXISTS `myapp_projectmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_projectmodel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `project_name` varchar(50) NOT NULL,
  `project_image` varchar(100) NOT NULL,
  `tech_stack` varchar(250) NOT NULL,
  `project_desc` longtext NOT NULL,
  `github_url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_projectmodel`
--

LOCK TABLES `myapp_projectmodel` WRITE;
/*!40000 ALTER TABLE `myapp_projectmodel` DISABLE KEYS */;
INSERT INTO `myapp_projectmodel` VALUES (1,'Blog Website','blogwebsite.png','HTML | CSS | Django | Mysql','A blog website built with Django where users can read posts, while authenticated users can publish blogs, comment on posts, and save their favorite blogs. Includes Django’s built-in authentication system for secure access','https://github.com/devsivasankar?tab=repositories'),(2,'Expense Tracker','expensetracker.png','HTML | CSS | Django | Mysql','An expense tracker application that allows users to record, categorize, and monitor daily expenses. Built with Django, it provides authentication, expense history, and user can delete their expense and edit expense also.','https://github.com/devsivasankar?tab=repositories'),(3,'Personal Mail App','personal_mail.png','HTML | CSS | Django | Mysql','A personal mail application built with Django, featuring CKEditor integration for rich-text email composition. Through this  App i can compose, send, and manage messages with an intuitive interfaceand also delete a mail also.','https://github.com/devsivasankar?tab=repositories'),(4,'To-Do Application','todoapp.png','HTML | CSS | Django | Mysql','It was a basic to-do application built with Django, where users can add, edit, and delete tasks. The application also includes authentication using Django’s built-in user authentication system','https://github.com/devsivasankar?tab=repositories'),(5,'Weather Application','weatherapp.png','HTML | CSS | Django','It was a simple weather application built with Django, using the OpenWeatherMap API. Users enter their city name, and the app retrieves and displays accurate weather information through an API call.','https://github.com/devsivasankar?tab=repositories'),(6,'Console Bank Application','bankapp.png','Console Based Application','A console-based Python bank application enabling users to create accounts, deposit, withdraw, transfer funds, and check balances, showcasing core programming logic, and getting user details like name, mobile number, age and more with exception handling. then user can add money and withdraw also.','https://github.com/devsivasankar?tab=repositories');
/*!40000 ALTER TABLE `myapp_projectmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_skillmodel`
--

DROP TABLE IF EXISTS `myapp_skillmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_skillmodel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `skill` varchar(25) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_skillmodel`
--

LOCK TABLES `myapp_skillmodel` WRITE;
/*!40000 ALTER TABLE `myapp_skillmodel` DISABLE KEYS */;
INSERT INTO `myapp_skillmodel` VALUES (1,'HTML','html.png'),(2,'CSS','css.png'),(3,'Bootstrap','bootstrap.png'),(4,'JavaScript','js.png'),(5,'Python','python.png'),(7,'Mysql','mysql.png'),(8,'Numpy','numpy.png'),(9,'Pandas','pandas.png'),(10,'Github','github.png'),(11,'Django','dj.png'),(12,'Git','gitimage.png');
/*!40000 ALTER TABLE `myapp_skillmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_summarymodel`
--

DROP TABLE IF EXISTS `myapp_summarymodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_summarymodel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `summary` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_summarymodel`
--

LOCK TABLES `myapp_summarymodel` WRITE;
/*!40000 ALTER TABLE `myapp_summarymodel` DISABLE KEYS */;
INSERT INTO `myapp_summarymodel` VALUES (1,'A full Stack Web Developer Skilled in Building Dynamic, Responsive Websites and Applications. With Expertise in Both Front-end and Back-end Technologies, I Deliver Efficient, Scalable Solutions Tailored to Meet Diverse Project Needs.');
/*!40000 ALTER TABLE `myapp_summarymodel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-01 11:42:45
