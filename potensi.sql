-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 08:19 AM
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
(1, 2, 'Rectifier', 'RC Group', 'Next DX O 035M', 'single', 'upflow', 2, ''),
(2, 2, 'MSC', 'RC Group', 'Next DX O 070M DC', 'dual', 'downflow', 8, ''),
(3, 2, 'CSPS', 'Climaveneta', 'Cool Blade DAU060', 'dual', 'downflow', 2, ''),
(4, 3, 'Rectifier', 'RC Group', 'Next DX O 035M', 'single', 'upflow', 2, ''),
(5, 3, 'Mkios', 'RC Group', 'Next DX O 070M DC', 'dual', 'downflow', 2, ''),
(6, 3, 'Core', 'RC Group', 'Next DX O 070M DC', 'dual', 'downflow', 2, ''),
(7, 3, 'OCS', 'RC Group', 'Next DX O 070M DC', 'dual', 'downflow', 3, ''),
(8, 3, 'Invas', 'RC Group', 'Next DX O 070M DC', 'dual', 'downflow', 4, ''),
(9, 4, 'Rectifier', 'RC Group', 'Next DX O 035M', 'single', 'upflow', 2, ''),
(10, 4, 'BSS/TRAU', 'RC Group', 'Next DX O 035M', 'single', 'upflow', 2, ''),
(11, 4, 'Transmisi', 'RC Group', 'Next DX O 035M', 'single', 'upflow', 4, ''),
(12, 5, 'Data Centre', 'Climaveneta', 'Cool Blade DAU060', 'dual', 'downflow', 6, ''),
(13, 5, 'Utilitiy A', 'Climaveneta', 'Cool Blade DAU055', 'dual', 'upflow', 2, ''),
(14, 5, 'Utilitiy B', 'Climaveneta', 'Cool Blade DAU055', 'dual', 'upflow', 2, ''),
(15, 5, 'Containment', 'Climaveneta', 'Coolside DX 0151 IN', 'single', 'inrow', 4, '');

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
(1, 2, 'Rectifier', 'Panel Control', 'Kidde', 'Aries', 1, ''),
(2, 2, 'Rectifier', 'Tabung FM 200', 'Siemens', '', 1, 'Height 134'),
(3, 2, 'Rectifier', 'Dect. Photo', 'Fenwal', '', 2, ''),
(4, 2, 'Rectifier', 'Dect. ION', 'Kidde', '', 2, '');

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
(1, 'Recti 2.01', 'Huawei', 'TP482000B', 'SHOTO', 'GFMJ-2000', 48, 'OK'),
(2, 'Recti 2.02', 'Huawei', 'TP482000B', 'SHOTO/HOPPECKE', 'GFMJ-2000/16OPzV2000', 48, 'OK'),
(3, 'Recti 2.03', 'Huawei', 'TP482000B', 'SHOTO', 'GFMJ-2000', 24, 'OK'),
(4, 'Recti 2.04', 'Huawei', 'TP482000B', 'HOPPECKE', '16OPzV2000', 48, 'OK'),
(5, 'Recti 2.05', 'Huawei', 'TP482000B', 'SHOTO/HOPPECKE', 'GFMJ-2000/16OPzV2000', 48, 'OK'),
(6, 'Recti 2.06', 'Huawei', 'TP482000B', 'SHOTO/HOPPECKE', 'GFMJ-2000', 48, 'OK'),
(7, 'Recti 3.01', 'Huawei', 'TP482000B', 'SHOTO', 'GFMJ-2000', 48, 'OK'),
(8, 'Recti 3.02', 'Huawei', 'TP482000B', 'SHOTO', 'GFMJ-2000', 48, 'OK'),
(9, 'Recti 3.03', 'Huawei', 'TP482000B', 'FIAMMA', 'SMG2000', 48, 'OK'),
(10, 'Recti 3.04', 'Huawei', 'TP482000B', 'SHOTO', 'GFMJ-2000', 48, 'OK'),
(11, 'Recti 4.04', 'Huawei', 'TP482000B', 'SHOTO', 'GFMJ-2000', 24, 'OK'),
(12, 'Recti 4.07', 'Huawei', 'TP482000B', 'SONNENSCHEIN', 'A602/2300', 48, 'OK'),
(13, 'Recti 4.12', 'Huawei', 'TP482000B', 'SHOTO/HOPPECKE', 'GFMJ-2000/16OPzV2000', 24, 'OK');

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
(2, 'UPS 2.02', 'Liebert', 'Liebert APM 300', 'Vision', '12V 192Ah', 40, '2 Blok Baterai Rusak'),
(3, 'UPS 2.03', 'Liebert', 'Liebert APM 300', 'Vision', '12V 192Ah', 40, 'OK'),
(4, 'UPS 3.01', 'Eaton', 'EATON 93PR-200-BF', 'Leoch', '12V 200Ah', 48, 'OK'),
(5, 'UPS 3.02', 'Eaton', 'EATON 93PR-200-BF', 'Leoch', '12V 200Ah', 48, 'OK'),
(6, 'UPS 5A', 'Eaton', 'EATON 93PR-200-BF', 'Rocket', '12V 150Ah', 80, 'OK'),
(7, 'UPS 5B', 'Eaton', 'EATON 93PR-200-BF', 'Rocket', '12V 150Ah', 80, 'OK');

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `electricity`
--
ALTER TABLE `electricity`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `fire`
--
ALTER TABLE `fire`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penerangan`
--
ALTER TABLE `penerangan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `recti`
--
ALTER TABLE `recti`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ups`
--
ALTER TABLE `ups`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `warning`
--
ALTER TABLE `warning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
