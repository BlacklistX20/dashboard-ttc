-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2024 at 12:54 PM
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
-- Database: `dapot_ttc_sudiang`
--

-- --------------------------------------------------------

--
-- Table structure for table `cctv`
--

CREATE TABLE `cctv` (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL DEFAULT 0000,
  `ne_id` varchar(30) NOT NULL,
  `floor` varchar(2) NOT NULL,
  `room` varchar(7) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `kondisi` varchar(10) NOT NULL,
  `status` varchar(3) NOT NULL,
  `ket` varchar(500) NOT NULL,
  `install` date NOT NULL,
  `maintanance` varchar(11) NOT NULL DEFAULT '-',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cool`
--

CREATE TABLE `cool` (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `ne_id` varchar(30) NOT NULL,
  `floor` varchar(2) NOT NULL,
  `room` varchar(7) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `sn_indor` varchar(20) NOT NULL,
  `sn_outdoor` varchar(15) NOT NULL,
  `aging` varchar(5) NOT NULL,
  `freon` varchar(6) NOT NULL,
  `compressor` varchar(6) NOT NULL,
  `flow` varchar(5) NOT NULL,
  `capacity` int(11) NOT NULL,
  `btu/h` int(11) NOT NULL,
  `pk` int(11) NOT NULL,
  `kondisi` varchar(10) NOT NULL,
  `status` varchar(3) NOT NULL,
  `install` date NOT NULL,
  `maintanance` varchar(11) NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `finishing`
--

CREATE TABLE `finishing` (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL DEFAULT 0000,
  `ne_id` varchar(30) NOT NULL,
  `floor` varchar(2) NOT NULL,
  `room` varchar(7) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `kondisi` varchar(10) NOT NULL,
  `ket` varchar(500) NOT NULL,
  `install` date NOT NULL,
  `maintanance` varchar(11) NOT NULL DEFAULT '-',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fire`
--

CREATE TABLE `fire` (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL DEFAULT 0000,
  `ne_id` varchar(30) NOT NULL,
  `floor` varchar(2) NOT NULL,
  `room` varchar(7) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `kondisi` varchar(10) NOT NULL,
  `ket` varchar(500) NOT NULL,
  `install` date NOT NULL,
  `maintanance` varchar(11) NOT NULL DEFAULT '-',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL DEFAULT 0000,
  `ne_id` varchar(30) NOT NULL,
  `floor` varchar(2) NOT NULL,
  `room` varchar(7) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `kondisi` varchar(10) NOT NULL,
  `ket` varchar(500) NOT NULL,
  `install` date NOT NULL,
  `maintanance` varchar(11) NOT NULL DEFAULT '-',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `light`
--

CREATE TABLE `light` (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL DEFAULT 0000,
  `ne_id` varchar(30) NOT NULL,
  `floor` varchar(2) NOT NULL,
  `room` varchar(7) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `kondisi` varchar(10) NOT NULL,
  `ket` varchar(500) NOT NULL,
  `install` date NOT NULL,
  `maintanance` varchar(11) NOT NULL DEFAULT '-',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `power`
--

CREATE TABLE `power` (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `ne_id` varchar(50) NOT NULL,
  `floor` varchar(2) NOT NULL,
  `room` varchar(7) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `role` varchar(6) NOT NULL,
  `capacity` int(11) NOT NULL,
  `modul` int(11) NOT NULL,
  `modul_capacity` int(11) NOT NULL,
  `occupancy` int(11) NOT NULL,
  `system` varchar(20) NOT NULL,
  `aging` varchar(5) NOT NULL,
  `battery` int(11) NOT NULL,
  `source_a` varchar(20) NOT NULL,
  `source_b` varchar(20) NOT NULL,
  `kondisi` varchar(10) NOT NULL,
  `status` varchar(3) NOT NULL,
  `ket` varchar(500) NOT NULL,
  `install` date NOT NULL,
  `maintanance` varchar(11) NOT NULL DEFAULT '-',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pump`
--

CREATE TABLE `pump` (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL DEFAULT 0000,
  `ne_id` varchar(30) NOT NULL,
  `floor` varchar(2) NOT NULL,
  `room` varchar(7) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `kondisi` varchar(10) NOT NULL,
  `ket` varchar(500) NOT NULL,
  `install` date NOT NULL,
  `maintanance` varchar(11) NOT NULL DEFAULT '-',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rack`
--

CREATE TABLE `rack` (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL DEFAULT 0000,
  `ne_id` varchar(30) NOT NULL,
  `floor` varchar(2) NOT NULL,
  `room` varchar(7) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `source_a` varchar(20) NOT NULL,
  `source_b` varchar(20) NOT NULL,
  `kondisi` varchar(10) NOT NULL,
  `status` varchar(3) NOT NULL,
  `ket` varchar(500) NOT NULL,
  `install` date NOT NULL,
  `maintanance` varchar(11) NOT NULL DEFAULT '-',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `safety`
--

CREATE TABLE `safety` (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL DEFAULT 0000,
  `ne_id` varchar(30) NOT NULL,
  `floor` varchar(2) NOT NULL,
  `room` varchar(7) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `kondisi` varchar(10) NOT NULL,
  `ket` varchar(500) NOT NULL,
  `install` date NOT NULL,
  `maintanance` varchar(11) NOT NULL DEFAULT '-',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tank`
--

CREATE TABLE `tank` (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL DEFAULT 0000,
  `ne_id` varchar(30) NOT NULL,
  `floor` varchar(2) NOT NULL,
  `room` varchar(7) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `kondisi` varchar(10) NOT NULL,
  `ket` varchar(500) NOT NULL,
  `install` date NOT NULL,
  `maintanance` varchar(11) NOT NULL DEFAULT '-',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL DEFAULT 0000,
  `ne_id` varchar(30) NOT NULL,
  `floor` varchar(2) NOT NULL,
  `room` varchar(7) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `kondisi` varchar(10) NOT NULL,
  `ket` varchar(500) NOT NULL,
  `install` date NOT NULL,
  `maintanance` varchar(11) NOT NULL DEFAULT '-',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cool`
--
ALTER TABLE `cool`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `power`
--
ALTER TABLE `power`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`,`name`,`vendor`,`brand`,`kondisi`,`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cool`
--
ALTER TABLE `cool`
  MODIFY `id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `power`
--
ALTER TABLE `power`
  MODIFY `id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
