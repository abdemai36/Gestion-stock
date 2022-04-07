-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 07 avr. 2022 à 13:04
-- Version du serveur :  8.0.28
-- Version de PHP : 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `omarhaya_gousla`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'CARTONE PIZZA', '2022-03-22 23:17:34', '2022-03-22 23:17:34'),
(4, 'Barquete Aluminium', '2022-03-24 13:34:35', '2022-03-24 13:34:35'),
(5, 'Barquette plastique FLAT', '2022-03-24 14:00:43', '2022-03-24 14:00:43'),
(6, 'Barquette plastique Bombé', '2022-03-24 16:20:23', '2022-03-24 16:20:23'),
(7, 'Barquette plastique ronde', '2022-03-26 07:58:49', '2022-03-26 07:58:49'),
(8, 'Pot de sauce', '2022-03-26 07:59:41', '2022-03-26 07:59:41'),
(9, 'Goblet jus', '2022-03-26 08:00:16', '2022-03-26 08:00:16'),
(10, 'Goblet café', '2022-03-26 08:01:07', '2022-03-26 08:01:07'),
(11, 'Goblet d\'eau', '2022-03-26 08:02:09', '2022-03-26 08:02:09'),
(12, 'Goblet Raib', '2022-03-26 08:02:54', '2022-03-26 08:02:54'),
(13, 'papier Aluminium', '2022-03-26 08:03:51', '2022-03-26 08:03:51'),
(14, 'Film Alimentaire', '2022-03-26 08:04:22', '2022-03-26 08:04:22'),
(15, 'Barquette Boucherie', '2022-03-26 08:05:16', '2022-03-26 08:05:16'),
(16, 'Cuillere en plastique', '2022-03-26 08:06:10', '2022-03-26 08:06:10'),
(17, 'Fourchette en plastique', '2022-03-26 08:07:09', '2022-03-26 08:07:09'),
(18, 'Couteau en plastique', '2022-03-26 08:07:36', '2022-03-26 08:07:36'),
(19, 'Sac  craft', '2022-03-26 08:08:07', '2022-03-26 08:08:07'),
(20, 'Sac  poubelle', '2022-03-26 08:08:43', '2022-03-26 08:08:43'),
(21, 'Sac  non tissu 1er', '2022-03-26 08:09:22', '2022-03-26 08:09:22'),
(22, 'Sac  non tissu 2er', '2022-03-26 08:09:39', '2022-03-26 08:09:39'),
(23, 'Scoutch emballage', '2022-03-26 08:10:42', '2022-03-26 08:10:42'),
(24, 'khiche linon bag', '2022-03-26 08:12:10', '2022-03-26 08:12:10'),
(25, 'Sac maquillage', '2022-03-26 08:12:58', '2022-03-26 08:12:58'),
(26, 'Sac poignet tissu', '2022-03-26 08:13:43', '2022-03-26 08:13:43'),
(27, 'Sac poignet non  tissu', '2022-03-26 08:14:19', '2022-03-26 08:14:19');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addresse` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ICE` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `addresse`, `phone`, `ICE`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'abdellah', 'abdellah@gmail.com', 'agadir', '06325254152', NULL, '2022-03-22 08:16:05', '2022-03-22 08:16:05', NULL),
(6, 'ddsgsdg', 'abdellah@gmail.com', 'fhg', '021254564', NULL, '2022-03-23 07:38:04', '2022-03-23 07:38:10', '2022-03-23 07:38:10'),
(7, 'elcadi aymane', 'elcadi.aymane@gmail.com', '496 Lot Tafoukt', '+212631580536', NULL, '2022-03-24 09:30:49', '2022-03-24 09:32:22', '2022-03-24 09:32:22'),
(8, 'SAAID WACRIM', NULL, 'CASA AAIN CHOUK ;a coté souk el kreaa', '0661735671', NULL, '2022-03-24 13:22:48', '2022-03-24 13:22:48', NULL),
(9, 'khalid', NULL, 'casa sidi maarouf', '6886543778', NULL, '2022-03-24 21:00:10', '2022-03-24 21:00:10', NULL),
(10, 'laarbi lfath', NULL, 'kisaryat lfath garage alal N106 CASA', '0668310356', NULL, '2022-03-30 12:05:29', '2022-03-30 12:05:29', NULL),
(11, 'EL Houssein  aziya', NULL, 'kisaryat lfath garage alal N107 CASA', '0671601057', NULL, '2022-03-30 12:56:09', '2022-03-30 12:56:09', NULL),
(12, 'AMINE ROUBYOU', NULL, 'AV ARGANA KISARYT RIZKI GRAG ALAL CASA', '0642809722', NULL, '2022-03-30 12:58:10', '2022-03-30 12:58:10', NULL),
(13, 'HAJ ABDELLAH BEN OMAR', NULL, 'kisaryat lfath garage alal N21 CASA', '0666265910', NULL, '2022-03-30 13:00:37', '2022-03-30 13:00:37', NULL),
(14, 'HAJ ARAB', NULL, 'kisaryat lfath garage alal  CASA', '0661812883', NULL, '2022-03-30 13:03:31', '2022-03-30 13:03:31', NULL),
(15, 'AHMED ICHOU', NULL, 'kisaryat lfath garage alal   CASA', '0661141346', NULL, '2022-03-30 13:05:02', '2022-03-30 13:05:02', NULL),
(16, 'BEN OMAR HASSAN', NULL, '320 AV MOHAMED6 GRAGE ALAL BOURT KISSARYAT CHAWYA', '0662376824', NULL, '2022-03-30 13:08:05', '2022-03-30 13:08:05', NULL),
(17, 'BEN OMAR AHMED', NULL, '321 AV MOHAMED6 GRAGE ALAL BOURT KISSARYAT CHAWYA', '0651745273', NULL, '2022-03-30 13:09:19', '2022-03-30 13:09:19', NULL),
(18, 'HAJ ALI', NULL, 'kisaryat lfath garage alal N105 CASA', '0673509603', NULL, '2022-03-30 13:11:05', '2022-03-30 13:11:05', NULL),
(20, 'Hamid anjar', NULL, 'Ksaryat .chawya N15 garage alal casa', '0661515497', NULL, '2022-04-02 19:39:16', '2022-04-02 19:39:16', NULL),
(21, 'Abdellah  Amghar', NULL, 'Kisaryat chawya N37 garage alarme casa', '0663532600', NULL, '2022-04-02 19:44:57', '2022-04-02 19:44:57', NULL),
(22, 'Abdullah N33 chaouia', NULL, 'Kisaryat chaouia N33 grage alal casa', '0661345705', NULL, '2022-04-02 19:49:35', '2022-04-02 19:49:35', NULL),
(23, 'Abdellah N33 chaouia', NULL, 'Kisaryat chaouia n33 garage alal casa', '0661345705', NULL, '2022-04-02 19:52:59', '2022-04-02 19:52:59', NULL),
(24, 'RBATI N35 CHAOUIA', NULL, 'Kisaryat chaouia n35 garage alal casa', '0662292201', NULL, '2022-04-02 19:56:50', '2022-04-02 19:56:50', NULL),
(25, 'KARIM N42 CHAOUIA', NULL, 'Kisaryat chaouia n 42 garage alal casa', '0664723041', NULL, '2022-04-02 20:03:46', '2022-04-02 20:03:46', NULL),
(26, 'ARAMI N41 chaouia', NULL, 'Kisaryat chaouia N41 garage alal casa', '0662055050', NULL, '2022-04-02 20:06:49', '2022-04-02 20:06:49', NULL),
(27, 'Soufine drb Mila av7', NULL, 'Derb Milan av 7 casa', '0642703354', NULL, '2022-04-02 20:11:31', '2022-04-02 20:11:31', NULL),
(28, 'Rais Mohamed dreb Milan n70', NULL, 'Derb Milan av7 n70 casa', '0682452850', NULL, '2022-04-02 20:16:10', '2022-04-02 20:16:10', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `companies`
--

CREATE TABLE `companies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `GSM` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addresse` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ICE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `RC` int DEFAULT NULL,
  `IF` int DEFAULT NULL,
  `TP` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `companies`
--

INSERT INTO `companies` (`id`, `name`, `GSM`, `phone`, `addresse`, `email`, `logo`, `ICE`, `RC`, `IF`, `TP`) VALUES
(1, 'Delicious packaging', '+212528288039', NULL, 'Amal 5 Al Massira N 669 CYM RABAT', 'info@deliciouspackaging.com', '1647864984_Logo.png', '002975303000085', 157189, 51662688, 26406695);

-- --------------------------------------------------------

--
-- Structure de la table `depots`
--

CREATE TABLE `depots` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addresse` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `depots`
--

INSERT INTO `depots` (`id`, `name`, `addresse`, `email`, `created_at`, `updated_at`) VALUES
(1, 'depot Rabat', 'Rabat', 'gouslacommande@gmail.com', '2022-03-12 08:47:07', '2022-03-12 08:47:07'),
(3, 'depot Agadir', 'Agadir', 'globalpack.aga@gmail.com', '2022-03-14 09:31:25', '2022-03-14 09:31:25'),
(9, 'aymane elcadi depot', 'aymane depot', 'abde.mai36@gmail.com', '2022-03-30 15:09:53', '2022-03-30 15:09:53');

-- --------------------------------------------------------

--
-- Structure de la table `details_orders`
--

CREATE TABLE `details_orders` (
  `id` bigint UNSIGNED NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `QNT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` decimal(8,2) DEFAULT '0.00',
  `profit` decimal(8,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `details_orders`
--

INSERT INTO `details_orders` (`id`, `product_name`, `order_id`, `QNT`, `price`, `total`, `created_at`, `updated_at`, `percentage`, `profit`) VALUES
(35, 'CARTON PIZZA N26 / 50', 'BL_14', '60', 70.00, 4200.00, '2022-03-29 12:20:55', '2022-03-29 12:20:55', 1.07, 44.94),
(36, 'Pot de sauce 20cc', 'BL_14', '5', 285.00, 1425.00, '2022-03-29 12:20:55', '2022-03-29 12:20:55', 1.01, 14.39),
(37, 'Goblet d\"eau  180CC TR', 'BL_14', '40', 240.00, 9600.00, '2022-03-29 12:20:55', '2022-03-29 12:20:55', 1.06, 101.76),
(38, 'Sac poubelle 30L /40pcs', 'BL_14', '5', 375.00, 1875.00, '2022-03-29 12:20:55', '2022-03-29 12:20:55', 0.80, 15.00),
(116, 'Goblet d\"eau  180CC TR', 'BL_53', '5', 240.00, 1200.00, '2022-03-31 12:38:39', '2022-03-31 12:38:39', 1.06, 12.72),
(117, 'Goblet d\"eau  180CC BL', 'BL_53', '10', 240.00, 2400.00, '2022-03-31 12:38:39', '2022-03-31 12:38:39', 1.06, 25.44),
(125, 'Pot de sauce 20cc', 'BL_57', '5', 285.00, 1425.00, '2022-03-31 12:55:07', '2022-03-31 12:55:07', 1.01, 14.39),
(126, 'Goblet d\"eau  180CC BL', 'BL_57', '10', 240.00, 2400.00, '2022-03-31 12:55:07', '2022-03-31 12:55:07', 1.06, 25.44),
(127, 'Cuillére MAXI /BL', 'BL_57', '2', 616.00, 1232.00, '2022-03-31 12:55:07', '2022-03-31 12:55:07', 1.62, 19.96),
(128, 'Sac poubelle 50L /30pcs', 'BL_57', '2', 504.00, 1008.00, '2022-03-31 12:55:07', '2022-03-31 12:55:07', 1.19, 12.00),
(129, 'Goblet d\"eau  180CC BL', 'BL_58', '10', 240.00, 2400.00, '2022-03-31 16:19:39', '2022-03-31 16:19:39', 1.06, 25.44),
(130, 'Sac poubelle 30L /40pcs', 'BL_58', '10', 375.00, 3750.00, '2022-03-31 16:19:39', '2022-03-31 16:19:39', 0.80, 30.00),
(131, 'Cuillére MAXI /BL', 'BL_58', '1', 616.00, 616.00, '2022-03-31 16:19:39', '2022-03-31 16:19:39', 1.62, 9.98),
(132, 'Cuillére MAXI /TR', 'BL_58', '1', 616.00, 616.00, '2022-03-31 16:19:39', '2022-03-31 16:19:39', 1.62, 9.98),
(133, 'Goblet d\"eau  180CC TR', 'BL_59', '4', 240.00, 960.00, '2022-04-02 19:24:19', '2022-04-02 19:24:19', 1.06, 10.18),
(134, 'Goblet d\"eau  180CC BL', 'BL_59', '4', 240.00, 960.00, '2022-04-02 19:24:19', '2022-04-02 19:24:19', 1.06, 10.18),
(135, 'Sac poubelle 30L /40pcs', 'BL_59', '5', 375.00, 1875.00, '2022-04-02 19:24:19', '2022-04-02 19:24:19', 0.80, 15.00),
(136, 'Sac poubelle 30L /20 pcs', 'BL_59', '5', 400.00, 2000.00, '2022-04-02 19:24:19', '2022-04-02 19:24:19', 0.80, 16.00),
(137, 'Goblet d\"eau  180CC TR', 'BL_60', '10', 240.00, 2400.00, '2022-04-02 19:26:31', '2022-04-02 19:26:31', 1.06, 25.44),
(138, 'Goblet d\"eau  180CC BL', 'BL_60', '20', 240.00, 4800.00, '2022-04-02 19:26:31', '2022-04-02 19:26:31', 1.06, 50.88),
(139, 'Sac poubelle 30L /40pcs', 'BL_60', '5', 375.00, 1875.00, '2022-04-02 19:26:31', '2022-04-02 19:26:31', 0.80, 15.00),
(143, 'Pot de sauce 20cc', 'BL_63', '10', 285.00, 2850.00, '2022-04-02 19:34:56', '2022-04-02 19:34:56', 1.01, 28.79),
(144, 'Goblet d\"eau  180CC TR', 'BL_63', '10', 240.00, 2400.00, '2022-04-02 19:34:56', '2022-04-02 19:34:56', 1.06, 25.44),
(145, 'Goblet d\"eau  180CC BL', 'BL_63', '10', 240.00, 2400.00, '2022-04-02 19:34:56', '2022-04-02 19:34:56', 1.06, 25.44),
(146, 'Sac poubelle 30L /40pcs', 'BL_64', '10', 375.00, 3750.00, '2022-04-02 19:41:27', '2022-04-02 19:41:27', 0.80, 30.00),
(147, 'Sac poubelle 30L /20 pcs', 'BL_64', '5', 400.00, 2000.00, '2022-04-02 19:41:27', '2022-04-02 19:41:27', 0.80, 16.00),
(148, 'Sac poubelle 30L /10pcs', 'BL_64', '5', 362.00, 1810.00, '2022-04-02 19:41:27', '2022-04-02 19:41:27', 0.82, 14.84),
(149, 'Goblet d\"eau  180CC BL', 'BL_65', '10', 240.00, 2400.00, '2022-04-02 19:45:35', '2022-04-02 19:45:35', 1.06, 25.44),
(150, 'Goblet d\"eau  180CC BL', 'BL_66', '5', 240.00, 1200.00, '2022-04-02 19:53:16', '2022-04-02 19:53:16', 1.06, 12.72),
(151, 'Sac poubelle 30L /40pcs', 'BL_66', '5', 375.00, 1875.00, '2022-04-02 19:53:16', '2022-04-02 19:53:16', 0.80, 15.00),
(152, 'Goblet d\"eau  180CC BL', 'BL_67', '10', 240.00, 2400.00, '2022-04-02 19:58:03', '2022-04-02 19:58:03', 1.06, 25.44),
(153, 'Goblet d\"eau  180CC TR', 'BL_68', '10', 240.00, 2400.00, '2022-04-02 20:05:03', '2022-04-02 20:05:03', 1.06, 25.44),
(154, 'Goblet d\"eau  180CC BL', 'BL_68', '10', 240.00, 2400.00, '2022-04-02 20:05:03', '2022-04-02 20:05:03', 1.06, 25.44),
(155, 'Goblet d\"eau  180CC TR', 'BL_69', '5', 240.00, 1200.00, '2022-04-02 20:08:44', '2022-04-02 20:08:44', 1.06, 12.72),
(156, 'Sac poubelle 30L /40pcs', 'BL_70', '10', 375.00, 3750.00, '2022-04-02 20:12:18', '2022-04-02 20:12:18', 0.80, 30.00),
(157, 'Goblet d\"eau  180CC TR', 'BL_71', '5', 240.00, 1200.00, '2022-04-02 20:18:21', '2022-04-02 20:18:21', 1.06, 12.72),
(158, 'Goblet d\"eau  180CC BL', 'BL_71', '5', 240.00, 1200.00, '2022-04-02 20:18:21', '2022-04-02 20:18:21', 1.06, 12.72),
(159, 'Sac poubelle 30L /20 pcs', 'BL_71', '1', 400.00, 400.00, '2022-04-02 20:18:21', '2022-04-02 20:18:21', 0.80, 3.20),
(160, 'Sac poubelle 30L /10pcs', 'BL_71', '1', 362.00, 362.00, '2022-04-02 20:18:21', '2022-04-02 20:18:21', 0.82, 2.97),
(161, 'Cuillére MAXI /TR', 'BL_71', '1', 616.00, 616.00, '2022-04-02 20:18:21', '2022-04-02 20:18:21', 1.62, 9.98);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(37, '2014_10_12_000000_create_users_table', 1),
(38, '2014_10_12_100000_create_password_resets_table', 1),
(39, '2019_08_19_000000_create_failed_jobs_table', 1),
(40, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(41, '2022_02_28_141645_laratrust_setup_tables', 1),
(42, '2022_03_01_082618_create_clients_table', 1),
(43, '2022_03_01_100251_add_column_deleted_at_clients', 1),
(44, '2022_03_01_102810_create_companies_table', 1),
(45, '2022_03_01_142725_create_categories_table', 1),
(46, '2022_03_01_144704_create_depots_table', 1),
(47, '2022_03_02_091944_create_orders_table', 1),
(48, '2022_03_02_143535_create_products_table', 2),
(49, '2022_03_02_181157_add_column_deleted_at_productss', 2),
(50, '2022_03_04_090343_create_details_orders_table', 2),
(51, '2022_03_07_111822_create_productsessions_table', 2),
(52, '2022_03_08_151004_add_depot_email_to_users_table', 2),
(53, '2022_03_09_101046_2022_03_01_143535_create_products_table', 2),
(54, '2022_03_09_101526_2022_03_01_143535_create_products_table', 2),
(55, '2022_03_13_121607_add__percentage_to_products', 3),
(56, '2022_03_13_131928_add__percentage_to_productsessions', 4),
(57, '2022_03_13_134903_add__percentage_to_details_orders', 5),
(58, '2022_03_13_225546_add__profit_to_details_orders', 6),
(59, '2022_03_13_230331_add__profit_to_productsessions', 7),
(60, '2022_03_19_095117_add__r_c_column_to_companies_table', 8),
(61, '2022_03_19_095312_add__i_f_column_to_companies_table', 9),
(62, '2022_03_19_095339_add__t_p_column_to_companies_table', 9),
(63, '2022_03_19_102625_add_deleted_at_column_to_orders_table', 10),
(64, '2022_03_22_084614_add_total_to_orders_table', 11);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `ref` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `depot_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `validation` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `ref`, `client_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`, `depot_email`, `validation`, `deleted_at`, `total`) VALUES
(14, 'BL_14', 8, 'virement bancaire', NULL, '2022-03-29 12:20:55', '2022-03-29 12:20:55', 'gouslacommande@gmail.com', 0, NULL, 17100),
(52, 'BL_52', 5, 'virement bancaire', NULL, '2022-03-31 08:40:16', '2022-03-31 08:42:46', 'abde.mai36@gmail.com', 0, '2022-03-31 08:42:46', 2),
(53, 'BL_53', 10, 'Espèces', NULL, '2022-03-31 12:38:39', '2022-03-31 12:38:39', 'gouslacommande@gmail.com', 0, NULL, 3600),
(54, 'BL_54', 11, 'Espèces', NULL, '2022-03-31 12:47:00', '2022-03-31 12:47:00', 'gouslacommande@gmail.com', 0, NULL, 4165),
(55, 'BL_55', 11, 'Espèces', NULL, '2022-03-31 12:47:51', '2022-03-31 12:52:36', 'gouslacommande@gmail.com', 0, '2022-03-31 12:52:36', 4164),
(56, 'BL_56', 5, 'virement bancaire', NULL, '2022-03-31 12:51:01', '2022-03-31 12:51:45', 'gouslacommande@gmail.com', 0, '2022-03-31 12:51:45', 6065),
(57, 'BL_57', 12, 'Espèces', NULL, '2022-03-31 12:55:07', '2022-03-31 12:55:07', 'gouslacommande@gmail.com', 0, NULL, 6065),
(58, 'BL_58', 13, 'Espèces', NULL, '2022-03-31 16:19:39', '2022-03-31 16:19:39', 'gouslacommande@gmail.com', 0, NULL, 7382),
(59, 'BL_59', 14, 'Espèces', NULL, '2022-04-02 19:24:19', '2022-04-02 19:24:19', 'gouslacommande@gmail.com', 0, NULL, 5795),
(60, 'BL_60', 15, 'Espèces', NULL, '2022-04-02 19:26:31', '2022-04-02 19:26:31', 'gouslacommande@gmail.com', 0, NULL, 9075),
(61, 'BL_61', 5, 'virement bancaire', NULL, '2022-04-02 19:31:47', '2022-04-02 19:33:02', 'gouslacommande@gmail.com', 0, '2022-04-02 19:33:02', 7650),
(62, 'BL_62', 5, 'virement bancaire', NULL, '2022-04-02 19:33:57', '2022-04-02 20:00:20', 'gouslacommande@gmail.com', 0, '2022-04-02 20:00:20', 7650),
(63, 'BL_63', 16, 'cheque', NULL, '2022-04-02 19:34:56', '2022-04-02 19:34:56', 'gouslacommande@gmail.com', 0, NULL, 7650),
(64, 'BL_64', 20, 'Espèces', NULL, '2022-04-02 19:41:27', '2022-04-02 19:41:27', 'gouslacommande@gmail.com', 0, NULL, 7560),
(65, 'BL_65', 21, 'Espèces', NULL, '2022-04-02 19:45:35', '2022-04-02 19:45:35', 'gouslacommande@gmail.com', 0, NULL, 2400),
(66, 'BL_66', 23, 'Espèces', NULL, '2022-04-02 19:53:16', '2022-04-02 19:53:16', 'gouslacommande@gmail.com', 0, NULL, 3075),
(67, 'BL_67', 24, 'cheque', NULL, '2022-04-02 19:58:03', '2022-04-02 19:58:03', 'gouslacommande@gmail.com', 0, NULL, 2400),
(68, 'BL_68', 25, 'Espèces', NULL, '2022-04-02 20:05:03', '2022-04-02 20:05:03', 'gouslacommande@gmail.com', 0, NULL, 4800),
(69, 'BL_69', 26, 'Espèces', NULL, '2022-04-02 20:08:44', '2022-04-02 20:08:44', 'gouslacommande@gmail.com', 0, NULL, 1200),
(70, 'BL_70', 27, 'Espèces', NULL, '2022-04-02 20:12:18', '2022-04-02 20:12:18', 'gouslacommande@gmail.com', 0, NULL, 3750),
(71, 'BL_71', 28, 'Espèces', NULL, '2022-04-02 20:18:21', '2022-04-02 20:18:21', 'gouslacommande@gmail.com', 0, NULL, 3778);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users-create', 'Create Users', 'Create Users', '2022-03-11 17:54:27', '2022-03-11 17:54:27'),
(2, 'users-read', 'Read Users', 'Read Users', '2022-03-11 17:54:27', '2022-03-11 17:54:27'),
(3, 'users-update', 'Update Users', 'Update Users', '2022-03-11 17:54:27', '2022-03-11 17:54:27'),
(4, 'users-delete', 'Delete Users', 'Delete Users', '2022-03-11 17:54:27', '2022-03-11 17:54:27'),
(5, 'payments-create', 'Create Payments', 'Create Payments', '2022-03-11 17:54:27', '2022-03-11 17:54:27'),
(6, 'payments-read', 'Read Payments', 'Read Payments', '2022-03-11 17:54:27', '2022-03-11 17:54:27'),
(7, 'payments-update', 'Update Payments', 'Update Payments', '2022-03-11 17:54:27', '2022-03-11 17:54:27'),
(8, 'payments-delete', 'Delete Payments', 'Delete Payments', '2022-03-11 17:54:27', '2022-03-11 17:54:27'),
(9, 'profile-read', 'Read Profile', 'Read Profile', '2022-03-11 17:54:27', '2022-03-11 17:54:27'),
(10, 'profile-update', 'Update Profile', 'Update Profile', '2022-03-11 17:54:27', '2022-03-11 17:54:27');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(9, 2),
(10, 2);

