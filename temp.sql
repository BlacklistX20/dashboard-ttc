-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2024 at 12:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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

-- --------------------------------------------------------

--
-- Table structure for table `battery4`
--

CREATE TABLE `battery4` (
  `id` int(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `t1` double(15,2) NOT NULL,
  `h1` double(15,2) NOT NULL,
  `t2` double(15,2) NOT NULL,
  `h2` double(15,2) NOT NULL,
  `t_avg` double(15,2) NOT NULL,
  `h_avg` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bss`
--

CREATE TABLE `bss` (
  `id` int(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `t1` double(15,2) NOT NULL,
  `h1` double(15,2) NOT NULL,
  `t2` double(15,2) NOT NULL,
  `h2` double(15,2) NOT NULL,
  `t3` double(15,2) NOT NULL,
  `h3` double(15,2) NOT NULL,
  `t4` double(15,2) NOT NULL,
  `h4` double(15,2) NOT NULL,
  `t_avg` double(15,2) NOT NULL,
  `h_avg` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inter`
--

CREATE TABLE `inter` (
  `id` int(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `t1` double(15,2) NOT NULL,
  `h1` double(15,2) NOT NULL,
  `t2` double(15,2) NOT NULL,
  `h2` double(15,2) NOT NULL,
  `t3` double(15,2) NOT NULL,
  `h3` double(15,2) NOT NULL,
  `t4` double(15,2) NOT NULL,
  `h4` double(15,2) NOT NULL,
  `t_avg` double(15,2) NOT NULL,
  `h_avg` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recti4`
--

CREATE TABLE `recti4` (
  `id` int(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `t1` double(15,2) NOT NULL,
  `h1` double(15,2) NOT NULL,
  `t2` double(15,2) NOT NULL,
  `h2` double(15,2) NOT NULL,
  `t3` double(15,2) NOT NULL,
  `h3` double(15,2) NOT NULL,
  `t_avg` double(15,2) NOT NULL,
  `h_avg` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trans`
--

CREATE TABLE `trans` (
  `id` int(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `t1` double(15,2) NOT NULL,
  `h1` double(15,2) NOT NULL,
  `t2` double(15,2) NOT NULL,
  `h2` double(15,2) NOT NULL,
  `t3` double(15,2) NOT NULL,
  `h3` double(15,2) NOT NULL,
  `t4` double(15,2) NOT NULL,
  `h4` double(15,2) NOT NULL,
  `t5` double(15,2) NOT NULL,
  `h5` double(15,2) NOT NULL,
  `t6` double(15,2) NOT NULL,
  `h6` double(15,2) NOT NULL,
  `t_avg` double(15,2) NOT NULL,
  `h_avg` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `battery4`
--
ALTER TABLE `battery4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bss`
--
ALTER TABLE `bss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inter`
--
ALTER TABLE `inter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recti4`
--
ALTER TABLE `recti4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trans`
--
ALTER TABLE `trans`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `battery4`
--
ALTER TABLE `battery4`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bss`
--
ALTER TABLE `bss`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inter`
--
ALTER TABLE `inter`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recti4`
--
ALTER TABLE `recti4`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trans`
--
ALTER TABLE `trans`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
