-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2024 at 12:37 AM
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
-- Database: `potensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `cooling`
--

CREATE TABLE `cooling` (
  `id` int(255) NOT NULL,
  `lantai` int(5) NOT NULL,
  `ruang` text NOT NULL,
  `merk` text NOT NULL,
  `type` char(255) NOT NULL,
  `compressor` text NOT NULL,
  `flow` text NOT NULL,
  `jumlah` int(15) NOT NULL,
  `keterangan` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cooling`
--

INSERT INTO `cooling` (`id`, `lantai`, `ruang`, `merk`, `type`, `compressor`, `flow`, `jumlah`, `keterangan`) VALUES
(1, 2, 'Rectifier', 'RC Group', 'Next DX O 035M', 'single', 'upflow', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `electricity`
--

CREATE TABLE `electricity` (
  `id` int(255) NOT NULL,
  `nama` text NOT NULL,
  `merk` text NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `satuan` text NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `electricity`
--

INSERT INTO `electricity` (`id`, `nama`, `merk`, `kapasitas`, `satuan`, `jumlah`) VALUES
(1, 'PLN', 'ID Pelanggan 321302081770', 1385, 'KVA', 1),
(2, 'Cubicle', 'Scneider', 2000, 'A', 1),
(3, 'Transformator (Trafo)', 'Trafindo', 2000, 'KVA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fire`
--

CREATE TABLE `fire` (
  `id` int(255) NOT NULL,
  `lantai` int(11) NOT NULL,
  `ruang` text NOT NULL,
  `nama` text NOT NULL,
  `merk` text NOT NULL,
  `type` char(255) DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fire`
--

INSERT INTO `fire` (`id`, `lantai`, `ruang`, `nama`, `merk`, `type`, `jumlah`, `keterangan`) VALUES
(1, 2, 'Rectifier', 'Panel Control', 'Kidde', 'Aries', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `penerangan`
--

CREATE TABLE `penerangan` (
  `id` int(255) NOT NULL,
  `nama` text NOT NULL,
  `merk` text NOT NULL,
  `type` text DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `recti`
--

CREATE TABLE `recti` (
  `id` int(255) NOT NULL,
  `nama` text NOT NULL,
  `merk` text NOT NULL,
  `type` text NOT NULL,
  `merk_battery` text NOT NULL,
  `type_battery` text NOT NULL,
  `jumlah_battery` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recti`
--

INSERT INTO `recti` (`id`, `nama`, `merk`, `type`, `merk_battery`, `type_battery`, `jumlah_battery`, `keterangan`) VALUES
(1, 'Recti 2.01', 'Huawei', 'TP482000B', 'Shoto', 'GFMJ-2000', 48, '');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(255) NOT NULL,
  `nama` text NOT NULL,
  `merk` text NOT NULL,
  `type` text DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ups`
--

CREATE TABLE `ups` (
  `id` int(255) NOT NULL,
  `nama` text NOT NULL,
  `merk` text NOT NULL,
  `type` char(255) NOT NULL,
  `merk_battery` text NOT NULL,
  `type_battery` char(255) NOT NULL,
  `jumlah_battery` int(31) NOT NULL,
  `keterangan` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ups`
--

INSERT INTO `ups` (`id`, `nama`, `merk`, `type`, `merk_battery`, `type_battery`, `jumlah_battery`, `keterangan`) VALUES
(2, 'UPS 2.02', 'Liebert', 'Liebert APM 300', 'Vision', '12V 192Ah', 40, '2 Blok Baterai Rusak');

-- --------------------------------------------------------

--
-- Table structure for table `warning`
--

CREATE TABLE `warning` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `merk` text NOT NULL,
  `type` text DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cooling`
--
ALTER TABLE `cooling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `electricity`
--
ALTER TABLE `electricity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fire`
--
ALTER TABLE `fire`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penerangan`
--
ALTER TABLE `penerangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recti`
--
ALTER TABLE `recti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ups`
--
ALTER TABLE `ups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warning`
--
ALTER TABLE `warning`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cooling`
--
ALTER TABLE `cooling`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `electricity`
--
ALTER TABLE `electricity`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `fire`
--
ALTER TABLE `fire`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penerangan`
--
ALTER TABLE `penerangan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `recti`
--
ALTER TABLE `recti`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ups`
--
ALTER TABLE `ups`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `warning`
--
ALTER TABLE `warning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