-- --------------------------------------------------------

--
-- Structure de la table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `categorie_id` bigint UNSIGNED NOT NULL,
  `ref` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `depot_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `QNT` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `percentage` decimal(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `categorie_id`, `ref`, `name`, `price`, `depot_id`, `image`, `QNT`, `created_at`, `updated_at`, `deleted_at`, `percentage`) VALUES
(3, 3, 'AZ_3', 'CARTON PIZZA N24/ 50', 60.00, 1, '1647995310_WhatsApp Image 2022-03-21 at 03.38.13.jpeg', 99665, '2022-03-22 23:28:30', '2022-03-30 15:24:34', NULL, 0.83),
(4, 3, 'AZ_4', 'CARTON PIZZA N26 / 50', 70.00, 1, '1647995419_WhatsApp Image 2022-03-21 at 03.39.13.jpeg', 9999808, '2022-03-22 23:30:19', '2022-03-29 12:17:56', NULL, 1.07),
(5, 3, 'AZ_5', 'CARTON PIZZA N29 / 50', 80.00, 1, '1647995495_WhatsApp Image 2022-03-21 at 03.40.25.jpeg', 9999937, '2022-03-22 23:31:35', '2022-03-28 21:05:29', NULL, 0.94),
(6, 3, 'AZ_6', 'CARTON PIZZA N31/ 50', 90.00, 1, '1647995636_WhatsApp Image 2022-03-21 at 03.41.19.jpeg', 9999936, '2022-03-22 23:33:56', '2022-03-28 21:05:35', NULL, 1.00),
(7, 4, 'AZ_7', 'Barquette Aluminium 250/8325/1000', 1.00, 1, '1648132891_WhatsApp Image 2022-03-14 at 14.08.21.jpeg', 9999767, '2022-03-24 13:38:41', '2022-04-06 13:20:38', NULL, 1.00),
(8, 4, 'AZ_8', 'Barquette Aluminium 420/8342/1000', 1.00, 1, '1648132844_WhatsApp Image 2022-03-14 at 14.08.20 (3).jpeg', 9999944, '2022-03-24 13:40:44', '2022-03-30 15:11:46', NULL, 1.00),
(9, 4, 'AZ_9', 'Barquette Aluminium 670/83670/800', 1.00, 1, '1648133042_WhatsApp Image 2022-03-14 at 14.08.21 (1).jpeg', 9999947, '2022-03-24 13:44:02', '2022-03-30 15:09:25', NULL, 1.00),
(10, 4, 'AZ_10', 'Barquette Aluminium890/8389/1000', 1.00, 1, '1648133215_WhatsApp Image 2022-03-14 at 14.08.20 (1).jpeg', 10000000, '2022-03-24 13:46:55', '2022-03-24 14:48:02', NULL, 1.00),
(11, 4, 'AZ_11', 'Barquette Aluminium 1200/83120/400', 1.00, 1, '1648133331_WhatsApp Image 2022-03-14 at 14.08.21 (2).jpeg', 10000000, '2022-03-24 13:48:51', '2022-03-24 14:47:36', NULL, 1.00),
(12, 4, 'AZ_12', 'Barquette Aluminium 2C/8582/500', 1.00, 1, '1648133438_WhatsApp Image 2022-03-14 at 14.08.22.jpeg', 10000000, '2022-03-24 13:50:38', '2022-03-24 14:47:08', NULL, 1.00),
(13, 4, 'AZ_13', 'Barquette Aluminium 3C/3377/600', 1.00, 1, '1648133588_WhatsApp Image 2022-03-14 at 14.08.22 (1).jpeg', 9999997, '2022-03-24 13:53:08', '2022-03-30 15:09:24', NULL, 1.00),
(14, 4, 'AZ_14', 'Barquette Aluminium 808/8389/1000', 1.00, 1, '1648133714_WhatsApp Image 2022-03-14 at 14.08.22 (3).jpeg', 9999999, '2022-03-24 13:55:14', '2022-03-30 15:11:41', NULL, 1.00),
(15, 5, 'AZ_15', 'Barquette plastique flat/150CC/1000', 1.00, 1, '1648135305_th.jfif', 10000000, '2022-03-24 14:21:45', '2022-03-24 14:21:45', NULL, 1.00),
(16, 5, 'AZ_16', 'Barquette plastique flat/375CC/1000', 1.00, 1, '1648135368_th.jfif', 9999990, '2022-03-24 14:22:48', '2022-03-24 21:04:05', NULL, 1.00),
(17, 5, 'AZ_17', 'Barquette plastique flat/500CC/1000', 1.00, 1, '1648135491_th.jfif', 10000000, '2022-03-24 14:24:51', '2022-03-24 14:24:51', NULL, 1.00),
(18, 5, 'AZ_18', 'Barquette plastique flat/750CC/600', 1.00, 1, '1648135632_WhatsApp Image 2022-03-14 at 14.08.23.jpeg', 9999990, '2022-03-24 14:27:12', '2022-03-24 21:04:06', NULL, 1.00),
(19, 5, 'AZ_19', 'Barquette plastique flat/1000CC/600', 1.00, 1, '1648136334_WhatsApp Image 2022-03-14 at 14.08.23.jpeg', 10000000, '2022-03-24 14:38:54', '2022-03-24 14:38:54', NULL, 1.00),
(20, 5, 'AZ_20', 'Barquette plastique flat/1250CC/400', 1.00, 1, '1648140995_WhatsApp Image 2022-03-14 at 14.08.23.jpeg', 10000000, '2022-03-24 15:56:35', '2022-03-24 15:56:35', NULL, 1.00),
(21, 5, 'AZ_21', 'Barquette plastique flat/1500CC/400', 1.00, 1, '1648142014_WhatsApp Image 2022-03-14 at 14.08.23.jpeg', 10000000, '2022-03-24 16:13:34', '2022-03-24 16:13:34', NULL, 1.00),
(22, 5, 'AZ_22', 'Barquette plastique flat/2000CC/400', 1.00, 1, '1648142191_WhatsApp Image 2022-03-14 at 14.08.23.jpeg', 10000000, '2022-03-24 16:16:31', '2022-03-24 16:16:31', NULL, 1.00),
(23, 6, 'AZ_23', 'Barquette plastique Bombé/750CC/600', 1.00, 1, '1648142933_31iU2yz7nEL._SL500_AC_SS350_.jpg', 10000000, '2022-03-24 16:28:53', '2022-03-24 16:37:53', NULL, 1.00),
(24, 6, 'AZ_24', 'Barquette plastique Bombé/500CC/1000', 1.00, 1, '1648143110_80a0c9847807207432d62c4034af95a1.jpg', 10000000, '2022-03-24 16:31:50', '2022-03-24 16:34:22', NULL, 1.00),
(25, 6, 'AZ_25', 'Barquette plastique Bombé/1000CC/600', 1.00, 1, '1648143362_80a0c9847807207432d62c4034af95a1.jpg', 10000000, '2022-03-24 16:36:02', '2022-03-24 16:36:02', NULL, 0.00),
(26, 6, 'AZ_26', 'Barquette plastique Bombé/1250CC/400', 1.00, 1, '1648143578_80a0c9847807207432d62c4034af95a1.jpg', 10000000, '2022-03-24 16:39:38', '2022-03-24 16:39:38', NULL, 1.00),
(27, 6, 'AZ_27', 'Barquette plastique Bombé/1500CC/400', 1.00, 1, '1648143656_WhatsApp Image 2022-03-14 at 14.08.23 (2).jpeg', 10000000, '2022-03-24 16:40:56', '2022-03-24 16:40:56', NULL, 1.00),
(28, 6, 'AZ_28', 'Barquette plastique Bombé/2000CC/400', 1.00, 1, '1648143706_WhatsApp Image 2022-03-14 at 14.08.23 (2).jpeg', 10000000, '2022-03-24 16:41:46', '2022-03-26 08:17:16', NULL, 1.00),
(29, 4, 'AZ_29', 'Barquete Aluminium 22Cm/5400R/300', 1.00, 1, '1648286590_WhatsApp Image 2022-03-14 at 14.08.22 (4).jpeg', 9999999, '2022-03-26 08:23:10', '2022-03-30 15:11:40', NULL, 0.00),
(30, 7, 'AZ_30', 'Barquette plastique ronde/250CC/600', 1.00, 1, '1648288295_WhatsApp Image 2022-03-26 at 10.46.47.jpeg', 10000000, '2022-03-26 08:51:35', '2022-03-26 08:51:35', NULL, 1.00),
(31, 7, 'AZ_31', 'Barquette plastique ronde/375CC/600', 1.00, 1, '1648288398_WhatsApp Image 2022-03-26 at 10.46.47.jpeg', 10000000, '2022-03-26 08:53:18', '2022-03-26 08:53:18', NULL, 1.00),
(32, 7, 'AZ_32', 'Barquette plastique ronde/500CC/600', 1.00, 1, '1648288473_WhatsApp Image 2022-03-26 at 10.46.47.jpeg', 10000000, '2022-03-26 08:54:33', '2022-03-26 08:54:33', NULL, 1.00),
(33, 7, 'AZ_33', 'Barquette plastique ronde/750CC/300', 1.00, 1, '1648288562_WhatsApp Image 2022-03-26 at 10.44.57.jpeg', 10000000, '2022-03-26 08:56:02', '2022-03-26 08:56:02', NULL, 1.00),
(34, 7, 'AZ_34', 'Barquette plastique ronde/1000CC/300', 1.00, 1, '1648288764_WhatsApp Image 2022-03-26 at 10.44.57.jpeg', 10000000, '2022-03-26 08:59:24', '2022-03-26 08:59:24', NULL, 1.00),
(35, 8, 'AZ_35', 'Pot de sauce 20cc', 285.00, 1, '1648506015_WhatsApp Image 2022-03-14 at 14.08.29 (3).jpeg', 9999943, '2022-03-28 20:20:15', '2022-04-02 19:33:44', NULL, 1.01),
(36, 8, 'AZ_36', 'Pot de sauce 50cc', 540.00, 1, '1648507203_W.jpeg', 10000000, '2022-03-28 20:40:03', '2022-03-28 20:40:03', NULL, 2.78),
(37, 8, 'AZ_37', 'Pot de sauce 80cc', 630.00, 1, '1648507343_W.jpeg', 10000000, '2022-03-28 20:42:23', '2022-03-28 20:42:23', NULL, 2.38),
(38, 11, 'AZ_38', 'Goblet d\"eau  180CC TR', 240.00, 1, '1648560417_WhatsApp Image 2022-03-14 at 14.08.30 (2).jpeg', 9999814, '2022-03-29 11:26:57', '2022-04-02 20:17:46', NULL, 1.06),
(39, 11, 'AZ_39', 'Goblet d\"eau  180CC BL', 240.00, 1, '1648560914_WhatsApp Image 2022-03-14 at 14.08.31 (2).jpeg', 9999777, '2022-03-29 11:35:14', '2022-04-02 20:17:51', NULL, 1.06),
(40, 20, 'AZ_40', 'Sac poubelle 30L /40pcs', 375.00, 1, '1648562153_WhatsApp Image 2022-03-14 at 14.08.26 (4).jpeg', 9999713, '2022-03-29 11:55:53', '2022-04-06 13:19:48', NULL, 0.80),
(41, 20, 'AZ_41', 'Sac poubelle 30L /20 pcs', 400.00, 1, '1648650047_WhatsApp Image 2022-03-14 at 14.08.27 (2).jpeg', 9999957, '2022-03-30 12:20:47', '2022-04-02 19:40:36', NULL, 0.80),
(42, 20, 'AZ_42', 'Sac poubelle 30L /10pcs', 362.25, 1, '1648650248_WhatsApp Image 2022-03-14 at 14.08.27 (1).jpeg', 9999953, '2022-03-30 12:24:08', '2022-04-02 20:18:13', NULL, 0.82),
(43, 16, 'AZ_43', 'Cuillére MAXI /BL', 616.00, 1, '1648651430_WhatsApp Image 2022-03-14 at 14.08.33 (3).jpeg', 9999994, '2022-03-30 12:43:50', '2022-03-31 12:54:11', NULL, 1.62),
(44, 16, 'AZ_44', 'Cuillére MAXI /TR', 616.00, 1, '1648651689_WhatsApp Image 2022-03-14 at 14.08.34 (2).jpeg', 10000000, '2022-03-30 12:48:09', '2022-03-30 12:48:09', NULL, 1.62),
(45, 20, 'AZ_45', 'Sac poubelle 50L /30pcs', 504.00, 1, '1648651894_WhatsApp Image 2022-03-14 at 14.08.26 (2).jpeg', 9999994, '2022-03-30 12:51:34', '2022-03-31 12:54:44', NULL, 1.19);

-- --------------------------------------------------------

--
-- Structure de la table `productsessions`
--

CREATE TABLE `productsessions` (
  `id` bigint UNSIGNED NOT NULL,
  `product_ref` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `peice` decimal(8,2) NOT NULL,
  `QNT` int NOT NULL DEFAULT '1',
  `total` decimal(8,2) NOT NULL DEFAULT '1.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` decimal(8,2) DEFAULT '0.00',
  `profit` decimal(8,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `productsessions`
--

INSERT INTO `productsessions` (`id`, `product_ref`, `name`, `peice`, `QNT`, `total`, `created_at`, `updated_at`, `percentage`, `profit`) VALUES
(40, 'AZ_40', 'Sac poubelle 30L /40pcs', 375.00, 100, 37500.00, '2022-04-06 12:19:46', '2022-04-06 13:19:48', 0.80, 300.00);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'Admin', '2022-03-11 17:54:27', '2022-03-11 17:54:27'),
(2, 'user', 'User', 'User', '2022-03-11 17:54:27', '2022-03-11 17:54:27');

