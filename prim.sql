-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                5.7.33 - MySQL Community Server (GPL)
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- prime_project için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `prime_project` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `prime_project`;

-- tablo yapısı dökülüyor prime_project.aims
CREATE TABLE IF NOT EXISTS `aims` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL DEFAULT '2022',
  `total_aim` int(11) NOT NULL DEFAULT '0',
  `aim` int(11) NOT NULL DEFAULT '0',
  `remainder` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- prime_project.aims: ~84 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `aims` DISABLE KEYS */;
REPLACE INTO `aims` (`id`, `user_id`, `month`, `year`, `total_aim`, `aim`, `remainder`, `created_at`, `updated_at`) VALUES
	(1, '1', 1, 2022, 2500, 0, 2500.00, NULL, NULL),
	(2, '1', 2, 2022, 2500, 0, 2500.00, NULL, NULL),
	(3, '1', 3, 2022, 1000, 88, 934.00, NULL, '2022-03-25 14:47:42'),
	(4, '1', 4, 2022, 1500, 0, 1500.00, NULL, NULL),
	(5, '1', 5, 2022, 1000, 0, 1000.00, NULL, NULL),
	(6, '1', 6, 2022, 2500, 0, 2500.00, NULL, NULL),
	(7, '1', 7, 2022, 2000, 0, 2000.00, NULL, NULL),
	(8, '1', 8, 2022, 2000, 0, 2000.00, NULL, NULL),
	(9, '1', 9, 2022, 1500, 0, 1500.00, NULL, NULL),
	(10, '1', 10, 2022, 2000, 0, 2000.00, NULL, NULL),
	(11, '1', 11, 2022, 1500, 0, 1500.00, NULL, NULL),
	(12, '1', 12, 2022, 1000, 0, 1000.00, NULL, NULL),
	(13, '2', 1, 2022, 1000, 0, 1000.00, NULL, NULL),
	(14, '2', 2, 2022, 1500, 0, 1500.00, NULL, NULL),
	(15, '2', 3, 2022, 1000, 0, 1000.00, NULL, NULL),
	(16, '2', 4, 2022, 2000, 0, 2000.00, NULL, NULL),
	(17, '2', 5, 2022, 2500, 0, 2500.00, NULL, NULL),
	(18, '2', 6, 2022, 1500, 0, 1500.00, NULL, NULL),
	(19, '2', 7, 2022, 2500, 0, 2500.00, NULL, NULL),
	(20, '2', 8, 2022, 2500, 0, 2500.00, NULL, NULL),
	(21, '2', 9, 2022, 1000, 0, 1000.00, NULL, NULL),
	(22, '2', 10, 2022, 1000, 0, 1000.00, NULL, NULL),
	(23, '2', 11, 2022, 2500, 0, 2500.00, NULL, NULL),
	(24, '2', 12, 2022, 2500, 0, 2500.00, NULL, NULL),
	(25, '3', 1, 2022, 2500, 0, 2500.00, NULL, NULL),
	(26, '3', 2, 2022, 2000, 0, 2000.00, NULL, NULL),
	(27, '3', 3, 2022, 1500, 17, 1500.00, NULL, '2022-03-25 14:58:41'),
	(28, '3', 4, 2022, 2500, 0, 2500.00, NULL, NULL),
	(29, '3', 5, 2022, 1500, 0, 1500.00, NULL, NULL),
	(30, '3', 6, 2022, 1000, 0, 1000.00, NULL, NULL),
	(31, '3', 7, 2022, 2500, 0, 2500.00, NULL, NULL),
	(32, '3', 8, 2022, 1000, 0, 1000.00, NULL, NULL),
	(33, '3', 9, 2022, 2500, 0, 2500.00, NULL, NULL),
	(34, '3', 10, 2022, 2500, 0, 2500.00, NULL, NULL),
	(35, '3', 11, 2022, 1000, 0, 1000.00, NULL, NULL),
	(36, '3', 12, 2022, 1500, 0, 1500.00, NULL, NULL),
	(37, '4', 1, 2022, 1000, 0, 1000.00, NULL, NULL),
	(38, '4', 2, 2022, 1500, 0, 1500.00, NULL, NULL),
	(39, '4', 3, 2022, 1500, 0, 1500.00, NULL, NULL),
	(40, '4', 4, 2022, 2000, 0, 2000.00, NULL, NULL),
	(41, '4', 5, 2022, 2500, 0, 2500.00, NULL, NULL),
	(42, '4', 6, 2022, 1000, 0, 1000.00, NULL, NULL),
	(43, '4', 7, 2022, 1500, 0, 1500.00, NULL, NULL),
	(44, '4', 8, 2022, 1000, 0, 1000.00, NULL, NULL),
	(45, '4', 9, 2022, 1500, 0, 1500.00, NULL, NULL),
	(46, '4', 10, 2022, 1500, 0, 1500.00, NULL, NULL),
	(47, '4', 11, 2022, 2000, 0, 2000.00, NULL, NULL),
	(48, '4', 12, 2022, 2500, 0, 2500.00, NULL, NULL),
	(49, '5', 1, 2022, 2000, 0, 2000.00, NULL, NULL),
	(50, '5', 2, 2022, 2000, 0, 2000.00, NULL, NULL),
	(51, '5', 3, 2022, 2500, 135, 2500.00, NULL, '2022-03-25 14:49:19'),
	(52, '5', 4, 2022, 1500, 0, 1500.00, NULL, NULL),
	(53, '5', 5, 2022, 2500, 0, 2500.00, NULL, NULL),
	(54, '5', 6, 2022, 1000, 0, 1000.00, NULL, NULL),
	(55, '5', 7, 2022, 2500, 0, 2500.00, NULL, NULL),
	(56, '5', 8, 2022, 2500, 0, 2500.00, NULL, NULL),
	(57, '5', 9, 2022, 1500, 0, 1500.00, NULL, NULL),
	(58, '5', 10, 2022, 2000, 0, 2000.00, NULL, NULL),
	(59, '5', 11, 2022, 1000, 0, 1000.00, NULL, NULL),
	(60, '5', 12, 2022, 1000, 0, 1000.00, NULL, NULL),
	(61, '6', 1, 2022, 1500, 0, 1500.00, NULL, NULL),
	(62, '6', 2, 2022, 2500, 0, 2500.00, NULL, NULL),
	(63, '6', 3, 2022, 1000, 0, 1000.00, NULL, NULL),
	(64, '6', 4, 2022, 2500, 0, 2500.00, NULL, NULL),
	(65, '6', 5, 2022, 1000, 0, 1000.00, NULL, NULL),
	(66, '6', 6, 2022, 1500, 0, 1500.00, NULL, NULL),
	(67, '6', 7, 2022, 2000, 0, 2000.00, NULL, NULL),
	(68, '6', 8, 2022, 2000, 0, 2000.00, NULL, NULL),
	(69, '6', 9, 2022, 2500, 0, 2500.00, NULL, NULL),
	(70, '6', 10, 2022, 2500, 0, 2500.00, NULL, NULL),
	(71, '6', 11, 2022, 2000, 0, 2000.00, NULL, NULL),
	(72, '6', 12, 2022, 1500, 0, 1500.00, NULL, NULL),
	(73, '7', 1, 2022, 2000, 0, 2000.00, NULL, NULL),
	(74, '7', 2, 2022, 2500, 0, 2500.00, NULL, NULL),
	(75, '7', 3, 2022, 1500, 44, 1477.68, NULL, '2022-03-25 15:00:14'),
	(76, '7', 4, 2022, 1500, 0, 1500.00, NULL, NULL),
	(77, '7', 5, 2022, 1000, 0, 1000.00, NULL, NULL),
	(78, '7', 6, 2022, 1500, 0, 1500.00, NULL, NULL),
	(79, '7', 7, 2022, 1500, 0, 1500.00, NULL, NULL),
	(80, '7', 8, 2022, 1000, 0, 1000.00, NULL, NULL),
	(81, '7', 9, 2022, 1500, 0, 1500.00, NULL, NULL),
	(82, '7', 10, 2022, 2500, 0, 2500.00, NULL, NULL),
	(83, '7', 11, 2022, 2500, 0, 2500.00, NULL, NULL),
	(84, '7', 12, 2022, 2000, 0, 2000.00, NULL, NULL);
