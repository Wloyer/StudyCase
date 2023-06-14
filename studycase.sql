-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 14 juin 2023 à 16:03
-- Version du serveur : 8.0.31
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `studycase`
--

-- --------------------------------------------------------

--
-- Structure de la table `car`
--

DROP TABLE IF EXISTS `car`;
CREATE TABLE IF NOT EXISTS `car` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `nb_seats` int NOT NULL,
  `nb_doors` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_773DE69D12469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `car`
--

INSERT INTO `car` (`id`, `category_id`, `nb_seats`, `nb_doors`, `name`, `cost`) VALUES
(31, 7, 3, 5, 'Car Model 981', 32684),
(32, 7, 3, 5, 'Car Model 708', 43070),
(33, 7, 3, 2, 'Car Model 571', 39527),
(34, 7, 4, 4, 'Car Model 134', 33717),
(35, 7, 4, 4, 'Car Model 491', 48742),
(36, 7, 3, 5, 'Car Model 154', 18410),
(37, 7, 5, 2, 'Car Model 904', 15756),
(38, 7, 5, 4, 'Car Model 898', 25840),
(40, 7, 4, 3, 'Car Model 067', 41698),
(41, 8, 4, 2, 'Car Model 394', 12267),
(42, 8, 4, 2, 'Car Model 412', 16222),
(43, 8, 5, 4, 'Car Model 494', 42713),
(44, 8, 2, 4, 'Car Model 362', 42986),
(45, 8, 4, 2, 'Car Model 297', 40836),
(46, 8, 3, 4, 'Car Model 510', 34839),
(47, 8, 4, 4, 'Car Model 165', 39360),
(48, 8, 5, 2, 'Car Model 842', 19614),
(49, 8, 2, 5, 'Car Model 776', 46892),
(50, 8, 5, 3, 'Car Model 953', 26082),
(51, 9, 5, 4, 'Car Model 838', 31706),
(52, 9, 2, 4, 'Car Model 801', 37874),
(53, 9, 2, 4, 'Car Model 783', 47330),
(54, 9, 2, 4, 'Car Model 793', 32110),
(55, 9, 3, 2, 'Car Model 659', 46033),
(56, 9, 3, 5, 'Car Model 367', 28842),
(57, 9, 5, 4, 'Car Model 476', 22380),
(58, 9, 5, 5, 'Car Model 978', 31978),
(59, 9, 2, 4, 'Car Model 702', 19271),
(60, 9, 3, 4, 'Car Model 981', 18898),
(61, 10, 4, 2, 'Car Model 659', 32898),
(62, 10, 5, 5, 'Car Model 589', 39135),
(63, 10, 2, 4, 'Car Model 078', 26078),
(64, 10, 2, 5, 'Car Model 205', 39757),
(65, 10, 5, 5, 'Car Model 419', 28382),
(66, 10, 5, 2, 'Car Model 393', 26274),
(67, 10, 2, 5, 'Car Model 667', 24135),
(68, 10, 3, 4, 'Car Model 515', 40916),
(69, 10, 5, 2, 'Car Model 879', 32170),
(70, 10, 5, 2, 'Car Model 719', 44154),
(72, 11, 3, 5, 'Car Model 424', 49813),
(73, 11, 2, 4, 'Car Model 848', 25471),
(74, 11, 3, 5, 'Car Model 090', 49419),
(75, 11, 2, 2, 'Car Model 871', 26448),
(76, 11, 5, 5, 'Car Model 504', 37518),
(77, 11, 5, 4, 'Car Model 837', 38947),
(78, 11, 2, 5, 'Car Model 438', 26522),
(79, 11, 3, 3, 'Car Model 798', 33395),
(80, 11, 4, 5, 'Car Model 226', 43005),
(81, 8, 5, 3, 'car saved', 585858);

-- --------------------------------------------------------

--
-- Structure de la table `car_category`
--

DROP TABLE IF EXISTS `car_category`;
CREATE TABLE IF NOT EXISTS `car_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `car_category`
--

INSERT INTO `car_category` (`id`, `name`) VALUES
(7, 'Category 0'),
(8, 'Category 1'),
(9, 'Category 2'),
(10, 'Category 3'),
(11, 'Category 4');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230612134019', '2023-06-12 13:40:31', 90);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `FK_773DE69D12469DE2` FOREIGN KEY (`category_id`) REFERENCES `car_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
