-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2024 at 12:55 PM
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
-- Database: `electric`
--

-- --------------------------------------------------------

--
-- Table structure for table `it`
--

CREATE TABLE `it` (
  `id` int(255) NOT NULL,
  `tgl` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lvmdp`
--

CREATE TABLE `lvmdp` (
  `id` int(255) NOT NULL,
  `tgl` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `p205`
--

CREATE TABLE `p205` (
  `id` int(255) NOT NULL,
  `tgl` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `p236`
--

CREATE TABLE `p236` (
  `id` int(255) NOT NULL,
  `tgl` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `p305`
--

CREATE TABLE `p305` (
  `id` int(255) NOT NULL,
  `tgl` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `p310`
--

CREATE TABLE `p310` (
  `id` int(255) NOT NULL,
  `tgl` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `p429`
--

CREATE TABLE `p429` (
  `id` int(255) NOT NULL,
  `tgl` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pue`
--

CREATE TABLE `pue` (
  `id` int(255) NOT NULL,
  `tgl` datetime NOT NULL,
  `pue` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recti`
--

CREATE TABLE `recti` (
  `id` int(255) NOT NULL,
  `tgl` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ups`
--

CREATE TABLE `ups` (
  `id` int(255) NOT NULL,
  `tgl` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ups202`
--

CREATE TABLE `ups202` (
  `id` int(255) NOT NULL,
  `tgl` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ups203`
--

CREATE TABLE `ups203` (
  `id` int(255) NOT NULL,
  `tgl` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ups301`
--

CREATE TABLE `ups301` (
  `id` int(255) NOT NULL,
  `tgl` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ups302`
--

CREATE TABLE `ups302` (
  `id` int(255) NOT NULL,
  `tgl` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ups501`
--

CREATE TABLE `ups501` (
  `id` int(255) NOT NULL,
  `tgl` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ups502`
--

CREATE TABLE `ups502` (
  `id` int(255) NOT NULL,
  `tgl` datetime NOT NULL,
  `loads` double(15,2) NOT NULL,
  `voltage` double(15,2) NOT NULL,
  `current` double(15,2) NOT NULL,
  `frequency` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `it`
--
ALTER TABLE `it`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lvmdp`
--
ALTER TABLE `lvmdp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p205`
--
ALTER TABLE `p205`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p236`
--
ALTER TABLE `p236`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p305`
--
ALTER TABLE `p305`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p310`
--
ALTER TABLE `p310`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p429`
--
ALTER TABLE `p429`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pue`
--
ALTER TABLE `pue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recti`
--
ALTER TABLE `recti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ups`
--
ALTER TABLE `ups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ups202`
--
ALTER TABLE `ups202`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ups203`
--
ALTER TABLE `ups203`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ups301`
--
ALTER TABLE `ups301`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ups302`
--
ALTER TABLE `ups302`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ups501`
--
ALTER TABLE `ups501`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ups502`
--
ALTER TABLE `ups502`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `it`
--
ALTER TABLE `it`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lvmdp`
--
ALTER TABLE `lvmdp`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p205`
--
ALTER TABLE `p205`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p236`
--
ALTER TABLE `p236`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p305`
--
ALTER TABLE `p305`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p310`
--
ALTER TABLE `p310`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p429`
--
ALTER TABLE `p429`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pue`
--
ALTER TABLE `pue`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recti`
--
ALTER TABLE `recti`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ups`
--
ALTER TABLE `ups`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ups202`
--
ALTER TABLE `ups202`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ups203`
--
ALTER TABLE `ups203`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ups301`
--
ALTER TABLE `ups301`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ups302`
--
ALTER TABLE `ups302`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ups501`
--
ALTER TABLE `ups501`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ups502`
--
ALTER TABLE `ups502`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
