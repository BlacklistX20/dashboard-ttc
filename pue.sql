-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2024 at 10:21 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pue`
--

-- --------------------------------------------------------

--
-- Table structure for table `malam`
--

CREATE TABLE `malam` (
  `id` int(255) NOT NULL,
  `waktu` date NOT NULL,
  `lvmdp` double(15,2) NOT NULL,
  `rect1` double(15,2) NOT NULL,
  `rect2` double(15,2) NOT NULL,
  `rect3` double(15,2) NOT NULL,
  `rect4` double(15,2) NOT NULL,
  `rect5` double(15,2) NOT NULL,
  `rect6` double(15,2) NOT NULL,
  `rect7` double(15,2) NOT NULL,
  `rect8` double(15,2) NOT NULL,
  `rect9` double(15,2) NOT NULL,
  `rect10` double(15,2) NOT NULL,
  `rect11` double(15,2) NOT NULL,
  `rect12` double(15,2) NOT NULL,
  `rect13` double(15,2) NOT NULL,
  `ups1` double(15,2) NOT NULL,
  `ups2` double(15,2) NOT NULL,
  `ups3` double(15,2) NOT NULL,
  `ups4` double(15,2) NOT NULL,
  `ups5` double(15,2) NOT NULL,
  `ups6` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `malam`
--

INSERT INTO `malam` (`id`, `waktu`, `lvmdp`, `rect1`, `rect2`, `rect3`, `rect4`, `rect5`, `rect6`, `rect7`, `rect8`, `rect9`, `rect10`, `rect11`, `rect12`, `rect13`, `ups1`, `ups2`, `ups3`, `ups4`, `ups5`, `ups6`) VALUES
(1, '2024-03-16', 615.00, 19.40, 20.70, 16.10, 17.30, 17.10, 20.90, 15.30, 15.60, 9.10, 14.10, 25.50, 24.80, 12.00, 19.50, 20.70, 13.20, 9.90, 20.00, 19.50),
(2, '2024-03-17', 608.00, 19.50, 20.80, 16.00, 17.50, 17.50, 21.20, 15.40, 15.30, 9.00, 14.00, 25.60, 24.60, 12.10, 20.00, 21.30, 13.20, 10.00, 20.10, 19.30),
(3, '2024-03-18', 603.00, 20.10, 21.70, 16.90, 18.10, 18.30, 21.70, 16.10, 16.40, 9.90, 14.80, 26.80, 25.60, 12.70, 20.80, 21.30, 13.20, 9.80, 20.00, 19.30),
(4, '2024-03-19', 621.00, 19.00, 20.80, 16.00, 17.60, 17.30, 20.30, 15.80, 15.10, 8.80, 14.10, 25.50, 24.60, 12.30, 20.10, 20.50, 13.50, 9.90, 20.10, 19.30);

-- --------------------------------------------------------

--
-- Table structure for table `pagi`
--

CREATE TABLE `pagi` (
  `id` int(255) NOT NULL,
  `waktu` date NOT NULL,
  `lvmdp` double(15,2) NOT NULL,
  `rect1` double(15,2) NOT NULL,
  `rect2` double(15,2) NOT NULL,
  `rect3` double(15,2) NOT NULL,
  `rect4` double(15,2) NOT NULL,
  `rect5` double(15,2) NOT NULL,
  `rect6` double(15,2) NOT NULL,
  `rect7` double(15,2) NOT NULL,
  `rect8` double(15,2) NOT NULL,
  `rect9` double(15,2) NOT NULL,
  `rect10` double(15,2) NOT NULL,
  `rect11` double(15,2) NOT NULL,
  `rect12` double(15,2) NOT NULL,
  `rect13` double(15,2) NOT NULL,
  `ups1` double(15,2) NOT NULL,
  `ups2` double(15,2) NOT NULL,
  `ups3` double(15,2) NOT NULL,
  `ups4` double(15,2) NOT NULL,
  `ups5` double(15,2) NOT NULL,
  `ups6` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pagi`
--

