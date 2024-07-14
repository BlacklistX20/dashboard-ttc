-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 13, 2024 at 10:23 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electric`
--
CREATE DATABASE IF NOT EXISTS `electric` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `electric`;

-- --------------------------------------------------------

--
-- Table structure for table `lvmdp`
--

DROP TABLE IF EXISTS `lvmdp`;
CREATE TABLE IF NOT EXISTS `lvmdp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_update` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`last_update`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lvmdp`
--

INSERT INTO `lvmdp` (`id`, `last_update`, `loads`, `current`, `voltage`, `frequency`) VALUES
(1, '2024-07-13 23:48:08', 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `p205`
--

DROP TABLE IF EXISTS `p205`;
CREATE TABLE IF NOT EXISTS `p205` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_update` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`last_update`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `p205`
--

INSERT INTO `p205` (`id`, `last_update`, `loads`, `current`, `voltage`, `frequency`) VALUES
(1, '2024-07-13 23:48:08', 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `p236`
--

DROP TABLE IF EXISTS `p236`;
CREATE TABLE IF NOT EXISTS `p236` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_update` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`last_update`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `p236`
--

INSERT INTO `p236` (`id`, `last_update`, `loads`, `current`, `voltage`, `frequency`) VALUES
(1, '2024-07-13 23:48:08', 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `p305`
--

DROP TABLE IF EXISTS `p305`;
CREATE TABLE IF NOT EXISTS `p305` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_update` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`last_update`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `p305`
--

INSERT INTO `p305` (`id`, `last_update`, `loads`, `current`, `voltage`, `frequency`) VALUES
(1, '2024-07-13 23:48:08', 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `p310`
--

DROP TABLE IF EXISTS `p310`;
CREATE TABLE IF NOT EXISTS `p310` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_update` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`last_update`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `p310`
--

INSERT INTO `p310` (`id`, `last_update`, `loads`, `current`, `voltage`, `frequency`) VALUES
(1, '2024-07-13 23:48:08', 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `p429`
--

DROP TABLE IF EXISTS `p429`;
CREATE TABLE IF NOT EXISTS `p429` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_update` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`last_update`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `p429`
--

INSERT INTO `p429` (`id`, `last_update`, `loads`, `current`, `voltage`, `frequency`) VALUES
(1, '2024-07-13 23:48:08', 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `pue`
--

DROP TABLE IF EXISTS `pue`;
CREATE TABLE IF NOT EXISTS `pue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_update` datetime NOT NULL,
  `pue` double(15,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`last_update`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pue`
--

INSERT INTO `pue` (`id`, `last_update`, `pue`) VALUES
(1, '2024-07-13 23:48:08', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `recti`
--

DROP TABLE IF EXISTS `recti`;
CREATE TABLE IF NOT EXISTS `recti` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_update` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`last_update`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `recti`
--

INSERT INTO `recti` (`id`, `last_update`, `loads`, `current`, `voltage`, `frequency`) VALUES
(1, '2024-07-13 23:48:08', 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `update_electric`
--

DROP TABLE IF EXISTS `update_electric`;
CREATE TABLE IF NOT EXISTS `update_electric` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_update` datetime NOT NULL,
  `loads` int DEFAULT NULL,
  `current` int DEFAULT NULL,
  `voltage` int DEFAULT NULL,
  `frequency` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `update_electric`
--

INSERT INTO `update_electric` (`id`, `last_update`, `loads`, `current`, `voltage`, `frequency`) VALUES
(1, '2024-07-13 23:48:08', 0, 0, 0, 0),
(2, '2024-07-13 23:48:08', 0, 0, 0, 0),
(3, '2024-07-13 23:48:08', 0, 0, 0, 0),
(4, '2024-07-13 23:48:08', 0, 0, 0, 0),
(5, '2024-07-13 23:48:08', 0, 0, 0, 0),
(6, '2024-07-13 23:48:08', 0, 0, 0, 0),
(7, '2024-07-13 23:48:08', 0, 0, 0, 0),
(8, '2024-07-13 23:48:08', 0, 0, 0, 0),
(9, '2024-07-13 23:48:08', 0, 0, 0, 0),
(10, '2024-07-13 23:48:08', 0, 0, 0, 0),
(11, '2024-07-13 23:48:08', 0, 0, 0, 0),
(12, '2024-07-13 23:48:08', 0, 0, 0, 0),
(13, '2024-07-13 23:48:08', 0, 0, 0, 0),
(14, '2024-07-13 23:48:08', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ups`
--

DROP TABLE IF EXISTS `ups`;
CREATE TABLE IF NOT EXISTS `ups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_update` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`last_update`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ups`
--

INSERT INTO `ups` (`id`, `last_update`, `loads`, `current`, `voltage`, `frequency`) VALUES
(1, '2024-07-13 23:48:08', 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `ups202`
--

DROP TABLE IF EXISTS `ups202`;
CREATE TABLE IF NOT EXISTS `ups202` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_update` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`last_update`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ups202`
--

INSERT INTO `ups202` (`id`, `last_update`, `loads`, `current`, `voltage`, `frequency`) VALUES
(1, '2024-07-13 23:48:08', 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `ups203`
--

DROP TABLE IF EXISTS `ups203`;
CREATE TABLE IF NOT EXISTS `ups203` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_update` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`last_update`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ups203`
--

INSERT INTO `ups203` (`id`, `last_update`, `loads`, `current`, `voltage`, `frequency`) VALUES
(1, '2024-07-13 23:48:08', 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `ups301`
--

DROP TABLE IF EXISTS `ups301`;
CREATE TABLE IF NOT EXISTS `ups301` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_update` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`last_update`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ups301`
--

INSERT INTO `ups301` (`id`, `last_update`, `loads`, `current`, `voltage`, `frequency`) VALUES
(1, '2024-07-13 23:48:08', 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `ups302`
--

DROP TABLE IF EXISTS `ups302`;
CREATE TABLE IF NOT EXISTS `ups302` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_update` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`last_update`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ups302`
--

INSERT INTO `ups302` (`id`, `last_update`, `loads`, `current`, `voltage`, `frequency`) VALUES
(1, '2024-07-13 23:48:08', 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `ups501`
--

DROP TABLE IF EXISTS `ups501`;
CREATE TABLE IF NOT EXISTS `ups501` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_update` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`last_update`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ups501`
--

INSERT INTO `ups501` (`id`, `last_update`, `loads`, `current`, `voltage`, `frequency`) VALUES
(1, '2024-07-13 23:48:08', 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `ups502`
--

DROP TABLE IF EXISTS `ups502`;
CREATE TABLE IF NOT EXISTS `ups502` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_update` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`last_update`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ups502`
--

INSERT INTO `ups502` (`id`, `last_update`, `loads`, `current`, `voltage`, `frequency`) VALUES
(1, '2024-07-13 23:48:08', 0.00, 0.00, 0.00, 0.00);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
