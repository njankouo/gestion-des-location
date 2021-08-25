-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           5.7.33 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour location
DROP DATABASE IF EXISTS `location`;
CREATE DATABASE IF NOT EXISTS `location` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `location`;

-- Listage de la structure de la table location. articles
DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noserie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estDisponible` tinyint(1) NOT NULL DEFAULT '1',
  `type_article_Id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_type_article_id_foreign` (`type_article_Id`),
  CONSTRAINT `articles_type_article_id_foreign` FOREIGN KEY (`type_article_Id`) REFERENCES `type_articles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table location.articles : ~30 rows (environ)
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `nom`, `noserie`, `imageUrl`, `estDisponible`, `type_article_Id`, `created_at`, `updated_at`) VALUES
	(1, 'Sauer', 'ZQHPCUEU721', 'https://via.placeholder.com/640x480.png/00ccee?text=velit', 0, 2, '2021-08-16 02:42:41', '2021-08-16 02:42:41'),
	(2, 'Powlowski', 'TDYTMO64', 'https://via.placeholder.com/640x480.png/005533?text=assumenda', 0, 4, '2021-08-16 02:42:41', '2021-08-16 02:42:41'),
	(3, 'Jacobson', 'VHPTJG7Z', 'https://via.placeholder.com/640x480.png/002233?text=aut', 1, 4, '2021-08-16 02:42:41', '2021-08-16 02:42:41'),
	(4, 'Jacobs', 'NYYMZW2ZN48', 'https://via.placeholder.com/640x480.png/001177?text=voluptates', 0, 3, '2021-08-16 02:42:41', '2021-08-16 02:42:41'),
	(5, 'Mayert', 'ZTYLFM3V', 'https://via.placeholder.com/640x480.png/00bb22?text=numquam', 0, 2, '2021-08-16 02:42:41', '2021-08-16 02:42:41'),
	(6, 'Hill', 'AAOTMTOMKDO', 'https://via.placeholder.com/640x480.png/00ddaa?text=quae', 1, 4, '2021-08-16 02:42:41', '2021-08-16 02:42:41'),
	(7, 'Stokes', 'SPWCGRPU', 'https://via.placeholder.com/640x480.png/0044dd?text=deserunt', 1, 6, '2021-08-16 02:42:41', '2021-08-16 02:42:41'),
	(8, 'Donnelly', 'UMHLMS75', 'https://via.placeholder.com/640x480.png/00ff77?text=facilis', 1, 1, '2021-08-16 02:42:42', '2021-08-16 02:42:42'),
	(9, 'Jakubowski', 'WUOPAB05', 'https://via.placeholder.com/640x480.png/00dd88?text=nesciunt', 0, 4, '2021-08-16 02:42:42', '2021-08-16 02:42:42'),
	(10, 'Greenholt', 'AQOFAN9ND5P', 'https://via.placeholder.com/640x480.png/00ee66?text=nostrum', 1, 4, '2021-08-16 02:42:42', '2021-08-16 02:42:42'),
	(11, 'Nienow', 'IBIUUKWL0RP', 'https://via.placeholder.com/640x480.png/0000ff?text=et', 1, 4, '2021-08-16 02:42:42', '2021-08-16 02:42:42'),
	(12, 'McKenzie', 'GRNHNGMI', 'https://via.placeholder.com/640x480.png/003355?text=ut', 1, 1, '2021-08-16 02:42:42', '2021-08-16 02:42:42'),
	(13, 'Schumm', 'XXAGRLSE', 'https://via.placeholder.com/640x480.png/00dd00?text=rerum', 0, 2, '2021-08-16 02:42:42', '2021-08-16 02:42:42'),
	(14, 'Cormier', 'TOYSIBKIL7S', 'https://via.placeholder.com/640x480.png/001155?text=est', 0, 4, '2021-08-16 02:42:42', '2021-08-16 02:42:42'),
	(15, 'Hammes', 'NWYIBLBP', 'https://via.placeholder.com/640x480.png/006644?text=velit', 1, 2, '2021-08-16 02:42:42', '2021-08-16 02:42:42'),
	(16, 'Kris', 'FXAEDM19LIJ', 'https://via.placeholder.com/640x480.png/00ee55?text=ut', 0, 1, '2021-08-16 02:42:42', '2021-08-16 02:42:42'),
	(17, 'Feil', 'OJTLMPUV', 'https://via.placeholder.com/640x480.png/00ff00?text=error', 1, 6, '2021-08-16 02:42:42', '2021-08-16 02:42:42'),
	(18, 'Brown', 'GYBNXAFH09O', 'https://via.placeholder.com/640x480.png/0066aa?text=et', 1, 6, '2021-08-16 02:42:42', '2021-08-16 02:42:42'),
	(19, 'Kunde', 'BVGBLJL3OTD', 'https://via.placeholder.com/640x480.png/009911?text=consequatur', 0, 5, '2021-08-16 02:42:42', '2021-08-16 02:42:42'),
	(20, 'Yost', 'CWWPPSI0', 'https://via.placeholder.com/640x480.png/008844?text=nisi', 1, 1, '2021-08-16 02:42:42', '2021-08-16 02:42:42'),
	(21, 'Kautzer', 'XRTLWQIS', 'https://via.placeholder.com/640x480.png/00ccff?text=commodi', 0, 4, '2021-08-16 02:42:42', '2021-08-16 02:42:42'),
	(22, 'Monahan', 'GGBSTQFJ', 'https://via.placeholder.com/640x480.png/00bb44?text=accusamus', 1, 4, '2021-08-16 02:42:42', '2021-08-16 02:42:42'),
	(23, 'Okuneva', 'HSFKHRH5', 'https://via.placeholder.com/640x480.png/00ee11?text=qui', 0, 1, '2021-08-16 02:42:42', '2021-08-16 02:42:42'),
	(24, 'Little', 'ETZRVYK4', 'https://via.placeholder.com/640x480.png/005599?text=praesentium', 0, 5, '2021-08-16 02:42:42', '2021-08-16 02:42:42'),
	(25, 'Dietrich', 'ERGHTNLQ', 'https://via.placeholder.com/640x480.png/005500?text=eligendi', 0, 2, '2021-08-16 02:42:42', '2021-08-16 02:42:42'),
	(26, 'Botsford', 'UIHPIFMEW1K', 'https://via.placeholder.com/640x480.png/007700?text=debitis', 0, 5, '2021-08-16 02:42:43', '2021-08-16 02:42:43'),
	(27, 'Littel', 'IXDYNX87', 'https://via.placeholder.com/640x480.png/00bb11?text=ut', 1, 3, '2021-08-16 02:42:43', '2021-08-16 02:42:43'),
	(28, 'Bayer', 'KMTMYFW7', 'https://via.placeholder.com/640x480.png/00aa88?text=dolorem', 0, 4, '2021-08-16 02:42:43', '2021-08-16 02:42:43'),
	(29, 'Kuphal', 'SZRMWYEKUDF', 'https://via.placeholder.com/640x480.png/0033ff?text=est', 1, 3, '2021-08-16 02:42:43', '2021-08-16 02:42:43'),
	(30, 'Muller', 'IJYOYZ35988', 'https://via.placeholder.com/640x480.png/003355?text=laboriosam', 1, 4, '2021-08-16 02:42:43', '2021-08-16 02:42:43');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- Listage de la structure de la table location. articles_locations