/*!40000 ALTER TABLE `aims` ENABLE KEYS */;

-- tablo yapısı dökülüyor prime_project.failed_jobs
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

-- prime_project.failed_jobs: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- tablo yapısı dökülüyor prime_project.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- prime_project.migrations: ~8 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_03_25_101743_create_sales_table', 2),
	(6, '2022_03_25_102245_create_personal_table', 2),
	(7, '2022_03_25_112219_create_products_table', 3),
	(10, '2022_03_25_120130_create_aims_table', 4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- tablo yapısı dökülüyor prime_project.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- prime_project.password_resets: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- tablo yapısı dökülüyor prime_project.personal
CREATE TABLE IF NOT EXISTS `personal` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- prime_project.personal: ~7 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
REPLACE INTO `personal` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Ahmet', '1', NULL, NULL),
	(2, 'Mehmet', '1', NULL, NULL),
	(3, 'Murat', '1', NULL, NULL),
	(4, 'laFl5qFaPB', '1', NULL, NULL),
	(5, 'hizmet', '1', NULL, NULL),
	(6, 'TXhmnoY4Ur', '1', NULL, NULL),
	(7, 'UbXAJdn84p', '1', NULL, NULL);
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;

-- tablo yapısı dökülüyor prime_project.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- prime_project.personal_access_tokens: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- tablo yapısı dökülüyor prime_project.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `transaction_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- prime_project.products: ~100 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
REPLACE INTO `products` (`id`, `name`, `price`, `transaction_name`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Urun 77HjBSmp9DYpLfk', 558, 'genel', '1', NULL, NULL),
	(2, 'Urun YDBR18mgsDw1k7Z', 3926, 'genel', '1', NULL, NULL),
	(3, 'Urun OgcAQDiUU7YbmeL', 9731, 'genel', '1', NULL, NULL),
	(4, 'Urun t7kmT8gOiShkNiN', 3235, 'hizmet', '1', NULL, NULL),
	(5, 'Urun GEuYwxD4Gccwz3W', 2417, 'genel', '1', NULL, NULL),
	(6, 'Urun FJ7opUvXjGiEzVa', 1289, 'gayrimenkul', '1', NULL, NULL),
	(7, 'Urun Wg6woNXyP14OskM', 9813, 'hizmet', '1', NULL, NULL),
	(8, 'Urun 73gAAeUeFxmEh8Z', 8109, 'genel', '1', NULL, NULL),
	(9, 'Urun 0YgvMvNUj0sg8BA', 3087, 'hizmet', '1', NULL, NULL),
	(10, 'Urun gEc5ymIn9kwgbrj', 9343, 'hizmet', '1', NULL, NULL),
	(11, 'Urun rMtCcZr5KzDXtz1', 4793, 'hizmet', '1', NULL, NULL),
	(12, 'Urun LeMlwTCoJb9PCZV', 9443, 'genel', '1', NULL, NULL),
	(13, 'Urun 99MfZNU3x52iBlA', 525, 'genel', '1', NULL, NULL),
	(14, 'Urun 0qHqFiY7Z0iW652', 1834, 'hizmet', '1', NULL, NULL),
	(15, 'Urun zXgofgxlHFE5Dw2', 2830, 'gayrimenkul', '1', NULL, NULL),
	(16, 'Urun GuKO2WEYtDeibEd', 4494, 'hizmet', '1', NULL, NULL),
	(17, 'Urun d65OjTdeeYdbo5w', 2520, 'hizmet', '1', NULL, NULL),
	(18, 'Urun cSyL8sDvLOaPjxU', 2843, 'gayrimenkul', '1', NULL, NULL),
	(19, 'Urun Ps2f1VyMRQvO0RL', 4033, 'hizmet', '1', NULL, NULL),
	(20, 'Urun bh5azI59sOBEwIe', 3606, 'genel', '1', NULL, NULL),
	(21, 'Urun GxBbXkMU1aJDrLI', 7423, 'hizmet', '1', NULL, NULL),
	(22, 'Urun KlmxFdFDda6xATS', 9919, 'genel', '1', NULL, NULL),
	(23, 'Urun aMz7Sh1M82QzpG1', 6136, 'hizmet', '1', NULL, NULL),
	(24, 'Urun Qr8MHkhsK1h6mE9', 5120, 'gayrimenkul', '1', NULL, NULL),
	(25, 'Urun wauvj66uXjYOrHk', 7689, 'gayrimenkul', '1', NULL, NULL),
	(26, 'Urun zxItPu2iAOH6fjD', 2986, 'gayrimenkul', '1', NULL, NULL),
	(27, 'Urun BR1KsbNSobomtsW', 823, 'genel', '1', NULL, NULL),
	(28, 'Urun YnsuvOmb8adHKtw', 7731, 'genel', '1', NULL, NULL),
	(29, 'Urun ymtssnpKNPH1InD', 1472, 'hizmet', '1', NULL, NULL),
	(30, 'Urun hGshWdMvOu0hXJe', 1331, 'gayrimenkul', '1', NULL, NULL),
	(31, 'Urun 3kksErqQSC6gwLN', 6802, 'genel', '1', NULL, NULL),
	(32, 'Urun TgdJAuV9NzQscf7', 8294, 'genel', '1', NULL, NULL),
	(33, 'Urun XqxHdbFe8PMUIKO', 6643, 'hizmet', '1', NULL, NULL),
	(34, 'Urun xKtiK10Vd1xKDSn', 8808, 'hizmet', '1', NULL, NULL),
	(35, 'Urun z45tTHdCX2t0vng', 2048, 'gayrimenkul', '1', NULL, NULL),
	(36, 'Urun i7caKjYdCLZWhfM', 9240, 'gayrimenkul', '1', NULL, NULL),
	(37, 'Urun g24dkhs8l15ubwb', 1327, 'genel', '1', NULL, NULL),
	(38, 'Urun mQhO81cHN0YDLhq', 2527, 'genel', '1', NULL, NULL),
	(39, 'Urun LslZfbsQ7HrQrsa', 174, 'gayrimenkul', '1', NULL, NULL),
	(40, 'Urun FBRmht1PgNl3J2M', 1628, 'hizmet', '1', NULL, NULL),
	(41, 'Urun ZqmLjN0WqoO11ht', 7217, 'gayrimenkul', '1', NULL, NULL),
	(42, 'Urun 9uySxVdKcLlkhlZ', 6532, 'gayrimenkul', '1', NULL, NULL),
	(43, 'Urun 79qc8AyvQgtzfwt', 8551, 'hizmet', '1', NULL, NULL),
	(44, 'Urun 7ErtTIcCdGDJOfp', 3171, 'genel', '1', NULL, NULL),
	(45, 'Urun Wop7Va8L1SMExoR', 8716, 'gayrimenkul', '1', NULL, NULL),
	(46, 'Urun aQyNVg7drlXPxlS', 3552, 'gayrimenkul', '1', NULL, NULL),
	(47, 'Urun o5o4BSsqlCmGdcf', 7905, 'hizmet', '1', NULL, NULL),
	(48, 'Urun lKk90XvgJuxmUbj', 5001, 'genel', '1', NULL, NULL),
	(49, 'Urun DZlzcvWnl9F6M8A', 5846, 'genel', '1', NULL, NULL),
	(50, 'Urun ov5Ad54Vwi2l2gY', 5610, 'gayrimenkul', '1', NULL, NULL),
	(51, 'Urun JrOKjpMjfsJ7BDv', 380, 'genel', '1', NULL, NULL),
	(52, 'Urun 2sHs9eayTwLRL0m', 841, 'hizmet', '1', NULL, NULL),
	(53, 'Urun XwQr7WVT2eL5txm', 203, 'gayrimenkul', '1', NULL, NULL),
	(54, 'Urun 4SpI93mpEB7lbZu', 157, 'genel', '1', NULL, NULL),
	(55, 'Urun K63m8FcASlHtKjj', 752, 'gayrimenkul', '1', NULL, NULL),
	(56, 'Urun IifG6nQa9606ZCi', 562, 'gayrimenkul', '1', NULL, NULL),
	(57, 'Urun M6R8UlDpnRmudk7', 739, 'gayrimenkul', '1', NULL, NULL),
	(58, 'Urun EOvL48l4oPaMFfV', 814, 'hizmet', '1', NULL, NULL),
	(59, 'Urun 1h8XHKuoWg1TeSH', 189, 'hizmet', '1', NULL, NULL),
	(60, 'Urun 33eiueOOVuswaze', 991, 'gayrimenkul', '1', NULL, NULL),
	(61, 'Urun BtCjSEc6634A1Xq', 456, 'hizmet', '1', NULL, NULL),
	(62, 'Urun 9otlpQXRx5CaA7r', 227, 'gayrimenkul', '1', NULL, NULL),
	(63, 'Urun DQIF3p6zXAuw0z2', 755, 'genel', '1', NULL, NULL),
	(64, 'Urun ein3NdpUU4k3lXt', 838, 'gayrimenkul', '1', NULL, NULL),
	(65, 'Urun zp6vWJJbhDPtev4', 632, 'hizmet', '1', NULL, NULL),
	(66, 'Urun 2VV8uqdY0XQ96C4', 282, 'genel', '1', NULL, NULL),
	(67, 'Urun gmhTJu0GFeruYYr', 782, 'genel', '1', NULL, NULL),
	(68, 'Urun J5S208y6B1S8Shg', 294, 'gayrimenkul', '1', NULL, NULL),
	(69, 'Urun EGwgKCZGSHsW8wS', 141, 'hizmet', '1', NULL, NULL),
	(70, 'Urun HmVNPUothJdhkTV', 656, 'hizmet', '1', NULL, NULL),
	(71, 'Urun n14FtbY004YfWLB', 680, 'genel', '1', NULL, NULL),
	(72, 'Urun MKPuw6ldf7AF4dw', 433, 'genel', '1', NULL, NULL),
	(73, 'Urun DytEvSqvCBKxMWf', 317, 'hizmet', '1', NULL, NULL),
	(74, 'Urun DJdwBfRQaCdtx4g', 973, 'genel', '1', NULL, NULL),
	(75, 'Urun pOcFxN1A5DZSnpi', 254, 'genel', '1', NULL, NULL),
	(76, 'Urun HBp0GmQYSM8DBq2', 891, 'genel', '1', NULL, NULL),
	(77, 'Urun 90RRJxMaXPM5Ypc', 194, 'genel', '1', NULL, NULL),
	(78, 'Urun xPFFSghoi8ZepHj', 181, 'gayrimenkul', '1', NULL, NULL),
	(79, 'Urun qOdZWug4TxtRNAD', 633, 'gayrimenkul', '1', NULL, NULL),
	(80, 'Urun n21kChlINWUKzKy', 227, 'hizmet', '1', NULL, NULL),
	(81, 'Urun RAlVd8nb7lF3EEF', 618, 'gayrimenkul', '1', NULL, NULL),
	(82, 'Urun AqUkXrM4txzTiMZ', 427, 'hizmet', '1', NULL, NULL),
	(83, 'Urun TdsVK9BCTa1roCF', 545, 'hizmet', '1', NULL, NULL),
	(84, 'Urun ybG1nb8MVmyDsel', 743, 'hizmet', '1', NULL, NULL),
	(85, 'Urun w73EjHquD1sNVNI', 667, 'gayrimenkul', '1', NULL, NULL),
	(86, 'Urun XsxzxrM7kPLM2sc', 608, 'genel', '1', NULL, NULL),
	(87, 'Urun SmJFbgWHSKzWrXI', 573, 'hizmet', '1', NULL, NULL),
	(88, 'Urun 3519bbIXsGbZKd9', 742, 'gayrimenkul', '1', NULL, NULL),
	(89, 'Urun FFFNZHOGyw1LnFM', 326, 'hizmet', '1', NULL, NULL),
	(90, 'Urun xgW8cSSoat8XCBo', 533, 'hizmet', '1', NULL, NULL),
	(91, 'Urun VM54uWKoM4R3C5a', 493, 'genel', '1', NULL, NULL),
	(92, 'Urun f2D76u0LNOoPvYd', 992, 'hizmet', '1', NULL, NULL),
	(93, 'Urun gNXW0NFyFM0Nruf', 119, 'genel', '1', NULL, NULL),
	(94, 'Urun C4DkmxmyyOtgeYo', 985, 'hizmet', '1', NULL, NULL),
	(95, 'Urun jVBdCNE1xdIJtIS', 363, 'hizmet', '1', NULL, NULL),
	(96, 'Urun Fz8gD4upfKCZtFJ', 153, 'genel', '1', NULL, NULL),
	(97, 'Urun itzj2QQJL9XFv7I', 168, 'genel', '1', NULL, NULL),
	(98, 'Urun iCjJU7JPDKnR3fn', 550, 'hizmet', '1', NULL, NULL),
	(99, 'Urun 9Vb8S1jMBn9PtXh', 671, 'gayrimenkul', '1', NULL, NULL),
	(100, 'Urun ruhbFQ1QUszbDzV', 519, 'gayrimenkul', '1', NULL, NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- tablo yapısı dökülüyor prime_project.sales
CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- prime_project.sales: ~6 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
REPLACE INTO `sales` (`id`, `user_id`, `transaction_name`, `price`, `rate`, `status`, `product_id`, `created_at`, `updated_at`) VALUES
	(1, '11', 'gayrimenkul', '2881', '144.05', '1', 0, NULL, NULL),
	(2, '6', 'gayrimenkul', '2450', '122.5', '1', 0, NULL, NULL),
	(3, '13', 'genel', '3358', '134.32', '1', 0, NULL, NULL),
	(4, '3', 'hizmet', '4065', '121.95', '1', 0, NULL, NULL),
	(5, '10', 'gayrimenkul', '9041', '452.05', '1', 0, NULL, NULL),
	(6, '3', 'genel', '7183', '287.32', '1', 0, NULL, NULL),
	(7, '7', 'hizmet', '227', '11.35', '1', 62, NULL, NULL),
	(8, '3', 'genel', '427', '12.81', '1', 82, NULL, NULL),
	(9, '5', 'genel', '667', '33.35', '1', 85, NULL, NULL),
	(10, '4', 'gayrimenkul', '282', '11.28', '1', 66, NULL, NULL),
	(11, '6', 'hizmet', '608', '24.32', '1', 86, NULL, NULL),
	(12, '7', 'hizmet', '6532', '326.6', '1', 42, NULL, NULL),
	(13, '7', 'genel', '755', '30.2', '1', 63, NULL, NULL),
	(14, '4', 'gayrimenkul', '519', '25.95', '1', 100, NULL, NULL),
	(15, '2', 'hizmet', '4793', '143.79', '1', 11, NULL, NULL),
	(16, '7', 'hizmet', '6643', '199.29', '1', 33, NULL, NULL),
	(17, '4', 'genel', '742', '37.1', '1', 88, NULL, NULL),
	(18, '3', 'genel', '573', '17.19', '1', 87, NULL, NULL),
	(19, '6', 'gayrimenkul', '3926', '157.04', '1', 2, NULL, NULL),
	(20, '3', 'genel', '6643', '199.29', '1', 33, NULL, NULL),
	(21, '6', 'genel', '9919', '396.76', '1', 22, NULL, NULL),
	(22, '6', 'hizmet', '5120', '256', '1', 24, NULL, NULL),
	(23, '6', 'hizmet', '5120', '256', '1', 24, NULL, NULL),
	(24, '2', 'hizmet', '1289', '64.45', '1', 6, NULL, NULL),
	(25, '4', 'genel', '3087', '92.61', '1', 9, NULL, NULL),
	(26, '2', 'gayrimenkul', '3606', '144.24', '1', 20, NULL, NULL),
	(27, '7', 'genel', '3235', '97.05', '1', 4, NULL, NULL),
	(28, '4', 'hizmet', '153', '6.12', '1', 96, NULL, NULL),
	(29, '5', 'genel', '4793', '143.79', '1', 11, NULL, NULL),
	(30, '5', 'hizmet', '5120', '256', '1', 24, NULL, NULL),
	(31, '1', 'gayrimenkul', '7423', '222.69', '1', 21, NULL, NULL),
	(32, '7', 'genel', '838', '41.9', '1', 64, NULL, NULL),
	(33, '6', 'genel', '1327', '53.08', '1', 37, NULL, NULL),
	(34, '1', 'hizmet', '3171', '126.84', '1', 44, NULL, NULL),
	(35, '4', 'genel', '633', '31.65', '1', 79, NULL, NULL),
	(36, '4', 'hizmet', '550', '16.5', '1', 98, NULL, NULL),
	(37, '5', 'hizmet', '823', '32.92', '1', 27, NULL, NULL),
	(38, '3', 'genel', '519', '25.95', '1', 100, NULL, NULL),
	(39, '5', 'hizmet', '9443', '377.72', '1', 12, NULL, NULL),
	(40, '4', 'gayrimenkul', '7905', '237.15', '1', 47, NULL, NULL),
	(41, '5', 'gayrimenkul', '519', '25.95', '1', 100, NULL, NULL),
	(42, '1', 'gayrimenkul', '558', '22.32', '1', 1, NULL, NULL),
	(43, '5', 'genel', '7423', '222.69', '1', 21, NULL, NULL),
	(44, '5', 'genel', '4033', '120.99', '1', 19, NULL, NULL),
	(45, '3', 'genel', '6136', '184.08', '1', 23, NULL, NULL),
	(46, '4', 'gayrimenkul', '1331', '66.55', '1', 30, NULL, NULL),
	(47, '6', 'hizmet', '562', '28.1', '1', 56, NULL, NULL),
	(48, '2', 'gayrimenkul', '1834', '55.02', '1', 14, NULL, NULL),
	(49, '1', 'gayrimenkul', '1331', '66.55', '1', 30, NULL, NULL),
	(50, '3', 'gayrimenkul', '633', '31.65', '1', 79, NULL, NULL),
	(51, '5', 'genel', '2048', '102.4', '1', 35, NULL, NULL),
	(52, '5', 'genel', '168', '6.72', '1', 97, NULL, NULL),
	(53, '5', 'gayrimenkul', '9343', '280.29', '1', 10, NULL, NULL),
	(54, '2', 'gayrimenkul', '203', '10.15', '1', 53, NULL, NULL),
	(55, '5', 'hizmet', '6802', '272.08', '1', 31, NULL, NULL),
	(56, '5', 'genel', '227', '6.81', '1', 80, NULL, NULL),
	(57, '2', 'gayrimenkul', '427', '12.81', '1', 82, NULL, NULL),
	(58, '4', 'gayrimenkul', '227', '6.81', '1', 80, NULL, NULL),
	(59, '5', 'gayrimenkul', '1331', '66.55', '1', 30, NULL, NULL),
	(60, '7', 'hizmet', '519', '25.95', '1', 100, NULL, NULL),
	(61, '1', 'genel', '3235', '97.05', '1', 4, NULL, NULL),
	(62, '2', 'gayrimenkul', '189', '5.67', '1', 59, NULL, NULL),
	(63, '6', 'gayrimenkul', '525', '21', '1', 13, NULL, NULL),
	(64, '2', 'genel', '317', '9.51', '1', 73, NULL, NULL),
	(65, '6', 'gayrimenkul', '157', '6.28', '1', 54, NULL, NULL),
	(66, '6', 'gayrimenkul', '2048', '102.4', '1', 35, NULL, NULL),
	(67, '7', 'genel', '326', '9.78', '1', 89, NULL, NULL),
	(68, '2', 'genel', '973', '38.92', '1', 74, NULL, NULL),
	(69, '1', 'gayrimenkul', '823', '32.92', '1', 27, NULL, NULL),
	(70, '5', 'genel', '433', '17.32', '1', 72, NULL, NULL),
	(71, '5', 'genel', '119', '4.76', '1', 93, NULL, NULL),
	(72, '7', 'hizmet', '380', '15.2', '1', 51, NULL, NULL),
	(73, '6', 'gayrimenkul', '9731', '389.24', '1', 3, NULL, NULL),
	(74, '1', 'hizmet', '493', '19.72', '1', 91, NULL, NULL),
	(75, '1', 'gayrimenkul', '9343', '280.29', '1', 10, NULL, NULL),
	(76, '5', 'genel', '2527', '101.08', '1', 38, NULL, NULL),
	(77, '5', 'hizmet', '9731', '389.24', '1', 3, NULL, NULL),
	(78, '6', 'genel', '985', '29.55', '1', 94, NULL, NULL),
	(79, '7', 'hizmet', '141', '4.23', '1', 69, NULL, NULL),
	(80, '1', 'gayrimenkul', '545', '16.35', '1', 83, NULL, NULL),
	(81, '3', 'gayrimenkul', '558', '22.32', '1', 1, NULL, NULL),
	(82, '7', 'hizmet', '8294', '331.76', '1', 32, NULL, NULL),
	(83, '2', 'gayrimenkul', '8294', '331.76', '1', 32, NULL, NULL),
	(84, '4', 'hizmet', '985', '29.55', '1', 94, NULL, NULL),
	(85, '1', 'hizmet', '973', '38.92', '1', 74, NULL, NULL),
	(86, '4', 'gayrimenkul', '8716', '435.8', '1', 45, NULL, NULL),
	(87, '5', 'hizmet', '5120', '256', '1', 24, NULL, NULL),
	(88, '3', 'hizmet', '573', '17.19', '1', 87, NULL, NULL),
	(89, '3', 'genel', '1289', '64.45', '1', 6, NULL, NULL),
	(90, '1', 'genel', '9443', '377.72', '1', 12, NULL, NULL),
	(91, '7', 'genel', '633', '31.65', '1', 79, NULL, NULL),
	(92, '6', 'genel', '1472', '44.16', '1', 29, NULL, NULL),
	(93, '4', 'hizmet', '317', '9.51', '1', 73, NULL, NULL),
	(94, '4', 'hizmet', '742', '37.1', '1', 88, NULL, NULL),
	(95, '2', 'gayrimenkul', '8551', '256.53', '1', 43, NULL, NULL),
	(96, '3', 'gayrimenkul', '1331', '66.55', '1', 30, NULL, NULL),
	(97, '7', 'genel', '194', '7.76', '1', 77, NULL, NULL),
	(98, '2', 'genel', '5846', '233.84', '1', 49, NULL, NULL),
	(99, '7', 'genel', '3235', '97.05', '1', 4, NULL, NULL),
	(100, '4', 'hizmet', '743', '22.29', '1', 84, NULL, NULL),
	(101, '2', 'gayrimenkul', '7423', '222.69', '1', 21, NULL, NULL),
	(102, '7', 'gayrimenkul', '3235', '97.05', '1', 4, NULL, NULL),
	(103, '1', 'hizmet', '633', '31.65', '1', 79, NULL, NULL),
	(104, '7', 'genel', '119', '4.76', '1', 93, NULL, NULL),
	(105, '5', 'gayrimenkul', '985', '29.55', '1', 94, NULL, NULL),
	(106, '7', 'gayrimenkul', '618', '30.9', '1', 81, NULL, NULL),
	(107, '5', 'gayrimenkul', '991', '49.55', '1', 60, NULL, NULL),
	(108, '7', 'hizmet', '671', '33.55', '1', 99, NULL, NULL),
	(109, '7', 'genel', '985', '29.55', '1', 94, NULL, NULL),
	(110, '6', 'hizmet', '181', '9.05', '1', 78, NULL, NULL),
	(111, '3', 'gayrimenkul', '189', '5.67', '1', 59, NULL, NULL),
	(112, '2', 'genel', '2986', '149.3', '1', 26, NULL, NULL),
	(113, '5', 'gayrimenkul', '157', '6.28', '1', 54, NULL, NULL),
	(114, '1', 'hizmet', '4494', '134.82', '1', 16, NULL, NULL),
	(115, '7', 'genel', '7423', '222.69', '1', 21, NULL, NULL),
	(116, '7', 'gayrimenkul', '141', '4.23', '1', 69, NULL, NULL),
	(117, '7', 'gayrimenkul', '3552', '177.6', '1', 46, NULL, NULL),
	(118, '2', 'hizmet', '680', '27.2', '1', 71, NULL, NULL),
	(119, '1', 'genel', '558', '22.32', '1', 1, '2022-03-25 14:39:54', '2022-03-25 14:39:54'),
	(120, '1', 'genel', '558', '22.32', '1', 1, '2022-03-25 14:47:42', '2022-03-25 14:47:42'),
	(121, '5', 'hizmet', '4494', '134.82', '1', 16, '2022-03-25 14:49:19', '2022-03-25 14:49:19'),
	(122, '3', 'hizmet', '550', '16.5', '1', 98, '2022-03-25 14:58:41', '2022-03-25 14:58:41'),
	(123, '7', 'genel', '558', '22.32', '1', 1, '2022-03-25 14:59:46', '2022-03-25 14:59:46'),
	(124, '7', 'genel', '558', '22.32', '1', 1, '2022-03-25 15:00:14', '2022-03-25 15:00:14');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;

-- tablo yapısı dökülüyor prime_project.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- prime_project.users: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Hamish Bolton', 'aksay84@gmail.com', NULL, '$2y$10$Qr.zWSIwSZ2o71FtfhZ7tuPXc9sqAxSUkeD2uy/IUfXFmHrIqc8om', NULL, '2022-03-25 10:09:10', '2022-03-25 10:09:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
