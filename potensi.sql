-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2024 at 12:56 PM
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `jumlah` int(11) NOT NULL,
  `sn` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `electricity`
--

INSERT INTO `electricity` (`id`, `nama`, `merk`, `kapasitas`, `satuan`, `jumlah`, `sn`) VALUES
(1, 'PLN', 'ID Pelanggan 321302081770', 1385, 'KVA', 1, ''),
(2, 'Cubicle', 'Scneider', 2000, 'A', 1, ''),
(3, 'Transformator (Trafo)', 'Trafindo', 2000, 'KVA', 1, '');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penerangan`
--

INSERT INTO `penerangan` (`id`, `nama`, `merk`, `type`, `jumlah`, `keterangan`) VALUES
(4, 'MSC', 'PHILLIPS', 'LED 16 WATT', 48, '38 LAMPU MASIH 36 WATT '),
(5, 'CSPS', 'PHILLIPS', 'LED 16 WATT', 12, '2 LAMPU MASIH 36 WATT'),
(6, 'RECTI LANTAI 2', 'PHILLIPS', 'LED 16 WATT', 12, '8 LAMPU MASIH 36 WATT'),
(7, 'RUANG PANEL LT 2', 'PHILLIPS', 'LED 8 WATT', 4, '4 LAMPU MASIH 18 WATT'),
(8, 'RUANG BATTERY LT 2', 'PHILLIPS', 'LED 16 WATT', 12, '8 LAMPU MASIH 36 WATT'),
(9, 'RUANG ISTIRAHAT LT 2', 'PHILLIPS', 'LED 8 WATT', 9, '6 LAMPU MASIH 18 WATT'),
(10, 'RUANG MONITORING LT 2', 'PHILLIPS', 'LED 8 WATT', 9, '3 LAMPU MASIH 18 WATT'),
(11, 'KORIDOR LT 2', 'PHILLIPS', 'LED 8 WATT', 12, '12 LAMPU MASIH 18 WATT '),
(12, 'RUANG STAGING LT 2', 'PHILLIPS', 'LED 8 WATT', 2, '2 LAMPU ESSENTIAL 18 WATT'),
(13, 'SELASAR DEPAN LT 2', 'PHILLIPS ', 'TL BULAT', 5, 'MATI SEMUA'),
(14, 'SELASAR BELAKANG LT 2', 'PHILIPS', 'LED BULD 9 WATT', 10, ''),
(15, 'TOILET LT 2', 'PHILIPS', 'BULD 12 DAN 8 WATT', 4, '1 LAMPU TYPE 18 WATT 3 TYPE BULD'),
(16, 'RUANG TRAFO', 'PHILIPS', 'LED 16 WATT', 8, '8 LAMPU TL ESSENTIAL 36 WATT'),
(17, 'TANGGA TRAFO', 'PHILIPS', 'LED BULD 18 WATT', 1, ''),
(18, 'TANGGA DARURAT LT 2', 'PHILIPS', 'LED BULD 9 WATT', 2, ''),
(19, 'RUANG STAGING  LT 3', 'PHILLIPS', 'LED 8 WATT', 2, 'MATI SEMUA'),
(20, 'KORIDOR LT 3', 'PHILLIPS', 'LED 8 WATT', 18, '6 LAMPU MASIH 18 WATT'),
(21, 'TOILET LT 3', 'PHILLIPS', 'BULD 12 DAN 8 WATT', 4, '1 LAMPU TYPE 18 WATT 3 TYPE BULD'),
(22, 'RUANG BATTERY LT 3', 'PHILLIPS', 'LED 16 WATT', 12, '6 LAMPU MASIH 36 WATT'),
(23, 'TANGGA DARURAT LT 3', 'PHILLIPS', 'LED BULD 9 WATT', 2, ''),
(24, 'RUANG RECTI LT 3', 'PHILLIPS', 'LED 16 WATT', 12, '2 LAMPU MASIH 36 WATT'),
(25, 'RUANG PANEL LT 3', 'PHILLIPS', 'LED 8 WATT', 4, '2 LAMPU MATI'),
(26, 'RUANG ISTIRAHAT LT 3', 'PHILLIPS', 'LED 8 WATT', 9, '6 LAMPU MASIH 18 WATT'),
(27, 'RUANG MONITORING LT 3', 'PHILLIPS', 'LED 8 WATT', 9, '6 LAMPU MASIH 18 WATT'),
(28, 'RUANG INVAS ', 'PHILLIPS', 'LED 16 WATT', 24, '8 LAMPU MASIH 36 WATT'),
(29, 'RUANG OCS ', 'PHILLIPS', 'LED 16 WATT', 12, '6 LAMPU MASIH 36 WATT'),
(30, 'RUANG CORE', 'PHILLIPS', 'LED 16 WATT', 12, '6 LAMPU MASIH 36 WATT'),
(31, 'RUANG MKIOS', 'PHILLIPS', 'LED 16 WATT', 12, '8 LAMPU MASIH 36 WATT'),
(32, 'SELASAR BELAKANG LT 3', 'PHILLIPS', 'LED BULD 9 WATT', 10, '1 LAMPU MASIH TL BULAT'),
(33, 'SELASAR DEPAN LT 3', 'PHILLIPS', 'TL BULAT', 5, '2 LAMPU MATI'),
(34, 'RUANG BATTERY LT4', 'PHILLIPS', 'LED 16 WATT', 12, '6 LAMPU MASIH 36 WATT '),
(35, 'KORIDOR LT 4', 'PHILLIPS', 'LED 8 WATT', 24, '21 LAMPU MASIH 18 WATT'),
(36, 'RUANG RECTI LT 4', 'PHILLIPS', 'LED 16 WATT', 12, '12 LAMPU MASIH  36 WATT'),
(37, 'RUANG BSS/TRAU', 'PHILLIPS', 'LED 16 WATT', 10, '6 LAMPU MASIH 36 WATT '),
(38, 'RUANG INTERKONEKSI', 'PHILLIPS', 'LED 16 WATT', 24, '16 LAMPU MASIH 36 WATT'),
(39, 'RUANG TRANSMISI', 'PHILLIPS', 'LED 16 WATT', 22, '16 LAMPU MASIH 36 WATT'),
(40, 'RUANG OPERATOR LT 4', 'PHILLIPS', 'LED 8 WATT', 9, '9 LAMPU MASIH 18 WATT'),
(41, 'RUANG RAPAT LT 4', 'PHILLIPS', 'LED 8 WATT', 9, '9 LAMPU MASIH 18 WATT'),
(42, 'RUANG PANEL LT 4', 'PHILLIPS', 'LED 8 WATT', 4, '2 LAMPU MATI'),
(43, 'RUANG STAGING LT 4', 'PHILLIPS', 'LED 8 WATT', 2, '2 LAMPU MASIH 18 WATT'),
(44, 'TOILET LT 4', 'PHILLIPS', 'BULD 12 DAN 18 WATT', 4, '1 LAMPU TYPE 18 WATT 3 TYPE BULD'),
(45, 'SELASAR DEPAN LT 4', 'PHILLIPS', 'TL BULAT', 5, 'MATI SEMUA'),
(46, 'SELASAR BELAKANG LT 4', 'PHILLIPS', 'TL BULAT', 10, 'MATI SEMUA '),
(47, 'TANGGA DARURAT LT 4', 'PHILLIPS', 'TL BULAT / LED BULD 9 WATT', 2, '1 LAMPU TL BULAT MATI'),
(48, 'RUANG VENDOR', 'PHILLIPS', 'LED 8 WATT', 12, '12 LAMPU MASIH 18 WATT'),
(49, 'RUANG ME', 'PHILLIPS', 'LED 8 WATT', 4, '2 LAMPU MASIH 18 WATT'),
(50, 'RUANG MUSHOLLA', 'PHILLIPS', 'LED 8 WATT & LED BULD 9 WATT', 7, '6 LAMPU MASIH 18 WATT'),
(51, 'RUANG PANEL LT 1', 'PHILLIPS', 'LED 8 WATT', 10, '6 LAMPU MASIH 18 WATT'),
(52, 'RUANG PANTRY', 'PHILLIPS', 'LED BULD 9 WATT', 4, ''),
(53, 'KORIDOR LT 1', 'PHILLIPS', 'LED 8 WATT & LED BULD 9 WATT', 16, '12 LAMPU MASIH 18 WATT'),
(54, 'RUANG CONTROL', 'PHILLIPS', 'LED 8 WATT, LED BULD 18 WATT & LED 16 WATT', 28, '12 LAMPU MASIH 18 WATT'),
(55, 'RUANG STAFF', 'PHILLIPS', 'LED 8 WATT & LED BULD 9 WATT', 106, '90 LAMPU MASIH 18 WATT & 10 LAMPU MASIH 12 WATT'),
(56, 'RUANG TOILET', 'PHILLIPS', 'LED 8 WATT & LED BULD 9 WATT', 4, '1 LAMPU MASIH 18 WATT & 2 LAMPU 12 WATT'),
(57, 'LOBBY LT 1', 'PHILLIPS', 'LED 8 WATT & LED BULD 9 WATT', 26, '16 LAMPU MASIH 36 WATT & 11 LAMPU MASIH 12 WATT'),
(58, 'SELASAR DEPAN LT 1', 'PHILLIPS', 'LED BULD 9 WATT', 16, '16 LAMPU MASIH 12 WATT'),
(59, 'TANGGA DARURAT LT 1', 'PHILLIPS', 'LED BULD 9 WATT', 2, ''),
(60, 'CONTAINMENT', 'PHILLIPS', 'LED 16 WATT', 12, '12 LAMPU MASIH 36 WATT'),
(61, 'PENGEMBANGAN ', 'PHILLIPS', 'LED 16 WATT', 24, '24 LAMPU MASIH 36 WATT'),
(62, 'DATA CENTER', 'PHILLIPS', 'LED 16 WATT', 54, ''),
(63, 'RUANG PANEL LT 5', 'PHILLIPS', 'LED 8 WATT', 4, '4 LAMPU MASIH 18 WATT'),
(64, 'UTILITY A', 'PHILLIPS', 'LED 16 WATT', 14, ''),
(65, 'UTILITY B', 'PHILLIPS', 'LED 16 WATT', 14, ''),
(66, 'TOILET LT 5', 'PHILLIPS', 'LED BULD & LED 8 WATT', 4, '2 LAMPU MASIH ESENTIAL DAN 1 LAMPU TL 18 WATT'),
(67, 'RUANG STAGING LT 5', 'PHILLIPS', 'LED 8 WATT', 2, '2 LAMPU MASIH 18 WATT'),
(68, 'PINTU SHAFF DATA', 'PHILLIPS', 'LED 16 WATT ', 2, '2 LAMPU MASIH 36 WATT'),
(69, 'PINTU SHAFF POWER ', 'PHILLIPS', 'LED 16 WATT', 1, '1 LAMPU MASIH 36 WATT'),
(70, 'KORIDOR LT 5', 'PHILLIPS', 'LED 8 WATT', 15, '9 LAMPU MASIH 18 WATT'),
(71, 'SELASAR DEPAN LT5', 'PHILLIPS', 'LED BULD 9 WATT', 11, 'MATI SEMUA'),
(72, 'SELASAR BELAKANG LT 5', 'PHILLIPS', 'LED BULD 9 WATT', 5, 'MATI SEMUA'),
(73, 'TANGGA DARURAT LT 5', 'PHILLIPS', 'LED BULD 9 WATT', 2, ''),
(74, 'RUANG HYDRANT', 'PHILIPS', 'TL 18 WATT', 4, '2 HIDUP 2 MATI'),
(75, 'TANGGA DARURAT HYDRANT', 'PHILIPS', 'LED BULD 9 WATT', 2, ''),
(76, 'ROOFTOP', 'PHILIPS', 'TL BULAT DAN SOROT', 7, '1 LAMPU TL BULAT 6 LAMPU SOROT'),
(77, 'TANGGA DARURAT ROOFTOP', 'PHILIPS', 'LED BULD 9 WATT', 2, 'MATI SEMUA'),
(78, 'RUANG LIFT', 'PHILIPS', 'TL 18 WATT', 2, ''),
(79, 'GUDANG ROOFTOP', 'PHILIPS', 'TL 18 WATT', 2, ''),
(80, 'LOBBY BASEMENT', 'PHILLIPS', 'TL 18 WATT', 3, '3 LAMPU MASIH 18 WATT'),
(81, 'KORIDOR BASEMENT', 'PHILLIPS', 'LED BULD 9 WATT ', 4, ''),
(82, 'TOILET BASEMENT', 'PHILLIPS', 'LED BULD 9 WATT', 4, '1 LAMPU TL  MASIH 18 WATT'),
(83, 'RUANG HK ', 'IN LITE', 'TL LED 9 WATT', 6, '4 LAMPU MASIH 18 WATT'),
(84, 'GUDANG ', 'PHILLIPS', 'TL 36 WATT', 20, 'SEMUA LAMPU MASIH 36 WATT'),
(85, 'PARKIRAN BASEMENT', 'PHILLIPS', 'TL 36 WATT', 12, 'SEMUA LAMPU MASIH 36 WATT'),
(86, 'PARKIRAN BELAKANG', 'PHILLIPS', 'TL 36 WATT', 7, 'SEMUA LAMPU MASIH 36 WATT'),
(87, 'TANGGA DARURAT BASEMENT', 'PHILLIPS', 'LED BULD 9 WATT', 2, '1 LAMPU MASIH TL RING'),
(88, 'SELASAR BASEMENT', 'PHILLIPS', 'TL RING', 8, 'MATI SEMUA'),
(89, 'RUANG TANGKI BULANAN', 'PHILLIPS', 'TL LED 16 WATT', 4, '2 LAMPU SOROT IN-LITE 30 WATT'),
(90, 'POS SECURITY', 'PHILLIPS', 'LED BULD 9 WATT', 7, ''),
(91, 'LAMPU SOROT', 'PHILLIPS', 'SOROT', 12, ''),
(92, 'LAMPU TAMAN', 'PHILIPS', 'ESSENTIAL', 17, 'MATI SEMUA'),
(93, 'PARKIRAN DEPAN', 'PHILLIPS', 'TL LED 16 WATT', 1, ''),
(94, 'RUANG STAFF BASSMENT', 'PHILLIPS', 'TL LED 8 WATT', 4, '2 LAMPU MASIH 18 WATT');

-- --------------------------------------------------------

--
-- Table structure for table `power`
--

CREATE TABLE `power` (
  `id` int(255) NOT NULL,
  `floor` int(2) NOT NULL,
  `room` varchar(7) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `capacity` int(255) NOT NULL,
  `sn` varchar(12) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `installation` datetime NOT NULL,
  `maintanance` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `keterangan` text NOT NULL,
  `sn` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recti`
