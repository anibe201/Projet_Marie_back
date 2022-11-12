-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 12 nov. 2022 à 21:23
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mydb`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Reptiles', '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(2, 'Amphibiens', '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(3, 'Poissons', '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(4, 'Mollusques ', '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(5, 'Oiseaux ', '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(6, 'Mammifères', '2022-11-06 22:41:25', '2022-11-06 22:41:25');

-- --------------------------------------------------------

--
-- Structure de la table `companies`
--

DROP TABLE IF EXISTS `companies`;
CREATE TABLE IF NOT EXISTS `companies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motive` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `phoneNo`, `icon`, `logo`, `code`, `header`, `motive`, `details`, `location`, `createdAt`, `updatedAt`) VALUES
(1, 'OEUF D\'OR', 'anibev3@gmail.com', '+225 0140990499', '', 'http://localhost:8084/public/company/emarket-bd/logo.png', 'emarket-bd', 'Trouver ici tous les œufs dont vous recherchez', 'Oeuf d\'or est un site de vente et de distribution de tous type d\'oeuf', 'Large text here. about the emarket-bd', '00225, Côte d\'Ivoire<br/>Bingerville, Akandjé.<br/>', '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(2, 'SUPER MARKET', 'support@supermarket.com', '+8801700000000', '', '', 'supermarket', 'Find what you need here', 'SUPER MARKET sub title here', 'Large text here. about SUPER MARKET', '29/D, Sahid Sarak<br/>Farmgate, Dhaka.<br/>', '2022-11-06 22:41:25', '2022-11-06 22:41:25');

-- --------------------------------------------------------

--
-- Structure de la table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
CREATE TABLE IF NOT EXISTS `orderitems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ProductId` int DEFAULT NULL,
  `OrderId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ProductId` (`ProductId`),
  KEY `OrderId` (`OrderId`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orderitems`
--

