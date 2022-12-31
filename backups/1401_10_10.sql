-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: sorendb
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add درباره ما',7,'add_aboutus'),(26,'Can change درباره ما',7,'change_aboutus'),(27,'Can delete درباره ما',7,'delete_aboutus'),(28,'Can view درباره ما',7,'view_aboutus'),(29,'Can add مقاله',8,'add_blog'),(30,'Can change مقاله',8,'change_blog'),(31,'Can delete مقاله',8,'delete_blog'),(32,'Can view مقاله',8,'view_blog'),(33,'Can add دسته',9,'add_category'),(34,'Can change دسته',9,'change_category'),(35,'Can delete دسته',9,'delete_category'),(36,'Can view دسته',9,'view_category'),(37,'Can add ارتباط با ما',10,'add_contactus'),(38,'Can change ارتباط با ما',10,'change_contactus'),(39,'Can delete ارتباط با ما',10,'delete_contactus'),(40,'Can view ارتباط با ما',10,'view_contactus'),(41,'Can add سوال متداول',11,'add_frequentlyaskedquestion'),(42,'Can change سوال متداول',11,'change_frequentlyaskedquestion'),(43,'Can delete سوال متداول',11,'delete_frequentlyaskedquestion'),(44,'Can view سوال متداول',11,'view_frequentlyaskedquestion'),(45,'Can add اطلاعات سایت',12,'add_generalinfo'),(46,'Can change اطلاعات سایت',12,'change_generalinfo'),(47,'Can delete اطلاعات سایت',12,'delete_generalinfo'),(48,'Can view اطلاعات سایت',12,'view_generalinfo'),(49,'Can add تصویر',13,'add_imagegallery'),(50,'Can change تصویر',13,'change_imagegallery'),(51,'Can delete تصویر',13,'delete_imagegallery'),(52,'Can view تصویر',13,'view_imagegallery'),(53,'Can add بنر اصلی',14,'add_mainbanner'),(54,'Can change بنر اصلی',14,'change_mainbanner'),(55,'Can delete بنر اصلی',14,'delete_mainbanner'),(56,'Can view بنر اصلی',14,'view_mainbanner'),(57,'Can add نمونه درخواستی',15,'add_samplerequierment'),(58,'Can change نمونه درخواستی',15,'change_samplerequierment'),(59,'Can delete نمونه درخواستی',15,'delete_samplerequierment'),(60,'Can view نمونه درخواستی',15,'view_samplerequierment'),(61,'Can add تگ',16,'add_tags'),(62,'Can change تگ',16,'change_tags'),(63,'Can delete تگ',16,'delete_tags'),(64,'Can view تگ',16,'view_tags'),(65,'Can add ایمیل',17,'add_useremailbank'),(66,'Can change ایمیل',17,'change_useremailbank'),(67,'Can delete ایمیل',17,'delete_useremailbank'),(68,'Can view ایمیل',17,'view_useremailbank'),(69,'Can add ویدئو',18,'add_videogallery'),(70,'Can change ویدئو',18,'change_videogallery'),(71,'Can delete ویدئو',18,'delete_videogallery'),(72,'Can view ویدئو',18,'view_videogallery'),(73,'Can add دسته محصول',19,'add_productgroup'),(74,'Can change دسته محصول',19,'change_productgroup'),(75,'Can delete دسته محصول',19,'delete_productgroup'),(76,'Can view دسته محصول',19,'view_productgroup'),(77,'Can add جزيیات محصول',20,'add_productdetail'),(78,'Can change جزيیات محصول',20,'change_productdetail'),(79,'Can delete جزيیات محصول',20,'delete_productdetail'),(80,'Can view جزيیات محصول',20,'view_productdetail'),(81,'Can add چت جزيیات محصول',21,'add_chatproductdetail'),(82,'Can change چت جزيیات محصول',21,'change_chatproductdetail'),(83,'Can delete چت جزيیات محصول',21,'delete_chatproductdetail'),(84,'Can view چت جزيیات محصول',21,'view_chatproductdetail'),(85,'Can add چت مقاله',22,'add_chatblog'),(86,'Can change چت مقاله',22,'change_chatblog'),(87,'Can delete چت مقاله',22,'delete_chatblog'),(88,'Can view چت مقاله',22,'view_chatblog');
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$Legaeikce92O6bCdpvt0dg$ZckmkJMxgtWFGDRs1NAXewg+qeSfHAmFKvjOwfZ9o38=','2022-12-23 10:59:42.329073',1,'admin','','','samadyd@gmail.com',1,1,'2022-12-09 09:02:40.326418');
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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-12-09 09:15:30.806055','1','اطلاعات کلی سایت',1,'[{\"added\": {}}]',12,1),(2,'2022-12-09 09:17:57.072377','1','ارائه بهترین مواد اولیه',1,'[{\"added\": {}}]',14,1),(3,'2022-12-09 09:19:31.784191','2','مواد شیمیایی برای صنعت آب',1,'[{\"added\": {}}]',14,1),(4,'2022-12-09 09:20:29.718308','3','مواد شیمیایی برای صنایع غذایی',1,'[{\"added\": {}}]',14,1),(5,'2022-12-09 09:20:49.075926','1','اسانس',1,'[{\"added\": {}}]',16,1),(6,'2022-12-09 09:20:58.421056','2','مواد شیمیایی',1,'[{\"added\": {}}]',16,1),(7,'2022-12-09 09:21:06.186428','3','سورن شیمی',1,'[{\"added\": {}}]',16,1),(8,'2022-12-09 09:21:19.589088','4','حلال‌ها',1,'[{\"added\": {}}]',16,1),(9,'2022-12-09 09:21:28.865810','5','صنایع آرایشی وبهداشتی',1,'[{\"added\": {}}]',16,1),(10,'2022-12-09 09:21:35.861944','6','صنایع تصفیه آب',1,'[{\"added\": {}}]',16,1),(11,'2022-12-09 09:21:44.305449','7','صنایع غذایی',1,'[{\"added\": {}}]',16,1),(12,'2022-12-09 09:21:49.007340','8','صنایع کشاورزی',1,'[{\"added\": {}}]',16,1),(13,'2022-12-09 09:22:02.640507','9','خوراکی',1,'[{\"added\": {}}]',16,1),(14,'2022-12-09 09:22:06.729293','10','روغنی',1,'[{\"added\": {}}]',16,1),(15,'2022-12-09 09:22:26.438941','11','میوه‌ای',1,'[{\"added\": {}}]',16,1),(16,'2022-12-09 09:22:30.615920','12','عطری',1,'[{\"added\": {}}]',16,1),(17,'2022-12-09 09:22:38.415358','13','رایحه نو',1,'[{\"added\": {}}]',16,1),(18,'2022-12-09 09:25:44.584572','1','اسانس',1,'[{\"added\": {}}]',19,1),(19,'2022-12-09 09:28:23.718413','2','صنایع آرایشی وبهداشتی',1,'[{\"added\": {}}]',19,1),(20,'2022-12-09 09:28:56.898151','3','صنایع تصفیه آب',1,'[{\"added\": {}}]',19,1),(21,'2022-12-09 09:29:24.851707','4','صنایع غذایی',1,'[{\"added\": {}}]',19,1),(22,'2022-12-09 09:29:48.022499','5','صنایع کشاورزی',1,'[{\"added\": {}}]',19,1),(23,'2022-12-09 09:30:22.555053','6','حلال‌ها',1,'[{\"added\": {}}]',19,1),(24,'2022-12-09 09:30:58.810679','7','صنایع حفاری',1,'[{\"added\": {}}]',19,1),(25,'2022-12-09 09:31:27.696515','8','اسانس شوینده و آرایشی و بهداشتی',1,'[{\"added\": {}}]',19,1),(26,'2022-12-09 09:31:45.115082','9','اسانس خوراکی',1,'[{\"added\": {}}]',19,1),(27,'2022-12-09 09:31:57.822204','10','اسانس‌های روغنی',1,'[{\"added\": {}}]',19,1),(28,'2022-12-09 09:34:16.006886','11','اسانس‌های میوه‌ای',1,'[{\"added\": {}}]',19,1),(29,'2022-12-09 09:34:58.274706','12','اسانس‌های عطری',1,'[{\"added\": {}}]',19,1),(30,'2022-12-09 09:35:08.293754','13','رایحه نو',1,'[{\"added\": {}}]',19,1),(31,'2022-12-09 09:45:09.062216','1','اسانس‌ها',1,'[{\"added\": {}}]',9,1),(32,'2022-12-09 09:45:12.195725','1','اسانس اکلت Eclat',1,'[{\"added\": {}}]',20,1),(33,'2022-12-09 09:47:02.293003','2','اسانس آفتابگردان Sunflower',1,'[{\"added\": {}}]',20,1),(34,'2022-12-09 09:49:26.327579','3','اسانس آووکادو',1,'[{\"added\": {}}]',20,1),(35,'2022-12-09 09:55:11.324622','1','اسانس اکلت Eclat',2,'[{\"changed\": {\"fields\": [\"\\u062f\\u0633\\u062a\\u0647 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',20,1),(36,'2022-12-09 09:56:16.118995','2','اسانس آفتابگردان Sunflower',2,'[{\"changed\": {\"fields\": [\"\\u062f\\u0633\\u062a\\u0647 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',20,1),(37,'2022-12-09 09:56:43.045121','3','اسانس آووکادو',2,'[{\"changed\": {\"fields\": [\"\\u062f\\u0633\\u062a\\u0647 \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u062a\\u06af \\u0645\\u0631\\u062a\\u0628\\u0637 \\u0628\\u0627 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',20,1),(38,'2022-12-09 09:58:50.894411','4','اسانس آویشن',1,'[{\"added\": {}}]',20,1),(39,'2022-12-09 10:01:45.537190','14','صنایع حفاری',1,'[{\"added\": {}}]',16,1),(40,'2022-12-09 10:02:07.235476','2','حفاری',1,'[{\"added\": {}}]',9,1),(41,'2022-12-09 10:02:21.512328','5','زانتان گام  Xanthan gum',1,'[{\"added\": {}}]',20,1),(42,'2022-12-09 10:04:20.969864','3','آب',1,'[{\"added\": {}}]',9,1),(43,'2022-12-09 10:04:22.390781','6','سولفات آهن Ferric Sulfate',1,'[{\"added\": {}}]',20,1),(44,'2022-12-09 10:04:53.101688','4','اسانس آویشن',2,'[{\"changed\": {\"fields\": [\"\\u062f\\u0633\\u062a\\u0647 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',20,1),(45,'2022-12-09 10:05:03.733565','3','اسانس آووکادو',2,'[{\"changed\": {\"fields\": [\"\\u062f\\u0633\\u062a\\u0647 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',20,1),(46,'2022-12-09 10:05:11.366670','2','اسانس آفتابگردان Sunflower',2,'[{\"changed\": {\"fields\": [\"\\u062f\\u0633\\u062a\\u0647 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',20,1),(47,'2022-12-09 10:05:21.410579','1','اسانس اکلت Eclat',2,'[{\"changed\": {\"fields\": [\"\\u062f\\u0633\\u062a\\u0647 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',20,1),(48,'2022-12-09 10:09:59.709619','4','کشاورزی',1,'[{\"added\": {}}]',9,1),(49,'2022-12-09 10:10:01.534319','7','اسید سولفوریک Sulfuric Acid',1,'[{\"added\": {}}]',20,1),(50,'2022-12-09 10:13:15.280473','5','غذایی',1,'[{\"added\": {}}]',9,1),(51,'2022-12-09 10:13:34.771891','8','اسید چرب نارگیل Coconut Fatty Acid',1,'[{\"added\": {}}]',20,1),(52,'2022-12-09 10:14:04.958346','9','اسید چرب نارگیل Coconut Fatty Acid',1,'[{\"added\": {}}]',20,1),(53,'2022-12-09 10:14:18.489027','9','اسید چرب نارگیل Coconut Fatty Acid',3,'',20,1),(54,'2022-12-09 10:14:27.423287','8','اسید چرب نارگیل Coconut Fatty Acid',2,'[{\"changed\": {\"fields\": [\"\\u062f\\u0633\\u062a\\u0647 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',20,1),(55,'2022-12-09 10:16:24.853528','6','آرایشی و بهداشتی',1,'[{\"added\": {}}]',9,1),(56,'2022-12-09 10:16:52.474649','10','هیدروژن پراکسید Hydrogen peroxide',1,'[{\"added\": {}}]',20,1),(57,'2022-12-09 10:23:09.062540','1','درباره ما',1,'[{\"added\": {}}]',7,1),(58,'2022-12-09 10:24:22.813635','1','درباره ما',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u067e\\u0646\\u062c\\u0645\"]}}]',7,1),(59,'2022-12-09 10:25:20.596039','1','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ',1,'[{\"added\": {}}]',11,1),(60,'2022-12-09 10:25:29.807567','2','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ',1,'[{\"added\": {}}]',11,1),(61,'2022-12-09 10:25:38.502555','3','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ',1,'[{\"added\": {}}]',11,1),(62,'2022-12-09 10:25:44.725491','4','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ',1,'[{\"added\": {}}]',11,1),(63,'2022-12-09 10:25:52.763244','5','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ',1,'[{\"added\": {}}]',11,1),(64,'2022-12-09 10:25:59.514961','6','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ',1,'[{\"added\": {}}]',11,1),(65,'2022-12-09 18:39:50.818549','1','تاریخچه اسانس ها',1,'[{\"added\": {}}]',8,1),(66,'2022-12-09 18:40:50.162846','2','کلاژن هیدرولیز شده چیست؟',1,'[{\"added\": {}}]',8,1),(67,'2022-12-09 18:42:01.352857','3','تنظیم PH خاک',1,'[{\"added\": {}}]',8,1),(68,'2022-12-09 18:43:17.980441','4','لوزی خطر NFPA چیست؟',1,'[{\"added\": {}}]',8,1),(69,'2022-12-14 16:41:01.598845','13','رایحه نو',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u0639 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',19,1),(70,'2022-12-14 16:41:08.609819','13','رایحه نو',2,'[]',19,1),(71,'2022-12-14 16:41:13.221612','12','اسانس‌های عطری',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u0639 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',19,1),(72,'2022-12-14 16:41:15.880772','11','اسانس‌های میوه‌ای',2,'[]',19,1),(73,'2022-12-14 16:41:20.792473','11','اسانس‌های میوه‌ای',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u0639 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',19,1),(74,'2022-12-14 16:41:28.195162','10','اسانس‌های روغنی',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u0639 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',19,1),(75,'2022-12-14 16:41:34.459136','9','اسانس خوراکی',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u0639 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',19,1),(76,'2022-12-14 16:41:46.238572','9','اسانس خوراکی',2,'[]',19,1),(77,'2022-12-14 16:41:51.846581','8','اسانس شوینده و آرایشی و بهداشتی',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u0639 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',19,1),(78,'2022-12-14 16:42:35.894627','7','صنایع حفاری',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u0639 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',19,1),(79,'2022-12-14 16:42:42.860783','6','حلال‌ها',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u0639 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',19,1),(80,'2022-12-14 16:42:48.787959','5','صنایع کشاورزی',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u0639 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',19,1),(81,'2022-12-14 16:42:55.416197','4','صنایع غذایی',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u0639 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',19,1),(82,'2022-12-14 16:42:59.783406','3','صنایع تصفیه آب',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u0639 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',19,1),(83,'2022-12-14 16:43:05.410977','2','صنایع آرایشی وبهداشتی',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u0639 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',19,1),(84,'2022-12-14 16:43:11.045637','1','اسانس',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u0639 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',19,1),(85,'2022-12-14 16:43:27.391725','1','اسانس',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u0639 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',19,1),(86,'2022-12-14 16:43:46.382525','2','صنایع آرایشی وبهداشتی',2,'[]',19,1),(87,'2022-12-14 16:43:57.691153','1','اسانس',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u0639 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',19,1),(88,'2022-12-14 16:50:31.022583','11','اسانس‌های میوه‌ای',2,'[]',19,1),(89,'2022-12-14 17:03:53.480658','3','مواد شیمیایی برای صنایع غذایی',2,'[]',14,1),(90,'2022-12-14 17:03:58.735216','2','مواد شیمیایی برای صنعت آب',2,'[]',14,1),(91,'2022-12-14 17:04:02.784899','1','ارائه بهترین مواد اولیه',2,'[]',14,1),(92,'2022-12-14 17:15:34.871618','3','مواد شیمیایی برای صنایع غذایی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0634\\u0645\\u0627\\u0631\\u0647 \\u062f\\u0648\", \"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0634\\u0645\\u0627\\u0631\\u0647 \\u0633\\u0647\"]}}]',14,1),(93,'2022-12-14 17:15:38.753826','3','مواد شیمیایی برای صنایع غذایی',2,'[]',14,1),(94,'2022-12-14 17:15:44.765757','2','مواد شیمیایی برای صنعت آب',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0634\\u0645\\u0627\\u0631\\u0647 \\u062f\\u0648\", \"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0634\\u0645\\u0627\\u0631\\u0647 \\u0633\\u0647\"]}}]',14,1),(95,'2022-12-14 17:15:49.831169','1','ارائه بهترین مواد اولیه',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0634\\u0645\\u0627\\u0631\\u0647 \\u062f\\u0648\", \"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0634\\u0645\\u0627\\u0631\\u0647 \\u0633\\u0647\"]}}]',14,1),(96,'2022-12-14 17:19:18.642968','3','مواد شیمیایی برای صنایع غذایی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0634\\u0645\\u0627\\u0631\\u0647 \\u06cc\\u06a9\"]}}]',14,1),(97,'2022-12-14 17:22:59.014516','3','مواد شیمیایی برای صنایع غذایی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0634\\u0645\\u0627\\u0631\\u0647 \\u06cc\\u06a9\"]}}]',14,1),(98,'2022-12-16 14:15:20.325776','5','صنایع کشاورزی',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u0622\\u06cc\\u06a9\\u0648\\u0646\"]}}]',19,1),(99,'2022-12-16 14:15:33.401458','1','اسانس',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u0622\\u06cc\\u06a9\\u0648\\u0646\"]}}]',19,1),(100,'2022-12-16 14:15:48.154768','4','صنایع غذایی',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u0622\\u06cc\\u06a9\\u0648\\u0646\"]}}]',19,1),(101,'2022-12-16 14:16:00.885136','6','حلال‌ها',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u0622\\u06cc\\u06a9\\u0648\\u0646\"]}}]',19,1),(102,'2022-12-16 14:16:11.916439','3','صنایع تصفیه آب',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u0622\\u06cc\\u06a9\\u0648\\u0646\"]}}]',19,1),(103,'2022-12-16 14:16:51.831790','2','صنایع آرایشی وبهداشتی',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u0622\\u06cc\\u06a9\\u0648\\u0646\"]}}]',19,1),(104,'2022-12-16 14:36:17.561489','1','درباره ما',2,'[]',7,1),(105,'2022-12-16 14:36:45.756076','1','درباره ما',2,'[]',7,1),(106,'2022-12-16 14:59:04.830648','1','درباره ما',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0628\\u0627\\u0644\\u0627\\u06cc \\u0645\\u0627 \\u06a9\\u06cc\\u0633\\u062a\\u06cc\\u0645\"]}}]',7,1),(107,'2022-12-16 14:59:22.338890','1','درباره ما',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0628\\u0627\\u0644\\u0627\\u06cc \\u0645\\u0627 \\u06a9\\u06cc\\u0633\\u062a\\u06cc\\u0645\"]}}]',7,1),(108,'2022-12-16 21:11:21.381189','1','اطلاعات کلی سایت',2,'[{\"changed\": {\"fields\": [\"\\u0622\\u062f\\u0631\\u0633 \\u062a\\u0648\\u06cc\\u06cc\\u062a\\u0631\", \"\\u0622\\u062f\\u0631\\u0633 \\u0648\\u0627\\u062a\\u0633 \\u0627\\u067e\"]}}]',12,1),(109,'2022-12-16 21:12:19.626535','1','اطلاعات کلی سایت',2,'[{\"changed\": {\"fields\": [\"\\u0622\\u062f\\u0631\\u0633 \\u062a\\u0648\\u06cc\\u06cc\\u062a\\u0631\", \"\\u0622\\u062f\\u0631\\u0633 \\u0648\\u0627\\u062a\\u0633 \\u0627\\u067e\"]}}]',12,1),(110,'2022-12-16 21:52:14.128301','2','صنایع آرایشی وبهداشتی',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u0622\\u06cc\\u06a9\\u0648\\u0646\"]}}]',19,1),(111,'2022-12-16 21:53:35.680214','2','صنایع آرایشی وبهداشتی',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u0622\\u06cc\\u06a9\\u0648\\u0646\"]}}]',19,1),(112,'2022-12-16 21:55:21.659578','2','صنایع آرایشی وبهداشتی',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u0622\\u06cc\\u06a9\\u0648\\u0646\"]}}]',19,1),(113,'2022-12-16 21:55:38.921369','2','صنایع آرایشی وبهداشتی',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u0622\\u06cc\\u06a9\\u0648\\u0646\"]}}]',19,1),(114,'2022-12-16 21:56:12.302358','2','صنایع آرایشی وبهداشتی',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u0622\\u06cc\\u06a9\\u0648\\u0646\"]}}]',19,1),(115,'2022-12-16 21:58:09.393102','2','صنایع آرایشی وبهداشتی',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u0622\\u06cc\\u06a9\\u0648\\u0646\"]}}]',19,1),(116,'2022-12-16 22:48:25.981841','1','درباره ما',2,'[]',7,1),(117,'2022-12-16 22:49:41.246473','1','درباره ما',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u0633\\u0648\\u0645\", \"\\u0646\\u0627\\u0645 \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u0686\\u0647\\u0627\\u0631\\u0645\"]}}]',7,1),(118,'2022-12-16 22:51:17.679225','1','درباره ما',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u0633\\u0648\\u0645\", \"\\u0646\\u0627\\u0645 \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u0686\\u0647\\u0627\\u0631\\u0645\"]}}]',7,1),(119,'2022-12-16 22:52:17.279807','1','درباره ما',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u0686\\u0647\\u0627\\u0631\\u0645\", \"\\u0646\\u0627\\u0645 \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u067e\\u0646\\u062c\\u0645\"]}}]',7,1),(120,'2022-12-16 22:54:05.890467','1','درباره ما',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u0633\\u0648\\u0645\"]}}]',7,1),(121,'2022-12-16 22:55:09.506470','1','درباره ما',2,'[{\"changed\": {\"fields\": [\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u06a9\\u0627\\u0631\\u06cc \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u0627\\u0648\\u0644\", \"\\u0646\\u0627\\u0645 \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u0627\\u0648\\u0644\", \"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u0627\\u0648\\u0644\", \"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u06a9\\u0627\\u0631\\u06cc \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u0633\\u0648\\u0645\", \"\\u0646\\u0627\\u0645 \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u0633\\u0648\\u0645\", \"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u0633\\u0648\\u0645\"]}}]',7,1),(122,'2022-12-16 22:59:21.627136','1','درباره ما',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u0633\\u0648\\u0645\"]}}]',7,1),(123,'2022-12-16 23:01:47.555067','1','درباره ما',2,'[{\"changed\": {\"fields\": [\"\\u0622\\u062f\\u0631\\u0633 \\u062a\\u0644\\u06af\\u0631\\u0627\\u0645 \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u062f\\u0648\\u0645\", \"\\u0622\\u062f\\u0631\\u0633 \\u0648\\u0627\\u062a\\u0633\\u200c\\u0627\\u067e \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u062f\\u0648\\u0645\", \"\\u0622\\u062f\\u0631\\u0633 \\u062a\\u0648\\u06cc\\u06cc\\u062a\\u0631 \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u062f\\u0648\\u0645\", \"\\u0622\\u062f\\u0631\\u0633 \\u062a\\u0644\\u06af\\u0631\\u0627\\u0645 \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u0633\\u0648\\u0645\", \"\\u0622\\u062f\\u0631\\u0633 \\u0648\\u0627\\u062a\\u0633\\u200c\\u0627\\u067e \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u0633\\u0648\\u0645\", \"\\u0622\\u062f\\u0631\\u0633 \\u062a\\u0648\\u06cc\\u06cc\\u062a\\u0631 \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f \\u0633\\u0648\\u0645\"]}}]',7,1),(124,'2022-12-19 18:01:31.938624','1','اطلاعات کلی سایت',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u062a\\u0646 \\u0635\\u0641\\u062d\\u0647 \\u062f\\u0631\\u0628\\u0627\\u0631\\u0647 \\u0645\\u0627\"]}}]',12,1),(125,'2022-12-19 19:11:26.933091','1','تست',2,'[]',10,1),(126,'2022-12-19 19:11:36.545731','1','تست',2,'[{\"changed\": {\"fields\": [\"Read\"]}}]',10,1),(127,'2022-12-19 20:00:18.959734','8','تست',3,'',10,1),(128,'2022-12-19 20:00:18.969129','7','تست2',3,'',10,1),(129,'2022-12-19 20:00:18.978139','6','تست',3,'',10,1),(130,'2022-12-19 20:00:18.983389','5','تست2',3,'',10,1),(131,'2022-12-19 20:00:18.988890','4','تست',3,'',10,1),(132,'2022-12-19 20:00:18.994832','3','تست',3,'',10,1),(133,'2022-12-19 20:00:19.000649','2','تست2',3,'',10,1),(134,'2022-12-19 20:00:19.007018','1','تست',3,'',10,1),(135,'2022-12-19 20:08:47.842663','1','توضیحات بالای سایت',1,'[{\"added\": {}}]',15,1),(136,'2022-12-20 17:10:19.780824','10','هیدروژن پراکسید Hydrogen peroxide',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a\"]}}]',20,1),(137,'2022-12-20 17:10:46.582065','1','توضیحات بالای سایت',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a\"]}}]',15,1),(138,'2022-12-22 15:21:26.533901','1','تصویر شماره یک',1,'[{\"added\": {}}]',13,1),(139,'2022-12-22 15:39:16.775257','1','عنوان شماره یک',1,'[{\"added\": {}}]',18,1),(140,'2022-12-22 20:26:33.938415','4','لوزی خطر NFPA چیست؟',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u062a\\u0646 \\u0645\\u0642\\u0627\\u0644\\u0647\", \"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u062f\\u0648 \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',8,1),(141,'2022-12-22 20:26:41.480471','3','تنظیم PH خاک',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u062a\\u0646 \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',8,1),(142,'2022-12-22 20:26:53.624749','3','تنظیم PH خاک',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u062f\\u0648 \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',8,1),(143,'2022-12-22 20:27:02.119620','2','کلاژن هیدرولیز شده چیست؟',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u062a\\u0646 \\u0645\\u0642\\u0627\\u0644\\u0647\", \"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u062f\\u0648 \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',8,1),(144,'2022-12-22 20:27:11.357702','1','تاریخچه اسانس ها',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u062a\\u0646 \\u0645\\u0642\\u0627\\u0644\\u0647\", \"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u062f\\u0648 \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',8,1),(145,'2022-12-22 20:28:40.361898','4','لوزی خطر NFPA چیست؟',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u062a\\u0646 \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',8,1),(146,'2022-12-22 21:40:43.293852','3','تنظیم PH خاک',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u06af \\u0645\\u0631\\u062a\\u0628\\u0637 \\u0628\\u0627 \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',8,1),(147,'2022-12-23 06:38:12.287842','2','دانیال احمدی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a\", \"\\u062e\\u0648\\u0627\\u0646\\u062f\\u0647 \\u0634\\u062f\"]}}]',22,1),(148,'2022-12-23 06:40:05.690217','1','دانیال صمدی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a\", \"\\u0645\\u0646\\u062a\\u0634\\u0631 \\u0634\\u0648\\u062f\"]}}]',22,1),(149,'2022-12-23 06:47:05.231452','4','لوزی خطر NFPA چیست؟',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0633\\u0647 \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',8,1),(150,'2022-12-23 06:47:15.273499','3','تنظیم PH خاک',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0633\\u0647 \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',8,1),(151,'2022-12-23 06:47:24.679862','2','کلاژن هیدرولیز شده چیست؟',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0633\\u0647 \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',8,1),(152,'2022-12-23 06:47:34.275680','1','تاریخچه اسانس ها',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0633\\u0647 \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',8,1),(153,'2022-12-23 06:52:59.461096','4','صادق هدایت',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a\", \"\\u0645\\u0646\\u062a\\u0634\\u0631 \\u0634\\u0648\\u062f\"]}}]',22,1),(154,'2022-12-23 07:25:16.457771','2','دانیال احمدی',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u0646\\u062a\\u0634\\u0631 \\u0634\\u0648\\u062f\"]}}]',22,1),(155,'2022-12-23 11:00:46.103940','1','اسانس‌ها',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u06af\\u0631\\u0648\\u0647\", \"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a\"]}}]',19,1),(156,'2022-12-27 08:28:03.337876','8','اسید چرب نارگیل Coconut Fatty Acid',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u062f\\u0648 \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a\"]}}]',20,1),(157,'2022-12-27 08:29:25.305265','10','هیدروژن پراکسید Hydrogen peroxide',2,'[{\"changed\": {\"fields\": [\"\\u062f\\u0633\\u062a\\u0647 \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u062f\\u0648 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',20,1),(158,'2022-12-27 08:29:49.948282','7','اسید سولفوریک Sulfuric Acid',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u062f\\u0648 \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a\"]}}]',20,1),(159,'2022-12-27 08:33:12.024289','6','سولفات آهن Ferric Sulfate',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u062f\\u0648 \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a\"]}}]',20,1),(160,'2022-12-27 08:33:36.071170','5','زانتان گام  Xanthan gum',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u062f\\u0648 \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a\"]}}]',20,1),(161,'2022-12-27 08:34:10.166560','4','اسانس آویشن',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u062f\\u0648 \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a\"]}}]',20,1),(162,'2022-12-27 08:34:28.846502','3','اسانس آووکادو',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u062f\\u0648 \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a\"]}}]',20,1),(163,'2022-12-27 08:34:55.038653','2','اسانس آفتابگردان Sunflower',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u062f\\u0648 \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a\"]}}]',20,1),(164,'2022-12-27 08:35:22.936705','1','اسانس اکلت Eclat',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u062f\\u0648 \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a\"]}}]',20,1),(165,'2022-12-27 08:59:07.773489','2','صنایع آرایشی وبهداشتی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a\"]}}]',19,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'site_soren','aboutus'),(8,'site_soren','blog'),(9,'site_soren','category'),(22,'site_soren','chatblog'),(21,'site_soren','chatproductdetail'),(10,'site_soren','contactus'),(11,'site_soren','frequentlyaskedquestion'),(12,'site_soren','generalinfo'),(13,'site_soren','imagegallery'),(14,'site_soren','mainbanner'),(20,'site_soren','productdetail'),(19,'site_soren','productgroup'),(15,'site_soren','samplerequierment'),(16,'site_soren','tags'),(17,'site_soren','useremailbank'),(18,'site_soren','videogallery');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-12-09 09:00:31.811774'),(2,'auth','0001_initial','2022-12-09 09:00:32.662413'),(3,'admin','0001_initial','2022-12-09 09:00:32.862072'),(4,'admin','0002_logentry_remove_auto_add','2022-12-09 09:00:32.874636'),(5,'admin','0003_logentry_add_action_flag_choices','2022-12-09 09:00:32.889257'),(6,'contenttypes','0002_remove_content_type_name','2022-12-09 09:00:32.996764'),(7,'auth','0002_alter_permission_name_max_length','2022-12-09 09:00:33.092639'),(8,'auth','0003_alter_user_email_max_length','2022-12-09 09:00:33.133962'),(9,'auth','0004_alter_user_username_opts','2022-12-09 09:00:33.150785'),(10,'auth','0005_alter_user_last_login_null','2022-12-09 09:00:33.230934'),(11,'auth','0006_require_contenttypes_0002','2022-12-09 09:00:33.238514'),(12,'auth','0007_alter_validators_add_error_messages','2022-12-09 09:00:33.257216'),(13,'auth','0008_alter_user_username_max_length','2022-12-09 09:00:33.359637'),(14,'auth','0009_alter_user_last_name_max_length','2022-12-09 09:00:33.443407'),(15,'auth','0010_alter_group_name_max_length','2022-12-09 09:00:33.471340'),(16,'auth','0011_update_proxy_permissions','2022-12-09 09:00:33.488793'),(17,'auth','0012_alter_user_first_name_max_length','2022-12-09 09:00:33.584169'),(18,'sessions','0001_initial','2022-12-09 09:00:33.644420'),(19,'site_soren','0001_initial','2022-12-09 09:00:35.413277'),(20,'site_soren','0002_remove_productdetail_product_group_and_more','2022-12-09 09:54:30.588052'),(21,'site_soren','0003_alter_aboutus_name_employee_5','2022-12-09 10:24:02.812414'),(22,'site_soren','0004_productgroup_type','2022-12-14 16:40:44.284646'),(23,'site_soren','0005_alter_mainbanner_image_1_alter_mainbanner_image_2_and_more','2022-12-14 17:16:37.638441'),(24,'site_soren','0006_alter_mainbanner_image_1_alter_mainbanner_image_2_and_more','2022-12-14 17:22:28.027822'),(25,'site_soren','0007_productgroup_flat_name','2022-12-16 14:14:26.379727'),(26,'site_soren','0008_generalinfo_whatsapp','2022-12-16 21:11:01.605876'),(27,'site_soren','0009_remove_aboutus_image_employee_5_and_more','2022-12-16 23:00:11.522447'),(28,'site_soren','0010_generalinfo_contactus_text','2022-12-19 18:00:18.313365'),(29,'site_soren','0011_contactus_read','2022-12-19 18:58:55.483006'),(30,'site_soren','0012_samplerequierment_read','2022-12-19 20:22:53.762221'),(31,'site_soren','0013_remove_samplerequierment_sample','2022-12-19 20:25:21.913865'),(32,'site_soren','0014_contactus_created_imagegallery_created_and_more','2022-12-20 16:53:30.342946'),(33,'site_soren','0015_alter_aboutus_first_feature_text_and_more','2022-12-20 17:08:51.369825'),(34,'site_soren','0016_videogallery_image','2022-12-22 15:29:40.904396'),(35,'site_soren','0017_alter_videogallery_video','2022-12-22 15:38:07.020166'),(36,'site_soren','0018_chatblog_publish_chatblog_read_and_more','2022-12-23 06:28:01.757769'),(37,'site_soren','0019_alter_chatblog_phone','2022-12-23 06:37:55.255727');
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
INSERT INTO `django_session` VALUES ('ovi53n2yklw9r2jyq4m8lhao3eg1bedu','.eJxVjDsOwjAQBe_iGlkQ22uHkj5niPYHDiBbipMKcXeIlALaNzPvZUZclzyuTedxEnM2J3P43Qj5oWUDcsdyq5ZrWeaJ7KbYnTY7VNHnZXf_DjK2_K2DRJeEfBQQnxwrKHfCAIGOCVAJU6BIHbse3FWQwXV98oosvfc-mfcH_WM4eQ:1p8fmA:TkkWVpv6d6G3nOUtwLJgTPYOCW4POC1Eo34iobMTMpg','2023-01-06 10:59:42.336413'),('pv3esetoyohovo8rwwe6nsoyvywcqbl2','.eJxVjDsOwjAQBe_iGlkQ22uHkj5niPYHDiBbipMKcXeIlALaNzPvZUZclzyuTedxEnM2J3P43Qj5oWUDcsdyq5ZrWeaJ7KbYnTY7VNHnZXf_DjK2_K2DRJeEfBQQnxwrKHfCAIGOCVAJU6BIHbse3FWQwXV98oosvfc-mfcH_WM4eQ:1p3ZHf:iJihntqydLKB5qkEj24jXM3jZYeZFzPSOHUzFNqKwx8','2022-12-23 09:03:07.582640');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_aboutus`
--

DROP TABLE IF EXISTS `site_soren_aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_aboutus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `introduction_text` longtext,
  `first_feature` varchar(300) DEFAULT NULL,
  `first_feature_text` longtext,
  `second_feature` varchar(300) DEFAULT NULL,
  `second_feature_text` longtext,
  `title_employee_1` varchar(300) DEFAULT NULL,
  `name_employee_1` varchar(300) DEFAULT NULL,
  `image_employee_1` varchar(100) DEFAULT NULL,
  `telegram_employee_1` varchar(300) DEFAULT NULL,
  `whatsapp_employee_1` varchar(300) DEFAULT NULL,
  `twitter_employee_1` varchar(300) DEFAULT NULL,
  `title_employee_2` varchar(300) DEFAULT NULL,
  `name_employee_2` varchar(300) DEFAULT NULL,
  `image_employee_2` varchar(100) DEFAULT NULL,
  `telegram_employee_2` varchar(300) DEFAULT NULL,
  `whatsapp_employee_2` varchar(300) DEFAULT NULL,
  `twitter_employee_2` varchar(300) DEFAULT NULL,
  `title_employee_3` varchar(300) DEFAULT NULL,
  `name_employee_3` varchar(300) DEFAULT NULL,
  `image_employee_3` varchar(100) DEFAULT NULL,
  `telegram_employee_3` varchar(300) DEFAULT NULL,
  `whatsapp_employee_3` varchar(300) DEFAULT NULL,
  `twitter_employee_3` varchar(300) DEFAULT NULL,
  `title_employee_4` varchar(300) DEFAULT NULL,
  `name_employee_4` varchar(300) DEFAULT NULL,
  `image_employee_4` varchar(100) DEFAULT NULL,
  `telegram_employee_4` varchar(300) DEFAULT NULL,
  `whatsapp_employee_4` varchar(300) DEFAULT NULL,
  `twitter_employee_4` varchar(300) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `who_we_are` longtext,
  `our_mission` longtext,
  `created` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_aboutus`
--

LOCK TABLES `site_soren_aboutus` WRITE;
/*!40000 ALTER TABLE `site_soren_aboutus` DISABLE KEYS */;
INSERT INTO `site_soren_aboutus` VALUES (1,'خدمات شرکت سورن شیمی به تولیدکنندگان و محققان عزیز کشور :\r\nبازاریابی و فروش مواد اولیه\r\nصادرات مواد اولیه\r\nتجاری سازی تحقیقات و همکاری پژوهشی در زمینه مواد اولیه\r\nلذا از کلیه تولیدکنندگان مواد اولیه شیمیایی، غذایی، کشاورزی و…. دعوت به همکاری می نماییم، که با تماس و مشاوره گرفتن از همکاران متخصص ما در زمینه صادرات محصولات خود به کشورهای متقاضی و بازاریابی و فروش مواد اولیه تولیدی خود در بازار داخل کشور بهره مند گردید.\r\n\r\nدرباره سورن شیمی لازم به ذکر است دفتر مرکزی ما در شهر مشهد مقدس می باشد که با توجه به اهمیت منطقه ای در بحث تجارت با کشورهای همسایه از جمله افغانستان پاکستان و عراق حائز اهمیت می باشد. محصولات شرکت به صورت مداوم در انبارهای معتبر نگهداری می شود.','تضمین کیفیت','لذا از کلیه تولیدکنندگان مواد اولیه شیمیایی، غذایی، کشاورزی و…. دعوت به همکاری می نماییم، که با تماس و مشاوره گرفتن از همکاران متخصص ما در زمینه صادرات محصولات خود به کشورهای متقاضی و بازاریابی و فروش مواد اولیه تولیدی خود در بازار داخل کشور بهره مند گردید.\r\n\r\nدرباره سورن شیمی لازم به ذکر است دفتر مرکزی ما در شهر مشهد مقدس می باشد که با توجه به اهمیت منطقه ای در بحث تجارت با کشورهای همسایه از جمله افغانستان پاکستان و عراق حائز اهمیت می باشد. محصولات شرکت به صورت مداوم در انبارهای معتبر نگهداری می شود.','قیمت رقابتی','لذا از کلیه تولیدکنندگان مواد اولیه شیمیایی، غذایی، کشاورزی و…. دعوت به همکاری می نماییم، که با تماس و مشاوره گرفتن از همکاران متخصص ما در زمینه صادرات محصولات خود به کشورهای متقاضی و بازاریابی و فروش مواد اولیه تولیدی خود در بازار داخل کشور بهره مند گردید.\r\n\r\nدرباره سورن شیمی لازم به ذکر است دفتر مرکزی ما در شهر مشهد مقدس می باشد که با توجه به اهمیت منطقه ای در بحث تجارت با کشورهای همسایه از جمله افغانستان پاکستان و عراق حائز اهمیت می باشد. محصولات شرکت به صورت مداوم در انبارهای معتبر نگهداری می شود.',NULL,'no','',NULL,NULL,NULL,'مدیرعامل','عرفان محمدی','aboutus/2022/12/2.jpg','#','#','#','رئیس هیئت مدیره','مهسا حسینی','aboutus/2022/12/1_k7vDEWH.jpg','#','#','#',NULL,'no','',NULL,NULL,NULL,'aboutus/2022/12/7_yDSsVZK.jpg','شرکت سورن شیمی در مشهد با همت همکاران متخصص و مهندسین صنعت شیمی پا به عرصه بازار مواد اولیه صنایع گذاشت.','ما با آشنایی از مشکلات موجود در صنعت ایران بر آن آمدیم که فعالیت خود را در زمینه تهیه و توزیع مواد اولیه صنایع از جمله مواد اولیه شوینده، مواد اولیه غذایی، مواد اولیه دارویی، مواد اولیه آرایشی بهداشتی، مواد اولیه کشاورزی، مواد اولیه تصفیه آب، مواد اولیه حفاری، حلال ها و مواد شیمیایی صنعتی و همچنین در بخش اسانس گسترده نماییم.','2022-12-09 10:23:09.060856');
/*!40000 ALTER TABLE `site_soren_aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_blog`
--

DROP TABLE IF EXISTS `site_soren_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_blog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  `text` longtext,
  `image_1` varchar(100) DEFAULT NULL,
  `image_2` varchar(100) DEFAULT NULL,
  `image_3` varchar(100) DEFAULT NULL,
  `views` int NOT NULL,
  `created` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_blog`
--

LOCK TABLES `site_soren_blog` WRITE;
/*!40000 ALTER TABLE `site_soren_blog` DISABLE KEYS */;
INSERT INTO `site_soren_blog` VALUES (1,'تاریخچه اسانس ها','<p>تاریخچه اسانس و مواد معطر از ابتداي خلقت، انسان در زندگي خود با عطر و مواد معطر آشنا بوده است. شواهد نشان مي دهد كه اين ماده در زمان های قديم درمراسم مذهبي و در درمان بيماريها به كار مي رفته است. در تمدن باستان كه عطر با مواد خوش بو مترادف بوده، به علت كمياب بودن و قيمت بالا بسيار مورد توجه تجار قرار گرفته است. در زمان های قديم، اولين ساخت عطرهاي طبيعي به وسيله پزشكان صورت گرفته و آنان براي تهيه داروهاي درماني خود به جستجوي منابع طبيعي اين قبيل تركيبات می پرداختند. پس می توان گفت، اولين فرمولاسيون عطرها توسط پزشكان انجام شده است. هيچ اطلاعي در مورد آغاز فرآيند توليد عطر در منابع وجود ندارد و مانند بسياري از صنايع چگونگي شروع فرآوري آن در تمدن انساني جای سوال دارد. در کشورهایی مانند چين، هند، مصر و ايران عطرها در مراسم مذهبي به كار ميرفته اند. در آن زمان ها، هنر عطرسازي پيشرفت كرده و با استفاده از مواد طبيعي خام، داروهاي آرام بخش معطري را جهت درمان بيماري ها از گياهان و جانوران جداسازي مي كردند. در سنگ نوشته هاي تاريخي كه از مصريان (تمدن نيل) باقی مانده است به تهيه روغن ها، صمغ ها و ليكور تخميري اشاره شده است. چگونگی پیدایش اسانس افراد زیادی برای یافتن این عنصر پنجم دست به کار شدند و مواد مختلفی را آزمایش کردند. در این میان توجه بعضی به طرف گیاهان معطری که بوی بسیار خوبی داشتند جلب شد و در پی آن شدند تا منبع این بو را بیابند. آنها بدین باور بودند که عنصر پنجم، همین مواد معطر گیاهان هستند. این مواد که با روشهای ابتدائی آن دوران استخراج می شد حالت روغنی داشت و روی سطح آب باقی می ماند. این موضوع سالها به همین شکل ادامه داشت. اطلاعات ما درباره وسايل به كار رفته، روش و نتايج حاصل از روش تقطير در زمان گذشته بسیار مبهم است. به نظر مي رسد اين روش براي جداسازي تربانتين از صمغ درخت كاج به كار میرفته است. اولين توصيف از روش تقطير روغن هاي معطر مربوط به پزشك كاتالونيايي به نام Arnold de Villanova است، او با الهام گرفتن از آيين دين مسيح، كاربرد روغن هاي معطر را در درمان بيماريها مؤثر مي دانست. در قرون وسطي از روش تقطير براي تهيه آب مقطر استفاده مي شد. اگر روغن بر روي آب ديده میشد، دليل بر حضور محصول جانبي يا ناخالصي بود. در سال1500(ابتداي رنسانس) در دست نويس هاي مردم ونتي از ايتاليا اولين توصيف از تقطير جهت جداسازي روغن اسانسي از گياه مريم گلي و رزماري اكليل كوهي اشاره شده است. پزشك سوئيسي به نام paracelsus امكان جداسازي روغن هاي اسانسي را بر مبناي تقطير عنوان كرد. او نام اين فرضيه را عنصر پنجم يا عصاره روح نام داد. او معتقد بود كه اين عامل،عنصر مؤثر اصلي در تهيه مواد درماني بوده و اين جداسازي را هدف علم فارماكولوژي دانست. بين سالهاي (1507-1500) پزشك استراسبورگي به نام Brunschwig طي انتشار كتابی به جداسازي روغن&not;هاي گياهان كاج، سرو،رزماري و گل اسطوخودوس اشاره كرد. او در اين كتاب چگونگي توليد اسانس از گل&not;هاي اسطوخودوس را در استاني از كشور فرانسه توصيف كرده بود. طبقه بندی اسانس ها و طعم دهنده ها ۱- طعم دهنده ها و اسانس های طبیعی : فرآورده هایی هستند که از مواد خام گیاهی با یکی از روش های استخراج( تقطیر، فشردن و استخراج با حلال) بدست می آیند. ۲- طعم دهنده ها و اسانس های شبه طبیعی : فرآورده های هستند که از ترکیب مواد اولیه معطر به وجود می آیند و از نظر بو شبیه اسانس های طبیعی می باشند. ۳- طعم دهنده ها و اسانس های مصنوعی: فرآورده هایی هستند که به طور تجاری از مواد شیمیایی آلی شبیه اسانس های طبیعی تهیه می گردند و بویی شبیه اسانس ها و طعم دهنده های طبیعی دارند.</p>','blogImage/2022/12/2.jpg','blogImage/2022/12/3_WeJqg1a.jpg','blogImage/2022/12/912018.webp',1,'2022-12-09 18:39:50.809562'),(2,'کلاژن هیدرولیز شده چیست؟','<p>کلاژن هیدرولیز شده چیست؟ کلاژن هیدرولیز شده (HC) یک مکمل ضد پیری است. گفته می شود که چین و چروک ها را کاهش می دهد، درد مفاصل را کاهش می دهد، سلامت استخوان ها را بهبود می بخشد، باعث کاهش وزن و غیره می شود. کلاژن حاوی اسیدهای آمینه، بلوک های سازنده پروتئین است. شکل هیدرولیز شده کلاژن، همچنین به عنوان پپتیدهای کلاژن یا هیدرولیز کلاژن شناخته می شود، به راحتی در جریان خون جذب می شود. این مقاله کلاژن هیدرولیز شده، فواید آن و عوارض جانبی احتمالی را مورد بحث قرار می دهد. همچنین توضیح می دهد که هنگام خرید کلاژن هیدرولیز شده به دنبال چه چیزی باشید و چگونه آن را مصرف کنید. آشنایی با کلاژن و کلاژن هیدرولیز شده چیست؟ کلاژن یک پروتئین کلیدی که در بدن تولید می&zwnj;شود، عمدتاً در پوست، استخوان&zwnj;ها، غضروف، تاندون&zwnj;ها و دندان&zwnj;ها یافت می&zwnj;شود. نقش مهمی در ساختار و عملکرد سلول ها و بافت های بدن مانند رگ های خونی، قرنیه، لثه ها و پوست سر ایفا می کند. و باعث بهبود زخم و ترمیم استخوان می شود. با افزایش سن، تولید کلاژن کاهش می یابد. و برخی از افراد مکمل های کلاژن هیدرولیز شده را برای کمک به بازیابی کلاژن تخلیه شده مصرف می کنند. از دست دادن کلاژن بین 18 تا 29 سالگی شروع می شود و پس از 40 سالگی، بدن می تواند حدود 1٪ از کلاژن خود را در سال از دست بدهد. در حدود 80 سالگی، تولید کلاژن می تواند به طور کلی 75٪ در مقایسه با بزرگسالان جوان کاهش یابد. کلاژن موجود در مکمل ها را می توان از چندین منبع حیوانی مختلف از جمله گاو و خوک استخراج کرد. تحقیقات اخیر خواص خوب HC موجود در پوست، فلس ها و استخوان های منابع دریایی مانند ماهی و بی مهرگانی مانند صدف، چتر دریایی یا اسفنج ها را نشان داده است. منابع جایگزین HC که عملکرد بسیار خوبی از خود نشان داده اند عبارتند از پاها و پای مرغ و گونه های قورباغه موجود در چین و مغولستان. سلامت پوست با کلاژن هیدرولیز شده چیست؟ کلاژن حدود 70 تا 75 درصد پوست ما را تشکیل می دهد، بزرگترین اندام بدن، که از ما در برابر آسیب های خارجی محافظت می کند، به تنظیم دما کمک می کند و سایر عملکردهای حیاتی بدن را انجام می دهد. با افزایش سن، کلاژن در لایه داخلی پوست می تواند کاهش یابد و منجر به خشکی، از دست دادن خاصیت ارتجاعی و خطوط و چین و چروک شود. مطالعات اخیر نشان داده است که مکمل های HC خوراکی در کاهش علائم پیری پوست موثر هستند. در سال 2017، Genovese و همکاران 120 فرد سالم را که فرمولاسیون مواد غذایی حاوی 50 میلی لیتر HC مصرف کرده بودند، مورد بررسی قرار دادند. ساختار و طبقه بندی فیبرهای کلاژن در درم نیز بهبود یافته است. در یک پرسشنامه پس از مطالعه، 95٪ از افراد موافق بودند که پوست آنها هیدراته تر، الاستیک تر (91.6٪)، قوی تر (81.7٪) و ضخیم تر (91.7٪) است. یک مطالعه دیگر، یک بررسی هشت هفته&zwnj;ای روی 114 بیمار سالم که در بدو تولد به آنها اختصاص داده شد، نشان داد که مصرف کلاژن کاهش قابل توجهی در چین و چروک&zwnj;های چشم در مقایسه با دارونما نشان داد. در نهایت، یک مطالعه 12 هفته ای که شامل 106 فرد سفیدپوست زن در بدو تولد بود، نشان داد که مصرف خوراکی کلاژن مشتق شده از ماهی منجر به افزایش قابل توجه 8.83٪ در تراکم کلاژن در مقابل 0٪ با دارونما، و کاهش 31.2٪ از تکه تکه شدن کلاژن در مقابل کاهش یافت. در حالی که این مطالعات نتایج امیدوارکننده&zwnj;ای ارائه می&zwnj;دهند، استفاده از مکمل&zwnj;های کلاژن در پوست بحث&zwnj;برانگیز بوده است، به دلیل فقدان کارآزمایی&zwnj;های تصادفی کنترل&zwnj;شده در مقیاس بزرگ (RCT). علاوه بر این، برخی از افرادی که از محصولات مبتنی بر کلاژن برای اهداف پوستی استفاده می کنند، ممکن است انتظارات غیرواقعی در مورد نتایج داشته باشند. سلامت مفاصل و استخوان کلاژن هیدرولیز شده چیست؟ تا به امروز، بیش از 60 مطالعه در مورد اثربخشی HC در کاهش آسیب کلاژن، استئوآرتریت (درد و فرسایش مفاصل) و پوکی استخوان (کاهش تراکم استخوان) وجود دارد. این نتایج، و همچنین سطح بالایی از تحمل و ایمنی، می&zwnj;تواند مصرف HC را برای استفاده طولانی&zwnj;مدت در بیماری&zwnj;های دژنراتیو استخوان و مفاصل جذاب کند. یافته&zwnj;های اخیر شامل مطالعه روی 51 فرد یائسه است که در بدو تولد زنان مبتلا به استئوپنی (از دست دادن استخوان) بودند که نشان داد افزودن HCs به مکمل&zwnj;های کلسیم و ویتامین D ممکن است متابولیسم استخوان را افزایش دهد. در مطالعه دیگری روی 250 فرد مبتلا به استئوآرتریت زانو، به شرکت کنندگان روزانه 10 گرم HC به مدت شش ماه داده شد. پس از مطالعه، بهبود قابل توجهی در راحتی مفصل زانو، بر اساس ارزیابی آنالوگ بصری و مقیاس درد، مشاهده شد. افراد با بیشترین زوال مفصل بیشترین بهره را بردند. درمان زخم کلاژن هیدرولیز شده چیست؟ یافته&zwnj;های اخیر نشان می&zwnj;دهد که مکمل&zwnj;های مبتنی بر HC می&zwnj;توانند به طور قابل&zwnj;توجهی بهبود زخم و پرآلبومین در گردش را بهبود بخشند و از نظر بالینی زمان صرف شده در بیمارستان را برای بیماران سوختگی کاهش دهند. پرآلبومین پایینی که در بیماران سوختگی در هنگام بستری یافت می شود، پیش بینی کننده مدت طولانی تری بستری در بیمارستان است. در یک کارآزمایی بالینی آزمایشی در سال 2019، 31 فرد بزرگسال که در بدو تولد مرد بودند با 20 تا 30 درصد سوختگی در کل سطح بدنشان به&zwnj;طور تصادفی برای چهار هفته مکمل&zwnj;های مبتنی بر کلاژن یا دارونما قرار گرفتند. پرآلبومین سرم، میزان بهبود زخم و مدت بستری در بیمارستان در ابتدا و در پایان هفته&zwnj;های دوم و چهارم بررسی شد. محققان دریافتند که پرآلبومین سرم در هفته دوم و چهارم در گروه کلاژن در مقایسه با گروه کنترل به طور قابل توجهی بالاتر بود. تغییرات در غلظت پیش آلبومین نیز در گروه کلاژن در هفته های دوم و چهارم به طور قابل توجهی بیشتر بود. بستری شدن در بیمارستان از نظر بالینی، اما نه از نظر آماری، در گروه کلاژن در مقایسه با گروه کنترل کمتر بود. تحقیق دیگری تأثیر مکمل کلاژن را بر درمان زخم&zwnj;های فشاری (مرحله II و IV) در 89 نفر از بیماران مراقبت طولانی&zwnj;مدت آزمایش کرد.) ترکیب بدنی اگرچه مطالعات کمی بر روی انسان در مورد اثرات پپتیدهای کلاژن بر کاهش چربی بدن انجام شده است، نتایج اولیه امیدوار کننده است. یک مطالعه کره ای در سال 2019، کارایی و تحمل پپتیدهای کلاژن پوست اسکیت (SCP) را بر کاهش چربی بدن در بزرگسالان دارای اضافه وزن بررسی کرد. 90 داوطلب سالم با میانگین شاخص توده بدنی (BMI) 9/1 &plusmn; 25.6 کیلوگرم بر متر مربع به گروه مداخله که 2000 میلی گرم SCP در روز دریافت می کردند، یا به گروه کنترل که به مدت 12 هفته دارونما دریافت می کردند، قرار گرفتند. 81 شرکت کننده (90%) مطالعه را تکمیل کردند. تغییرات در چربی بدن با استفاده از جذب سنجی اشعه ایکس با انرژی دوگانه (اسکن DEXA) ارزیابی شد. در پایان کارآزمایی، درصد چربی بدن و توده چربی بدن در گروه مداخله به طور معناداری بهتر از افراد در گروه کنترل بود. SCP به خوبی تحمل شد و هیچ اثر جانبی قابل توجهی از هر دو گروه گزارش نشد. مطالعه دوم نیز نتایج مثبتی را نشان داد. در گروهی متشکل از 77 فرد قبل از یائسگی که در بدو تولد به زنان اختصاص داده شد، تمرین مقاومتی، همراه با مکمل کلاژن، نسبت به تمرین مقاومتی همراه با مکمل پلاسبو، افزایش قابل توجهی بیشتری در توده بدون چربی و قدرت گرفتن دست ایجاد کرد. علاوه بر این، کاهش قابل توجهی در توده چربی و افزایش بارزتر در قدرت پا در گروه درمان در مقایسه با گروه کنترل وجود داشت. عوارض جانبی و اقدامات احتیاطی کلاژن هیدرولیز شده چیست؟ سطح بالای ایمنی HC آن را به عنوان یک عامل برای استفاده طولانی مدت جذاب می کند. با این حال، برخی از افراد ممکن است عوارض جانبی مانند مشکلات گوارشی خفیف را تجربه کنند. مطمئناً کسانی که به ماهی یا صدف آلرژی دارند باید از محصولات حاوی این مواد مانند کلاژن دریایی اجتناب کنند. آنها همچنین برای گیاهخواران یا وگان ها مناسب نیستند زیرا حاوی محصولات جانبی حیوانی هستند. علاوه بر این، FDA نامه های هشداردهنده ای برای شرکت های آرایشی و بهداشتی صادر کرده است که ادعاهای اثبات نشده ای در مورد محصولات خود دارند یا آنها را به عنوان دارو طبقه بندی می کنند، نه لوازم آرایشی. این نامه ها بیان می کند که محصولات با ادعای دارویی به بازار عرضه می شوند، که نشان می دهد برای درمان یا پیشگیری از بیماری یا تغییر ساختار یا عملکرد بدن در نظر گرفته شده است. اینها شامل ادعاهایی هستند مبنی بر اینکه برخی محصولات تولید کلاژن و الاستین را افزایش می دهند و در نتیجه پوستی الاستیک تر و محکم تر و با چین و چروک کمتر می شود. مصرف کنندگان باید همیشه قبل از شروع هر رژیم مکمل با ارائه دهنده مراقبت های بهداشتی خود مشورت کنند. در نهایت، مکمل های کلاژن برای ایمنی آزمایش نشده اند. این شامل جمعیت های خاصی مانند افراد باردار، والدین شیرده، کودکان و کسانی است که دارای شرایط پزشکی هستند یا دارو مصرف می کنند. نحوه مصرف کلاژن هیدرولیز شده در بیشتر موارد، مکمل های کلاژن به صورت خوراکی، به صورت قرص، کپسول یا به شکل پودر مصرف می شود. HC اغلب به عنوان یک عنصر در مکمل های غذایی نیز استفاده می شود، زیرا دارای خواص آنتی اکسیدانی و ضد میکروبی است. همچنین می توان آن را با خوردن آب استخوان یا پوست گوشت گاو مصرف کرد. بسته به شرایط تحت درمان، دوزهای توصیه شده می تواند متفاوت باشد، از 2.5 گرم تا 30 گرم در روز. توجه به این نکته مهم است که همه مکمل های کلاژن یکسان ساخته نمی شوند. به این معنا که بسیاری از مکمل&zwnj;های HC بدون نسخه حاوی مواد دیگری مانند اسید هیالورونیک، ویتامین&zwnj;ها و مواد معدنی هستند که می&zwnj;تواند تعیین دوز صحیح برای یک بیماری خاص را پیچیده کند. سخنی ازسورن شیمی در این مقاله بررسی کردیم که کلاژن هیدرولیز شده چیست؟ کلاژن نقش کلیدی در بدن دارد. مردم معمولاً با افزایش سن کمتر از آن استفاده می&zwnj;کنند، که باعث می&zwnj;شود برخی مکمل&zwnj;های کلاژن را جایگزین آن کنند. این محصول یک بازار بزرگ برای مکمل های کلاژن هیدرولیز شده به دست آمده از گاو، مرغ و حیوانات دریایی ایجاد کرده است. کلاژن هیدرولیز شده شرکت سورن شیمی با گرید آرایشی بهداشتی و قابل استفاده در طیف وسعی ازمحصولات آرایشی بهداشتی می باشد.</p>','blogImage/2022/12/3.jpg','blogImage/2022/12/2_ckhPWgJ.jpg','blogImage/2022/12/1_UBPyJaP.jpg',5,'2022-12-09 18:40:50.147332'),(3,'تنظیم PH خاک','<p>خاک به طور مستقیم یا غیرمستقیم رشد گیاه را تحت تاثیر قرار می دهد، بنابراین خاک باید دارای PH مناسب باشد. هر گیاهی یک محدوده PH خاص و مناسبی را تحمل می کند. اگر PH خاک کم یا زیاد باشد، رشد و تولید گیاه دچار مشکل می شود. گل ها و گیاهان زینتی از این قاعده استثناء نیستند بلکه نسبت به PH خاک حساس تر هستند.نحوه تنظیم PH خاکهای اسیدی و قلیایی برای رشد بهتر گیاهان چرا باید pH را تنظیم کرد و کدام pH خاکی مفید است؟ بگذارید سوال بالا را به این شکل مطرح کنیم اینکه &rdquo; چرا باید pH خاک را تنظیم کرد؟ &rdquo; توجه داشته باشید که هدف از تنظیم pH ارتباط مستقیمی با فعالیت میکروارگانیسم&zwnj;های خاک دارد. دو نوع میکروارگانیسم در خاک فعالیت می&zwnj;کند که نوعی از آنها هوازی و نوع دیگر بی&zwnj;هوازی هستند که از این میکروارگانیسم&zwnj;های مهم می&zwnj;توان به قارچ&zwnj;ها و باکتری&zwnj;ها اشاره کرد. دسته اول (هوازی&zwnj;ها) برای گیاه و کشاورزی بسیار مفید هستند، زیرا موجب فراهمی و حل کردن عناصر شیمیایی مورد نیاز گیاه در خاک می شوند و دسته دوم که شامل میکروارگانیسم&zwnj;های بی&zwnj;هوازی&zwnj;اند برای گیاه مخرب بوده که عامل بیماری و پاتوژن هستند. (در کل میکروارگانیسم&zwnj;های بی هوازی پاک کننده طبیعت هستند و می توانند گیاهان را تخریب و موجب حذف غذای انسان شوند. البته هدف از تولید این میکروارگانیسم ها در طبیعت در جایگاه مناسب بسیار مفید هستند چرا که موجب پاکسازی طبیعت و پایداری می شوند اما وقتی از حد مجاز خود فراتر بروند بسیار مخرب و از بین برنده منابع غذایی انسان می&zwnj;شوند). باکتری&zwnj;های بی&zwnj;هوازی در دامنه pHهای قلیایی بیشترین سطح رشد و توسعه را دارند اما باکتری&zwnj;های مفید و هوازی در pHهای اسیدی رشد و فعالیت خوبی دارند که باعث آزاد سازی عناصر می&zwnj;شوند. بنابراین هرچقدر pH به سمت قلیایی حرکت کند، میکروارگانیسم&zwnj;های مضر و تخریب&zwnj;گر زیاد شده و با کاهش pH فعالیت میکروارگانیسم&zwnj;های مفید زیاده شده و از این طریق حلالیت و جذب عناصر زیاد خواهد شد. اهمیت PH خاک در کشاورزی PH خاک به طور مستقیم و یا غیر مستقیم رشد گیاه را تاثیر می گذارد. قابلیت جذب عناصر غذایی وابستگی زیادی به PH خاک دارد. PH بالاتر از ۷ و کمبود بارندگی در ایران و دارا بودن اقلیمی خشک و خشکسالی اخیر باعث تجمع بازهای تبادلی در خاک شده که در پی آن افزایش غلظت یون هیدروکسید در خاک را به همراه دارد. PH قلیایی باعث می شود که حلالیت عناصر غذایی ضروری برای گیاه کاهش پیدا کند و کمبود عناصر غذایی مثل سرب، آهن، روی، منگنز، در گیاه مشاهده شود. در مقابل خاک های اسیدی، که PH آنها کمتر از ۴.۵ تا ۵ می باشد، حلالیت عناصر مثل آهن، آلومینیوم و منگنز به قدری افزایش می یابد که برای گیاه ایجاد مسمومیت می کند، از این رو تنظیم PH خاک بسیار با اهمیت می باشد و شما می توانید با استفاده از کود تنظیم کننده pH به خوبی این کار را انجام دهید. روش های کاهش pH خاک یا خاک اسیدی به منظور اصلاح خاک قلیایی، معمولا باید منبع اسید را معرفی کنید. برای افزایش سطح نیتروژن خاک می توانید کمپوست، کود یا مواد غذایی ارگانیک خاک مانند کنجاله یونجه اضافه کنید که به تدریج pH خاک را نیز کاهش می دهد. اقدامات زیر برای کاهش پی اچ خاک توصیه می شود: استفاده از کودهای خاص، مانند کودهای نیتروژن دار حاوی آمونیوم یا اوره می تواند به حفظ شرایط اسیدی خاک کمک کند، اما این کودها احتمالا در کاهش قابل توجه pH خاک موثر نیستند. آمونیوم موجود در این محصولات در خاک واکنش نشان می دهد تا به حفظ pH کاهش یافته کمک کند. با این حال به خاطر داشته باشید که بسیاری از محصولات کود مانند سولفات پتاسیم وگچ به طور موثر pH خاک را کاهش نمی دهند. پیت ماس ​​و برخی مواد آلی دیگر مانند سوزن کاج منبع خوبی از کربن آلی هستند و می توانند برای کاهش پی اچ خاک استفاده شوند. با این حال این مواد آلی بسیار کند عمل می کنند و ممکن است برای ایجاد تغییرات بزرگ پی اچ خاک موثر نباشند. افزودن سولفات آلومینیوم احتمالا همچنان مورد نیاز خواهد بود تا اطمینان حاصل شود که pH خاک به اندازه کافی برای باغبانی موفق کاهش می یابد. pH خاک را می توان با افزودن گوگرد عنصری، سولفات آلومینیوم یا اسید سولفوریک به طور موثر کاهش داد. اسید سولفوریک سریع عمل می کند، اما بسیار خطرناک است و استفاده از آن توسط باغبان های خانگی توصیه نمی شود (سولفات آلومینیوم سریعتر از گوگرد عنصری عمل می کند زیرا بسیار محلول است. مزیت گوگرد عنصری این است که مقرون به صرفه تر است).</p>','blogImage/2022/12/1.jpg','blogImage/2022/12/parallax.jpg','blogImage/2022/12/7.jpg',31,'2022-12-09 18:42:01.343381'),(4,'لوزی خطر NFPA چیست؟','<p style=\"text-align: justify;\">لوزی خطر NFPA چیست؟ انجمن ملی حفاظت حریق آمریکا (NFPA) استانداردي را تحت عنوان NFPA 704 تدوین کرد که براي شناسایی خطرات مواد (علی الخصوص مواد شیمیایی) به کار می رود. در بین کارشناسان ایمنی و بهداشت حرفه اي ، این استاندارد به لوزي خطر (Hazard Diamond) مشهور شده است. به نظر می رسد لوزي نجات، شاید اسم مناسب تري براي لوزي خطر می بود! این لوزي ، خود از 4 لوزي دیگر تشکیل شده است که هر کدام داراي رنگ هاي متفاوتی است و هر کدام از رنگ ها داراي مفهوم خاصی است. مفهوم رنگ ها در لوزی خطر : Health Hazards رنگ آبی خطرات سلامتی را مشخص می کند Flammability Hazards رنگ قرمز خطرات مشتعل شوندگی ماده ی شیمیایی را مشخص می کند Reactivity Hazards رنگ زرد خطرات واکنش پذیری را مشخص می کند Speci fic Hazards رنگ سفید خطرات خاص را مشخص می کند داخل این لوزی های رنگی، اعدادی قرار می گیرد که هر چه این اعداد بزرگتر باشند نشان دهنده ی درجه ی خطر بالاتری است . حال این پرسش مطرح می&zwnj;گردد که نحوه عملکرد لوزی خطر چگونه است؟ پیش&zwnj;ازاین گفتیم که طراحی این لوزی برای ساده&zwnj;تر شدن کار است و همان&zwnj;گونه که در تصویر می&zwnj;بینید به خاطر سپردن چهار بخش به&zwnj;مراتب ساده&zwnj;تر از به خاطر سپردن خطرات همه مواد است. روش کار این جدول به این شکل است که خطرات هر بخش (به&zwnj;جز بخش سفید) از صفرتا چهار (پنج درجه) شماره&zwnj;گذاری شده&zwnj;اند که عدد صفر کم&zwnj;خطرترین و عدد چهار نشان&zwnj;دهنده پرخطرترین است. وقتی این جدول برای یک ماده شیمیایی در نظر گرفته می&zwnj;شود در هر بخش از این لوزی یک عدد نمایش داده می&zwnj;شود. در ادامه نمونه&zwnj;ای از جدول پرشده برای گوگرد با فرمول شیمیایی S ارائه می&zwnj;گردد.</p>','blogImage/2022/12/4.jpg','blogImage/2022/12/1_psxtzup.jpg','blogImage/2022/12/3_YWoJaLR.jpg',4,'2022-12-09 18:43:17.972496');
/*!40000 ALTER TABLE `site_soren_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_blog_category`
--

DROP TABLE IF EXISTS `site_soren_blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_blog_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blog_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `site_soren_blog_category_blog_id_category_id_4000959e_uniq` (`blog_id`,`category_id`),
  KEY `site_soren_blog_cate_category_id_66b56f7b_fk_site_sore` (`category_id`),
  CONSTRAINT `site_soren_blog_cate_category_id_66b56f7b_fk_site_sore` FOREIGN KEY (`category_id`) REFERENCES `site_soren_category` (`id`),
  CONSTRAINT `site_soren_blog_category_blog_id_bf5d279c_fk_site_soren_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `site_soren_blog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_blog_category`
--

LOCK TABLES `site_soren_blog_category` WRITE;
/*!40000 ALTER TABLE `site_soren_blog_category` DISABLE KEYS */;
INSERT INTO `site_soren_blog_category` VALUES (1,1,1),(2,2,6),(3,3,4),(4,4,3);
/*!40000 ALTER TABLE `site_soren_blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_blog_tags`
--

DROP TABLE IF EXISTS `site_soren_blog_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_blog_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blog_id` bigint NOT NULL,
  `tags_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `site_soren_blog_tags_blog_id_tags_id_cde99dc0_uniq` (`blog_id`,`tags_id`),
  KEY `site_soren_blog_tags_tags_id_f18fca3c_fk_site_soren_tags_id` (`tags_id`),
  CONSTRAINT `site_soren_blog_tags_blog_id_54625b36_fk_site_soren_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `site_soren_blog` (`id`),
  CONSTRAINT `site_soren_blog_tags_tags_id_f18fca3c_fk_site_soren_tags_id` FOREIGN KEY (`tags_id`) REFERENCES `site_soren_tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_blog_tags`
--

LOCK TABLES `site_soren_blog_tags` WRITE;
/*!40000 ALTER TABLE `site_soren_blog_tags` DISABLE KEYS */;
INSERT INTO `site_soren_blog_tags` VALUES (1,1,1),(2,2,2),(3,3,8),(5,3,9),(4,4,2);
/*!40000 ALTER TABLE `site_soren_blog_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_category`
--

DROP TABLE IF EXISTS `site_soren_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_category`
--

LOCK TABLES `site_soren_category` WRITE;
/*!40000 ALTER TABLE `site_soren_category` DISABLE KEYS */;
INSERT INTO `site_soren_category` VALUES (1,'اسانس‌ها'),(2,'حفاری'),(3,'آب'),(4,'کشاورزی'),(5,'غذایی'),(6,'آرایشی و بهداشتی');
/*!40000 ALTER TABLE `site_soren_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_chatblog`
--

DROP TABLE IF EXISTS `site_soren_chatblog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_chatblog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `text` longtext NOT NULL,
  `score` int NOT NULL,
  `created` datetime(6) NOT NULL,
  `Blog_id` bigint DEFAULT NULL,
  `publish` tinyint(1) NOT NULL,
  `read` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_soren_chatblog_Blog_id_fc3d2bb5_fk_site_soren_blog_id` (`Blog_id`),
  CONSTRAINT `site_soren_chatblog_Blog_id_fc3d2bb5_fk_site_soren_blog_id` FOREIGN KEY (`Blog_id`) REFERENCES `site_soren_blog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_chatblog`
--

LOCK TABLES `site_soren_chatblog` WRITE;
/*!40000 ALTER TABLE `site_soren_chatblog` DISABLE KEYS */;
INSERT INTO `site_soren_chatblog` VALUES (1,'دانیال صمدی','samadyd@gmail.com',NULL,'<p>تست</p>',2,'2022-12-23 06:35:46.437819',3,1,0),(2,'دانیال احمدی','javad.moh1383@gmail.com',NULL,'<p>تست شماره دو</p>',5,'2022-12-23 06:36:46.927049',3,1,1),(3,'دانیال احمدی','javad.moh1383@gmail.com','','تست شماره دو',5,'2022-12-23 06:38:24.802227',3,0,0),(4,'صادق هدایت','vahidj300@gmail.com',NULL,'<p>تست</p>',4,'2022-12-23 06:52:14.480259',2,1,0);
/*!40000 ALTER TABLE `site_soren_chatblog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_chatproductdetail`
--

DROP TABLE IF EXISTS `site_soren_chatproductdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_chatproductdetail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `text` longtext NOT NULL,
  `score` int NOT NULL,
  `created` datetime(6) NOT NULL,
  `product_detail_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_soren_chatprodu_product_detail_id_d53556b6_fk_site_sore` (`product_detail_id`),
  CONSTRAINT `site_soren_chatprodu_product_detail_id_d53556b6_fk_site_sore` FOREIGN KEY (`product_detail_id`) REFERENCES `site_soren_productdetail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_chatproductdetail`
--

LOCK TABLES `site_soren_chatproductdetail` WRITE;
/*!40000 ALTER TABLE `site_soren_chatproductdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_soren_chatproductdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_contactus`
--

DROP TABLE IF EXISTS `site_soren_contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_contactus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `title` varchar(300) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `text` longtext,
  `read` tinyint(1) NOT NULL,
  `created` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_contactus`
--

LOCK TABLES `site_soren_contactus` WRITE;
/*!40000 ALTER TABLE `site_soren_contactus` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_soren_contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_frequentlyaskedquestion`
--

DROP TABLE IF EXISTS `site_soren_frequentlyaskedquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_frequentlyaskedquestion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  `answer` longtext,
  `created` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_frequentlyaskedquestion`
--

LOCK TABLES `site_soren_frequentlyaskedquestion` WRITE;
/*!40000 ALTER TABLE `site_soren_frequentlyaskedquestion` DISABLE KEYS */;
INSERT INTO `site_soren_frequentlyaskedquestion` VALUES (1,'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.','2022-12-09 10:25:20.594565'),(2,'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.','2022-12-09 10:25:29.805131'),(3,'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.','2022-12-09 10:25:38.500444'),(4,'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.','2022-12-09 10:25:44.723185'),(5,'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.','2022-12-09 10:25:52.761236'),(6,'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.','2022-12-09 10:25:59.512620');
/*!40000 ALTER TABLE `site_soren_frequentlyaskedquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_generalinfo`
--

DROP TABLE IF EXISTS `site_soren_generalinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_generalinfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_name` varchar(500) DEFAULT NULL,
  `company_logo` varchar(100) DEFAULT NULL,
  `address` varchar(5000) DEFAULT NULL,
  `email` varchar(5000) DEFAULT NULL,
  `telephone_1` varchar(11) DEFAULT NULL,
  `telephone_2` varchar(11) DEFAULT NULL,
  `telephone_3` varchar(11) DEFAULT NULL,
  `telephone_4` varchar(11) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `whatsapp_number` varchar(20) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `telegram` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `social_network_description` longtext,
  `feature_title_1` varchar(300) DEFAULT NULL,
  `feature_text_1` longtext,
  `feature_title_2` varchar(300) DEFAULT NULL,
  `feature_text_2` longtext,
  `feature_title_3` varchar(300) DEFAULT NULL,
  `feature_text_3` longtext,
  `feature_title_4` varchar(300) DEFAULT NULL,
  `feature_text_4` longtext,
  `general_feature_title` varchar(300) DEFAULT NULL,
  `general_feature_text` longtext,
  `created` datetime(6) DEFAULT NULL,
  `whatsapp` varchar(100) DEFAULT NULL,
  `contactus_text` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_generalinfo`
--

LOCK TABLES `site_soren_generalinfo` WRITE;
/*!40000 ALTER TABLE `site_soren_generalinfo` DISABLE KEYS */;
INSERT INTO `site_soren_generalinfo` VALUES (1,'سورن شیمی','logo/2022/12/logo1.png','مشهد، بلوار وکیل آباد، بین وکیل آباد 35و37، پلاک 847 طبقه اول','info@sorenchem.com','05138676767','051-3869385','051-3891569',NULL,'09033222110','09033222110',NULL,'http://t.me/sorenchem','http://instagram.com/sorenchemi','با ما از طریق شبکه‌های اجتماعی نیز در ارتباط باشید','تضمین کیفیت','با سورن شیمی کیفیت محصولات تضمین شده است','قیمت رقابتی','قیمت کالا در سورن شیمی رقابتی می‌باشد','بسته بندی اصولی','تمامی کالاهای سورن‌ شیمی دارای بسته‌بندی اصولی می‌باشند','استاندارد های به روز','محصولات سورن شیمی دارای استاندارد‌های به روز می‌باشد','ما راه حل های کامل و منحصر به فرد ارائه می‌کنیم','شرکت سورن شیمی در مشهد با همت همکاران متخصص و مهندسین صنعت شیمی پا به عرصه بازار مواد اولیه صنایع گذاشت. ما با آشنایی از مشکلات موجود در صنعت ایران بر آن آمدیم که فعالیت خود را در زمینه تهیه و توزیع مواد اولیه صنایع از جمله مواد اولیه شوینده، مواد اولیه غذایی، مواد اولیه دارویی، مواد اولیه آرایشی بهداشتی، مواد اولیه کشاورزی، مواد اولیه تصفیه آب، مواد اولیه حفاری، حلال ها و مواد شیمیایی صنعتی و همچنین در بخش اسانس گسترده نماییم.','2022-12-09 09:15:30.802112',NULL,'شما می‌توانید از طرق زیر با ما در ارتباط باشید.');
/*!40000 ALTER TABLE `site_soren_generalinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_imagegallery`
--

DROP TABLE IF EXISTS `site_soren_imagegallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_imagegallery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  `text` longtext,
  `image` varchar(100) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_imagegallery`
--

LOCK TABLES `site_soren_imagegallery` WRITE;
/*!40000 ALTER TABLE `site_soren_imagegallery` DISABLE KEYS */;
INSERT INTO `site_soren_imagegallery` VALUES (1,'تصویر شماره یک','<p>متن تصویر شماره یک</p>','imageGallery/2022/12/3.jpg','2022-12-22 15:21:26.529672');
/*!40000 ALTER TABLE `site_soren_imagegallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_mainbanner`
--

DROP TABLE IF EXISTS `site_soren_mainbanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_mainbanner` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  `text` longtext,
  `image_1` varchar(100) DEFAULT NULL,
  `image_2` varchar(100) DEFAULT NULL,
  `image_3` varchar(100) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_mainbanner`
--

LOCK TABLES `site_soren_mainbanner` WRITE;
/*!40000 ALTER TABLE `site_soren_mainbanner` DISABLE KEYS */;
INSERT INTO `site_soren_mainbanner` VALUES (1,'ارائه بهترین مواد اولیه','ما در سورن شیمی بهترین مواد اولیه را ارائه می‌دهیم.','banner/2022/12/b8.jpg','','','2022-12-09 09:17:57.069936'),(2,'مواد شیمیایی برای صنعت آب','در سورن شیمی بهترین مواد اولیه شیمیایی برای صنعت آب ارائه می‌شود','banner/2022/12/b7.jpg','','','2022-12-09 09:19:31.781768'),(3,'مواد شیمیایی برای صنایع غذایی','یکی از بهترین مواد شیمیایی برای صنایع غذایی توسط شرکت سورن شیمی ارائه می‌شود','banner/2022/12/b6_Wrfhx0u.jpg','','','2022-12-09 09:20:29.716485');
/*!40000 ALTER TABLE `site_soren_mainbanner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_productdetail`
--

DROP TABLE IF EXISTS `site_soren_productdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_productdetail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `farsi_name` varchar(300) NOT NULL,
  `english_name` varchar(300) NOT NULL,
  `formula` varchar(300) NOT NULL,
  `package_type` varchar(300) NOT NULL,
  `made_by` varchar(300) NOT NULL,
  `application` varchar(300) NOT NULL,
  `file` varchar(100) DEFAULT NULL,
  `image_1` varchar(100) DEFAULT NULL,
  `image_2` varchar(100) DEFAULT NULL,
  `image_3` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `views` int NOT NULL,
  `created` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_productdetail`
--

LOCK TABLES `site_soren_productdetail` WRITE;
/*!40000 ALTER TABLE `site_soren_productdetail` DISABLE KEYS */;
INSERT INTO `site_soren_productdetail` VALUES (1,'اسانس اکلت Eclat','اسانس اکلت','Valeur Absolue Joie-Ecla','-','کارتون','-','اسانس اکلت دارای رایحه ای خاص و مطبوع می باشد که با ترکیب رایحه گل ها و میوه ها الهام بخش شادی های روزمره می باشد','','productImage/2022/12/اسانس-اکلت-768x461.jpg','productImage/2022/12/اسانس-اکلت-768x461_gSUAjwz.jpg','','<p>اسانس اکلت دارای رایحه ای خاص و مطبوع می باشد که با ترکیب رایحه گل ها و میوه ها الهام بخش شادی های روزمره می باشد. یک روز آفتابی، احساس خوبی از یک کار خوب انجام شده، یک کلمه نرم که ما را لمس می کند، لبخند آشکار یک دوست، خنده مشترک . با اسانس اکلت این لحظات گرانبها را بازسازی کنید و هر زمان که احساس می کنید نیازی به جایی برای درخشندگی دارید از اسانس اکلت استفاده نمایید. Joie-Eclat درخشان و تازه است، مانند حباب های شامپاینی که هر روزه تجدید می شود &rdquo; نت های اسانس اکلت : نت اولیه : دارای تنقلات مرکبات گیاهی و گلدار است. عطر با گریپ فروت مرکبات، نارنگی و پرتقالیی آغاز می شود. نت ثانویه : ظرافت گلبرگ و گل یاس سفید با طراوت برگ های سایپس ایتالیایی است. نت اصلی و پایانی : عطری شگفت انگیز و پایدار چوب ویتور و چوب سفید است.</p>',0,'2022-12-09 09:45:12.187218'),(2,'اسانس آفتابگردان Sunflower','اسانس آفتابگردان','-','-','کارتون','-','اسانس آفتابگردان مناسب برای صابون و انواع شوینده می باشد.','','productImage/2022/12/اسانس-آفتابگردان.jpg','productImage/2022/12/اسانس-آفتابگردان_99Qtpkq.jpg','','<p>مزایای سلامت اسانس آفتابگردان شامل توانایی آن در بهبود سلامت قلب، افزایش انرژی، تقویت سیستم ایمنی بدن، بهبود سلامت پوست، جلوگیری از سرطان، کاهش کلسترول، محافظت در برابر آسم و کاهش التهاب می شود. اگر چه بسیاری از مردم در حال حاضر با آفتابگردان آشنا هستند، بسیاری از مردم فورا از آفتابگردان به عنوان منابع یک روغن گیاهی بسیار سالم که می تواند جایگزین بعضی از روغن های پخت و پز سالم موجود در بازار شود، فکر نمی کنند. روغن آفتابگردان همچنین در برخی از لوازم آرایشی استفاده می شود. این یک روغن غیر فرار است که می تواند به راحتی از آفتابگردان استخراج شود. تولید کنندگان اصلی روغن آفتابگردان روسیه، اوکراین و آرژانتین هستند، اما در تهیه غذاهای مختلف در سراسر جهان استفاده می شود. مزایای اسانس آفتابگردان نرم کننده و هیدراته خوب برای پوست و رطوبت پوست را بهبود می بخشد. برای انواع پوست نرمال و خشک استفاده می شود. همچنین برای پوست آکنه دار مناسب است که باکتری هایی را که باعث آکنه می شوند، از بین می برد. برای مراقبت در مقابل نور خورشید عالی است، رادیکال های آزاد که به پوست نفوذ می کنند را خنثی می کند. خواص آنتی اکسیدان از تشکیل خطوط و چین و چروک جلوگیری می کند. حاوی مواد معدنی و اسید اولئیک، اسید لینولئیک، لسیتین، کاروتنوئید و ویتامین A، B، C، D و E می باشد. برخی از روغن های آفتابگردان حاوی لیست تمام این ویتامین ها نیست. یک اسانس خوب برای روغن ضروری است. اسانس آفتابگردان با فشار دادن دانه های آفتابگردان تولید می شود. دارای آنتی اکسیدان هایی است که از انواع ویتامین های A، B، C، D و E.A استفاده می شود. روغن آفتابگردان یک منبع فوق العاده برای بتا کاروتن است. بتا کاروتن یک ترکیب محلول در چربی موجود در روغن، سبزیجات، غلات و برخی میوه های خاص است. بتا کاروتن به ویتامین A تبدیل می شود که دارای خواص آنتی اکسیدانی است که برای سلامت پوست شما مناسب است. علاوه بر این، فولات و اسید فولیک در روغن آفتابگردان بدن را برای تولید سلول های جدید کمک می کند. آنتی اکسیدان ها در بتا کاروتن می توانند به پوست نفوذ کنند و به خنثی سازی رادیکال های آزاد که باعث بروز آفتاب سوختگی و همچنین سایر انواع آسیب های خورشید می شود کمک کند. خواص آنتی اکسیدانی باعث جلوگیری از نشانه های زودرس پیری می شود. قرار گرفتن در معرض آفتاب و رادیکال های آزاد باعث افزایش سرعت پیری پوست می شود که خطوط و چین و چروک های خفیف را ایجاد می کند. افرادی که مبتلا به بیماری ژنتیکی هستند، پروتوپورفیری اریتروپوئیتی که باعث حساسیت نور خورشید شدید می شود باید احتیاط کرد زیرا دوزهای بالای بتا کاروتن می تواند پوست شما را به نور خورشید حساس کند. اسانس آفتابگردان به طور گسترده برای ترویج بهبودی به زخم هایی که به درستی شفا نمی یابند و آسیب های پوستی نیست. روغن آفتابگردان همچنین برای درمان آرتریت، پسوریازیس و اگزما مورد استفاده قرار می گیرد. اسانس آفتابگردان حاوی ویتامین E است که نرم کننده است که به رطوبت داخل سلول های پوست کمک می کند. این اسانس مخصوص صنایع آرایشی است که به ویژه برای پوست های خشک و چرب مفید است و پوست را بدون ایجاد لک های چرب درمان می کند.</p>',0,'2022-12-09 09:47:02.287017'),(3,'اسانس آووکادو','اسانس آووکادو','Persea Americana','-','-','-','انواع صابون و شامپو، کرم بدن، لوسیون از بخور دادن، شمع ها، خوشبو کننده های هوا غیر آئروسل','','productImage/2022/12/اسانس-آووکادو1-600x417.jpg','productImage/2022/12/اسانس-آووکادو1-600x417_nfRq69c.jpg','','<p>اسانس آووکادو یک روغن تغذیه کننده برای پوست و مو است. گفته می شود که اسانس آووکادو غنی از مواد معدنی ضروری و رقیق و ویتامین A است. خواص و بافت آن به طور خاص مناسب برای استفاده در مراقبت از مو مناسب کرده است. اسانس آووکادو به دلیل عطر و ضخامت، روغن زیاد، به طور معمول در نسبت کم (بسیار رقیق شده) در مخلوط و فرمول استفاده می شود. توصیه می شود که اسانس آووکادو را خنک نکنید زیرا بعضی از مواد مهم و شکننده موجود در روغن ممکن است تحت تاثیر قرار گیرد. روغن آووکادو حاوی حدود 19٪ چربی اشباع، 66٪ اسید اولئیک (اسید چرب امگا &ndash; 9)، 12٪ اسید لینولئیک (اسید چرب ضروری اساسی امگا 6) و کمتر از 5٪ اسید آلفا لینولنیک ( اسید چرب ضروری امگا 3) میباشد.</p>',0,'2022-12-09 09:49:26.316083'),(4,'اسانس آویشن','اسانس آویشن','-','-','-','-','دارای ارزش بسیار خوبی برای کمک به تمرکز','','productImage/2022/12/اسانس-روغني-آويشن.jpg','productImage/2022/12/اسانس-روغني-آويشن_ANeVFpu.jpg','','<p>اسانس آویشن می توانید سوزش پوست ایجاد می شود، در عین حال دارای ارزش بسیار خوبی برای کمک به تمرکز و تمرکز، و همچنین به عنوان یک برونش بسیار عالی و محرک ریه، و آن را در برونشیت، سرفه، سرماخوردگی، آسم و مانند آن، در حالی که کیفیت گرم شدن برای روماتیسم، سیاتیک، آرتروز و نقرس عالی هستند. خواص اسانس آویشن اسانس روغنی آویشن دارای بوی نسبتا شیرین و در عین حال بسیار گیاهی است و از رنگ قرمز مایل به قهوه ای تا رنگ نارنجی است. این یک گیاه باستانی است که در یونانی ها، مصری ها و رومی ها در طبیعت استفاده می شود و یک بوته همیشه سبز چند ساله است که رشد می کند تا 45 سانتی متر (18 اینچ) بالا، با یک سیستم ریشه چوبی، ساقه بسیار شاخه ای، خاکستری سبز مایل به سبز بیضی برگ های معطر و گل های بنفش و یا سفید رنگ. استخراج اسان آویشن از طعمه های تازه و یا به تدریج خشک شده و برگ گیاه توسط آب یا تقطیر بخار استخراج می شود و عملکرد آن 0.7-1.0 درصد است. اجزای اصلی شیمیایی a-thujone، a-pinene، camphene، b-pinene، p-cymene، a-terpinene، linalool، borneol، b-caryophyllene، thymol و carvacrol. احتیاط این یک روغن بسیار قوی است و نباید در دوران بارداری یا در موارد فشار خون بالا استفاده شود. از آنجا که فنل ها (کارواکرول و تیمول)، که می توانند غشاهای مخاط را تحریک کنند و باعث سوزش پوستی شوند، نباید برای محصولات مراقبت از پوست مورد استفاده قرار گیرند. خواص درمانی اسانس روغنی آویشن، ضد آنتی اکسیدان، آنتی سپتیک، ضد اسپاسم، ضد باکتری، قلیایی، قلب، سرماخوردگی، سیکاتریسنت، دیورتیک، امینژوگه، دفع ادرار، فشار خون بالا، حشره کش، محرک، تونیک و ورمی فوج است همچنین این روغن باعث تقویت اعصاب، حافظه و غلظت کمک می کند، می تواند با احساس خستگی و مبارزه با افسردگی کمک کند، در حالی که ریه ها را تقویت می کند و به سرماخوردگی، سرفه، آسم، لارنگیت، سینوزیت، ناراحتی، سرفه، گلودرد و لوزه ها کمک می کند. مشعل ها و بخارسازها: در درمان بخار، اسانس روغنی آویشن می تواند با برونشیت، سرفه، مشکلات تنفسی، سینوزیت، گرفتگی مخاط و درد و درد عضلانی مفید باشد. روغن حامل: به عنوان یک روغن ماساژ مخلوط می تواند کمک به آرتریت، برونشیت، سرماخوردگی، آنفولانزا، سرفه، نقرس، کبودی، اگزما، گرفتگی مخاط، درد عضلانی، چاقی و رماتیسم باشد. دهان و دندان: اسانس آویشن به عنوان یک وسیله شستشوی دهان یا به عنوان یک شستشو، می تواند به عفونت های لثه و لوزه ها کمک کند. اسانس روغنی آویشن به خوبی ترکیب می شود گرچه روغنهای اسانس معمولا به خوبی ترکیب می شوند، به طور خاص با برگاموت، گریپ فروت، لیمو، رزماری و کاج به خوبی ترکیب می شود.</p>',0,'2022-12-09 09:58:50.883034'),(5,'زانتان گام  Xanthan gum','زانتان گام','Xanthan gum','(C35H49O29 (monomer','کیسه 25 کیلویی','چین','در انواع مختلف محصولات صنایع غذایی، صنایع آرایشی بهداشتی، صنایع دارویی و صنایع صنعتی استفاده می شود','','productImage/2022/12/زانتان-گام-1.jpg','productImage/2022/12/زانتان-گام-1_EXu2KNL.jpg','','<p>هر زمان که از مواد غذایی صحبت می شود، مردم همیشه می پرسند: &rdquo; زانتان گام چیست؟&rdquo; خوب اگر شما فقط آن را در گوگل جستجو کنید، تقریبا 1.2 میلیون بازدید می بینید! چه چیزی باعث چالش می شود واقعیت این است که اطلاعات بسیار متناقض وجود دارد. شما همه چیز را در توصیف زانتان گام یک غذای &ldquo;کاملا طبیعی&rdquo; است خوانده اید. بنابراین، سوال این است که آیا صمغ زانتان گام، و حقیقت پشت این عنصر مرموز که امروزه در همه چیز استفاده می شود، چیست؟ کاربرد زانتان گام اول از همه صمغ زانتان گام اکوپولیساکارید پیچیده است، به این معنی که پلیمر تشکیل شده از بقایای قند است که توسط میکروارگانیسم ها به محیط اطراف تثبیت شده است. تولید باکتری گیاهی بیماریزا یک میکروارگانیسم است که سبب بیماری های متعددی در گیاهان می شود. صمغ زانتان گام به عنوان یک عامل ضعیف کننده و تثبیت کننده در انواع مختلف محصولات صنایع غذایی، صنایع آرایشی بهداشتی، صنایع دارویی و صنایع صنعتی استفاده می شود. لوازم آرایشی محصولات پخته شده و شیرینی پزی بستنی و شربت استفاده های صنعتی مربا، ژله ها و سس ها لوسیون ها داروها پودینگ سس سالاد خمیر دندان ماست صمغ زانتان گام چیست؟ در حقیقت تولید صمغ زانتان گام کاملا شگفت انگیز است: ابتدا زمانی که گلوکز، ساکارز یا لاکتوز توسط باکتری Xanthomonas campestris تخمیر می شود، تولید می شود. سپس، توسط ایزوپروپیل الکل، رسوب می شود. پس از خشک شدن، آن را به پودر خردلی که در آن می توان به صمغ مایع اضافه کرد. از آنجا که این امولسیفایر مؤثر &ldquo;کاملا طبیعی&rdquo; است، صمغ زانتان گام به عنوان یک افزودنی غیر خطرناک برای طیف وسیعی از نمک ها، حفاری و مایعات شکسته در نظر گرفته می شود. همانطور که توسط شرکت Cargill توضیح داده شده، صمغ زانتان گام معمولا برای ساخت محصولات مانند آدامس VerXan &trade; D مورد استفاده قرار می گیرد: کاهش اصطکاک پمپاژ در آهک، آب شیرین و آب شور. حداکثر نفوذ بیت حفاری. سرعت حفاری سریع در شرایط برشی کم و چگالی بالا. انتقال تعلیق / جامدات کارآمد در شرایط ویسکوزیته / کم برشی. کاهش حجم جامدات در مایعات حفاری. مدیریت غلظت های سنگین. ویسکوزیته بالا در غلظت های پایین. تثبیت مایع برای تمیز کردن حفره. کاهش آسیب به تشکیل نفت. کاهش هزینه تعمیر و نگهداری. کاهش هزینه کل عملیات. اما اجازه ندهید که این کاربردهای صنعتی شما توجه شمارا جلب کنند. تا زمانی که آلرژی نداشته باشید، نسبتا بی ضرر است. آیا صمغ زانتان گام امن است؟ در جامعه علمی به طور کلی توافق شده است که مصرف روزانه تا 15 گرم صمغ زانتان گام را در نظر بگیریم. با این حال، افراد مبتلا به مشکلات گوارشی ممکن است بخواهند دو بار در مورد خوردن غذاهایی که حاوی آن هستند، فکر کنند، زیرا صمغ زانتان گام یک ملایم کننده بسیار کارآمد است. می تواند موجب افزایش قابل توجهی در خروج مدفوع، فرکانس دفع و فتق بینی شود. مطالعه نشان داد که اگر چه این مقدار شدید موجب افزایش زمان گذراندن (هضم سریع) و تغییر در وزن و بافت مدفوع شد، اما تأثیر معنی داری بر: بیوشیمی پلاسما نشانگرهای خون پارامترهای ادرار تحمل گلوکز آزمایش انسولین نشانگرهای ایمنی تری گلیسیرید، فسفولیپید و کلسترول HDL اساسا اثبات این که صمغ زانتان به جریان خون جذب نشده است، باید مطمئن باشید که اکثریت قریب به اتفاق در معرض گوارشی از زمانی که به دهان می رسد تا زمانی که شما آن را تخلیه می کنید.</p>',0,'2022-12-09 10:02:21.494326'),(6,'سولفات آهن Ferric Sulfate','سولفات آهن','Ferric Sulfate','Fe2(SO4)','-','-','در زمینه پزشکی، می توان آن را به عنوان یک قابض خون استفاده کرد.','','productImage/2022/12/سولفات-آهن.jpg','productImage/2022/12/سولفات-آهن_sYTHXef.jpg','','<p>سولفات آهن جامد کریستالی یا پودر سفید خاکستری رنگ می باشد. سولفات آهن برای تصفیه آب و به عنوان یک تهویه کننده خاک استفاده می شود. سولفات آهن ، نمک است. می توان آن را به عنوان یک ماده معدنی در رنگرزی استفاده کرد و به عنوان یک کبالت برای درمان زباله های صنعتی استفاده می شود. در زمینه پزشکی، می توان آن را به عنوان یک قابض خون استفاده کرد. این یک نوع از عوامل هموستازی است که قادر به کنترل جریان خون و یا متوقف کردن آن است. همچنین توصیه می شود که سولفات آهن یک عامل پالپوتومی خوب در دندان های اولیه با پتانسیل خوبی برای جایگزینی فرموکروزول باشد. همچنین می تواند در رنگدانه و در حمام برای آلومینیوم و فولاد مورد استفاده قرار گیرد. معمولا از طریق واکنش بین سولفات آهن، اسید سولفوریک و عامل اکسید کننده مانند اسید نیتریک تهیه می شود. سولفات آهن یکی از ریز مغذی های ضروری و مفید در صنایع کشاورزی است. برای تولید انواع کود کشاورزی نیز استفاده می شود. مدیریت مواد مغذی آهن در گیاهان کمبود آهن یک عامل محدود کننده رشد گیاه است. آهن در مقادیر زیاد در خاک وجود دارد، اما دسترسی گیاهان به آن معمولا بسیار کم است، بنابراین کمبود آهن یک مشکل رایج است. دسترسی گیاهان به آهن گرچه اکثر آهن در پوسته زمین به شکل Fe3 + است، شکل Fe2 + از لحاظ فیزیولوژیک برای گیاهان مهم تر است. این فرم نسبتا محلول است اما به راحتی به Fe3 + اکسید شده است که سپس رسوب می کند. Fe3 + در pH خنثی و زیاد نامحلول است و آهن موجود در قلیایی و خاک های آهکی به گیاهان دسترسی ندارد. علاوه بر این، در این نوع خاک، آهن به راحتی با فسفات، کربنات، یون کلسیم، منیزیم و هیدروکسید ترکیب می شود. در چنین نوع خاک، توصیه می شود از کلات آهن استفاده کنید. مصرف آهن توسط گیاهان گیاهان آهن را در فرم اکسید شده خود، Fe2 + (فرم سیاه) یا Fe3 + (فرم فریک) مصرف می کنند. گیاهان از مکانیزم جذب آهن استفاده می کنند. یکی از این مکانیسم شل شدن است &ndash; گیاه ترکیبات به نام سیدورفورها که آهن را درگیر می کنند و حلالیت آن را افزایش می دهند. این مکانیسم همچنین شامل باکتری است. مکانیزم دیگری شامل انتشار پروتون ها (H +) و کاهش دهنده ها توسط ریشه های گیاه، برای کاهش سطح pH در منطقه ریشه است. نتیجه افزایش حلالیت آهن است. در این راستا، انتخاب فرم کود نیتروژنی قابل توجه است. نیتروژن آمونیوم باعث آزاد شدن پروتون ها توسط ریشه ها می شود، بنابراین PH کاهش می یابد و جذب آهن را تسهیل می دهد. نیتروژن باعث آزاد شدن یون های هیدروکسید شده می شود که PH را در ناحیه ریشه افزایش می دهد و از جذب آهن موثر جلوگیری می کند. ریشه های جدید بیشتر در جذب آهن فعال هستند، بنابراین لازم است یک سیستم ریشه فعال سالم حفظ شود. هر فاکتور دخالت کننده در رشد ریشه ها با جذب آهن مواجه است.</p>',0,'2022-12-09 10:04:22.374571'),(7,'اسید سولفوریک Sulfuric Acid','اسید سولفوریک','Sulfuric Acid','H2SO4 یا H2O4S','-','-','مصارف کشاورزی','','productImage/2022/12/اسيد-سولفوريک.jpg','productImage/2022/12/اسيد-سولفوريک_mlRPd7a.jpg','','<p>اسید سولفوریک یک مایع روغنی بی رنگ است. ترکیب این محلول در آب با انتشار گرما است. با قرار گرفتن در معرض آن در مقادیر بالا می تواند اثرات نامطلوب سلامتی را از طریق استنشاق ایجاد کند. برای استفاده از کودهای شیمیایی و دیگر مواد شیمیایی، در فرآوری نفت، در تولید آهن و فولاد، و برای بسیاری از کاربردهای دیگر استفاده می شود. اسید سولفوریک یکی از مهم ترین ترکیبات ساخته شده توسط صنایع شیمیایی است که از آن استفاده می شود، به معنای واقعی در صدها ترکیب مورد نیاز در صنایع متنوع استفاده می شود. بطور کل بیشترین مقدار اسید سولفوریک برای اسید فسفریک استفاده می شود که به نوبه خود برای تولید کود فسفات، دی هیدروژن فسفات کلسیم و فسفات آمونیوم استفاده می شود. همچنین برای تولید سولفات آمونیوم که یک کود بسیار مهم در است مورد استفاده قرار می گیرد. به طور گسترده ای در پردازش فلز به عنوان مثال در تولید مس و تولید روی و در تمیز کردن سطح ورق فولادی شناخته شده به عنوان &ldquo;تراکم&rdquo; استفاده می شود، در یک ورقه نازک از قلع برای ساخت قوطی برای غذا استفاده می شود. همچنین برای ساخت کاپرولاکتام، که به پلی آمید 6 تبدیل می شود و در تولید دی اکسید تیتانیوم استفاده می شود، به عنوان مثال اسید سولفوریک به عنوان یک رنگدانه استفاده می شود. در میان بسیاری از کاربردهای دیگر آن، تولید اسید هیدروفلوریک و فنول با پروپانون است که در بسیاری از صنایع استفاده می شود.</p>',0,'2022-12-09 10:10:01.522611'),(8,'اسید چرب نارگیل Coconut Fatty Acid','اسید چرب نارگیل','Coconut Fatty Acid','C12H24O','بشکه 180 کیلویی','مالزی','تولید محصولات تمیز کننده، مواد اولیه صابون، صابون های فلزی','','productImage/2022/12/اسید-چرب-نارگیل-scaled.jpg','productImage/2022/12/اسید-چرب-نارگیل-scaled_ukLpOgL.jpg','','<p>اسید چرب نارگیل خانواده ای از انواع مختلف اسیدهای چرب مشتق شده از روغن نارگیل است. اسید چرب اصلی اسید چرب نارگیل، اسید لوریک است و با سایر اسیدهای چرب اشباع شده مانند کاپریل، اسطوخودوس، پالمیتیک و استریک و در نسبت جزئی از اسیدهای چرب اشباع نشده همراه است. این ها توسط هیدرولیز روغن نارگیل به دست می آیند. اسید چرب به دست آمده ممکن است هیدروژنه یا قبل از فرآیند تقطیر باشد. به نوبه خود، فرایند تقطیر می تواند کل یا تقسیم شود، جدا کردن اسیدهای چرب مختلف بسته به درجه حرارت تقطیر دارد. این اسیدها تقریبا خلوص 50٪ لوریک اسید و آنها در دمای اتاق کمی زرد هستند. کاربرد اصلی اسید های چرب مواد اولیه نارگیل در تولید محصولات تمیز کننده، مواد اولیه صابون، صابون های فلزی، مواد اولیه شوینده، سورفکتانت ها، رزین های آلکیدی، عطر و اسانس، پلاستیک ها و پراکسید های آلی است. این کسر نور ترکیبی از اسید کاپریل است یک مایع در دمای اتاق، کمی زرد است. این یک محصول تحریک کننده و خورنده است. نقطه انجماد آن بین 5-7 درجه سانتی گراد است. برنامه های اصلی اسید کاپریل به عنوان یک ماده اولیه در تولید رزین های آلکیدی برای پوشش ها، سورفکتانت ها، عطر ها، صابون های فلزی، روان کننده ها، بیوسید ها و پلاستیک ها استفاده می شود.</p>',0,'2022-12-09 10:13:34.759209'),(10,'هیدروژن پراکسید Hydrogen peroxide','هیدروژن پراکسید','Hydrogen peroxide','H2O2','-','-','عمدتا برای سفید کردن پنبه و سایر پارچه ها و چوب خمیر استفاده می شود','','productImage/2022/12/آب-اکسیژنه.jpg','productImage/2022/12/آب-اکسیژنه_gJGE3GP.jpg','','<p style=\"text-align: justify;\">آب اکسیژنه یا هیدروژن پراکسید Hydrogen peroxide با فرمول مولکولی (H2O2) می باشد. آب اکسیژنه یک مایع بدون رنگ است که معمولا به عنوان محلول های آبی مختلف تولید می شود که عمدتا برای سفید کردن پنبه و سایر پارچه ها و چوب خمیر استفاده می شود، در تولید مواد شیمیایی دیگر، صنایع آرایشی و دارویی استفاده می شود. محلول های حاوی بیش از 8 درصد آب اکسیژنه یا هیدروژن پراکسید به پوست آسیب می رساند. هیدروژن پراکسید اولین بار در سال 1818 به عنوان یک ترکیب شیمیایی شناخته شد که ساده ترین عضو کلاس پراکسیدها هست. از فرآیندهای مختلف تولید، اصلی ترین آنها واکنش اکسیژن از هوا با برخی ترکیبات آلی، به ویژه آنتراکینون یا ایزوپروپیل الکل می باشد. مقادیر عمده تجاری عبارتند از: محلول های آبی حاوی 35، 50، 70 یا 90 درصد هیدروژن پراکسید و مقادیر کم تثبیت کننده (اغلب نمک های قلع و فسفات) برای سرکوب تجزیه می باشد. آب اکسیژنه چیست؟ آب اکسیژنه یا هیدروژن پراکسید با گرم شدن یا در حضور مواد متعدد، به ویژه نمک هایی از فلزات مانند آهن، مس، منگنز، نیکل یا کروم، به آب و اکسیژن تجزیه می شود. این ترکیبات را با ترکیبات بسیاری ترکیب می کند تا جامدات کریستالی را به عنوان عامل های اکسید کننده خفیف مفید بداند. شناخته شده ترین آن پتروبارت سدیم (NaBO2 &middot; H2O2 &middot; 3H2O یا NaBO3 &middot; 4H2O) است که در مواد اولیه شوینده و محصولات سفید کننده کلر استفاده می شود. با برخی از ترکیبات آلی، آب اکسیژنه یا هیدروژن پراکسید واکنش می دهد تا هیدرو پراکسید یا پراکسید را تشکیل دهد که برای شروع واکنش های پلیمریزاسیون استفاده می شود. در اکثر واکنش های آن، آب اکسیژنه، مواد دیگر را اکسید می کند، اگر چه خود با چند ترکیب مانند پرمنگنات پتاسیم اکسیداسیون می کند. کاربرد آب اکسیژنه آب اکسیژنه یا هیدروژن پراکسید یک آنتی سپتیک خفیف است که بر روی پوست استفاده می شود تا از آلودگی های جزئی، سوزش و سوختگی جلوگیری می کند. همچنین ممکن است به عنوان یک دهانشو استفاده شود تا به کاهش تحریک اندام دهان به صورت جزئی کمک کند (به عنوان مثال، به علت زخمهای خارش / سرما). این محصول با آزاد کردن اکسیژن در مناطقی که تحت تاثیر قرار گرفته است، کار می کند. انتشار اکسیژن باعث بوجود آمدن فوم می شود که به حذف پوست مرده و تمیز کردن منطقه کمک می کند، این محصول نباید برای درمان زخم های عمیق، نیش حیوان یا سوختگی های جدی استفاده شود. انواع آب اکسیژنه: آب اکسیژنه خوراکی آب اکسیژنه صنعتی نحوه استفاده از محلول آب اکسیژنه یا هیدروژن پراکسید : همه راهنمایی های موجود بر روی بسته بندی محصول را دنبال کنید. اگر از هر گونه اطلاعاتی مطمئن نیستید، با پزشک یا داروساز مشورت کنید. در چشم ها استفاده نکنید و یا روی قسمت های پوست زیاد قرار ندهید. اگر از این محصول بر روی پوست استفاده می کنید، قبل از استفاده، منطقه آسیب دیده را تمیز کنید. یک مقدار کمی از محصول را در ناحیه آسیب دیده اعمال کنید، معمولا 1 تا 3 بار در روز. اگر بعد از استفاده از این محصول یک باند را بکارید، ابتدا منطقه را خشک کنید. اگر از این محصول به عنوان یک دهان شو استفاده می کنید، قبل از استفاده از مقدار مشابه آب مخلوط کنید. حداقل 1 دقیقه در دهان بیش از منطقه آسیب دیده، سپس خارج کنید. این محصول را نخورید. شستشو تا 4 بار در روز یا به عنوان دندانپزشک یا دکتر شما انجام شود.</p>',0,'2022-12-09 10:16:52.459254');
/*!40000 ALTER TABLE `site_soren_productdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_productdetail_category`
--

DROP TABLE IF EXISTS `site_soren_productdetail_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_productdetail_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `productdetail_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `site_soren_productdetail_productdetail_id_categor_83be517a_uniq` (`productdetail_id`,`category_id`),
  KEY `site_soren_productde_category_id_38cb642c_fk_site_sore` (`category_id`),
  CONSTRAINT `site_soren_productde_category_id_38cb642c_fk_site_sore` FOREIGN KEY (`category_id`) REFERENCES `site_soren_category` (`id`),
  CONSTRAINT `site_soren_productde_productdetail_id_98256b41_fk_site_sore` FOREIGN KEY (`productdetail_id`) REFERENCES `site_soren_productdetail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_productdetail_category`
--

LOCK TABLES `site_soren_productdetail_category` WRITE;
/*!40000 ALTER TABLE `site_soren_productdetail_category` DISABLE KEYS */;
INSERT INTO `site_soren_productdetail_category` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,3),(7,7,4),(8,8,5),(10,10,6);
/*!40000 ALTER TABLE `site_soren_productdetail_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_productdetail_product_group`
--

DROP TABLE IF EXISTS `site_soren_productdetail_product_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_productdetail_product_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `productdetail_id` bigint NOT NULL,
  `productgroup_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `site_soren_productdetail_productdetail_id_product_1745376c_uniq` (`productdetail_id`,`productgroup_id`),
  KEY `site_soren_productde_productgroup_id_bc9410a8_fk_site_sore` (`productgroup_id`),
  CONSTRAINT `site_soren_productde_productdetail_id_ba6d4bfb_fk_site_sore` FOREIGN KEY (`productdetail_id`) REFERENCES `site_soren_productdetail` (`id`),
  CONSTRAINT `site_soren_productde_productgroup_id_bc9410a8_fk_site_sore` FOREIGN KEY (`productgroup_id`) REFERENCES `site_soren_productgroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_productdetail_product_group`
--

LOCK TABLES `site_soren_productdetail_product_group` WRITE;
/*!40000 ALTER TABLE `site_soren_productdetail_product_group` DISABLE KEYS */;
INSERT INTO `site_soren_productdetail_product_group` VALUES (11,1,1),(1,1,13),(10,2,1),(2,2,12),(9,3,1),(3,3,10),(4,3,11),(8,4,1),(5,4,9),(6,5,7),(7,6,3),(12,7,5),(13,8,4),(16,8,6),(17,10,2);
/*!40000 ALTER TABLE `site_soren_productdetail_product_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_productdetail_tags`
--

DROP TABLE IF EXISTS `site_soren_productdetail_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_productdetail_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `productdetail_id` bigint NOT NULL,
  `tags_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `site_soren_productdetail_productdetail_id_tags_id_aeb8538f_uniq` (`productdetail_id`,`tags_id`),
  KEY `site_soren_productde_tags_id_cd54e3df_fk_site_sore` (`tags_id`),
  CONSTRAINT `site_soren_productde_productdetail_id_efb43c90_fk_site_sore` FOREIGN KEY (`productdetail_id`) REFERENCES `site_soren_productdetail` (`id`),
  CONSTRAINT `site_soren_productde_tags_id_cd54e3df_fk_site_sore` FOREIGN KEY (`tags_id`) REFERENCES `site_soren_tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_productdetail_tags`
--

LOCK TABLES `site_soren_productdetail_tags` WRITE;
/*!40000 ALTER TABLE `site_soren_productdetail_tags` DISABLE KEYS */;
INSERT INTO `site_soren_productdetail_tags` VALUES (1,1,13),(2,2,12),(4,3,10),(3,3,11),(5,4,9),(6,5,14),(7,6,6),(8,7,8),(9,8,7),(11,10,5);
/*!40000 ALTER TABLE `site_soren_productdetail_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_productgroup`
--

DROP TABLE IF EXISTS `site_soren_productgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_productgroup` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(300) DEFAULT NULL,
  `description` longtext,
  `created` datetime(6) NOT NULL,
  `parent_id` bigint DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  `flat_name` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_soren_productgr_parent_id_cb5dd3d0_fk_site_sore` (`parent_id`),
  CONSTRAINT `site_soren_productgr_parent_id_cb5dd3d0_fk_site_sore` FOREIGN KEY (`parent_id`) REFERENCES `site_soren_productgroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_productgroup`
--

LOCK TABLES `site_soren_productgroup` WRITE;
/*!40000 ALTER TABLE `site_soren_productgroup` DISABLE KEYS */;
INSERT INTO `site_soren_productgroup` VALUES (1,'اسانس‌ها','<p>اسانس های میوه ای اهمیت زیادی در صنعت نیز دارند. اسانس های میوه ای که زیر شاخه اسانس های آرایشی و بهداشتی نیز می باشد بیشتر در صنایع آرایشی بهداشتی و شوینده نیز استفاده می شود. نوشیدنی یک صنعت در حال رشد است، نه تنها در هند، بلکه در سطح جهانی نیز. نوشیدنی ها در انواع مختلف و طعم های مختلف از جمله چای، قهوه به میوه ها و نوشابه های نوشیدنی همه در دسته نوشیدنی قرار می گیرند. به طور کلی به عنوان یک عامل طراوت استفاده می شود، نوشیدنی هایی مثل چای، قهوه نیز دارای مزایای سلامتی زیادی هستند. تعدادی از نوشیدنی هایی که در حال حاضر موجود هستند می توانند به بدن آب رسانی کنند. با این حال، در زمان های اخیر، افزایش ناگهانی محبوبیت آب میوه و سبزیجات طبیعی دیده می شود که دارای بسیاری از مزایای سلامتی هست و قدرت دارویی دارد. افزایش استفاده در این بخش موجب شده است که نیاز به جستجو به طور مداوم برای نوشیدنی های جدید که طعم جدیدی دارند، بدن را آب رسانی کنند و همچنین تغذیه مورد نیاز را فراهم کنند. به عنوان مثال، Juice Celery آخرین مشتاق در جستجوی نوشیدنی های سالم است زیرا نه تنها بدن را آب رسانی می کند، بلکه پر از مزایای سلامتی برای زندگی ما است. اسانس های میوه ای به طور گسترده ای در نوشیدنی ها برای طعم و مزه و همچنین برای مزایای بهداشتی مختلف استفاده می شود. روغن های ضروری که به طور معمول از میوه ها استخراج می شوند، به راحتی در آب حل نمی شوند و از این طریق با امولسیون هایی که طعم اسانس را حفظ می کنند استفاده می شود. برای مثال، اسانس های ضروری برای مصرف نوشیدنی ها از جمله مواد ضد التهابی، ضد افسردگی، ضد اسپاسمودی، ضد آلودگی، داروهای ضد افسردگی، داروهای ضد التهابی، تونیک، آرامبخش استفاده می شود. بسیاری از اسانس های ضروری مانند وانیل، ووتیور و غیره برای طعم دهنده و همچنین بسیاری از مزایای بهداشتی استفاده می شود که می توان از این اسانس ها به دست آورد. اسانس های میوه ای زیادی در صنعت نوشیدنی استفاده می شود. روغن های ضروری مثل مگن، کلاری سیج، روغن آووکادو طعم دهنده لوستر و غیره، در ساخت نوشیدنی های جذاب که دارای مزایای سلامتی زیادی نیز هستند استفاده می شود. عطر و طعم و مزه نوشیدنی ها با روغن های ضروری کاملا تازه سازی شده است. آنها نه تنها تشنگی را بر طرف می کنند بلکه بدن را با مواد مغذی دوباره پر می کنند و از این رو نه تنها آرام بخش هستند، بلکه همچنین به درمان بسیاری از بیماری های سالم کمک می کنند. از این رو هنگام افزودن به نوشیدنی هایی مانند چای، قهوه، آب میوه و غیره بسیار سودمند است. اسانس آهک مفید برای درمان تب ها در ارتباط با سرماخوردگی، گلودرد و آنفولانزا است. روغن کامپور برای درمان افسردگی عصبی، التهاب، آکنه، آرتروز، درد عضلانی، روماتیسم، اسپری، برونشیت، سرماخوردگی، سرفه، تب، بیماری آنفلوآنزا و عفونی استفاده می شود. اسانس پرتقال &ndash; نارنجی آب شیرین رایج ترین عطر در صنعت است. اسانس دارچین &ndash; به طور گسترده ای در صنایع عطر و داروسازی استفاده می شود، به عنوان یک تجویز کننده برای عطر و طعم محیط و محصولات مراقبت از بدن روغن رازیانه ی شیرین &ndash; متعادل کننده، طبیعی، ملایم روشن، آرامش بخش است آن در صنعت آروماتراپی استفاده می شود. روغنهای ضروری از &ldquo;ذات&rdquo; گیاهان مختلفی که در سراسر مناطق مختلف زمین رشد می کنند ساخته می شوند. اسانس های میوه ای مخصوصا برای افرادی مفید هستند که برای استفاده درمانی و آروماتراپی نیز مفید هستند. از این رو اسانس های میوه ای به عنوان افزودنی معطر و پاک کننده برای مواد تمیز کننده خانگی استفاده می شود، آنها را به پوست برای تابش اضافه کنید و یا آنها را در هوا پخش کنید تا موجب خوش خلقی و تقویت ذهن شود. اسانس های میوه ای مرکبات در اکثر موارد روغن های ضروری مرکبات از طریق سرد کردن پوست از میوه استخراج می شوند. برگاموت (Citrus begamia) به عنوان میوه مرکبات که برای ساختن چای ارل گری استفاده می شود، برگاموت گران است لیمو (Citrus limon) احتمالا از اسانس های ضروری و تقریبا مطمئنی که بیشتر از اسانس های میوه ای استفاده می شود، اسانس لیمو بسیار متنوع و مفید است. مردم از آن برای عطر کلاسیک استفاده می کنند که نشان دهنده پاکیزگی است. این یک اسانس پر انرژی است که حاوی لیمونن است، ماده فعالی که باعث از بین رفتن بوی بد دهان می شود. آهک (Citrus aurantifolia) کاملا با لیمو، اسانس روغن آفتاب با عطر و بوی تازه بسیار قوی است. این روغن هنگامی که با سایر روغن ها ترکیب می شود، به خوبی کار می کند و برای خواص تصفیه شناخته شده است. گریپ فروت (Citrus Paradisi) تارت، اما با رایحه بسیار جذاب می باشد، اسانس گریپ فروت هنگامی که در حمام پخش می شود مرطوب کننده سرد ، انرژی بخش و لذت بخش است. ماندارین (Citrus reticulata) بسیار مرسوم است. اسانس نارنگی دارای عطر و بوی روشن و ملایم است با بوی قوی تر و متمرکز تر از تنوع رنگ نارنجی ساده است. همچنین شما عزیزان می توانید برای دیدن کلیپ های آموزشی و دیدنی ما به لینک آپارات یا تماشا سورن شیمی مراجعه نمایید. مواد اولیه شیمیایی سورن شیمی واردکننده و تامین کننده اسانس در کشور ایران می باشد. برای خرید اسانس های میوه ای به آرشیو اسانس های میوه ای مراجعه فرمایید.</p>','2022-12-09 09:25:44.581952',NULL,'ES','flaticon-flasks'),(2,'صنایع آرایشی وبهداشتی','<p style=\"text-align: justify;\">صنعت لوازم آرایشی و بهداشتی محصولاتی را تولید می کند که برای آراسته شدن ظاهر یا بوی بدن انسان مورد استفاده قرار می گیرند. به طور کلی، محصولات آرایشی، ترکیبی از ترکیبات شیمیایی طبیعی و مصنوعی هستند. تولید این محصولات مستلزم تحقیق و توسعه گسترده ای است که معمولا شامل آزمایش حیوانات و تجزیه و تحلیل ارگانولپتیک می باشد. اجزای شیمیایی مصنوعی با استفاده از ترکیبات آلی یا بیوتکنولوژی تولید می شوند. مواد مصرفی و تجهیزات پردازش را بشناسید. بازار لوازم آرایشی نیاز به استانداردهای خاصی دارد، درست همانند داروسازی است. مواد مصرفی و تجهیزات فرآوری مورد استفاده در سالن ها باید تمیز باشد و با مقررات GMP فعلی مطابقت داشته باشند. استانداردهای مصرفی مناسب برای صنعت لوازم آرایشی چالش های جدید در فراصوت طی یک برنامه بازرسی ANSM طی یک دوره پنج ساله بین سال های 2010 تا 2015 که شامل مناطق تحت خطر آلودگی بود، شناسایی شد. تولید لوازم آرایشی و بهداشتی مستلزم مکانی است که شرایط محیطی آن کنترل شده و بدون خطر آلودگی باشد. در نتیجه، STERIGENE طیف وسیعی از مواد مصرفی صنایع آرایشی بهداشتی در آزمایشگاه فراهم می کند، مخصوصا برای تعمیر و نگهداری آزمایشگاه و امکانات تولید لوازم آرایشی و برای محافظت از پرسنل که در غیر این صورت می توانند با میکرو ارگانیسم ها و ذرات آلوده شوند.</p>','2022-12-09 09:28:23.715383',NULL,'CI','fa fa-user-o'),(3,'صنایع تصفیه آب','صنایع تصفیه آب ، تصفیه آب صنعتی برای بهینه سازی بیشتر فرآیندهای صنعتی مبتنی بر آب مانند گرمایش، خنک کننده، پردازش، تمیز کردن و شستشو استفاده می شود. هدف نهایی کاهش هزینه های عملیاتی و خطرات است. درمان آب ضعیف می تواند آسیب جدی به روند و نتایج نهایی ایجاد کند. سطوح لوله ها و عروق ها می توانند تحت تأثیر خوردگی قرار گیرند و دیگ بخار بخار می تواند افزایش یابد یا خوردگی شود. ما برای مقابله با چالش های آب آشامیدنی از تصفیه استفاده می کنیم. مواد اولیه صنایع تصفیه آب مواد شیمیایی تصفیه آب برای مدت طولانی برای کاربردهای صنعتی مورد استفاده قرار گرفته است. در ابتدا آنها عمدتا برای تصفیه آب خام و به عنوان مواد خام برای فرایند تولید مورد استفاده قرار می گرفتند. از آنجا که الزامات فاضلاب صنعتی به طور پیوسته افزایش یافته است، تقاضا برای مواد شیمیایی هوشمند و برنامه های کاربردی آنها نیز افزایش یافته است. راه حل های فنی و محصولات برای حذف رنگ، درمان آب آلوده با آلودگی بالا و یا حذف فلزات سنگین در حال حاضر در مرکز تصفیه فاضلاب صنعتی است. طیف گسترده ای از فلکشن های آلی و کلاژن های معدنی را برای رفع نیازهای پیشرفته امروز خود توسعه داده است.','2022-12-09 09:28:56.895494',NULL,'WI','fa fa-tint'),(4,'صنایع غذایی','صنایع غذایی مجموعه ای جامع و جهانی از شرکت های متنوع است که بیشتر مواد غذایی مصرف کننده توسط جمعیت جهان را تامین می کند. در مواد غذایی تغییرات شیمیایی که در جریان تولید، نگهداری و جابجایی مواد غذایی بوجود می آیند مورد بحث و بررسی قرار می گیرند. این تغییرات ممکن است که در بافت، طعم، رنگ، ارزش تغذیه ای و کیفیت بهداشتی ماده غذایی اثرات مطلوب یا نا مطلوبی را ایجاد کنند.مواد اولیه صنایع غذایی مصارف مواد شامل زیرمجموعه های مختلفی از قبیل: پروتئین ها، کربوهیدرات ها، صمغ ها، آنزیم ها، رنگ ها، ویتامین ها، مواد معدنی، طعم ها و افزودنی های غذایی می باشد. هر کدام از زیر مجموعه ها شامل محصولاتی می باشد که در صنایع غذایی کاربردهایی نیز دارند. مواد اولیه (مواد تشکیل دهنده، ابزارهای فرآوری و مواد بسته بندی) پایه و اساس محصولات غذایی می باشند. به این منظور باید شرایط قانونی (ایمن و قانونی برای استفاده مورد نظر شما) و مشخصات شما (به عملکرد و کیفیت فرایند و محصول شما کمک کند) را برآورده کند. در گذشته، تحقیق و توسعه فقط در انتخاب مواد اولیه صنایع غذایی جدید کار می کرد. اما اکنون به دلیل افزایش دسترسی به مواد منحصر به فرد و پیچیده به یک تیم گسترده ای از افراد متخصص نیاز است.','2022-12-09 09:29:24.849332',NULL,'FI','fa fa-envira'),(5,'صنایع کشاورزی','مواد اولیه صنایع کشاورزی : محصولات با کیفیت نیاز به مواد اولیه با کیفیت نیز دارند. در صنایع کشاورزی، مواد خام محصول با توجه به محصول نهایی تولید می شوند. انواع میوه و سبزیجات خاص به بازار محصولات تازه هدایت می شوند، در حالیکه بقیه آن ها برای تهیه یا انجماد مناسب هستند. راه های تولید محصولات کشاورزی نیز مهم است. جداسازی مواد خام و مواد زیستی ارگانیک به طور معمول باعث شده است که برای چندین سال مسئله مهمی بوده و این امر نیاز به سیستم های شناسایی خوب دارد. کمپین BRI با بیش از نیم قرن تجربه با این قبیل مسائل زنجیره غذایی درگیر بوده و ما افرادی هستیم که با سؤالات در مورد سیستم های تولید مواد اولیه و عملیات پس از برداشت واز جمله مسائل مربوط به آفت کش ها نظیر آزمایش آلودگی آفت کش ها و زنجیره تولید و توزیع کشاورزی باید مدیریت و نظارت کنیم.','2022-12-09 09:29:48.017833',NULL,'AI','flaticon-loader'),(6,'حلال‌ها','حلال ها و مواد شیمیایی صنعتی : حلالها مواد شیمیایی هستند که استفاده آن ها به طور چشمگیر و روز افزون در ایران و سراسر جهان پیشرفت کرده است. حلال ها در تنوع مورد استفاده قرار می گیرند و کاربرد آن ها از جمله رنگ ها و پوشش ها، محصولات مراقبت شخصی، داروها، آفت کش ها، پاک کننده های خانگی و صنعتی و جوهر می باشد. حلال ها راه حل هایی برای بسیاری از چالش های کسب و کار مدرن و زندگی در خانه را فراهم می کنند. گروه صنعت حلال (SIG) شورای شیمی آمریکا از تحقیقات علمی پشتیبانی می کند و در فعالیت های نظارتی مربوط به حلال ها کار می کند تا اطمینان حاصل شود که حلال ها همچنان به عنوان اجزای مهمی از طیف وسیعی از محصولات شناخته شده اند که به زندگی ما کمک می کنند تا ایمن تر و سالم تر زندگی کنیم. در حالی که دنیای آگاهانه محیط زیست نیازهای جهان امروز را برآورده می کند. حلال ها و مواد شیمیایی صنعتی تست مواد شیمیایی پایه و صنعتی، و خدمات نظارتی برای کمک به برآورده ساختن استانداردهای کیفیت و نظارتی و کارایی مطلوب در زنجیره عرضه. مواد شیمیایی بنیادی و صنعتی در مقادیر زیادی تولید می شوند و مواد ضروری برای محصولات مورد استفاده هم در صنعت و هم برای مصارف عمومی هستند. آنها شامل مواد خام شیمیایی مشتق شده از روغن (پتروشیمی)، مواد معدنی پایه و واسطه برای فرآیندهای شیمیایی می باشند. درک فرایندهای تولید و ترکیب شیمیایی این مواد شیمیایی اساسا برای رسیدن به اهداف کاهش هزینه و رعایت مقررات زیست محیطی و ایمنی به طور فزاینده ای مهم است. دانشمندان مواد شیمیایی اساسی و صنعتی را که در صنایع مختلف از قبیل مواد شیمیایی ، پلیمرها، مواد شیمیایی کشاورزی، دارویی، مواد شوینده، حلالها، پارچه و بسیاری دیگر استفاده می شود را آزمایش و تحلیل می کنند.حلال ها و مواد شیمیایی صنعتی : حلالها مواد شیمیایی هستند که استفاده آن ها به طور چشمگیر و روز افزون در ایران و سراسر جهان پیشرفت کرده است. حلال ها در تنوع مورد استفاده قرار می گیرند و کاربرد آن ها از جمله رنگ ها و پوشش ها، محصولات مراقبت شخصی، داروها، آفت کش ها، پاک کننده های خانگی و صنعتی و جوهر می باشد. حلال ها راه حل هایی برای بسیاری از چالش های کسب و کار مدرن و زندگی در خانه را فراهم می کنند. گروه صنعت حلال (SIG) شورای شیمی آمریکا از تحقیقات علمی پشتیبانی می کند و در فعالیت های نظارتی مربوط به حلال ها کار می کند تا اطمینان حاصل شود که حلال ها همچنان به عنوان اجزای مهمی از طیف وسیعی از محصولات شناخته شده اند که به زندگی ما کمک می کنند تا ایمن تر و سالم تر زندگی کنیم. در حالی که دنیای آگاهانه محیط زیست نیازهای جهان امروز را برآورده می کند. حلال ها و مواد شیمیایی صنعتی تست مواد شیمیایی پایه و صنعتی، و خدمات نظارتی برای کمک به برآورده ساختن استانداردهای کیفیت و نظارتی و کارایی مطلوب در زنجیره عرضه. مواد شیمیایی بنیادی و صنعتی در مقادیر زیادی تولید می شوند و مواد ضروری برای محصولات مورد استفاده هم در صنعت و هم برای مصارف عمومی هستند. آنها شامل مواد خام شیمیایی مشتق شده از روغن (پتروشیمی)، مواد معدنی پایه و واسطه برای فرآیندهای شیمیایی می باشند. درک فرایندهای تولید و ترکیب شیمیایی این مواد شیمیایی اساسا برای رسیدن به اهداف کاهش هزینه و رعایت مقررات زیست محیطی و ایمنی به طور فزاینده ای مهم است. دانشمندان مواد شیمیایی اساسی و صنعتی را که در صنایع مختلف از قبیل مواد شیمیایی ، پلیمرها، مواد شیمیایی کشاورزی، دارویی، مواد شوینده، حلالها، پارچه و بسیاری دیگر استفاده می شود را آزمایش و تحلیل می کنند.','2022-12-09 09:30:22.552809',NULL,'SO','flaticon-bottle'),(7,'صنایع حفاری','صنایع حفاری و تولید / خدمات شیمیایی: با استفاده از یک مته برای رسیدن به مخازن سوخت های فسیلی یک مفهوم ساده است که از قرن نوزدهم شناخته شده است. چالش های عملی بسیار عظیم هستند، و هرگز بزرگ تر نبوده اند، زیرا شرکت های انرژی به طور فزاینده ای به سمت دریاها و آبهای عمیق تر برای کمک به سوختن جامعه مدرن نگاه می کنند.شرکت های اکتشافی و تولیدی (مانند BP، Chevron یا Statoil) معمولا شرکت های حفاری تخصصی مانند حفاری را حفاری می کنند. حفاری زیر چند کیلومتری اقیانوس قهوه ای مایل به زرد یک کار مهیج است – اما یک حفاری شناخته شده برای برخورد با ایمنی و اثربخشی کلاس جهانی شناخته شده است. مراحل حفاری روند حفاری زمانی آغاز می شود که محققان یک شرکت انرژی یک پتانسیل زیرین نفتی را شناسایی کنند. حقوق حفاری به سایت برای تهیه آن برای حفاری اکتشافی بدست می آید. با توجه به ایمنی و محیط زیست هدف صنایع حفاری برای بالاترین استانداردهای کنترل خوب ممکن است.','2022-12-09 09:30:58.807828',NULL,'AI',NULL),(8,'اسانس شوینده و آرایشی و بهداشتی','','2022-12-09 09:31:27.693755',1,'ES',NULL),(9,'اسانس خوراکی','','2022-12-09 09:31:45.113746',1,'ES',NULL),(10,'اسانس‌های روغنی','','2022-12-09 09:31:57.819569',1,'ES',NULL),(11,'اسانس‌های میوه‌ای','','2022-12-09 09:34:16.005688',8,'ES',NULL),(12,'اسانس‌های عطری','','2022-12-09 09:34:58.273183',2,'ES',NULL),(13,'رایحه نو','','2022-12-09 09:35:08.292818',8,'ES',NULL);
/*!40000 ALTER TABLE `site_soren_productgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_samplerequierment`
--

DROP TABLE IF EXISTS `site_soren_samplerequierment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_samplerequierment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `company_name` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `description` longtext,
  `read` tinyint(1) NOT NULL,
  `created` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_samplerequierment`
--

LOCK TABLES `site_soren_samplerequierment` WRITE;
/*!40000 ALTER TABLE `site_soren_samplerequierment` DISABLE KEYS */;
INSERT INTO `site_soren_samplerequierment` VALUES (1,'توضیحات بالای سایت','سورن شیمی','samadyd@gmail.com','09158520156','<p style=\"text-align: justify;\">شرکت سورن شیمی جهت سهولت مشتریان و متقاضیان گرامی بخشی را اختصاص به نمونه های درخواستی شما نیز داده است. کافیست که نام محصول و مقدار نمونه درخواستی خود را نیز برای ما ارسال کنید تا نمونه را برای شما ارسال نماییم. شما میتوانید اگر برند یا آنالیز خاصی را مد نظر دارید از طریق فرم زیر اقدام به ارسال آنالیز درخواستی نمایید. سورن شیمی این امکان را به مشتریان داده تا بتوانند قبل از خرید مواد اولیه شیمیایی ابتدا آن ها را تست کرده و آزمایش کنند سپس خریداری کنند. با این کار مشتریان رضایت بیشتری داشته و محصولات بهتری را تولید میکنند.</p>',0,'2022-12-20 16:53:30.201609'),(2,'دانیال صمدی','سورن شیمی','samadyd@gmail.com','09158520156','asasa',0,'2022-12-20 16:53:30.201609'),(3,'دانیال صمدی','آبتین پیشتاز آینده','javad.moh1383@gmail.com','99158520156','asas',0,'2022-12-20 16:53:53.942774');
/*!40000 ALTER TABLE `site_soren_samplerequierment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_tags`
--

DROP TABLE IF EXISTS `site_soren_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_tags`
--

LOCK TABLES `site_soren_tags` WRITE;
/*!40000 ALTER TABLE `site_soren_tags` DISABLE KEYS */;
INSERT INTO `site_soren_tags` VALUES (1,'اسانس'),(2,'مواد شیمیایی'),(3,'سورن شیمی'),(4,'حلال‌ها'),(5,'صنایع آرایشی وبهداشتی'),(6,'صنایع تصفیه آب'),(7,'صنایع غذایی'),(8,'صنایع کشاورزی'),(9,'خوراکی'),(10,'روغنی'),(11,'میوه‌ای'),(12,'عطری'),(13,'رایحه نو'),(14,'صنایع حفاری');
/*!40000 ALTER TABLE `site_soren_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_useremailbank`
--

DROP TABLE IF EXISTS `site_soren_useremailbank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_useremailbank` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `created` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_useremailbank`
--

LOCK TABLES `site_soren_useremailbank` WRITE;
/*!40000 ALTER TABLE `site_soren_useremailbank` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_soren_useremailbank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_soren_videogallery`
--

DROP TABLE IF EXISTS `site_soren_videogallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_soren_videogallery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  `text` longtext,
  `video` varchar(100) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_soren_videogallery`
--

LOCK TABLES `site_soren_videogallery` WRITE;
/*!40000 ALTER TABLE `site_soren_videogallery` DISABLE KEYS */;
INSERT INTO `site_soren_videogallery` VALUES (1,'عنوان شماره یک','<p>متن مرتبط با ویدئو شماره یک</p>','videoGallery/2022/12/azadar_fatemeh.mp4','2022-12-22 15:39:16.774244','videoGallery/background/image/2022/12/1313.jpg');
/*!40000 ALTER TABLE `site_soren_videogallery` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 23:57:21