--

INSERT INTO `recti` (`id`, `nama`, `merk`, `type`, `merk_battery`, `type_battery`, `jumlah_battery`, `keterangan`, `sn`) VALUES
(1, 'Recti 2.01', 'Huawei', 'TP482000B', 'SHOTO', 'GFMJ-2000', 48, 'OK', ''),
(2, 'Recti 2.02', 'Huawei', 'TP482000B', 'SHOTO/HOPPECKE', 'GFMJ-2000/16OPzV2000', 48, 'OK', ''),
(3, 'Recti 2.03', 'Huawei', 'TP482000B', 'SHOTO', 'GMMJ-2000', 48, 'OK', ''),
(4, 'Recti 2.04', 'Huawei', 'ESM-48100B1', 'Huawei', 'Lithium', 20, 'OK', ''),
(5, 'Recti 2.05', 'Huawei', 'ESM-48100B1', 'Huawei', 'Lithium', 20, 'OK', ''),
(6, 'Recti 2.06', 'Huawei', 'TP482000B', 'SHOTO/HOPPECKE', 'GFMJ-2000', 48, 'OK', ''),
(7, 'Recti 3.01', 'Huawei', 'TP482000B', 'SHOTO', 'GFMJ-2000', 48, 'OK', ''),
(8, 'Recti 3.02', 'Huawei', 'TP482000B', 'SHOTO', 'GFMJ-2000', 48, 'OK', ''),
(9, 'Recti 3.03', 'Huawei', 'ESM-48100B1', 'Huawei', 'Lithium', 20, 'OK', ''),
(10, 'Recti 3.04', 'Huawei', 'TP482000B', 'SHOTO', 'GFMJ-2000', 48, 'OK', ''),
(11, 'Recti 4.04', 'Huawei', 'TP482000B', 'SHOTO', 'GFMJ-2000', 24, 'OK', ''),
(12, 'Recti 4.07', 'Huawei', 'ESM-48100B1', 'Huawei', 'Lithium', 20, 'OK', ''),
(13, 'Recti 4.12', 'Huawei', 'TP482000B', 'SHOTO/HOPPECKE', 'GFMJ-2000/16OPzV2000', 24, 'OK', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `keterangan` char(255) DEFAULT NULL,
  `sn` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ups`
--

INSERT INTO `ups` (`id`, `nama`, `merk`, `type`, `merk_battery`, `type_battery`, `jumlah_battery`, `keterangan`, `sn`) VALUES
(2, 'UPS 2.02', 'Liebert', 'Liebert APM 300', 'Vision', '12V 192Ah', 40, '2 Blok Baterai Rusak', ''),
(3, 'UPS 2.03', 'Liebert', 'Liebert APM 300', 'Vision', '12V 192Ah', 40, 'OK', ''),
(4, 'UPS 3.01', 'Eaton', 'EATON 93PR-200-BF', 'Leoch', '12V 200Ah', 48, 'OK', '4R491WAA03'),
(5, 'UPS 3.02', 'Eaton', 'EATON 93PR-200-BF', 'Leoch', '12V 200Ah', 48, 'OK', '4R484WAA03'),
(6, 'UPS 5A', 'Eaton', 'EATON 93PR-200-BF', 'Rocket', '12V 150Ah', 80, 'OK', ''),
(7, 'UPS 5B', 'Eaton', 'EATON 93PR-200-BF', 'Rocket', '12V 150Ah', 80, 'OK', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warning`
--

INSERT INTO `warning` (`id`, `nama`, `merk`, `type`, `jumlah`, `keterangan`) VALUES
(2, 'RUANG TRAFO', 'Auto Pulse Z-20', 'Z-20', 1, 'Normal'),
(3, 'RUANG GANSET', 'Auto Pulse Z-20', 'Z-20', 1, 'Normal'),
(4, 'BASEMENT', 'POTTER', 'PFC Series', 1, 'Normal'),
(5, 'LANTAI 1', 'POTTER', 'PFC Series', 1, 'Normal'),
(6, 'LANTAI 2', 'POTTER', 'PFC Series', 1, 'Normal'),
(7, 'LANTAI 3', 'POTTER', 'PFC Series', 1, 'Normal');

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
-- Indexes for table `power`
--
ALTER TABLE `power`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `power`
--
ALTER TABLE `power`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
