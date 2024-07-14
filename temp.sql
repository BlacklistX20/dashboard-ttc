-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 13, 2024 at 10:24 PM
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
-- Database: `temp`
--
CREATE DATABASE IF NOT EXISTS `temp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `temp`;

-- --------------------------------------------------------

--
-- Table structure for table `batt4`
--

DROP TABLE IF EXISTS `batt4`;
CREATE TABLE IF NOT EXISTS `batt4` (
  `id` int NOT NULL AUTO_INCREMENT,
  `updated_at` datetime NOT NULL,
  `s1` int NOT NULL,
  `k1` int NOT NULL,
  `s2` int NOT NULL,
  `k2` int NOT NULL,
  `s_avg` int NOT NULL,
  `k_avg` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `batt4`
--

INSERT INTO `batt4` (`id`, `updated_at`, `s1`, `k1`, `s2`, `k2`, `s_avg`, `k_avg`) VALUES
(1, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bss`
--

DROP TABLE IF EXISTS `bss`;
CREATE TABLE IF NOT EXISTS `bss` (
  `id` int NOT NULL AUTO_INCREMENT,
  `updated_at` datetime NOT NULL,
  `s1` int NOT NULL,
  `k1` int NOT NULL,
  `s2` int NOT NULL,
  `k2` int NOT NULL,
  `s3` int NOT NULL,
  `k3` int NOT NULL,
  `s4` int NOT NULL,
  `k4` int NOT NULL,
  `s_avg` int NOT NULL,
  `k_avg` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bss`
--

INSERT INTO `bss` (`id`, `updated_at`, `s1`, `k1`, `s2`, `k2`, `s3`, `k3`, `s4`, `k4`, `s_avg`, `k_avg`) VALUES
(1, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inter`
--

DROP TABLE IF EXISTS `inter`;
CREATE TABLE IF NOT EXISTS `inter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `updated_at` datetime NOT NULL,
  `s1` int NOT NULL,
  `k1` int NOT NULL,
  `s2` int NOT NULL,
  `k2` int NOT NULL,
  `s3` int NOT NULL,
  `k3` int NOT NULL,
  `s4` int NOT NULL,
  `k4` int NOT NULL,
  `s_avg` int NOT NULL,
  `k_avg` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inter`
--

INSERT INTO `inter` (`id`, `updated_at`, `s1`, `k1`, `s2`, `k2`, `s3`, `k3`, `s4`, `k4`, `s_avg`, `k_avg`) VALUES
(1, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `recti4`
--

DROP TABLE IF EXISTS `recti4`;
CREATE TABLE IF NOT EXISTS `recti4` (
  `id` int NOT NULL AUTO_INCREMENT,
  `updated_at` datetime NOT NULL,
  `s1` int NOT NULL,
  `k1` int NOT NULL,
  `s2` int NOT NULL,
  `k2` int NOT NULL,
  `s3` int NOT NULL,
  `k3` int NOT NULL,
  `s_avg` int NOT NULL,
  `k_avg` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `recti4`
--

INSERT INTO `recti4` (`id`, `updated_at`, `s1`, `k1`, `s2`, `k2`, `s3`, `k3`, `s_avg`, `k_avg`) VALUES
(1, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `trans`
--

DROP TABLE IF EXISTS `trans`;
CREATE TABLE IF NOT EXISTS `trans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `updated_at` datetime NOT NULL,
  `s1` int NOT NULL,
  `k1` int NOT NULL,
  `s2` int NOT NULL,
  `k2` int NOT NULL,
  `s3` int NOT NULL,
  `k3` int NOT NULL,
  `s4` int NOT NULL,
  `k4` int NOT NULL,
  `s5` int NOT NULL,
  `k5` int NOT NULL,
  `s6` int NOT NULL,
  `k6` int NOT NULL,
  `s_avg` int NOT NULL,
  `k_avg` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trans`
--

INSERT INTO `trans` (`id`, `updated_at`, `s1`, `k1`, `s2`, `k2`, `s3`, `k3`, `s4`, `k4`, `s5`, `k5`, `s6`, `k6`, `s_avg`, `k_avg`) VALUES
(1, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `update_temp2`
--

DROP TABLE IF EXISTS `update_temp2`;
CREATE TABLE IF NOT EXISTS `update_temp2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `updated_at` datetime NOT NULL,
  `s1` int NOT NULL,
  `k1` int NOT NULL,
  `s2` int NOT NULL,
  `k2` int NOT NULL,
  `s_avg` int NOT NULL,
  `k_avg` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `update_temp2`
--

INSERT INTO `update_temp2` (`id`, `updated_at`, `s1`, `k1`, `s2`, `k2`, `s_avg`, `k_avg`) VALUES
(1, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0),
(2, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0),
(3, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0),
(4, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0),
(5, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `update_temp3`
--

DROP TABLE IF EXISTS `update_temp3`;
CREATE TABLE IF NOT EXISTS `update_temp3` (
  `id` int NOT NULL AUTO_INCREMENT,
  `updated_at` datetime NOT NULL,
  `s1` int NOT NULL,
  `k1` int NOT NULL,
  `s2` int NOT NULL,
  `k2` int NOT NULL,
  `s3` int NOT NULL,
  `k3` int NOT NULL,
  `s_avg` int NOT NULL,
  `k_avg` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `update_temp3`
--

INSERT INTO `update_temp3` (`id`, `updated_at`, `s1`, `k1`, `s2`, `k2`, `s3`, `k3`, `s_avg`, `k_avg`) VALUES
(1, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0, 0, 0),
(4, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `update_temp4`
--

DROP TABLE IF EXISTS `update_temp4`;
CREATE TABLE IF NOT EXISTS `update_temp4` (
  `id` int NOT NULL AUTO_INCREMENT,
  `updated_at` datetime NOT NULL,
  `s1` int NOT NULL,
  `k1` int NOT NULL,
  `s2` int NOT NULL,
  `k2` int NOT NULL,
  `s3` int NOT NULL,
  `k3` int NOT NULL,
  `s4` int NOT NULL,
  `k4` int NOT NULL,
  `s_avg` int NOT NULL,
  `k_avg` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `update_temp4`
--

INSERT INTO `update_temp4` (`id`, `updated_at`, `s1`, `k1`, `s2`, `k2`, `s3`, `k3`, `s4`, `k4`, `s_avg`, `k_avg`) VALUES
(1, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `update_temp6`
--

DROP TABLE IF EXISTS `update_temp6`;
CREATE TABLE IF NOT EXISTS `update_temp6` (
  `id` int NOT NULL AUTO_INCREMENT,
  `updated_at` datetime NOT NULL,
  `s1` int NOT NULL,
  `k1` int NOT NULL,
  `s2` int NOT NULL,
  `k2` int NOT NULL,
  `s3` int NOT NULL,
  `k3` int NOT NULL,
  `s4` int NOT NULL,
  `k4` int NOT NULL,
  `s5` int NOT NULL,
  `k5` int NOT NULL,
  `s6` int NOT NULL,
  `k6` int NOT NULL,
  `s_avg` int NOT NULL,
  `k_avg` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `update_temp6`
--

INSERT INTO `update_temp6` (`id`, `updated_at`, `s1`, `k1`, `s2`, `k2`, `s3`, `k3`, `s4`, `k4`, `s5`, `k5`, `s6`, `k6`, `s_avg`, `k_avg`) VALUES
(1, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2024-07-13 21:53:50', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