INSERT INTO `orderitems` (`id`, `quantity`, `createdAt`, `updatedAt`, `ProductId`, `OrderId`) VALUES
(1, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 1),
(2, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 1),
(3, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 1),
(4, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 2),
(5, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 2),
(6, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 2),
(7, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 3),
(8, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 3),
(9, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 3),
(10, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 4),
(11, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 4),
(12, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 4),
(13, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 5),
(14, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 5),
(15, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 5),
(16, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 6),
(17, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 6),
(18, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 6),
(19, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 7),
(20, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 7),
(21, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 7),
(22, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 8),
(23, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 8),
(24, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 8),
(25, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 9),
(26, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 9),
(27, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 9),
(28, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 10),
(29, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 10),
(30, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 10),
(31, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 11),
(32, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 11),
(33, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 11),
(34, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 12),
(35, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 12),
(36, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 12),
(37, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 13),
(38, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 13),
(39, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 13),
(40, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 14),
(41, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 14),
(42, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 14),
(43, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 15),
(44, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 15),
(45, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 15),
(46, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 16),
(47, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 16),
(48, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 16),
(49, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 17),
(50, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 17),
(51, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 17),
(52, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 18),
(53, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 18),
(54, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 18),
(55, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 19),
(56, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 19),
(57, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 19),
(58, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 20),
(59, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 20),
(60, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 20),
(61, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 21),
(62, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 21),
(63, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 21),
(64, 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4, 22),
(65, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 22),
(66, 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 6, 22),
(67, 3, '2022-11-11 07:01:47', '2022-11-11 07:01:47', 6, NULL),
(68, 3, '2022-11-11 07:01:47', '2022-11-11 07:01:47', 6, NULL),
(69, 3, '2022-11-11 07:01:47', '2022-11-11 07:01:47', 6, NULL),
(70, 3, '2022-11-11 07:01:47', '2022-11-11 07:01:47', 6, NULL),
(71, 3, '2022-11-11 07:06:41', '2022-11-11 07:06:41', 6, 32),
(72, 3, '2022-11-11 07:06:41', '2022-11-11 07:06:41', 6, 32),
(73, 3, '2022-11-11 07:06:41', '2022-11-11 07:06:41', 6, 32),
(74, 3, '2022-11-11 07:06:41', '2022-11-11 07:06:41', 6, 32),
(75, 3, '2022-11-11 08:00:29', '2022-11-11 08:00:29', 6, 32),
(76, 3, '2022-11-11 08:00:29', '2022-11-11 08:00:29', 6, 32),
(77, 3, '2022-11-11 08:00:29', '2022-11-11 08:00:29', 6, 32),
(78, 3, '2022-11-11 08:00:29', '2022-11-11 08:00:29', 6, 32),
(79, 3, '2022-11-11 08:41:58', '2022-11-11 08:41:58', 2, 32),
(80, 3, '2022-11-11 08:41:58', '2022-11-11 08:41:58', 1, 32),
(81, 3, '2022-11-11 08:44:33', '2022-11-11 08:44:33', 2, 32),
(82, 4, '2022-11-11 08:44:33', '2022-11-11 08:44:33', 1, 32),
(83, 3, '2022-11-11 08:45:17', '2022-11-11 08:45:17', 2, 32),
(84, 4, '2022-11-11 08:45:17', '2022-11-11 08:45:17', 1, 32),
(85, 3, '2022-11-11 08:45:44', '2022-11-11 08:45:44', 2, 32),
(86, 4, '2022-11-11 08:45:44', '2022-11-11 08:45:44', 1, 32),
(87, 3, '2022-11-11 08:46:29', '2022-11-11 08:46:29', 2, 32),
(88, 4, '2022-11-11 08:46:29', '2022-11-11 08:46:29', 1, 32),
(89, 3, '2022-11-11 08:47:01', '2022-11-11 08:47:01', 2, 39),
(90, 4, '2022-11-11 08:47:01', '2022-11-11 08:47:01', 1, 39),
(91, 6, '2022-11-11 10:51:56', '2022-11-11 10:51:56', 2, 40),
(92, 1, '2022-11-11 11:48:33', '2022-11-11 11:48:33', 13, 41),
(93, 1, '2022-11-11 11:48:33', '2022-11-11 11:48:33', 2, 41),
(94, 1, '2022-11-11 11:48:33', '2022-11-11 11:48:33', 19, 41),
(95, 1, '2022-11-11 11:53:12', '2022-11-11 11:53:12', 13, 42),
(96, 1, '2022-11-11 11:53:12', '2022-11-11 11:53:12', 2, 42),
(97, 1, '2022-11-11 11:53:12', '2022-11-11 11:53:12', 19, 42),
(98, 1, '2022-11-11 11:55:59', '2022-11-11 11:55:59', 13, 43),
(99, 1, '2022-11-11 11:55:59', '2022-11-11 11:55:59', 2, 43),
(100, 1, '2022-11-11 11:55:59', '2022-11-11 11:55:59', 19, 43),
(101, 1, '2022-11-11 11:58:35', '2022-11-11 11:58:35', 13, 44),
(102, 1, '2022-11-11 11:58:35', '2022-11-11 11:58:35', 2, 44),
(103, 1, '2022-11-11 11:58:35', '2022-11-11 11:58:35', 19, 44),
(104, 1, '2022-11-11 12:10:48', '2022-11-11 12:10:48', 19, 45),
(105, 1, '2022-11-11 12:10:48', '2022-11-11 12:10:48', 13, 45),
(106, 1, '2022-11-11 12:10:48', '2022-11-11 12:10:48', 2, 45),
(107, 1, '2022-11-11 12:12:40', '2022-11-11 12:12:40', 19, 46),
(108, 1, '2022-11-11 12:12:40', '2022-11-11 12:12:40', 13, 46),
(109, 1, '2022-11-11 12:12:40', '2022-11-11 12:12:40', 2, 46),
(110, 1, '2022-11-11 12:14:24', '2022-11-11 12:14:24', 19, 47),
(111, 1, '2022-11-11 12:14:24', '2022-11-11 12:14:24', 13, 47),
(112, 1, '2022-11-11 12:14:24', '2022-11-11 12:14:24', 2, 47),
(113, 1, '2022-11-11 12:16:04', '2022-11-11 12:16:04', 19, 48),
(114, 1, '2022-11-11 12:16:04', '2022-11-11 12:16:04', 13, 48),
(115, 1, '2022-11-11 12:16:04', '2022-11-11 12:16:04', 2, 48),
(116, 1, '2022-11-11 12:21:57', '2022-11-11 12:21:57', 19, 49),
(117, 1, '2022-11-11 12:21:57', '2022-11-11 12:21:57', 13, 49),
(118, 1, '2022-11-11 12:21:57', '2022-11-11 12:21:57', 2, 49),
(119, 1, '2022-11-11 12:24:15', '2022-11-11 12:24:15', 19, 50),
(120, 1, '2022-11-11 12:24:15', '2022-11-11 12:24:15', 13, 50),
(121, 1, '2022-11-11 12:24:15', '2022-11-11 12:24:15', 2, 50),
(122, 1, '2022-11-11 12:25:06', '2022-11-11 12:25:06', 19, 51),
(123, 1, '2022-11-11 12:25:06', '2022-11-11 12:25:06', 13, 51),
(124, 1, '2022-11-11 12:25:06', '2022-11-11 12:25:06', 2, 51),
(125, 1, '2022-11-11 12:26:10', '2022-11-11 12:26:10', 19, 52),
(126, 1, '2022-11-11 12:26:10', '2022-11-11 12:26:10', 13, 52),
(127, 1, '2022-11-11 12:26:10', '2022-11-11 12:26:10', 2, 52),
(128, 1, '2022-11-11 12:27:25', '2022-11-11 12:27:25', 19, 53),
(129, 1, '2022-11-11 12:27:25', '2022-11-11 12:27:25', 13, 53),
(130, 1, '2022-11-11 12:27:25', '2022-11-11 12:27:25', 2, 53),
(131, 1, '2022-11-11 12:35:56', '2022-11-11 12:35:56', 19, 54),
(132, 1, '2022-11-11 12:35:56', '2022-11-11 12:35:56', 13, 54),
(133, 1, '2022-11-11 12:35:56', '2022-11-11 12:35:56', 2, 54),
(134, 1, '2022-11-11 12:36:22', '2022-11-11 12:36:22', 19, 55),
(135, 1, '2022-11-11 12:36:22', '2022-11-11 12:36:22', 13, 55),
(136, 1, '2022-11-11 12:36:22', '2022-11-11 12:36:22', 2, 55),
(137, 1, '2022-11-11 12:37:17', '2022-11-11 12:37:17', 19, 56),
(138, 1, '2022-11-11 12:37:17', '2022-11-11 12:37:17', 13, 56),
(139, 1, '2022-11-11 12:37:17', '2022-11-11 12:37:17', 2, 56),
(140, 6, '2022-11-11 13:33:37', '2022-11-11 13:33:37', 2, 57),
(141, 1, '2022-11-11 20:14:14', '2022-11-11 20:14:14', 19, 58),
(142, 1, '2022-11-11 20:14:14', '2022-11-11 20:14:14', 13, 58),
(143, 1, '2022-11-11 20:14:14', '2022-11-11 20:14:14', 2, 58),
(144, 1, '2022-11-11 20:24:04', '2022-11-11 20:24:04', 19, 59),
(145, 1, '2022-11-11 20:24:04', '2022-11-11 20:24:04', 13, 59),
(146, 1, '2022-11-11 20:24:04', '2022-11-11 20:24:04', 2, 59),
(147, 1, '2022-11-12 20:49:30', '2022-11-12 20:49:30', 19, 60),
(148, 1, '2022-11-12 20:49:30', '2022-11-12 20:49:30', 13, 60),
(149, 1, '2022-11-12 20:49:30', '2022-11-12 20:49:30', 2, 60),
(150, 1, '2022-11-12 20:57:39', '2022-11-12 20:57:39', 29, 61);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkoutSessionId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productCost` int DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shippingCost` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `name`, `phoneNo`, `email`, `address`, `status`, `variant`, `checkoutSessionId`, `productCost`, `currency`, `shippingCost`, `createdAt`, `updatedAt`) VALUES
(1, 'Md. Rony', '+88017000000300', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'paid', 'dark', '12asdfo2i3j4a', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-09 22:31:25'),
(2, 'Md. Rony', '+8801700300000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'preparing', 'info', '12asdfodi3j4s', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(3, 'Md. Rony', '+8801706688000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'on the way', 'warning', '12asddo2i3j4s', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(4, 'Md. Rony', '+8801705500000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'paid', 'dark', '12asdfs2i3j4s', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(5, 'Md. Rony', '+8801730000000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'preparing', 'info', '12aaafo2i3j4s', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(6, 'Md. Rony', '+8801700044000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'paid', 'dark', '12aaafo2i3j4s', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(7, 'Md. Rony', '+8801703300000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'paid', 'dark', '12asdfo2s3j4s', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(8, 'Md. Rony', '+8801700330000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'on the way', 'warning', '12asdfo2sdj4s', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(9, 'Md. Rony', '+8801702200000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'on the way', 'warning', '12asdfo2aaj4s', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(10, 'Md. Rony', '+8801733300000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asdfo2i3jjs', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(11, 'Md. Rony', '+8801700022000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '1wasdfo2i3j4s', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(12, 'Md. Rony', '+8801704440000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asdfr2i3j4s', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(13, 'Md. Rony', '+8801704400000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asdfo2s3j4s', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(14, 'Md. Rony', '+8801700990000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asdfo2ixj4s', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(15, 'Md. Rony', '+8801700000066', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asd4f4i3j4s', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(16, 'Md. Rony', '+8801700880000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asufo2i3j4s', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(17, 'Md. Rony', '+8801700235000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12zsdfo2i3j4s', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(18, 'Md. Rony', '+8801706660000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12lldfo2i3j4s', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(19, 'Md. Rony', '+8801700852000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12wwdfo2i3j4s', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(20, 'Md. Rony', '+8801705550000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12eedfo2i3j4s', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(21, 'Md. Rony', '+8801700330000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asrro2i3j4s', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(22, 'Md. Rony', '+8801702200000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12345678', 400, 'USD', 4, '2022-11-06 22:41:25', '2022-11-06 22:41:25'),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-10 07:48:12', '2022-11-10 07:48:12'),
(24, NULL, NULL, NULL, NULL, 'paid', 'dark', NULL, 100, 'FCFA', 0, '2022-11-10 13:13:11', '2022-11-10 13:13:11'),
(25, NULL, NULL, NULL, NULL, 'paid', 'dark', '170129', 1457, 'FCFA', 0, '2022-11-10 13:20:00', '2022-11-10 13:20:00'),
(26, NULL, NULL, NULL, NULL, 'paid', 'dark', '673367', 1457, 'FCFA', 0, '2022-11-10 13:43:20', '2022-11-10 13:43:20'),
(27, NULL, NULL, NULL, NULL, 'paid', 'dark', '127982', 1457, 'FCFA', 0, '2022-11-10 13:44:28', '2022-11-10 13:44:28'),
(28, NULL, NULL, NULL, NULL, 'on the way', 'warning', '213839', 1457, 'FCFA', 0, '2022-11-10 14:28:57', '2022-11-11 06:43:52'),
(29, NULL, NULL, NULL, NULL, 'paid', 'dark', '638485', 1457, 'FCFA', 0, '2022-11-10 14:57:33', '2022-11-10 14:57:33'),
(30, NULL, NULL, NULL, NULL, 'paid', 'dark', '165068', 1457, 'FCFA', 0, '2022-11-11 06:42:05', '2022-11-11 06:42:05'),
(31, NULL, NULL, NULL, NULL, 'paid', 'dark', '563802', 1457, 'FCFA', 0, '2022-11-11 07:01:46', '2022-11-11 07:01:46'),
(32, NULL, NULL, NULL, NULL, 'paid', 'dark', '481104', 1457, 'FCFA', 0, '2022-11-11 07:06:41', '2022-11-11 07:06:41'),
(33, NULL, NULL, NULL, NULL, 'paid', 'dark', '943991', 1457, 'FCFA', 0, '2022-11-11 08:00:29', '2022-11-11 08:00:29'),
(34, NULL, NULL, NULL, NULL, 'paid', 'dark', '839575', 1457, 'FCFA', 0, '2022-11-11 08:41:58', '2022-11-11 08:41:58'),
(35, NULL, NULL, NULL, NULL, 'paid', 'dark', '114847', 1457, 'FCFA', 0, '2022-11-11 08:44:33', '2022-11-11 08:44:33'),
(36, NULL, NULL, NULL, NULL, 'paid', 'dark', '596211', 1457, 'FCFA', 0, '2022-11-11 08:45:17', '2022-11-11 08:45:17'),
(37, NULL, NULL, NULL, NULL, 'paid', 'dark', '632567', 1457, 'FCFA', 0, '2022-11-11 08:45:44', '2022-11-11 08:45:44'),
(38, NULL, NULL, NULL, NULL, 'paid', 'dark', '852272', 1457, 'FCFA', 0, '2022-11-11 08:46:29', '2022-11-11 08:46:29'),
(39, NULL, NULL, NULL, NULL, 'complete', 'success', '827761', 1457, 'FCFA', 0, '2022-11-11 08:47:01', '2022-11-11 08:52:12'),
(40, NULL, NULL, NULL, NULL, 'paid', 'dark', '857016', 2194, 'FCFA', 0, '2022-11-11 10:51:56', '2022-11-11 10:51:56'),
(41, NULL, NULL, NULL, NULL, 'paid', 'dark', '965651', 511, 'FCFA', 0, '2022-11-11 11:48:33', '2022-11-11 11:48:33'),
(42, NULL, NULL, NULL, NULL, 'paid', 'dark', '832222', 511, 'FCFA', 0, '2022-11-11 11:53:12', '2022-11-11 11:53:12'),
(43, NULL, NULL, NULL, NULL, 'paid', 'dark', '432543', 511, 'FCFA', 0, '2022-11-11 11:55:59', '2022-11-11 11:55:59'),
(44, NULL, NULL, NULL, NULL, 'paid', 'dark', '152544', 511, 'FCFA', 0, '2022-11-11 11:58:35', '2022-11-11 11:58:35'),
(45, NULL, NULL, NULL, NULL, 'paid', 'dark', '804051', 1507, 'FCFA', 0, '2022-11-11 12:10:48', '2022-11-11 12:10:48'),
(46, NULL, NULL, NULL, NULL, 'paid', 'dark', '274798', 1507, 'FCFA', 0, '2022-11-11 12:12:40', '2022-11-11 12:12:40'),
(47, NULL, NULL, NULL, NULL, 'paid', 'dark', '355617', 1507, 'FCFA', 0, '2022-11-11 12:14:24', '2022-11-11 12:14:24'),
(48, NULL, NULL, NULL, NULL, 'paid', 'dark', '489179', 1507, 'FCFA', 0, '2022-11-11 12:16:04', '2022-11-11 12:16:04'),
(49, NULL, NULL, NULL, NULL, 'paid', 'dark', '981740', 1507, 'FCFA', 0, '2022-11-11 12:21:57', '2022-11-11 12:21:57'),
(50, NULL, NULL, NULL, NULL, 'paid', 'dark', '533100', 1507, 'FCFA', 0, '2022-11-11 12:24:15', '2022-11-11 12:24:15'),
(51, NULL, NULL, NULL, NULL, 'paid', 'dark', '623972', 1507, 'FCFA', 0, '2022-11-11 12:25:06', '2022-11-11 12:25:06'),
(52, NULL, NULL, NULL, NULL, 'paid', 'dark', '682308', 1507, 'FCFA', 0, '2022-11-11 12:26:10', '2022-11-11 12:26:10'),
(53, NULL, NULL, NULL, NULL, 'paid', 'dark', '669054', 1507, 'FCFA', 0, '2022-11-11 12:27:25', '2022-11-11 12:27:25'),
(54, NULL, NULL, NULL, NULL, 'paid', 'dark', '461731', 1507, 'FCFA', 0, '2022-11-11 12:35:56', '2022-11-11 12:35:56'),
(55, NULL, NULL, NULL, NULL, 'paid', 'dark', '355484', 1507, 'FCFA', 0, '2022-11-11 12:36:22', '2022-11-11 12:36:22'),
(56, NULL, NULL, NULL, NULL, 'paid', 'dark', '812825', 1507, 'FCFA', 0, '2022-11-11 12:37:17', '2022-11-11 12:37:17'),
(57, NULL, NULL, NULL, NULL, 'paid', 'dark', '235931', 2194, 'FCFA', 0, '2022-11-11 13:33:37', '2022-11-11 13:33:37'),
(58, NULL, NULL, NULL, NULL, 'paid', 'dark', '318578', 1507, 'FCFA', 0, '2022-11-11 20:14:14', '2022-11-11 20:14:14'),
(59, NULL, NULL, NULL, NULL, 'paid', 'dark', '395128', 1507, 'FCFA', 0, '2022-11-11 20:24:04', '2022-11-11 20:24:04'),
(60, NULL, NULL, NULL, NULL, 'paid', 'dark', '272323', 1507, 'FCFA', 0, '2022-11-12 20:49:30', '2022-11-12 20:49:30'),
(61, NULL, NULL, NULL, NULL, 'paid', 'dark', '104557', 234333, 'FCFA', 0, '2022-11-12 20:57:39', '2022-11-12 20:57:39');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `amount` int DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `peopleRated` int DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sales` int DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `CategoryId` int DEFAULT NULL,
  `SubCategoryId` int DEFAULT NULL,
  `SubSubCategoryId` int DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CategoryId` (`CategoryId`),
  KEY `SubCategoryId` (`SubCategoryId`),
  KEY `SubSubCategoryId` (`SubSubCategoryId`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `code`, `title`, `subtitle`, `description`, `amount`, `rating`, `peopleRated`, `currency`, `sales`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `image8`, `image9`, `image10`, `createdAt`, `updatedAt`, `CategoryId`, `SubCategoryId`, `SubSubCategoryId`, `UserId`) VALUES
(1, 'ES00000001', 'Samsung Galaxy M40', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 214, 4, 1, 'USD', 10, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/1/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/1/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/1/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/1/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 22:41:25', '2022-11-10 13:25:54', 1, 1, 1, 1),
(2, 'ES00000002', 'Samsung Galaxy M21 6GB/128GB', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 199, 5, 2, 'USD', 112, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/2/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/2/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/2/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/2/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 1, 1, 1),
(3, 'ES00000003', 'Samsung Galaxy A21s 4GB/64GB', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 169, 4, 1, 'USD', 60, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/3/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/3/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/3/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/3/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 1, 1, 1),
(4, 'ES00000004', 'Samsung Galaxy A20', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 100, 0, 0, 'USD', 25, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/4/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/4/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/4/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/4/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 1, 1, 1),
(5, 'ES00000005', 'Samsung Galaxy J7', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 100, 0, 0, 'USD', 42, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/5/1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 1, 1, 1),
(6, 'ES00000006', 'Samsung Galaxy A01', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 100, 0, 0, 'USD', 61, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/6/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/6/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/6/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/6/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 1, 1, 1),
(7, 'ES00000007', 'Samsung Galaxy M31 8GB/128GB', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 259, 0, 0, 'USD', 92, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/7/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/7/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/7/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/7/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 1, 1, 1),
(8, 'ES00000008', 'Samsung Galaxy M11', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 139, 0, 0, 'USD', 35, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/8/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/8/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/8/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/8/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 1, 1, 1),
(9, 'ES00000009', 'Samsung Galaxy A71', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 329, 0, 0, 'USD', 29, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/9/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/9/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/9/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/9/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 1, 1, 1),
(10, 'ES00000010', 'Samsung Galaxy M01 Core 2GB/32GB', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 72, 0, 0, 'USD', 11, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/10/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/10/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/10/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/10/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 1, 1, 1),
(11, 'ES00000011', 'Xiaomi Poco C3 4GB/64GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 129, 0, 0, 'USD', 36, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/1/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/1/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/1/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/1/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 1, NULL, 1),
(12, 'ES00000012', 'Xiaomi Poco M3 4GB/64GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 149, 0, 0, 'USD', 54, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/2/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/2/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/2/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/2/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 1, NULL, 1),
(13, 'ES00000013', 'Xiaomi Poco M2 6GB/64GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 159, 0, 0, 'USD', 222, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/3/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/3/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/3/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/3/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 1, NULL, 1),
(14, 'ES00000014', 'Xiaomi Poco M3 4GB/128GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 164, 0, 0, 'USD', 52, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/4/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/4/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/4/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/4/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 1, NULL, 1),
(15, 'ES00000015', 'Xiaomi Redmi Note 9 Pro 6GB/128GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 279, 0, 0, 'USD', 18, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/5/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/5/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/5/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/5/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 1, NULL, 1),
(16, 'ES00000016', 'Xiaomi Mi 3 16GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 185, 0, 0, 'USD', 34, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/6/1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 1, NULL, 1);
INSERT INTO `products` (`id`, `code`, `title`, `subtitle`, `description`, `amount`, `rating`, `peopleRated`, `currency`, `sales`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `image8`, `image9`, `image10`, `createdAt`, `updatedAt`, `CategoryId`, `SubCategoryId`, `SubSubCategoryId`, `UserId`) VALUES
(17, 'ES00000017', 'Xiaomi Redmi Note 9', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 199, 0, 0, 'USD', 61, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/7/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/7/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/7/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/7/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 1, NULL, 1),
(18, 'ES00000018', 'Xiaomi Redmi Note 8 4GB/64GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 189, 0, 0, 'USD', 87, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/8/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/8/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/8/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/8/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 1, NULL, 1),
(19, 'ES00000019', 'Xiaomi Redmi 9', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 149, 0, 0, 'USD', 95, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/9/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/9/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/9/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/9/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 1, NULL, 1),
(20, 'ES00000020', 'Xiaomi Redmi 8 4GB/64GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 149, 0, 0, 'USD', 65, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/10/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/10/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/10/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/10/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 1, NULL, 1),
(24, '', 'oeuf de poulet', '<p>x</p>', '<p>xx</p>', 130000, 4, 1, 'Fcfa', 0, 'http://localhost:8084/public\\product-image\\16678492044482.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-07 19:26:44', '2022-11-07 19:44:35', 5, 44, 34, NULL),
(28, '', 'oeuf de poulet', '<p>q</p>', '<p>q</p>', 130000, 0, 0, 'Fcfa', 0, 'http://localhost:8084/public\\product-image\\166816043944920220216_PEO_EGG-BUSSINESS_ZHD_5569_20221025120445_theedgemarkets.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-11 09:53:59', '2022-11-11 09:53:59', 6, 65, 35, NULL),
(29, '', 'Oeuf de poulet', '<p>H</p>', '<p>J</p>', 233333, 0, 0, 'Fcfa', 0, 'http://localhost:8084/public\\product-image\\1668160966193l-oeuf-le-plus-gros-jamais-recense-aux-etats-unis-en-1956-pesait-454-grammes-photo-d-illustration-julio-pelaez-1556557434 - Copie.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-11 10:02:46', '2022-11-11 10:02:46', 5, 44, 34, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rating` int DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserId` int DEFAULT NULL,
  `ProductId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `UserId` (`UserId`),
  KEY `ProductId` (`ProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `createdAt`, `updatedAt`, `UserId`, `ProductId`) VALUES
(1, 0, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 1),
(2, 5, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 2),
(3, 4, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1, 3),
(5, 4, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5, 1),
(6, 0, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-11-06 22:41:25', '2022-11-06 22:41:25', 2, 1),
(7, 0, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-11-06 22:41:25', '2022-11-06 22:41:25', 3, 1),
(8, 5, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-11-06 22:41:25', '2022-11-06 22:41:25', 3, 2),
(9, 4, ' j', '2022-11-07 19:44:35', '2022-11-07 19:44:35', 1, 24);

-- --------------------------------------------------------

--
-- Structure de la table `showcases`
--

DROP TABLE IF EXISTS `showcases`;
CREATE TABLE IF NOT EXISTS `showcases` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `routerLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `CompanyId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CompanyId` (`CompanyId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `showcases`
--

INSERT INTO `showcases` (`id`, `type`, `caption`, `image`, `routerLink`, `priority`, `createdAt`, `updatedAt`, `CompanyId`) VALUES
(1, 'carousel', 'A New Online Shop Experience.', 'http://localhost:8084/public/display-images/home_slider_0.jpg', '/products/Electronics', 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1),
(2, 'carousel', '', 'http://localhost:8084/public/display-images/home_slider_1.jpg', '/products/Electronics', 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1),
(3, 'card', '', 'http://localhost:8084/public/display-images/mac-mini.png', '/products/oixeaux', 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1),
(4, 'card', '', 'http://localhost:8084/public/display-images/4.jpg', '/products/Electronics', 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1),
(5, 'card', '', 'http://localhost:8084/public/display-images/9.jpg', '/products/Electronics', 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1),
(6, 'card', '', 'http://localhost:8084/public/display-images/10.jpg', '/products/Electronics', 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1),
(7, 'big card', '', 'http://localhost:8084/public/display-images/smart-watches.jpeg', '/products/Oiseaux', 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1),
(8, 'big card', '', 'http://localhost:8084/public/display-images/lenovo-yoga.jpeg', '/products/Oiseaux', 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1),
(9, 'carousel', NULL, 'http://localhost:8084/public/display-images/home_slider_2.jpg', '/products/oixeaux', 1, '2022-11-07 16:09:39', '2022-11-07 16:09:39', 1);

-- --------------------------------------------------------

--
-- Structure de la table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `CategoryId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CategoryId` (`CategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `createdAt`, `updatedAt`, `CategoryId`) VALUES
(1, 'crocodile', '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1),
(2, 'alligator', '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1),
(3, 'iguane', '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1),
(4, 'tortue', '2022-11-06 22:41:25', '2022-11-06 22:41:25', 2),
(5, 'dragon de Komodo\n', '2022-11-06 22:41:25', '2022-11-06 22:41:25', 3),
(6, 'lézard', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 1),
(7, 'grenouille', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 2),
(8, 'crapaud', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 2),
(9, 'saumon', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 3),
(10, 'truite', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 3),
(11, 'carpe', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 3),
(12, 'thon', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 3),
(13, 'poisson-ballon', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 3),
(14, 'poisson-clown', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 3),
(15, 'calmar', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 4),
(16, 'escargot', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 4),
(17, 'pieuvre', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 4),
(18, 'limaces', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 4),
(19, 'autruche', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 5),
(20, 'aigle', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 5),
(21, 'paon', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 5),
(22, 'condor', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 5),
(23, 'perroquet', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 5),
(24, 'faucon', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 5),
(26, 'grenouille', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 2),
(27, 'crapaud', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 2),
(28, 'saumon', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 3),
(29, 'truite', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 3),
(30, 'carpe', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 3),
(31, 'thon', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 3),
(32, 'poisson-ballon', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 3),
(33, 'poisson-clown', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 3),
(34, 'calmar', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 4),
(35, 'escargot', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 4),
(36, 'pieuvre', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 4),
(37, 'limaces', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 4),
(38, 'autruche', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 5),
(39, 'aigle', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 5),
(40, 'paon', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 5),
(41, 'condor', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 5),
(42, 'perroquet', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 5),
(43, 'faucon', '2022-11-07 16:34:55', '2022-11-07 16:34:55', 5),
(44, 'poule', '2022-11-07 18:12:25', '2022-11-07 18:12:25', 5),
(45, 'moineau', '2022-11-07 18:12:25', '2022-11-07 18:12:25', 5),
(46, 'pingouin', '2022-11-07 18:12:25', '2022-11-07 18:12:25', 5),
(47, 'chouette', '2022-11-07 18:12:25', '2022-11-07 18:12:25', 5),
(48, 'pigeon', '2022-11-07 18:12:25', '2022-11-07 18:12:25', 5),
(49, 'caille', '2022-11-07 18:12:25', '2022-11-07 18:12:25', NULL),
(50, 'oie', '2022-11-07 18:12:25', '2022-11-07 18:12:25', 5),
(51, 'canard', '2022-11-07 18:12:25', '2022-11-07 18:12:25', 5),
(52, 'cigogne', '2022-11-07 18:12:25', '2022-11-07 18:12:25', 5),
(53, 'ornithorynque', '2022-11-07 18:12:25', '2022-11-07 18:12:25', 6),
(54, 'échidné', '2022-11-07 18:12:25', '2022-11-07 18:12:25', 6),
(55, 'poule', '2022-11-07 18:12:25', '2022-11-07 18:12:25', 5),
(56, 'moineau', '2022-11-07 18:12:25', '2022-11-07 18:12:25', 5),
(57, 'pingouin', '2022-11-07 18:12:25', '2022-11-07 18:12:25', 5),
(58, 'chouette', '2022-11-07 18:12:25', '2022-11-07 18:12:25', 5),
(59, 'pigeon', '2022-11-07 18:12:25', '2022-11-07 18:12:25', 5),
(60, 'caille', '2022-11-07 18:12:25', '2022-11-07 18:12:25', NULL),
(61, 'oie', '2022-11-07 18:12:25', '2022-11-07 18:12:25', 5),
(62, 'canard', '2022-11-07 18:12:25', '2022-11-07 18:12:25', 5),
(63, 'cigogne', '2022-11-07 18:12:25', '2022-11-07 18:12:25', 5),
(64, 'ornithorynque', '2022-11-07 18:12:25', '2022-11-07 18:12:25', 6),
(65, 'échidné', '2022-11-07 18:12:25', '2022-11-07 18:12:25', 6);

-- --------------------------------------------------------

--
-- Structure de la table `subsubcategories`
--

DROP TABLE IF EXISTS `subsubcategories`;
CREATE TABLE IF NOT EXISTS `subsubcategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `SubCategoryId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SubCategoryId` (`SubCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `subsubcategories`
--

INSERT INTO `subsubcategories` (`id`, `name`, `createdAt`, `updatedAt`, `SubCategoryId`) VALUES
(1, 'Samsung', '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1),
(12, 'Mobile Charger', '2022-11-06 22:41:25', '2022-11-06 22:41:25', 2),
(19, 'External Hard Disk', '2022-11-06 22:41:25', '2022-11-06 22:41:25', 3),
(25, 'Samsung', '2022-11-06 22:41:25', '2022-11-06 22:41:25', 4),
(31, 'Fully Automatic Front', '2022-11-06 22:41:25', '2022-11-06 22:41:25', 5),
(34, 'r', '2022-11-07 19:26:39', '2022-11-07 19:26:39', 44),
(35, '-', '2022-11-11 09:53:53', '2022-11-11 09:53:53', 65);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profileImage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registerToken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resetPasswordToken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `CompanyId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CompanyId` (`CompanyId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `profileImage`, `registerToken`, `email`, `phoneNo`, `password`, `resetPasswordToken`, `userType`, `variant`, `priority`, `createdAt`, `updatedAt`, `CompanyId`) VALUES
(1, 'admin', 'Md.', 'Rony', 'http://localhost:8084/public/user-image/default-man.png', '', 'admin@gmail.com', '+8801700100000', '12345678', '', 'Admin', 'dark', 1, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1),
(2, 'ronyku', 'Md.', 'Rony', 'http://localhost:8084/public/user-image/default-man.png', '', 'rony@gmail.com', '+8801700100001', '12345678', '', 'Customer', 'warning', 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1),
(3, 'mukit224', 'Mukit', 'Pranto', 'http://localhost:8084/public/user-image/default-man.png', '', 'mukit@gmail.com', '+8801700100002', '12345678', '', 'Customer', 'warning', 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1),
(5, 'sojib239', 'Sojib', 'Hossain', 'http://localhost:8084/public/user-image/default-man.png', '', 'sojib@gmail.com', '+8801700100004', '12345678', '', 'Customer', 'warning', 2, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 1);

-- --------------------------------------------------------

--
-- Structure de la table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserId` int DEFAULT NULL,
  `ProductId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `UserId` (`UserId`),
  KEY `ProductId` (`ProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wishlists`
--

INSERT INTO `wishlists` (`id`, `createdAt`, `updatedAt`, `UserId`, `ProductId`) VALUES
(7, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 2, 3),
(8, '2022-11-06 22:41:25', '2022-11-06 22:41:25', 2, 4),
(10, '2022-11-07 19:31:09', '2022-11-07 19:31:09', 1, 24),
(11, '2022-11-08 19:43:42', '2022-11-08 19:43:42', 1, 13),
(12, '2022-11-08 19:46:21', '2022-11-08 19:46:21', 1, 19),
(13, '2022-11-08 19:46:27', '2022-11-08 19:46:27', 1, 2),
(14, '2022-11-09 10:28:29', '2022-11-09 10:28:29', 1, 20),
(15, '2022-11-09 11:03:03', '2022-11-09 11:03:03', 1, 1),
(16, '2022-11-10 09:45:20', '2022-11-10 09:45:20', 3, 2);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`ProductId`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`SubCategoryId`) REFERENCES `subcategories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`SubSubCategoryId`) REFERENCES `subsubcategories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_4` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`ProductId`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `showcases`
--
ALTER TABLE `showcases`
  ADD CONSTRAINT `showcases_ibfk_1` FOREIGN KEY (`CompanyId`) REFERENCES `companies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `subsubcategories`
--
ALTER TABLE `subsubcategories`
  ADD CONSTRAINT `subsubcategories_ibfk_1` FOREIGN KEY (`SubCategoryId`) REFERENCES `subcategories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`CompanyId`) REFERENCES `companies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`ProductId`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