-- --------------------------------------------------------

--
-- Structure de la table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\Models\\User'),
(1, 5, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'abdellah', 'abdellahmailal36@gmail.com', NULL, '$2y$10$uripxcY1tW/w7sj5dD7W4ecfWY1/yxsN0N6V5DClhOybqpglVGUEW', '714xcVdArqCigLnHBj6pdZHWkvayi8ubKvplivOKPRkKUrCcnv7i5xo5EgAw', '2022-03-12 08:46:30', '2022-03-22 12:49:24'),
(5, 'aziz', 'azizgousla@gmail.com', NULL, '$2y$10$MJGsm0fpOY4o7tcfzrDiC.ov5WilRaN0wI5syk5Cv.x7Dwb74o4FG', 'RNMKvVyLYGnGpews3H1ZytF9b01bvtF4ogLGdOnmQRyF98f4PwlFdPN4VfNg', '2022-03-22 11:12:21', '2022-03-22 21:05:24');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `depots`
--
ALTER TABLE `depots`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `details_orders`
--
ALTER TABLE `details_orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_client_id_foreign` (`client_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Index pour la table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_ref_unique` (`ref`),
  ADD KEY `products_categorie_id_foreign` (`categorie_id`),
  ADD KEY `products_depot_id_foreign` (`depot_id`);

--
-- Index pour la table `productsessions`
--
ALTER TABLE `productsessions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `depots`
--
ALTER TABLE `depots`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `details_orders`
--
ALTER TABLE `details_orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `productsessions`
--
ALTER TABLE `productsessions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_depot_id_foreign` FOREIGN KEY (`depot_id`) REFERENCES `depots` (`id`);

--
-- Contraintes pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