DROP TABLE IF EXISTS `articles_locations`;
CREATE TABLE IF NOT EXISTS `articles_locations` (
  `article_Id` bigint(20) unsigned NOT NULL,
  `location_Id` bigint(20) unsigned NOT NULL,
  KEY `articles_locations_article_id_foreign` (`article_Id`),
  KEY `articles_locations_location_id_foreign` (`location_Id`),
  CONSTRAINT `articles_locations_article_id_foreign` FOREIGN KEY (`article_Id`) REFERENCES `articles` (`id`),
  CONSTRAINT `articles_locations_location_id_foreign` FOREIGN KEY (`location_Id`) REFERENCES `locations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table location.articles_locations : ~0 rows (environ)
/*!40000 ALTER TABLE `articles_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles_locations` ENABLE KEYS */;

-- Listage de la structure de la table location. articles_proprietes
DROP TABLE IF EXISTS `articles_proprietes`;
CREATE TABLE IF NOT EXISTS `articles_proprietes` (
  `article_Id` bigint(20) unsigned NOT NULL,
  `propriete_article_Id` bigint(20) unsigned NOT NULL,
  KEY `articles_proprietes_article_id_foreign` (`article_Id`),
  KEY `articles_proprietes_propriete_article_id_foreign` (`propriete_article_Id`),
  CONSTRAINT `articles_proprietes_article_id_foreign` FOREIGN KEY (`article_Id`) REFERENCES `articles` (`id`),
  CONSTRAINT `articles_proprietes_propriete_article_id_foreign` FOREIGN KEY (`propriete_article_Id`) REFERENCES `propriete_articles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table location.articles_proprietes : ~0 rows (environ)
/*!40000 ALTER TABLE `articles_proprietes` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles_proprietes` ENABLE KEYS */;

-- Listage de la structure de la table location. clients
DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexe` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datenaissance` date NOT NULL,
  `lieunaissance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationalite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pays` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pieceidentite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nopieceidentite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table location.clients : ~1 rows (environ)
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` (`id`, `nom`, `sexe`, `prenom`, `datenaissance`, `lieunaissance`, `nationalite`, `ville`, `pays`, `adresse`, `telephone1`, `telephone2`, `pieceidentite`, `nopieceidentite`, `created_at`, `updated_at`) VALUES
	(120, 'Stehr', '0', 'Altenwerth', '2011-04-20', 'Gambia,Lake Diego', 'Djibouti', 'Lake Diego', 'Gambia', '5126 Edd Parkways\nHahnshire, MN 93997-9338', '+1 (763) 461-8311', '682.271.9664', '2', '6011281958961492', '2021-08-16 02:42:51', '2021-08-16 02:42:51');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;

-- Listage de la structure de la table location. duree_locations
DROP TABLE IF EXISTS `duree_locations`;
CREATE TABLE IF NOT EXISTS `duree_locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valeurenheure` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table location.duree_locations : ~2 rows (environ)
/*!40000 ALTER TABLE `duree_locations` DISABLE KEYS */;
INSERT INTO `duree_locations` (`id`, `libelle`, `valeurenheure`, `created_at`, `updated_at`) VALUES
	(1, 'journee', 24, NULL, NULL),
	(2, 'demi-heure', 12, NULL, NULL);
/*!40000 ALTER TABLE `duree_locations` ENABLE KEYS */;

-- Listage de la structure de la table location. failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table location.failed_jobs : ~0 rows (environ)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Listage de la structure de la table location. locations
DROP TABLE IF EXISTS `locations`;
CREATE TABLE IF NOT EXISTS `locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `datedebut` datetime NOT NULL,
  `datefin` datetime NOT NULL,
  `user_Id` bigint(20) unsigned NOT NULL,
  `client_Id` bigint(20) unsigned NOT NULL,
  `status_location_Id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `locations_user_id_foreign` (`user_Id`),
  KEY `locations_client_id_foreign` (`client_Id`),
  KEY `locations_status_location_id_foreign` (`status_location_Id`),
  CONSTRAINT `locations_client_id_foreign` FOREIGN KEY (`client_Id`) REFERENCES `clients` (`id`),
  CONSTRAINT `locations_status_location_id_foreign` FOREIGN KEY (`status_location_Id`) REFERENCES `status_locations` (`id`),
  CONSTRAINT `locations_user_id_foreign` FOREIGN KEY (`user_Id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table location.locations : ~0 rows (environ)
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;

-- Listage de la structure de la table location. migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table location.migrations : ~17 rows (environ)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2021_08_10_120709_create_type_articles', 1),
	(5, '2021_08_10_121453_create_articles_table', 1),
	(6, '2021_08_10_121625_create_propriete_articles', 1),
	(7, '2021_08_10_122009_create_permissions', 1),
	(8, '2021_08_10_122121_create_status_locations', 1),
	(9, '2021_08_10_122255_create_clients', 1),
	(10, '2021_08_10_122518_create_roles', 1),
	(11, '2021_08_10_122610_create_locations', 1),
	(12, '2021_08_10_122804_create_paiements', 1),
	(13, '2021_08_10_123245_create_duree_locations', 1),
	(14, '2021_08_10_123413_create_tarifications', 1),
	(15, '2021_08_10_125802_create_articles_locations', 1),
	(16, '2021_08_10_131156_create_users_roles', 1),
	(17, '2021_08_10_131231_create_users_permissions', 1),
	(18, '2021_08_10_131332_create_articles_proprietes', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Listage de la structure de la table location. paiements
DROP TABLE IF EXISTS `paiements`;
CREATE TABLE IF NOT EXISTS `paiements` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `montantpaye` double NOT NULL,
  `datepaiement` datetime NOT NULL,
  `user_Id` bigint(20) unsigned NOT NULL,
  `location_Id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paiements_user_id_foreign` (`user_Id`),
  CONSTRAINT `paiements_user_id_foreign` FOREIGN KEY (`user_Id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table location.paiements : ~0 rows (environ)
/*!40000 ALTER TABLE `paiements` DISABLE KEYS */;
/*!40000 ALTER TABLE `paiements` ENABLE KEYS */;

-- Listage de la structure de la table location. password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table location.password_resets : ~0 rows (environ)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('dairounjankouo2019@gmail.com', '$2y$10$ZDbpEwbpwNZnmD/lwkxLx.dJYq70b545rPdTmNqJRpZ4UiAxmnH6W', '2021-08-19 18:52:49');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Listage de la structure de la table location. permissions
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table location.permissions : ~9 rows (environ)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `nom`, `created_at`, `updated_at`) VALUES
	(1, 'ajouter un client', NULL, NULL),
	(2, 'consulter un client', NULL, NULL),
	(3, 'mettre a jour un client', NULL, NULL),
	(4, 'ajouter une location', NULL, NULL),
	(5, 'consulter une location', NULL, NULL),
	(6, 'mettre a jour une location', NULL, NULL),
	(7, 'ajouter un article', NULL, NULL),
	(8, 'consulter un article', NULL, NULL),
	(9, 'mettre a jour un article', NULL, NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Listage de la structure de la table location. propriete_articles
DROP TABLE IF EXISTS `propriete_articles`;
CREATE TABLE IF NOT EXISTS `propriete_articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estobligatoire` tinyint(1) NOT NULL DEFAULT '1',
  `type_article_Id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `propriete_articles_type_article_id_foreign` (`type_article_Id`),
  CONSTRAINT `propriete_articles_type_article_id_foreign` FOREIGN KEY (`type_article_Id`) REFERENCES `type_articles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table location.propriete_articles : ~0 rows (environ)
/*!40000 ALTER TABLE `propriete_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `propriete_articles` ENABLE KEYS */;

-- Listage de la structure de la table location. roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table location.roles : ~5 rows (environ)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `nom`, `created_at`, `updated_at`) VALUES
	(1, 'admin', NULL, NULL),
	(2, 'superadmin', NULL, NULL),
	(6, 'manager', NULL, NULL),
	(7, 'employe', NULL, NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Listage de la structure de la table location. status_locations
DROP TABLE IF EXISTS `status_locations`;
CREATE TABLE IF NOT EXISTS `status_locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table location.status_locations : ~3 rows (environ)
/*!40000 ALTER TABLE `status_locations` DISABLE KEYS */;
INSERT INTO `status_locations` (`id`, `nom`) VALUES
	(1, 'en cours'),
	(2, 'en attente'),
	(3, 'termine');
/*!40000 ALTER TABLE `status_locations` ENABLE KEYS */;

-- Listage de la structure de la table location. tarifications
DROP TABLE IF EXISTS `tarifications`;
CREATE TABLE IF NOT EXISTS `tarifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `prix` double NOT NULL,
  `dureelocation_Id` bigint(20) unsigned NOT NULL,
  `article_Id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tarifications_dureelocation_id_foreign` (`dureelocation_Id`),
  KEY `tarifications_article_id_foreign` (`article_Id`),
  CONSTRAINT `tarifications_article_id_foreign` FOREIGN KEY (`article_Id`) REFERENCES `articles` (`id`),
  CONSTRAINT `tarifications_dureelocation_id_foreign` FOREIGN KEY (`dureelocation_Id`) REFERENCES `duree_locations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table location.tarifications : ~0 rows (environ)
/*!40000 ALTER TABLE `tarifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarifications` ENABLE KEYS */;

-- Listage de la structure de la table location. type_articles
DROP TABLE IF EXISTS `type_articles`;
CREATE TABLE IF NOT EXISTS `type_articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_articles_nom_unique` (`nom`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table location.type_articles : ~10 rows (environ)
/*!40000 ALTER TABLE `type_articles` DISABLE KEYS */;
INSERT INTO `type_articles` (`id`, `nom`, `created_at`, `updated_at`) VALUES
	(1, 'bmw', NULL, NULL),
	(2, 'bas niveau', NULL, NULL),
	(3, 'phonex', NULL, NULL),
	(4, 'voiture', NULL, NULL),
	(5, 'maison', NULL, NULL),
	(6, 'telephone', NULL, NULL),
	(7, 'sexe', NULL, NULL),
	(8, 'femme', NULL, NULL),
	(9, 'homme', NULL, NULL),
	(10, 'animal', NULL, NULL);
/*!40000 ALTER TABLE `type_articles` ENABLE KEYS */;

-- Listage de la structure de la table location. users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexe` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pieceidentite` int(11) NOT NULL,
  `numeropieceidentite` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table location.users : ~5 rows (environ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `nom`, `prenom`, `sexe`, `telephone1`, `telephone2`, `pieceidentite`, `numeropieceidentite`, `email`, `password`, `photo`, `created_at`, `updated_at`) VALUES
	(1, 'njankouo ndam', 'dairou', 'M', '1-667-946-3026', '803-916-7223', 0, '3589000274309296', 'dairounjankouo2019@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/640x480.png/006688?text=sit', '2021-08-16 02:42:52', '2021-08-16 02:42:52'),
	(2, 'Keeling', 'Emiliano', 'M', '+1-804-439-2052', '+13397370899', 0, '5173939642675713', 'valerie67@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/640x480.png/00ee55?text=libero', '2021-08-16 02:42:52', '2021-08-16 02:42:52'),
	(3, 'Larson', 'Johan', 'M', '1-743-971-3517', '+1.423.776.7575', 0, '2221399192198773', 'adella06@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/640x480.png/00bb00?text=asperiores', '2021-08-16 02:42:53', '2021-08-16 02:42:53'),
	(4, 'Bauch', 'Dalton', 'F', '+1 (385) 817-9773', '+1-817-542-0287', 0, '6011466521077732', 'jones.treva@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/640x480.png/0022bb?text=sequi', '2021-08-16 02:42:53', '2021-08-16 02:42:53'),
	(5, 'Konopelski', 'Margaretta', 'F', '(725) 553-8148', '+19567879031', 0, '5243819535826845', 'alanna59@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/640x480.png/009955?text=architecto', '2021-08-16 02:42:53', '2021-08-16 02:42:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Listage de la structure de la table location. users_permissions
DROP TABLE IF EXISTS `users_permissions`;
CREATE TABLE IF NOT EXISTS `users_permissions` (
  `user_Id` bigint(20) unsigned NOT NULL,
  `permission_Id` bigint(20) unsigned NOT NULL,
  KEY `users_permissions_user_id_foreign` (`user_Id`),
  KEY `users_permissions_permission_id_foreign` (`permission_Id`),
  CONSTRAINT `users_permissions_permission_id_foreign` FOREIGN KEY (`permission_Id`) REFERENCES `permissions` (`id`),
  CONSTRAINT `users_permissions_user_id_foreign` FOREIGN KEY (`user_Id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table location.users_permissions : ~0 rows (environ)
/*!40000 ALTER TABLE `users_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_permissions` ENABLE KEYS */;

-- Listage de la structure de la table location. users_roles
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE IF NOT EXISTS `users_roles` (
  `user_Id` bigint(20) unsigned NOT NULL,
  `role_Id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `users_roles_user_id_foreign` (`user_Id`),
  KEY `users_roles_role_id_foreign` (`role_Id`),
  CONSTRAINT `users_roles_role_id_foreign` FOREIGN KEY (`role_Id`) REFERENCES `roles` (`id`),
  CONSTRAINT `users_roles_user_id_foreign` FOREIGN KEY (`user_Id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table location.users_roles : ~3 rows (environ)
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` (`user_Id`, `role_Id`, `created_at`, `updated_at`) VALUES
	(3, 6, NULL, NULL),
	(3, 7, '2021-08-18 16:43:04', NULL),
	(1, 1, NULL, NULL),
	(5, 6, NULL, NULL);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