INSERT INTO `pagi` (`id`, `waktu`, `lvmdp`, `rect1`, `rect2`, `rect3`, `rect4`, `rect5`, `rect6`, `rect7`, `rect8`, `rect9`, `rect10`, `rect11`, `rect12`, `rect13`, `ups1`, `ups2`, `ups3`, `ups4`, `ups5`, `ups6`) VALUES
(1, '2024-03-16', 630.00, 18.90, 20.50, 15.80, 16.90, 16.70, 20.90, 15.00, 15.10, 8.70, 13.40, 25.00, 24.20, 12.00, 19.70, 20.10, 12.10, 9.00, 20.10, 19.20),
(2, '2024-03-17', 614.00, 19.10, 20.40, 15.80, 16.70, 16.70, 20.70, 15.00, 15.30, 8.80, 13.60, 25.10, 24.60, 12.00, 19.80, 20.40, 12.10, 9.00, 20.20, 19.20),
(3, '2024-03-18', 584.00, 19.10, 20.00, 15.70, 16.60, 16.80, 21.20, 15.00, 15.50, 8.80, 13.50, 25.30, 24.50, 11.90, 20.20, 21.30, 12.10, 9.00, 20.40, 20.00),
(4, '2024-03-19', 619.00, 18.80, 20.50, 15.80, 17.00, 16.50, 21.60, 15.40, 15.10, 8.40, 13.30, 26.60, 24.40, 12.40, 20.20, 20.30, 12.10, 8.80, 20.40, 19.70),
(5, '2024-03-20', 619.00, 19.80, 21.40, 16.60, 17.70, 18.00, 21.60, 16.20, 15.90, 9.10, 14.30, 25.90, 25.20, 13.10, 20.60, 21.00, 12.20, 9.00, 20.20, 19.70);

-- --------------------------------------------------------

--
-- Table structure for table `siang`
--

CREATE TABLE `siang` (
  `id` int(255) NOT NULL,
  `waktu` date NOT NULL,
  `lvmdp` double(15,2) NOT NULL,
  `rect1` double(15,2) NOT NULL,
  `rect2` double(15,2) NOT NULL,
  `rect3` double(15,2) NOT NULL,
  `rect4` double(15,2) NOT NULL,
  `rect5` double(15,2) NOT NULL,
  `rect6` double(15,2) NOT NULL,
  `rect7` double(15,2) NOT NULL,
  `rect8` double(15,2) NOT NULL,
  `rect9` double(15,2) NOT NULL,
  `rect10` double(15,2) NOT NULL,
  `rect11` double(15,2) NOT NULL,
  `rect12` double(15,2) NOT NULL,
  `rect13` double(15,2) NOT NULL,
  `ups1` double(15,2) NOT NULL,
  `ups2` double(15,2) NOT NULL,
  `ups3` double(15,2) NOT NULL,
  `ups4` double(15,2) NOT NULL,
  `ups5` double(15,2) NOT NULL,
  `ups6` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siang`
--

INSERT INTO `siang` (`id`, `waktu`, `lvmdp`, `rect1`, `rect2`, `rect3`, `rect4`, `rect5`, `rect6`, `rect7`, `rect8`, `rect9`, `rect10`, `rect11`, `rect12`, `rect13`, `ups1`, `ups2`, `ups3`, `ups4`, `ups5`, `ups6`) VALUES
(1, '2024-03-16', 580.00, 19.40, 20.50, 16.00, 17.20, 17.70, 20.80, 15.30, 15.20, 8.90, 14.10, 15.40, 24.40, 12.10, 19.70, 20.90, 13.00, 9.70, 19.90, 19.40),
(2, '2024-03-17', 629.00, 20.30, 21.80, 16.80, 18.00, 18.50, 21.60, 16.00, 16.30, 9.70, 14.70, 26.50, 25.70, 12.70, 20.00, 20.50, 13.00, 9.70, 20.00, 19.60),
(3, '2024-03-18', 628.00, 19.30, 20.90, 16.00, 17.20, 17.00, 20.60, 15.20, 15.20, 9.00, 14.20, 25.30, 24.80, 12.20, 20.50, 20.40, 12.90, 9.70, 20.10, 19.30),
(4, '2024-03-19', 638.00, 19.00, 20.70, 15.80, 17.50, 16.90, 21.10, 15.80, 15.40, 8.70, 14.30, 25.50, 24.70, 12.30, 20.10, 20.50, 13.00, 9.80, 19.90, 19.30),
(5, '2024-03-20', 611.00, 18.90, 20.80, 16.00, 17.60, 16.90, 20.80, 15.80, 15.50, 8.80, 14.30, 25.30, 24.70, 12.30, 20.60, 20.50, 13.00, 9.80, 20.10, 19.30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `malam`
--
ALTER TABLE `malam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagi`
--
ALTER TABLE `pagi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siang`
--
ALTER TABLE `siang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `malam`
--
ALTER TABLE `malam`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pagi`
--
ALTER TABLE `pagi`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `siang`
--
ALTER TABLE `siang`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
