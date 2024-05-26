-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 08:18 AM
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
-- Database: `layout`
--

-- --------------------------------------------------------

--
-- Table structure for table `lantai2`
--

CREATE TABLE `lantai2` (
  `id` int(255) NOT NULL,
  `upload_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lantai2`
--

INSERT INTO `lantai2` (`id`, `upload_at`) VALUES
(1, '2024-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `lantai3`
--

CREATE TABLE `lantai3` (
  `id` int(255) NOT NULL,
  `upload_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lantai3`
--

INSERT INTO `lantai3` (`id`, `upload_at`) VALUES
(1, '2024-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `lantai4`
--

CREATE TABLE `lantai4` (
  `id` int(255) NOT NULL,
  `upload_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lantai4`
--

INSERT INTO `lantai4` (`id`, `upload_at`) VALUES
(1, '2024-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `lantai5`
--

CREATE TABLE `lantai5` (
  `id` int(255) NOT NULL,
  `upload_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lantai5`
--

INSERT INTO `lantai5` (`id`, `upload_at`) VALUES
(1, '2024-04-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lantai2`
--
ALTER TABLE `lantai2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lantai3`
--
ALTER TABLE `lantai3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lantai4`
--
ALTER TABLE `lantai4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lantai5`
--
ALTER TABLE `lantai5`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lantai2`
--
ALTER TABLE `lantai2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lantai3`
--
ALTER TABLE `lantai3`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lantai4`
--
ALTER TABLE `lantai4`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lantai5`
--
ALTER TABLE `lantai5`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
