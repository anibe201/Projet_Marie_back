-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 12 nov. 2022 à 21:24
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
-- Base de données : `formation_backend_node`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `createdAt`, `updatedAt`) VALUES
(1, 'Reptiles ', NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(2, 'Amphibiens ', NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(3, 'Poissons ', 'mdi-fish', '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(5, 'Mollusques ', NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(6, 'Oiseaux ', 'mdi-bird', '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(7, 'Mammifères ', 'mdi-dog', '2022-10-30 20:58:25', '2022-10-30 20:58:25');

-- --------------------------------------------------------

--
-- Structure de la table `companies`
--

DROP TABLE IF EXISTS `companies`;
CREATE TABLE IF NOT EXISTS `companies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phoneNo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  `motive` varchar(255) DEFAULT NULL,
  `details` text,
  `location` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `phoneNo`, `icon`, `logo`, `code`, `header`, `motive`, `details`, `location`, `createdAt`, `updatedAt`) VALUES
(1, 'E Market BD', 'support@emarket-bd.com', '+8801710000000', '', 'http://localhost:5000/public/company/emarket-bd/logo.png', 'emarket-bd', 'Find what you need here', 'emarket-bd is just a software project. It is developed to learn how to build a web application. I\'ve included all these data from the internet from different kind of source. And this is not a real ecommerce site.', 'Large text here. about the emarket-bd', '29/A, greenroad<br/>Farmgate, Dhaka.<br/>', '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(2, 'SUPER MARKET', 'support@supermarket.com', '+8801700000000', '', '', 'supermarket', 'Find what you need here', 'SUPER MARKET sub title here', 'Large text here. about SUPER MARKET', '29/D, Sahid Sarak<br/>Farmgate, Dhaka.<br/>', '2022-10-30 20:58:25', '2022-10-30 20:58:25');

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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `orderitems`
--

INSERT INTO `orderitems` (`id`, `quantity`, `createdAt`, `updatedAt`, `ProductId`, `OrderId`) VALUES
(1, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 1),
(2, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 1),
(3, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 1),
(4, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 2),
(5, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 2),
(6, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 2),
(7, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 3),
(8, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 3),
(9, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 3),
(10, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 4),
(11, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 4),
(12, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 4),
(13, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 5),
(14, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 5),
(15, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 5),
(16, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 6),
(17, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 6),
(18, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 6),
(19, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 7),
(20, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 7),
(21, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 7),
(22, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 8),
(23, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 8),
(24, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 8),
(25, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 9),
(26, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 9),
(27, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 9),
(28, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 10),
(29, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 10),
(30, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 10),
(31, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 11),
(32, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 11),
(33, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 11),
(34, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 12),
(35, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 12),
(36, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 12),
(37, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 13),
(38, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 13),
(39, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 13),
(40, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 14),
(41, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 14),
(42, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 14),
(43, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 15),
(44, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 15),
(45, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 15),
(46, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 16),
(47, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 16),
(48, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 16),
(49, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 17),
(50, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 17),
(51, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 17),
(52, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 18),
(53, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 18),
(54, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 18),
(55, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 19),
(56, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 19),
(57, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 19),
(58, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 20),
(59, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 20),
(60, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 20),
(61, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 21),
(62, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 21),
(63, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 21),
(64, 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 22),
(65, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 22),
(66, 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 22);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phoneNo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `checkoutSessionId` varchar(255) DEFAULT NULL,
  `productCost` int DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `shippingCost` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `name`, `phoneNo`, `email`, `address`, `status`, `variant`, `checkoutSessionId`, `productCost`, `currency`, `shippingCost`, `createdAt`, `updatedAt`) VALUES
(1, 'Md. Rony', '+88017000000300', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'paid', 'dark', '12asdfo2i3j4a', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(2, 'Md. Rony', '+8801700300000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'preparing', 'info', '12asdfodi3j4s', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(3, 'Md. Rony', '+8801706688000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'on the way', 'warning', '12asddo2i3j4s', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(4, 'Md. Rony', '+8801705500000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'paid', 'dark', '12asdfs2i3j4s', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(5, 'Md. Rony', '+8801730000000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'preparing', 'info', '12aaafo2i3j4s', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(6, 'Md. Rony', '+8801700044000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'paid', 'dark', '12aaafo2i3j4s', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(7, 'Md. Rony', '+8801703300000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'paid', 'dark', '12asdfo2s3j4s', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(8, 'Md. Rony', '+8801700330000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'on the way', 'warning', '12asdfo2sdj4s', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(9, 'Md. Rony', '+8801702200000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'on the way', 'warning', '12asdfo2aaj4s', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(10, 'Md. Rony', '+8801733300000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asdfo2i3jjs', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(11, 'Md. Rony', '+8801700022000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '1wasdfo2i3j4s', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(12, 'Md. Rony', '+8801704440000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asdfr2i3j4s', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(13, 'Md. Rony', '+8801704400000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asdfo2s3j4s', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(14, 'Md. Rony', '+8801700990000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asdfo2ixj4s', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(15, 'Md. Rony', '+8801700000066', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asd4f4i3j4s', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(16, 'Md. Rony', '+8801700880000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asufo2i3j4s', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(17, 'Md. Rony', '+8801700235000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12zsdfo2i3j4s', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(18, 'Md. Rony', '+8801706660000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12lldfo2i3j4s', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(19, 'Md. Rony', '+8801700852000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12wwdfo2i3j4s', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(20, 'Md. Rony', '+8801705550000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12eedfo2i3j4s', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(21, 'Md. Rony', '+8801700330000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asrro2i3j4s', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25'),
(22, 'Md. Rony', '+8801702200000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asdfuyi3j4s', 400, 'USD', 4, '2022-10-30 20:58:25', '2022-10-30 20:58:25');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `description` text,
  `amount` int DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `peopleRated` int DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `sales` int DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `image5` varchar(255) DEFAULT NULL,
  `image6` varchar(255) DEFAULT NULL,
  `image7` varchar(255) DEFAULT NULL,
  `image8` varchar(255) DEFAULT NULL,
  `image9` varchar(255) DEFAULT NULL,
  `image10` varchar(255) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `code`, `title`, `subtitle`, `description`, `amount`, `rating`, `peopleRated`, `currency`, `sales`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `image8`, `image9`, `image10`, `createdAt`, `updatedAt`, `CategoryId`, `SubCategoryId`, `SubSubCategoryId`, `UserId`) VALUES
(1, 'ES00000001', 'Samsung Galaxy M40', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 214, 4.5, 2, 'USD', 10, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/1/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/1/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/1/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/1/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1, 1, 1, 1),
(2, 'ES00000002', 'Samsung Galaxy M21 6GB/128GB', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 199, 5, 2, 'USD', 112, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/2/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/2/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/2/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/2/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1, 1, 1, 1),
(3, 'ES00000003', 'Samsung Galaxy A21s 4GB/64GB', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 169, 4, 1, 'USD', 60, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/3/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/3/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/3/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/3/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1, 1, 1, 1),
(4, 'ES00000004', 'Samsung Galaxy A20', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 100, 0, 0, 'USD', 25, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/4/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/4/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/4/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/4/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1, 1, 1, 1),
(5, 'ES00000005', 'Samsung Galaxy J7', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 100, 0, 0, 'USD', 42, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/5/1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 7, 7, 1, 1),
(6, 'ES00000006', 'Samsung Galaxy A01', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 100, 0, 0, 'USD', 61, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/6/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/6/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/6/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/6/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 7, 7, 1, 1),
(7, 'ES00000007', 'Samsung Galaxy M31 8GB/128GB', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 259, 0, 0, 'USD', 92, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/7/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/7/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/7/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/7/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 7, 7, 1, 1),
(8, 'ES00000008', 'Samsung Galaxy M11', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 139, 0, 0, 'USD', 35, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/8/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/8/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/8/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/8/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 7, 7, 1, 1),
(9, 'ES00000009', 'Samsung Galaxy A71', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 329, 0, 0, 'USD', 29, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/9/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/9/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/9/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/9/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 7, 7, 1, 1),
(10, 'ES00000010', 'Samsung Galaxy M01 Core 2GB/32GB', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 72, 0, 0, 'USD', 11, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/10/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/10/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/10/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/10/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 7, 7, 1, 1),
(11, 'ES00000011', 'Xiaomi Poco C3 4GB/64GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 129, 0, 0, 'USD', 36, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/1/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/1/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/1/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/1/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 5, 2, 1),
(12, 'ES00000012', 'Xiaomi Poco M3 4GB/64GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 149, 0, 0, 'USD', 54, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/2/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/2/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/2/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/2/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 5, 2, 1),
(13, 'ES00000013', 'Xiaomi Poco M2 6GB/64GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 159, 0, 0, 'USD', 222, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/3/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/3/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/3/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/3/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 5, 2, 1),
(14, 'ES00000014', 'Xiaomi Poco M3 4GB/128GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 164, 0, 0, 'USD', 52, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/4/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/4/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/4/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/4/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 2, 2, 2, 1),
(15, 'ES00000015', 'Xiaomi Redmi Note 9 Pro 6GB/128GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 279, 0, 0, 'USD', 18, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/5/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/5/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/5/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/5/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 2, 2, 2, 1),
(16, 'ES00000016', 'Xiaomi Mi 3 16GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 185, 0, 0, 'USD', 34, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/6/1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 2, 2, 2, 1);
INSERT INTO `products` (`id`, `code`, `title`, `subtitle`, `description`, `amount`, `rating`, `peopleRated`, `currency`, `sales`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `image8`, `image9`, `image10`, `createdAt`, `updatedAt`, `CategoryId`, `SubCategoryId`, `SubSubCategoryId`, `UserId`) VALUES
(17, 'ES00000017', 'Xiaomi Redmi Note 9', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 199, 0, 0, 'USD', 61, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/7/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/7/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/7/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/7/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 26, 2, 1),
(18, 'ES00000018', 'Xiaomi Redmi Note 8 4GB/64GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 189, 0, 0, 'USD', 87, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/8/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/8/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/8/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/8/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 26, 2, 1),
(19, 'ES00000019', 'Xiaomi Redmi 9', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 149, 0, 0, 'USD', 95, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/9/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/9/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/9/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/9/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 26, 2, 1),
(20, 'ES00000020', 'Xiaomi Redmi 8 4GB/64GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 149, 0, 0, 'USD', 65, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/10/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/10/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/10/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/10/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 6, 31, 2, 1),
(23, NULL, 'RFREFR', 'ZRFR', 'ZFZEFZE', 323, NULL, NULL, NULL, NULL, 'http://localhost:8084/public\\product-image\\1667465038162Oeufs-en-coquille.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 08:43:58', '2022-11-03 08:43:58', 3, 3, 2, 1),
(24, NULL, 'RFREFR', 'ZRFR', 'ZFZEFZE', 323, NULL, NULL, NULL, NULL, 'http://localhost:8084/public\\product-image\\1667479042514Oeufs-en-coquille.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 12:37:22', '2022-11-03 12:37:22', 3, 3, 2, 1),
(25, NULL, 'RFREFR', 'ZRFR', 'ZFZEFZE', 323, NULL, NULL, NULL, NULL, 'http://localhost:8084/public\\product-image\\1667479131650téléchargement.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 12:38:51', '2022-11-03 12:38:51', 3, 3, 2, 1),
(26, NULL, 'RFREFR', 'ZRFR', 'ZFZEFZE', 323, NULL, NULL, NULL, NULL, 'http://localhost:8084/public\\product-image\\1667479159815comment-savoir-si-un-oeuf-est-bon.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 12:39:19', '2022-11-03 12:39:19', 3, 3, 2, 1),
(27, '', 'oeuf d\'or', '<p>fr</p>', '<p>efeer</p>', 5545, 0, 0, 'USD', 0, 'http://localhost:8084/public\\product-image\\1667700150257hq720.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 02:02:30', '2022-11-06 02:02:30', 1, 1, 1, 1),
(28, '', 'oeuf d\'or', '<p>fr</p>', '<p>efeer</p>', 5545, 0, 0, 'USD', 0, 'http://localhost:5000/public\\product-image\\1667700453393ananas.jpg', 'http://localhost:5000/public\\product-image\\1667700453401hq720.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 02:07:33', '2022-11-06 02:07:33', 1, 1, 1, 1),
(29, '', 'oeuf d\'or', '<p>fr</p>', '<p>efeer</p>', 5545, 0, 0, 'USD', 0, 'http://localhost:5000/public\\product-image\\1667700460911ananas.jpg', 'http://localhost:5000/public\\product-image\\1667700460915hq720.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 02:07:40', '2022-11-06 02:07:40', 1, 1, 1, 1),
(30, '', 'oeuf d\'or', '<p>fr</p>', '<p>efeer</p>', 5545, 0, 0, 'USD', 0, 'http://localhost:5000/public\\product-image\\1667700461404ananas.jpg', 'http://localhost:5000/public\\product-image\\1667700461409hq720.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 02:07:41', '2022-11-06 02:07:41', 1, 1, 1, 1),
(31, '', 'oeuf d\'or', '<p>fr</p>', '<p>efeer</p>', 5545, 0, 0, 'USD', 0, 'http://localhost:5000/public\\product-image\\1667700461658ananas.jpg', 'http://localhost:5000/public\\product-image\\1667700461663hq720.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 02:07:41', '2022-11-06 02:07:41', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rating` int DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserId` int DEFAULT NULL,
  `ProductId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `UserId` (`UserId`),
  KEY `ProductId` (`ProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `createdAt`, `updatedAt`, `UserId`, `ProductId`) VALUES
(1, 0, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1, 1),
(2, 5, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1, 2),
(3, 4, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1, 3),
(4, 5, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4, 1),
(5, 4, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5, 1),
(6, 0, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 2, 1),
(7, 0, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 3, 1),
(8, 5, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `showcases`
--

DROP TABLE IF EXISTS `showcases`;
CREATE TABLE IF NOT EXISTS `showcases` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `routerLink` varchar(255) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `CompanyId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CompanyId` (`CompanyId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `showcases`
--

INSERT INTO `showcases` (`id`, `type`, `caption`, `image`, `routerLink`, `priority`, `createdAt`, `updatedAt`, `CompanyId`) VALUES
(1, 'carousel', 'A New Online Shop Experience.', 'http://localhost:8084/public/display-images/home_slider_1.jpg', '/products/Electronics', 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(2, 'carousel', '', 'http://localhost:8084/public/display-images/home_slider_0.jpg', '/products/Electronics', 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(3, 'card', '', 'http://localhost:8084/public/display-images/mac-mini.png', '/products/Electronics', 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(4, 'card', '', 'http://localhost:8084/public/display-images/ipad-2020.jpeg', '/products/Electronics', 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(5, 'card', '', 'http://localhost:8084/public/display-images/razer-opus.jpeg', '/products/Electronics', 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(6, 'card', '', 'http://localhost:8084/public/display-images/p120.jpeg', '/products/Electronics', 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(7, 'big card', '', 'http://localhost:8084/public/display-images/smart-watches.jpeg', '/products/Electronics', 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(8, 'big card', '', 'http://localhost:8084/public/display-images/lenovo-yoga.jpeg', '/products/Electronics', 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1);

-- --------------------------------------------------------

--
-- Structure de la table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `CategoryId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CategoryId` (`CategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `createdAt`, `updatedAt`, `CategoryId`) VALUES
(1, 'crocodile', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(2, 'alligator', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(3, 'iguane', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(4, 'tortue', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(5, 'dragon de Komodo', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(6, 'lézard', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 1),
(7, 'grenouille', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 2),
(8, 'crapaud', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 2),
(9, 'saumon', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 3),
(10, 'truite', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 3),
(11, 'carpe', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 3),
(12, 'thon', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 3),
(13, 'morue', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 3),
(14, 'poisson-ballon', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 3),
(15, 'poisson-clown', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 3),
(16, 'calmar', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 5),
(17, 'escargot', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 5),
(18, 'pieuvre', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 5),
(19, 'limaces', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 5),
(20, 'autruche', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 6),
(21, 'aigle', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 6),
(22, 'paon', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 6),
(23, 'condor', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 6),
(24, 'perroquet', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 6),
(25, 'faucon', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 6),
(26, 'poule', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 6),
(27, 'moineau', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 6),
(28, 'pingouin', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 6),
(29, 'chouette', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 6),
(30, 'pigeon', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 6),
(31, 'caille', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 6),
(32, 'oie', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 6),
(33, 'canard', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 6),
(34, 'cigogne', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 6),
(35, 'ornithorynque ', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 7),
(36, 'échidné', '2022-11-02 21:05:32', '2022-11-02 21:05:32', 7);

-- --------------------------------------------------------

--
-- Structure de la table `subsubcategories`
--

DROP TABLE IF EXISTS `subsubcategories`;
CREATE TABLE IF NOT EXISTS `subsubcategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `SubCategoryId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SubCategoryId` (`SubCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `subsubcategories`
--

INSERT INTO `subsubcategories` (`id`, `name`, `createdAt`, `updatedAt`, `SubCategoryId`) VALUES
(1, 'Samsung', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(2, 'Xiaomi', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(3, 'Realme', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(4, 'Nokia', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(5, 'Huawei', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(6, 'oppo', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(7, 'Apple', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(8, 'Vivo', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(9, 'Pixel', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(10, 'Walton', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(11, 'LG', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(12, 'Mobile Charger', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 2),
(13, 'Mobile Cover', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 2),
(14, 'Power Bank', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 2),
(15, 'Memory Card', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 2),
(16, 'Data Cable', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 2),
(17, 'Screenguard', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 2),
(18, 'Headphones', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 2),
(19, 'External Hard Disk', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 3),
(20, 'Pendrive', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 3),
(21, 'Laptop Skins', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 3),
(22, 'Laptop Bags', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 3),
(23, 'Mouse', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 3),
(24, 'Keyboard', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 3),
(25, 'Samsung', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4),
(26, 'LG', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4),
(27, 'Sony', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4),
(28, 'Micromax', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4),
(29, 'Mi', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4),
(30, 'Thomson', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 4),
(31, 'Fully Automatic Front', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5),
(32, 'Semi Automatic Top', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5),
(33, 'Fully Automatic Top', '2022-10-30 20:58:25', '2022-10-30 20:58:25', 5);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `profileImage` varchar(255) DEFAULT NULL,
  `registerToken` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phoneNo` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `userType` varchar(255) DEFAULT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `CompanyId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CompanyId` (`CompanyId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `profileImage`, `registerToken`, `email`, `phoneNo`, `password`, `resetPasswordToken`, `userType`, `variant`, `priority`, `createdAt`, `updatedAt`, `CompanyId`) VALUES
(1, 'admin', 'Md.', 'Rony', 'http://localhost:8084/public/user-image/default-man.png', '', 'anibev3@gmail.com', '+8801700100000', '08162014', '', 'Admin', 'dark', 1, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(2, 'ronyku', 'Md.', 'Rony', 'http://localhost:8084/public/user-image/default-man.png', '', 'aanibe201@gmail.com', '+8801700100001', '08162014', '', 'Customer', 'warning', 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(3, 'mukit224', 'Mukit', 'Pranto', 'http://localhost:8084/public/user-image/default-man.png', '', 'mukit@gmail.com', '+8801700100002', '12345678', '', 'Customer', 'warning', 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(4, 'soron255', 'Shazzad', 'Soron', 'http://localhost:8084/public/user-image/default-man.png', '', 'shoron@gmail.com', '+8801700100003', '12345678', '', 'Customer', 'warning', 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(5, 'sojib239', 'Sojib', 'Hossain', 'http://localhost:8084/public/user-image/default-man.png', '', 'sojib@gmail.com', '+8801700100004', '12345678', '', 'Customer', 'warning', 2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1),
(6, NULL, NULL, NULL, 'http://localhost:8084/public/user-image/default-man.png', '933038', NULL, NULL, NULL, NULL, 'Customer', 'warning', 2, '2022-10-30 20:59:13', '2022-10-30 20:59:13', 1),
(7, 'Vianney', 'Anoh,', 'Alexis', 'http://localhost:8084/public/user-image/default-man.png', '', 'anibe201@gmail.com', NULL, '08162014', '', 'Customer', 'warning', 2, '2022-10-30 21:00:14', '2022-10-30 22:49:21', 1),
(8, NULL, NULL, NULL, 'http://localhost:8084/public/user-image/default-man.png', '701090', NULL, NULL, NULL, NULL, 'Customer', 'warning', 2, '2022-10-30 23:58:31', '2022-10-30 23:58:31', 1),
(9, NULL, NULL, NULL, 'http://localhost:8084/public/user-image/default-man.png', '715154', NULL, NULL, NULL, NULL, 'Customer', 'warning', 2, '2022-10-30 23:58:36', '2022-10-30 23:58:36', 1),
(10, NULL, NULL, NULL, 'http://localhost:8084/public/user-image/default-man.png', '707761', NULL, NULL, NULL, NULL, 'Customer', 'warning', 2, '2022-10-30 23:58:37', '2022-10-30 23:58:37', 1),
(11, NULL, 'Vianney_', 'Anoh', 'http://localhost:8084/public/user-image/default-man.png', '', 'vianney@gmail.com', NULL, '12345678', NULL, 'Customer', 'warning', 2, '2022-11-01 12:10:00', '2022-11-06 22:01:37', 1),
(12, NULL, 'this.firstName', 'this.lastName', 'http://localhost:8084/public/user-image/default-man.png', '758683', 'aaanibe201@gmail.com', NULL, '08162014Aa', NULL, 'Customer', 'warning', 2, '2022-11-02 07:03:15', '2022-11-02 07:03:15', 1),
(13, NULL, 'this.firstName', 'this.lastName', 'http://localhost:8084/public/user-image/default-man.png', '289803', 'aaanibe201@gmail.com', NULL, '08162014Aa', NULL, 'Customer', 'warning', 2, '2022-11-02 08:47:53', '2022-11-02 08:47:53', 1),
(14, NULL, 'this.firstName', 'this.lastName', 'http://localhost:8084/public/user-image/default-man.png', '372968', 'aaanibe201@gmail.com', NULL, '08162014Aa', NULL, 'Customer', 'warning', 2, '2022-11-02 08:47:55', '2022-11-02 08:47:55', 1),
(15, NULL, 'this.firstName', 'this.lastName', 'http://localhost:8084/public/user-image/default-man.png', '748178', 'aaanibe201@gmail.com', NULL, '08162014Aa', NULL, 'Customer', 'warning', 2, '2022-11-02 08:48:00', '2022-11-02 08:48:00', 1),
(16, NULL, 'vainnez', 'aboj', 'http://localhost:8084/public/user-image/default-man.png', '278440', 'a@gmail.com', NULL, '08162014', NULL, 'Customer', 'warning', 2, '2022-11-02 09:33:45', '2022-11-02 09:33:45', 1),
(17, NULL, 'vainnez', 'aboj', 'http://localhost:8084/public/user-image/default-man.png', '655257', 'a@gmail.com', NULL, '08162014', NULL, 'Customer', 'warning', 2, '2022-11-02 09:33:46', '2022-11-02 09:33:46', 1),
(18, NULL, 'Marie', 'Sidibe', 'http://localhost:8084/public/user-image/default-man.png', '675124', 'marie@gmail.com', NULL, '12345678', NULL, 'Customer', 'warning', 2, '2022-11-02 13:28:17', '2022-11-02 13:28:17', 1),
(19, NULL, 'zefer', 'zesfezfe', 'http://localhost:8084/public/user-image/default-man.png', '531866', 'anibe20331@gmail.com', NULL, '12345678', NULL, 'Customer', 'warning', 2, '2022-11-02 14:09:22', '2022-11-02 14:09:22', 1),
(20, NULL, 'zefer', 'zesfezfe', 'http://localhost:8084/public/user-image/default-man.png', '272120', 'anibe20331@gmail.com', NULL, '12345678', NULL, 'Customer', 'warning', 2, '2022-11-02 14:09:22', '2022-11-02 14:09:22', 1),
(21, NULL, 'vIANNEY', 'NNNN', 'http://localhost:8084/public/user-image/default-man.png', '533741', 'nn@gmail.com', NULL, '123456789', NULL, 'Customer', 'warning', 2, '2022-11-02 14:10:40', '2022-11-02 14:10:40', 1),
(22, NULL, 'éer\'\"', 'f\"f\"r\"f', 'http://localhost:8084/public/user-image/default-man.png', '719580', 'ff@gmail.com', NULL, '123456789', NULL, 'Customer', 'warning', 2, '2022-11-02 14:12:41', '2022-11-02 14:12:41', 1),
(23, NULL, 'xxxxxx', 'xxxxxxxxxx', 'http://localhost:8084/public/user-image/default-man.png', '241670', 'xx@gmail.com', NULL, '12345678', NULL, 'Customer', 'warning', 2, '2022-11-02 18:07:42', '2022-11-02 18:07:42', 1),
(24, NULL, 'xxxxxxxxxx', 'xxxxxxxxxxxx', 'http://localhost:8084/public/user-image/default-man.png', '285370', 'xx@gmail.com', NULL, '12345678', NULL, 'Customer', 'warning', 2, '2022-11-02 18:20:38', '2022-11-02 18:20:38', 1),
(25, NULL, 'xxxxxxxxxxx', 'xxxxxxxxxxxxx', 'http://localhost:8084/public/user-image/default-man.png', '891777', 'xxx@gmail.com', NULL, '123456678', NULL, 'Customer', 'warning', 2, '2022-11-02 18:21:59', '2022-11-02 18:21:59', 1),
(26, NULL, 'xxxxxxxxx', 'xxxxx', 'http://localhost:8084/public/user-image/default-man.png', '931985', 'xxdx@gmail.com', NULL, '12345678', NULL, 'Customer', 'warning', 2, '2022-11-02 18:22:37', '2022-11-02 18:22:37', 1),
(27, NULL, 'Anoh', 'Alexis', 'http://localhost:5000/public/user-image/default-man.png', '', 'a22anibe201@gmail.com', NULL, '12345678', NULL, 'Customer', 'warning', 2, '2022-11-06 12:44:13', '2022-11-06 12:49:14', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `wishlists`
--

INSERT INTO `wishlists` (`id`, `createdAt`, `updatedAt`, `UserId`, `ProductId`) VALUES
(2, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1, 2),
(3, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1, 3),
(4, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1, 4),
(5, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1, 5),
(6, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 1, 6),
(7, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 2, 3),
(8, '2022-10-30 20:58:25', '2022-10-30 20:58:25', 2, 4);

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
