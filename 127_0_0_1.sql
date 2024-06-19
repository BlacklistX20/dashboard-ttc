-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 02:39 AM
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
-- Database: `electric`
--
CREATE DATABASE IF NOT EXISTS `electric` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `electric`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

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
-- Database: `fuel`
--
CREATE DATABASE IF NOT EXISTS `fuel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fuel`;

-- --------------------------------------------------------

--
-- Table structure for table `bulanan`
--

CREATE TABLE `bulanan` (
  `id` int(255) NOT NULL,
  `t1` double(15,2) NOT NULL,
  `w1` datetime NOT NULL,
  `t2` double(15,2) NOT NULL,
  `w2` datetime NOT NULL,
  `t3` double(15,2) NOT NULL,
  `w3` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `harian`
--

CREATE TABLE `harian` (
  `id` int(255) NOT NULL,
  `t1` double(15,2) NOT NULL,
  `w1` datetime NOT NULL,
  `t2` double(15,2) NOT NULL,
  `w2` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bulanan`
--
ALTER TABLE `bulanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `harian`
--
ALTER TABLE `harian`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bulanan`
--
ALTER TABLE `bulanan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `harian`
--
ALTER TABLE `harian`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- Database: `layout`
--
CREATE DATABASE IF NOT EXISTS `layout` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `layout`;

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
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"suhu\",\"table\":\"bss\"},{\"db\":\"suhu\",\"table\":\"battery4\"},{\"db\":\"suhu\",\"table\":\"data\"},{\"db\":\"suhu\",\"table\":\"recti4\"},{\"db\":\"suhu\",\"table\":\"trans\"},{\"db\":\"suhu\",\"table\":\"sensor1\"},{\"db\":\"suhu\",\"table\":\"sensor6\"},{\"db\":\"potensi\",\"table\":\"electricity\"},{\"db\":\"potensi\",\"table\":\"angkut\"},{\"db\":\"potensi\",\"table\":\"fire\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

--
-- Dumping data for table `pma__tracking`
--

INSERT INTO `pma__tracking` (`db_name`, `table_name`, `version`, `date_created`, `date_updated`, `schema_snapshot`, `schema_sql`, `data_sql`, `tracking`, `tracking_active`) VALUES
('suhu', 'battery4', 1, '2024-03-14 02:20:38', '2024-03-14 02:21:03', 'a:2:{s:7:\"COLUMNS\";a:7:{i:0;a:8:{s:5:\"Field\";s:2:\"id\";s:4:\"Type\";s:8:\"int(255)\";s:9:\"Collation\";N;s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:1;a:8:{s:5:\"Field\";s:2:\"s1\";s:4:\"Type\";s:12:\"double(15,2)\";s:9:\"Collation\";N;s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:2;a:8:{s:5:\"Field\";s:2:\"k1\";s:4:\"Type\";s:12:\"double(15,2)\";s:9:\"Collation\";N;s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:3;a:8:{s:5:\"Field\";s:2:\"w1\";s:4:\"Type\";s:8:\"datetime\";s:9:\"Collation\";N;s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:4;a:8:{s:5:\"Field\";s:2:\"s2\";s:4:\"Type\";s:12:\"double(15,2)\";s:9:\"Collation\";N;s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:5;a:8:{s:5:\"Field\";s:2:\"k2\";s:4:\"Type\";s:12:\"double(15,2)\";s:9:\"Collation\";N;s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:6;a:8:{s:5:\"Field\";s:2:\"w2\";s:4:\"Type\";s:8:\"datetime\";s:9:\"Collation\";N;s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}}s:7:\"INDEXES\";a:0:{}}', '# log 2024-03-14 02:20:38 root\nDROP TABLE IF EXISTS `battery4`;\n# log 2024-03-14 02:20:38 root\n\nCREATE TABLE `battery4` (\n  `id` int(255) NOT NULL,\n  `s1` double(15,2) DEFAULT NULL CHECK (`s1` >= 1),\n  `k1` double(15,2) DEFAULT NULL CHECK (`k1` >= 1),\n  `w1` datetime NOT NULL,\n  `s2` double(15,2) DEFAULT NULL CHECK (`s2` >= 1),\n  `k2` double(15,2) DEFAULT NULL CHECK (`k2` >= 1),\n  `w2` datetime NOT NULL\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n# log 2024-03-14 02:21:02 root\nDROP TABLE IF EXISTS `battery4`;\n# log 2024-03-14 02:21:03 root\nCREATE TABLE `battery4` (\r\n  `id` int(255) NOT NULL,\r\n  `s1` double(15,2) DEFAULT NULL ,\r\n  `k1` double(15,2) DEFAULT NULL ,\r\n  `w1` datetime NOT NULL,\r\n  `s2` double(15,2) DEFAULT NULL ,\r\n  `k2` double(15,2) DEFAULT NULL ,\r\n  `w2` datetime NOT NULL\r\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;', '\n', 'UPDATE,INSERT,DELETE,TRUNCATE,CREATE TABLE,ALTER TABLE,RENAME TABLE,DROP TABLE,CREATE INDEX,DROP INDEX', 1),
('suhu', 'bss', 1, '2024-03-14 02:21:14', '2024-03-14 02:21:42', 'a:2:{s:7:\"COLUMNS\";a:13:{i:0;a:8:{s:5:\"Field\";s:2:\"id\";s:4:\"Type\";s:8:\"int(255)\";s:9:\"Collation\";N;s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:1;a:8:{s:5:\"Field\";s:2:\"s1\";s:4:\"Type\";s:12:\"double(15,2)\";s:9:\"Collation\";N;s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:2;a:8:{s:5:\"Field\";s:2:\"k1\";s:4:\"Type\";s:12:\"double(15,2)\";s:9:\"Collation\";N;s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:3;a:8:{s:5:\"Field\";s:2:\"w1\";s:4:\"Type\";s:8:\"datetime\";s:9:\"Collation\";N;s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:4;a:8:{s:5:\"Field\";s:2:\"s2\";s:4:\"Type\";s:12:\"double(15,2)\";s:9:\"Collation\";N;s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:5;a:8:{s:5:\"Field\";s:2:\"k2\";s:4:\"Type\";s:12:\"double(15,2)\";s:9:\"Collation\";N;s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:6;a:8:{s:5:\"Field\";s:2:\"w2\";s:4:\"Type\";s:8:\"datetime\";s:9:\"Collation\";N;s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:7;a:8:{s:5:\"Field\";s:2:\"s3\";s:4:\"Type\";s:12:\"double(15,2)\";s:9:\"Collation\";N;s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:8;a:8:{s:5:\"Field\";s:2:\"k3\";s:4:\"Type\";s:12:\"double(15,2)\";s:9:\"Collation\";N;s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:9;a:8:{s:5:\"Field\";s:2:\"w3\";s:4:\"Type\";s:8:\"datetime\";s:9:\"Collation\";N;s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:10;a:8:{s:5:\"Field\";s:2:\"s4\";s:4:\"Type\";s:12:\"double(15,2)\";s:9:\"Collation\";N;s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:11;a:8:{s:5:\"Field\";s:2:\"k4\";s:4:\"Type\";s:12:\"double(15,2)\";s:9:\"Collation\";N;s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:12;a:8:{s:5:\"Field\";s:2:\"w4\";s:4:\"Type\";s:8:\"datetime\";s:9:\"Collation\";N;s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}}s:7:\"INDEXES\";a:0:{}}', '# log 2024-03-14 02:21:14 root\nDROP TABLE IF EXISTS `bss`;\n# log 2024-03-14 02:21:14 root\n\nCREATE TABLE `bss` (\n  `id` int(255) NOT NULL,\n  `s1` double(15,2) NOT NULL,\n  `k1` double(15,2) DEFAULT NULL CHECK (`k1` >= 1),\n  `w1` datetime NOT NULL,\n  `s2` double(15,2) DEFAULT NULL CHECK (`s2` >= 1),\n  `k2` double(15,2) DEFAULT NULL CHECK (`k2` >= 1),\n  `w2` datetime NOT NULL,\n  `s3` double(15,2) DEFAULT NULL CHECK (`s3` >= 1),\n  `k3` double(15,2) DEFAULT NULL CHECK (`k3` >= 1),\n  `w3` datetime NOT NULL,\n  `s4` double(15,2) DEFAULT NULL CHECK (`s4` >= 1),\n  `k4` double(15,2) DEFAULT NULL CHECK (`k4` >= 1),\n  `w4` datetime NOT NULL\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n# log 2024-03-14 02:21:42 root\nDROP TABLE IF EXISTS `bss`;\n# log 2024-03-14 02:21:42 root\nCREATE TABLE `bss` (\r\n  `id` int(255) NOT NULL,\r\n  `s1` double(15,2) NOT NULL,\r\n  `k1` double(15,2) DEFAULT NULL ,\r\n  `w1` datetime NOT NULL,\r\n  `s2` double(15,2) DEFAULT NULL ,\r\n  `k2` double(15,2) DEFAULT NULL ,\r\n  `w2` datetime NOT NULL,\r\n  `s3` double(15,2) DEFAULT NULL ,\r\n  `k3` double(15,2) DEFAULT NULL ,\r\n  `w3` datetime NOT NULL,\r\n  `s4` double(15,2) DEFAULT NULL ,\r\n  `k4` double(15,2) DEFAULT NULL,\r\n  `w4` datetime NOT NULL\r\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;', '\n', 'UPDATE,INSERT,DELETE,TRUNCATE,CREATE TABLE,ALTER TABLE,RENAME TABLE,DROP TABLE,CREATE INDEX,DROP INDEX', 1),
('suhu', 'data', 1, '2024-03-14 01:58:14', '2024-03-14 01:58:14', 'a:2:{s:7:\"COLUMNS\";a:2:{i:0;a:8:{s:5:\"Field\";s:2:\"id\";s:4:\"Type\";s:7:\"int(11)\";s:9:\"Collation\";N;s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:3:\"PRI\";s:7:\"Default\";N;s:5:\"Extra\";s:14:\"auto_increment\";s:7:\"Comment\";s:0:\"\";}i:1;a:8:{s:5:\"Field\";s:5:\"value\";s:4:\"Type\";s:5:\"float\";s:9:\"Collation\";N;s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}}s:7:\"INDEXES\";a:1:{i:0;a:13:{s:5:\"Table\";s:4:\"data\";s:10:\"Non_unique\";s:1:\"0\";s:8:\"Key_name\";s:7:\"PRIMARY\";s:12:\"Seq_in_index\";s:1:\"1\";s:11:\"Column_name\";s:2:\"id\";s:9:\"Collation\";s:1:\"A\";s:11:\"Cardinality\";s:1:\"0\";s:8:\"Sub_part\";N;s:6:\"Packed\";N;s:4:\"Null\";s:0:\"\";s:10:\"Index_type\";s:5:\"BTREE\";s:7:\"Comment\";s:0:\"\";s:13:\"Index_comment\";s:0:\"\";}}}', '# log 2024-03-14 01:58:14 root\nDROP TABLE IF EXISTS `data`;\n# log 2024-03-14 01:58:14 root\n\nCREATE TABLE `data` (\n  `id` int(11) NOT NULL,\n  `value` float DEFAULT NULL CHECK (`value` >= 1)\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n', '\n', 'UPDATE,INSERT,DELETE,TRUNCATE,CREATE TABLE,ALTER TABLE,RENAME TABLE,DROP TABLE,CREATE INDEX,DROP INDEX', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-03-14 01:20:24', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `potensi`
--
CREATE DATABASE IF NOT EXISTS `potensi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `potensi`;

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
--
-- Database: `pue`
--
CREATE DATABASE IF NOT EXISTS `pue` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pue`;

-- --------------------------------------------------------

--
-- Table structure for table `malam`
--

CREATE TABLE `malam` (
  `id` int(255) NOT NULL,
  `tgl` date NOT NULL,
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
  `ups6` double(15,2) NOT NULL,
  `recti` double(15,2) NOT NULL,
  `ups` double(15,2) NOT NULL,
  `total` double(15,2) NOT NULL,
  `pue` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `malam`
--

INSERT INTO `malam` (`id`, `tgl`, `lvmdp`, `rect1`, `rect2`, `rect3`, `rect4`, `rect5`, `rect6`, `rect7`, `rect8`, `rect9`, `rect10`, `rect11`, `rect12`, `rect13`, `ups1`, `ups2`, `ups3`, `ups4`, `ups5`, `ups6`, `recti`, `ups`, `total`, `pue`) VALUES
(1, '2024-03-18', 603.00, 20.10, 21.70, 16.90, 18.10, 18.30, 21.70, 16.10, 16.40, 9.90, 14.80, 26.80, 25.60, 12.70, 20.80, 21.30, 13.20, 9.80, 20.00, 19.30, 239.10, 104.40, 343.50, 1.76),
(2, '2024-03-19', 621.00, 19.00, 20.80, 16.00, 17.60, 17.30, 20.30, 15.80, 15.10, 8.80, 14.10, 25.50, 24.60, 12.30, 20.10, 20.50, 13.50, 9.90, 20.10, 19.30, 227.20, 103.40, 330.60, 1.88),
(3, '2024-03-20', 649.00, 19.30, 20.60, 15.50, 17.40, 17.30, 20.90, 15.90, 15.00, 8.70, 14.20, 25.30, 24.20, 12.30, 21.00, 21.90, 13.20, 10.00, 20.00, 19.30, 226.60, 105.40, 332.00, 1.95),
(4, '2024-03-21', 619.00, 19.20, 20.60, 15.90, 17.40, 17.00, 21.20, 15.70, 15.30, 8.70, 14.20, 25.20, 24.30, 12.70, 22.00, 22.00, 13.20, 9.90, 20.00, 19.20, 227.40, 106.30, 333.70, 1.85),
(5, '2024-03-22', 639.00, 19.30, 20.60, 15.90, 17.40, 17.00, 21.00, 15.80, 15.30, 8.80, 14.20, 25.00, 24.60, 12.40, 20.10, 21.40, 13.00, 9.90, 20.00, 19.60, 227.30, 104.00, 331.30, 1.93),
(6, '2024-03-23', 610.00, 19.40, 20.50, 15.90, 17.50, 17.20, 20.80, 15.90, 15.40, 8.90, 14.20, 25.30, 24.50, 12.50, 21.00, 21.30, 13.00, 9.80, 20.10, 19.40, 228.00, 104.60, 332.60, 1.83),
(7, '2024-03-24', 615.00, 19.30, 20.50, 15.90, 17.40, 17.50, 21.00, 15.80, 15.00, 8.70, 14.00, 25.00, 24.50, 12.50, 20.60, 22.10, 13.20, 9.80, 20.10, 19.40, 227.10, 105.20, 332.30, 1.85),
(8, '2024-03-25', 615.00, 20.00, 21.60, 16.90, 17.80, 18.10, 22.80, 16.20, 16.30, 9.50, 14.90, 26.90, 25.60, 13.00, 20.90, 21.70, 13.20, 10.00, 20.00, 19.20, 239.60, 105.00, 344.60, 1.78),
(9, '2024-03-26', 601.00, 19.10, 20.70, 16.00, 16.90, 16.90, 21.30, 15.40, 15.40, 8.80, 14.10, 26.00, 24.60, 12.20, 21.00, 21.40, 13.30, 10.00, 20.00, 19.30, 227.40, 105.00, 332.40, 1.81),
(10, '2024-03-27', 626.00, 19.30, 20.80, 16.00, 16.90, 16.90, 21.40, 15.20, 15.20, 8.50, 14.10, 25.80, 24.40, 12.20, 21.50, 22.00, 13.10, 9.90, 20.10, 19.60, 226.70, 106.20, 332.90, 1.88),
(11, '2024-03-28', 605.00, 19.20, 20.80, 16.00, 16.90, 16.70, 21.20, 15.20, 15.40, 8.70, 14.40, 26.00, 24.60, 12.20, 20.10, 21.40, 13.10, 9.90, 20.40, 19.40, 227.30, 104.30, 331.60, 1.82),
(12, '2024-03-29', 564.00, 19.30, 20.70, 16.10, 17.00, 16.80, 21.10, 15.40, 15.70, 8.50, 14.40, 26.00, 24.60, 12.20, 20.40, 21.80, 13.10, 9.80, 19.90, 19.30, 227.80, 104.30, 332.10, 1.70),
(13, '2024-03-30', 623.00, 19.00, 20.80, 16.10, 17.00, 16.90, 21.50, 15.30, 15.70, 8.70, 14.00, 25.90, 24.60, 12.20, 20.10, 21.20, 13.00, 9.80, 20.00, 19.30, 227.70, 103.40, 331.10, 1.88),
(14, '2024-03-31', 613.00, 19.20, 20.80, 15.90, 17.00, 17.50, 21.50, 15.30, 15.40, 8.70, 14.20, 25.80, 24.30, 12.30, 19.80, 21.20, 13.10, 10.00, 19.80, 19.20, 227.90, 103.10, 331.00, 1.85),
(15, '2024-04-01', 635.00, 20.30, 21.60, 16.90, 17.70, 18.20, 22.80, 16.10, 16.50, 9.70, 15.10, 27.00, 25.50, 13.00, 20.60, 22.10, 13.00, 10.00, 20.00, 19.30, 240.40, 105.00, 345.40, 1.84),
(16, '2024-04-02', 587.00, 18.70, 20.70, 16.10, 16.40, 16.80, 21.70, 15.90, 15.20, 8.80, 14.20, 26.20, 24.40, 12.50, 21.00, 20.60, 13.10, 9.90, 20.00, 19.30, 227.60, 103.90, 331.50, 1.77),
(17, '2024-04-03', 631.00, 18.50, 20.80, 16.10, 16.60, 16.90, 21.70, 15.70, 14.90, 8.60, 14.10, 26.20, 24.50, 12.40, 20.70, 21.40, 13.20, 10.00, 19.80, 19.40, 227.00, 104.50, 331.50, 1.90),
(18, '2024-04-04', 633.00, 18.50, 20.70, 16.10, 16.50, 16.80, 21.60, 15.80, 15.10, 9.10, 14.40, 26.40, 24.30, 12.50, 20.10, 21.80, 13.20, 10.00, 20.00, 19.30, 227.80, 104.40, 332.20, 1.91),
(19, '2024-04-05', 629.00, 18.70, 20.70, 16.10, 16.40, 16.80, 21.50, 15.60, 15.70, 8.80, 14.20, 26.40, 24.40, 12.50, 20.70, 21.50, 13.00, 9.70, 20.00, 19.30, 227.80, 104.20, 332.00, 1.89),
(20, '2024-04-06', 601.00, 18.70, 20.60, 16.10, 16.50, 16.90, 21.80, 15.70, 15.70, 8.80, 14.40, 26.30, 24.40, 12.30, 21.50, 21.90, 13.10, 9.90, 19.90, 19.30, 228.20, 105.60, 333.80, 1.80),
(21, '2024-04-07', 620.00, 18.80, 20.60, 16.00, 16.40, 17.20, 21.90, 15.60, 15.30, 8.70, 14.20, 26.40, 24.00, 12.40, 22.10, 21.50, 13.30, 9.90, 20.00, 19.60, 227.50, 106.40, 333.90, 1.86),
(22, '2024-04-08', 634.00, 19.50, 21.60, 16.90, 17.30, 18.10, 23.00, 16.40, 16.40, 9.50, 15.00, 27.40, 25.20, 13.00, 20.60, 21.70, 13.10, 9.80, 19.90, 19.30, 239.30, 104.40, 343.70, 1.84),
(23, '2024-04-09', 624.00, 18.50, 20.80, 16.20, 16.50, 16.90, 21.60, 15.70, 15.60, 8.90, 14.30, 26.20, 24.20, 12.30, 20.40, 21.60, 13.10, 10.00, 20.00, 19.30, 227.70, 104.40, 332.10, 1.88),
(24, '2024-04-10', 618.00, 18.90, 20.70, 16.10, 16.60, 16.80, 21.80, 15.70, 15.20, 8.60, 14.00, 26.00, 24.20, 12.20, 21.00, 21.40, 13.30, 10.10, 20.10, 19.60, 226.80, 105.50, 332.30, 1.86),
(25, '2024-04-11', 632.00, 18.90, 20.80, 16.10, 16.70, 16.70, 21.70, 15.70, 15.40, 8.90, 14.20, 16.40, 24.60, 12.20, 20.40, 21.20, 13.40, 10.20, 19.90, 19.30, 218.30, 104.40, 322.70, 1.96),
(26, '2024-04-12', 601.00, 19.00, 20.70, 16.10, 16.70, 17.30, 21.90, 15.70, 15.20, 8.70, 14.20, 26.70, 24.20, 12.30, 21.70, 22.00, 13.20, 10.00, 20.00, 19.30, 228.70, 106.20, 334.90, 1.79),
(27, '2024-04-13', 612.00, 18.90, 20.70, 16.00, 16.60, 16.90, 22.20, 15.70, 15.70, 8.70, 14.40, 26.00, 24.60, 12.20, 20.30, 21.10, 13.30, 10.10, 20.10, 19.30, 228.60, 104.20, 332.80, 1.84),
(28, '2024-04-14', 613.00, 19.00, 20.70, 16.00, 16.50, 17.30, 22.00, 15.70, 15.30, 8.70, 14.30, 26.20, 24.20, 12.30, 21.90, 22.40, 13.30, 10.10, 20.00, 19.30, 228.20, 107.00, 335.20, 1.83),
(29, '2024-04-15', 644.00, 19.90, 21.60, 16.80, 17.50, 18.10, 22.80, 16.40, 16.20, 9.70, 14.90, 27.30, 25.60, 13.00, 21.60, 21.90, 13.30, 10.10, 20.40, 19.30, 239.80, 106.60, 346.40, 1.86),
(30, '2024-04-16', 605.00, 18.90, 20.60, 16.10, 16.20, 17.10, 21.90, 15.70, 15.30, 8.90, 14.20, 26.20, 24.60, 12.20, 21.00, 22.00, 13.40, 10.00, 20.10, 19.30, 227.90, 105.80, 333.70, 1.81),
(31, '2024-04-17', 630.00, 18.90, 20.60, 16.30, 16.50, 17.10, 22.00, 15.90, 15.00, 8.70, 14.20, 26.40, 24.70, 12.10, 21.40, 21.90, 13.40, 10.20, 20.10, 19.30, 228.40, 106.30, 334.70, 1.88),
(32, '2024-04-18', 629.00, 19.00, 20.50, 16.10, 16.50, 17.10, 21.60, 15.90, 15.30, 8.90, 14.40, 26.10, 25.10, 12.10, 20.70, 22.00, 13.30, 10.10, 20.00, 19.30, 228.60, 105.40, 334.00, 1.88),
(33, '2024-04-19', 615.00, 18.90, 20.50, 16.10, 16.40, 17.30, 21.80, 15.80, 15.30, 8.80, 14.30, 26.50, 25.00, 12.10, 20.80, 22.00, 13.30, 10.00, 20.00, 19.30, 228.80, 105.40, 334.20, 1.84),
(34, '2024-04-20', 611.00, 18.90, 20.60, 16.10, 16.40, 17.10, 22.60, 15.70, 15.40, 8.90, 14.40, 27.40, 24.70, 12.20, 20.10, 21.30, 13.30, 10.10, 20.10, 19.30, 230.40, 104.20, 334.60, 1.83),
(35, '2024-04-21', 607.00, 19.90, 21.50, 16.90, 17.20, 18.30, 23.10, 16.60, 16.10, 9.60, 15.10, 27.30, 25.90, 12.90, 20.80, 22.90, 13.30, 10.10, 20.00, 19.30, 240.40, 106.40, 346.80, 1.75),
(36, '2024-04-22', 640.00, 20.30, 21.60, 17.00, 18.20, 18.30, 22.60, 16.80, 16.20, 9.50, 14.90, 26.50, 24.90, 14.10, 19.80, 21.50, 13.30, 9.90, 20.10, 19.30, 240.90, 103.90, 344.80, 1.86),
(37, '2024-04-23', 627.00, 19.10, 20.70, 16.00, 17.50, 17.10, 21.10, 15.90, 15.40, 8.80, 14.10, 25.60, 24.20, 12.70, 20.70, 21.50, 13.20, 9.90, 19.90, 19.30, 228.20, 104.50, 332.70, 1.88),
(38, '2024-04-24', 607.00, 18.80, 20.70, 17.50, 17.40, 17.20, 21.40, 15.90, 15.20, 8.70, 14.30, 24.90, 23.90, 12.70, 21.50, 22.00, 13.30, 10.10, 20.30, 19.30, 228.60, 106.50, 335.10, 1.81),
(39, '2024-04-25', 629.00, 19.10, 20.60, 16.00, 17.60, 17.20, 21.30, 15.90, 15.60, 8.90, 14.30, 25.70, 24.10, 12.80, 19.80, 21.60, 13.10, 9.90, 20.00, 19.60, 229.10, 104.00, 333.10, 1.89),
(40, '2024-04-26', 638.00, 19.20, 20.70, 16.10, 17.50, 17.20, 20.70, 15.90, 15.40, 9.00, 14.20, 25.70, 24.10, 12.70, 20.20, 21.90, 13.20, 10.00, 20.20, 19.50, 228.40, 105.00, 333.40, 1.91),
(41, '2024-04-27', 625.00, 19.30, 20.70, 16.00, 17.50, 17.70, 21.80, 15.80, 15.10, 8.80, 14.30, 25.50, 23.90, 12.80, 19.80, 21.80, 13.30, 10.10, 20.60, 19.40, 229.20, 105.00, 334.20, 1.87),
(42, '2024-04-28', 581.00, 20.30, 21.70, 16.90, 18.30, 18.60, 22.70, 16.70, 16.40, 9.60, 15.30, 26.20, 25.10, 13.50, 20.90, 22.50, 13.20, 10.10, 20.00, 19.30, 241.30, 106.00, 347.30, 1.67),
(43, '2024-04-29', 619.00, 20.10, 21.50, 16.70, 18.30, 18.30, 22.00, 16.80, 16.40, 9.60, 15.10, 26.50, 25.20, 13.50, 21.20, 22.00, 13.20, 10.00, 20.00, 19.30, 240.00, 105.70, 345.70, 1.79),
(44, '2024-04-30', 622.00, 18.80, 20.70, 15.40, 17.10, 17.10, 25.60, 15.80, 15.60, 8.90, 14.20, 21.20, 24.30, 12.70, 20.50, 21.60, 13.30, 10.10, 20.20, 19.30, 227.40, 105.00, 332.40, 1.87),
(45, '2024-05-01', 625.00, 19.20, 20.60, 16.00, 17.10, 17.10, 21.30, 16.00, 15.20, 8.70, 14.10, 25.70, 23.90, 12.70, 21.00, 21.60, 13.30, 10.10, 20.00, 19.30, 227.60, 105.30, 332.90, 1.88);

-- --------------------------------------------------------

--
-- Table structure for table `pagi`
--

CREATE TABLE `pagi` (
  `id` int(255) NOT NULL,
  `tgl` date NOT NULL,
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
  `ups6` double(15,2) NOT NULL,
  `recti` double(15,2) NOT NULL,
  `ups` double(15,2) NOT NULL,
  `total` double(15,2) NOT NULL,
  `pue` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pagi`
--

INSERT INTO `pagi` (`id`, `tgl`, `lvmdp`, `rect1`, `rect2`, `rect3`, `rect4`, `rect5`, `rect6`, `rect7`, `rect8`, `rect9`, `rect10`, `rect11`, `rect12`, `rect13`, `ups1`, `ups2`, `ups3`, `ups4`, `ups5`, `ups6`, `recti`, `ups`, `total`, `pue`) VALUES
(1, '2024-03-18', 584.00, 19.10, 20.00, 15.70, 16.60, 16.80, 21.20, 15.00, 15.50, 8.80, 13.50, 25.30, 24.50, 11.90, 20.20, 21.30, 12.10, 9.00, 20.40, 20.00, 223.90, 103.00, 326.90, 1.79),
(2, '2024-03-19', 619.00, 18.80, 20.50, 15.80, 17.00, 16.50, 21.60, 15.40, 15.10, 8.40, 13.30, 26.60, 24.40, 12.40, 20.20, 20.30, 12.10, 8.80, 20.40, 19.70, 225.80, 101.50, 327.30, 1.89),
(3, '2024-03-20', 619.00, 19.80, 21.40, 16.60, 17.70, 18.00, 21.60, 16.20, 15.90, 9.10, 14.30, 25.90, 25.20, 13.10, 20.60, 21.00, 12.20, 9.00, 20.20, 19.70, 234.80, 102.70, 337.50, 1.83),
(4, '2024-03-21', 579.00, 18.90, 20.50, 15.90, 17.10, 16.80, 20.70, 15.60, 15.00, 8.40, 13.70, 25.00, 24.50, 12.40, 20.10, 21.20, 12.10, 9.00, 20.10, 19.30, 224.50, 101.80, 326.30, 1.77),
(5, '2024-03-22', 615.00, 18.90, 20.40, 15.80, 17.10, 16.80, 20.80, 15.60, 15.30, 8.70, 13.60, 25.00, 24.50, 12.30, 19.00, 19.30, 12.30, 9.10, 19.80, 19.30, 224.80, 98.80, 323.60, 1.90),
(6, '2024-03-23', 629.00, 18.90, 20.40, 15.80, 17.00, 16.70, 20.70, 15.70, 14.90, 8.40, 13.40, 24.50, 23.90, 12.50, 19.70, 20.40, 12.20, 9.10, 19.90, 19.20, 222.80, 100.50, 323.30, 1.95),
(7, '2024-03-24', 561.00, 18.70, 20.50, 15.90, 17.10, 16.50, 20.50, 15.50, 15.10, 18.60, 13.40, 24.60, 24.50, 12.30, 19.00, 19.60, 12.10, 9.00, 20.00, 19.40, 233.20, 99.10, 332.30, 1.69),
(8, '2024-03-25', 599.00, 18.60, 20.30, 15.80, 17.00, 16.80, 20.20, 15.40, 15.10, 8.50, 13.40, 24.90, 24.50, 12.40, 20.70, 20.50, 12.10, 9.10, 19.90, 19.20, 222.90, 101.50, 324.40, 1.85),
(9, '2024-03-26', 558.00, 19.00, 20.50, 15.90, 16.20, 16.70, 22.50, 14.80, 15.30, 8.50, 13.40, 26.20, 24.50, 12.10, 21.40, 21.80, 12.30, 9.00, 20.20, 19.20, 225.60, 103.90, 329.50, 1.69),
(10, '2024-03-27', 602.00, 19.90, 21.40, 16.70, 17.30, 17.90, 22.30, 15.70, 16.10, 9.20, 14.30, 26.50, 25.40, 12.90, 20.80, 21.60, 12.30, 9.10, 19.80, 19.40, 235.60, 103.00, 338.60, 1.78),
(11, '2024-03-28', 613.00, 19.00, 20.50, 15.90, 16.50, 16.70, 20.90, 15.10, 15.40, 8.40, 13.80, 25.40, 24.50, 12.20, 20.20, 21.10, 12.20, 9.10, 20.00, 19.30, 224.30, 101.90, 326.20, 1.88),
(12, '2024-03-29', 573.00, 18.90, 20.40, 14.50, 16.20, 16.70, 18.10, 14.80, 15.30, 8.40, 13.80, 25.70, 24.40, 12.20, 19.70, 19.40, 12.10, 9.00, 20.00, 19.20, 219.40, 99.40, 318.80, 1.80),
(13, '2024-03-30', 597.00, 18.90, 20.50, 15.90, 16.40, 16.60, 21.00, 15.00, 15.00, 8.50, 13.60, 25.80, 24.20, 12.10, 19.70, 20.30, 12.20, 9.00, 19.80, 19.30, 223.50, 100.30, 323.80, 1.84),
(14, '2024-03-31', 580.00, 19.00, 20.50, 15.90, 16.10, 16.70, 21.10, 15.00, 15.30, 8.50, 13.50, 25.30, 24.40, 12.20, 19.80, 20.30, 12.20, 9.10, 19.90, 19.30, 223.50, 100.60, 324.10, 1.79),
(15, '2024-04-02', 589.00, 19.00, 20.40, 15.80, 16.30, 16.90, 20.60, 14.90, 15.20, 8.70, 13.50, 25.20, 24.40, 12.20, 20.30, 20.90, 12.10, 9.00, 20.00, 19.20, 223.10, 101.50, 324.60, 1.81),
(16, '2024-04-01', 565.00, 19.00, 20.30, 15.80, 16.30, 16.80, 20.90, 14.90, 15.20, 8.50, 13.40, 24.60, 24.20, 12.10, 19.30, 20.10, 12.10, 9.00, 19.90, 19.30, 222.00, 99.70, 321.70, 1.76),
(17, '2024-04-03', 598.00, 18.60, 20.30, 15.90, 15.70, 17.10, 21.50, 15.40, 15.00, 8.30, 13.40, 25.90, 23.70, 12.30, 20.10, 19.80, 12.20, 9.00, 19.90, 19.30, 223.10, 100.30, 323.40, 1.85),
(18, '2024-04-04', 562.00, 19.50, 21.20, 16.60, 16.50, 17.90, 22.60, 16.20, 16.20, 9.20, 14.30, 26.80, 25.10, 13.00, 19.40, 20.10, 12.20, 9.00, 20.10, 19.50, 235.10, 100.30, 335.40, 1.68),
(19, '2024-04-05', 613.00, 18.50, 20.30, 15.90, 15.70, 16.80, 21.80, 15.20, 14.80, 8.40, 13.60, 25.90, 23.90, 12.40, 20.40, 20.70, 12.30, 9.10, 19.80, 19.40, 223.20, 101.70, 324.90, 1.89),
(20, '2024-04-06', 602.00, 18.50, 20.40, 15.90, 15.80, 16.80, 21.90, 15.60, 14.70, 8.40, 13.70, 25.50, 23.90, 12.40, 21.00, 21.50, 12.10, 9.00, 19.80, 19.20, 223.50, 102.60, 326.10, 1.85),
(21, '2024-04-07', 623.00, 18.20, 20.40, 16.00, 15.80, 16.80, 20.90, 15.30, 15.30, 8.60, 13.50, 25.30, 24.20, 12.40, 19.70, 20.20, 12.10, 9.00, 19.90, 19.20, 222.70, 100.10, 322.80, 1.93),
(22, '2024-04-08', 617.00, 18.10, 20.20, 15.90, 15.80, 16.70, 21.60, 15.30, 15.30, 8.70, 13.60, 25.80, 24.20, 12.30, 20.20, 20.60, 12.30, 9.10, 19.80, 19.20, 223.50, 101.20, 324.70, 1.90),
(23, '2024-04-09', 619.00, 18.40, 20.40, 15.90, 15.90, 17.10, 21.30, 15.20, 15.10, 8.50, 13.60, 25.70, 23.90, 12.40, 20.10, 20.60, 12.30, 9.10, 19.90, 19.20, 223.40, 101.20, 324.60, 1.91),
(24, '2024-04-10', 599.00, 18.60, 20.20, 15.70, 15.80, 17.30, 21.50, 15.10, 14.90, 8.40, 13.40, 25.50, 24.00, 12.30, 19.80, 20.20, 12.20, 9.10, 20.10, 19.10, 222.70, 100.50, 323.20, 1.85),
(25, '2024-04-11', 597.00, 18.60, 20.40, 15.90, 16.10, 16.80, 21.00, 15.30, 15.10, 8.70, 13.50, 25.90, 24.30, 12.10, 20.60, 20.70, 12.30, 9.10, 19.80, 19.20, 223.70, 101.70, 325.40, 1.83),
(26, '2024-04-12', 615.00, 18.60, 20.40, 15.90, 16.10, 16.80, 21.00, 15.30, 15.10, 8.70, 13.50, 25.90, 24.30, 12.10, 20.60, 20.70, 12.30, 9.10, 19.30, 20.00, 223.70, 102.00, 325.70, 1.89),
(27, '2024-04-13', 613.00, 18.30, 20.40, 15.80, 16.00, 16.70, 21.20, 15.20, 14.90, 8.30, 13.40, 25.50, 23.90, 12.20, 19.00, 19.60, 12.20, 9.00, 20.30, 19.30, 221.80, 99.40, 321.20, 1.91),
(28, '2024-04-14', 598.00, 19.50, 21.20, 16.60, 16.60, 17.90, 22.30, 15.90, 16.00, 9.20, 14.20, 26.50, 25.40, 12.90, 19.80, 20.70, 12.00, 8.90, 20.20, 19.20, 234.20, 100.80, 335.00, 1.79),
(29, '2024-04-15', 585.00, 18.60, 20.30, 15.80, 16.00, 16.70, 21.40, 15.30, 15.10, 8.50, 13.50, 25.20, 24.20, 12.20, 22.90, 20.70, 12.10, 9.00, 20.00, 19.60, 222.80, 104.30, 327.10, 1.79),
(30, '2024-04-16', 595.00, 18.10, 20.40, 15.20, 16.80, 16.80, 21.60, 14.50, 14.90, 8.40, 13.60, 25.30, 23.80, 13.40, 19.60, 20.10, 12.10, 9.10, 20.30, 19.10, 222.80, 100.30, 323.10, 1.84),
(31, '2024-04-17', 600.00, 19.30, 21.10, 16.60, 16.50, 18.00, 22.80, 16.00, 15.90, 9.30, 14.40, 26.80, 25.30, 12.90, 19.60, 20.40, 12.10, 9.10, 20.00, 19.30, 234.90, 100.50, 335.40, 1.79),
(32, '2024-04-18', 616.00, 19.20, 21.40, 16.70, 16.80, 17.80, 22.20, 16.10, 15.90, 9.20, 14.40, 27.00, 25.80, 12.70, 19.60, 20.50, 12.20, 9.10, 19.80, 19.30, 235.20, 100.50, 335.70, 1.83),
(33, '2024-04-19', 575.00, 18.60, 20.40, 15.90, 15.80, 16.80, 21.60, 15.40, 15.10, 8.60, 13.70, 16.00, 24.80, 12.00, 19.30, 21.00, 12.20, 9.10, 9.80, 19.50, 214.70, 90.90, 305.60, 1.88),
(34, '2024-04-20', 628.00, 18.40, 20.30, 15.90, 15.80, 16.70, 21.80, 15.50, 14.70, 8.40, 13.40, 25.50, 24.50, 12.00, 19.00, 19.70, 12.10, 9.00, 19.90, 19.40, 222.90, 99.10, 322.00, 1.95),
(35, '2024-04-21', 619.00, 18.40, 20.30, 15.90, 15.80, 16.70, 21.80, 15.50, 14.70, 8.40, 13.40, 25.50, 24.50, 12.00, 19.00, 19.70, 12.10, 9.00, 19.90, 19.40, 222.90, 99.10, 322.00, 1.92),
(36, '2024-04-22', 587.00, 18.40, 20.20, 15.80, 15.80, 16.70, 21.10, 15.40, 15.10, 8.60, 13.60, 26.30, 24.70, 12.00, 19.30, 20.30, 12.10, 9.00, 20.20, 19.10, 223.70, 100.00, 323.70, 1.81),
(37, '2024-04-23', 606.00, 18.60, 20.20, 15.90, 16.70, 16.90, 20.80, 15.50, 15.20, 8.50, 13.50, 24.50, 23.90, 12.60, 19.80, 20.00, 12.00, 9.00, 20.20, 19.50, 222.80, 100.50, 323.30, 1.87),
(38, '2024-04-24', 597.00, 19.70, 21.30, 16.70, 17.70, 18.00, 21.30, 16.20, 16.10, 9.30, 14.20, 26.20, 25.00, 13.40, 18.90, 19.60, 12.10, 8.90, 20.30, 19.30, 235.10, 99.10, 334.20, 1.79),
(39, '2024-04-25', 572.00, 19.40, 21.40, 16.70, 17.80, 18.00, 21.30, 16.20, 16.10, 9.30, 14.20, 26.20, 24.80, 13.40, 19.80, 20.60, 12.10, 9.00, 20.00, 19.10, 234.80, 100.60, 335.40, 1.71),
(40, '2024-04-26', 571.00, 18.70, 20.30, 15.90, 16.80, 16.70, 21.10, 15.40, 14.80, 8.40, 13.40, 24.60, 23.90, 12.40, 19.00, 19.60, 12.00, 9.00, 19.70, 19.20, 222.40, 98.50, 320.90, 1.78),
(41, '2024-04-27', 618.00, 18.70, 20.40, 16.00, 16.80, 16.80, 21.00, 15.50, 15.00, 8.40, 13.50, 24.80, 23.60, 12.60, 19.40, 20.10, 12.30, 9.10, 19.90, 19.20, 223.10, 100.00, 323.10, 1.91),
(42, '2024-04-28', 615.00, 18.50, 20.50, 16.00, 17.00, 16.80, 20.50, 15.60, 15.40, 8.60, 13.50, 24.80, 23.90, 12.60, 19.40, 20.50, 12.10, 9.10, 19.90, 19.20, 223.70, 100.20, 323.90, 1.90),
(43, '2024-04-29', 625.00, 18.50, 20.50, 16.00, 16.80, 16.70, 20.10, 15.50, 15.20, 8.70, 13.70, 24.50, 23.90, 12.60, 22.10, 21.10, 12.10, 8.90, 20.20, 19.20, 222.70, 103.60, 326.30, 1.92),
(44, '2024-04-30', 595.00, 19.40, 21.40, 16.70, 17.80, 18.00, 21.30, 16.30, 16.00, 9.30, 14.10, 25.90, 25.00, 13.30, 19.00, 19.90, 12.00, 9.00, 20.00, 19.50, 234.50, 99.40, 333.90, 1.78),
(46, '2024-05-01', 574.00, 18.60, 20.20, 15.80, 16.40, 17.10, 21.20, 15.40, 14.80, 8.50, 13.20, 25.30, 23.60, 12.70, 19.90, 20.00, 12.10, 9.00, 19.70, 19.40, 222.80, 100.10, 322.90, 1.78);

-- --------------------------------------------------------

--
-- Table structure for table `pue`
--

CREATE TABLE `pue` (
  `id` int(255) NOT NULL,
  `tgl` date NOT NULL,
  `lvmdp` double(15,2) DEFAULT NULL,
  `recti` double(15,2) DEFAULT NULL,
  `ups` double(15,2) DEFAULT NULL,
  `pagi` double(15,2) DEFAULT NULL,
  `siang` double(15,2) DEFAULT NULL,
  `malam` double(15,2) DEFAULT NULL,
  `average` double(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pue`
--

INSERT INTO `pue` (`id`, `tgl`, `lvmdp`, `recti`, `ups`, `pagi`, `siang`, `malam`, `average`) VALUES
(1, '2024-03-18', 605.00, 229.97, 103.43, 1.79, 1.90, 1.76, 1.82),
(2, '2024-03-19', 626.00, 226.90, 102.50, 1.89, 1.93, 1.88, 1.90),
(3, '2024-03-20', 626.33, 229.70, 103.80, 1.83, 1.85, 1.95, 1.88),
(4, '2024-03-21', 594.00, 226.30, 104.00, 1.77, 1.76, 1.85, 1.79),
(5, '2024-03-22', 622.00, 226.33, 102.63, 1.90, 1.84, 1.93, 1.89),
(6, '2024-03-23', 621.33, 225.83, 103.67, 1.95, 1.88, 1.83, 1.89),
(7, '2024-03-24', 598.00, 232.70, 102.60, 1.69, 1.81, 1.85, 1.78),
(8, '2024-03-25', 616.00, 229.80, 103.30, 1.85, 1.92, 1.78, 1.85),
(9, '2024-03-26', 598.00, 226.50, 104.50, 1.69, 1.92, 1.81, 1.81),
(10, '2024-03-27', 611.33, 229.80, 104.53, 1.78, 1.83, 1.88, 1.83),
(11, '2024-03-28', 612.00, 226.37, 103.50, 1.88, 1.86, 1.82, 1.85),
(12, '2024-03-29', 586.00, 222.57, 102.03, 1.80, 1.92, 1.70, 1.81),
(13, '2024-03-30', 615.33, 226.40, 101.93, 1.84, 1.90, 1.88, 1.87),
(14, '2024-03-31', 598.00, 226.00, 102.27, 1.79, 1.82, 1.85, 1.82),
(15, '2024-04-02', 607.00, 225.80, 103.30, 1.81, 1.95, 1.77, 1.84),
(16, '2024-04-01', 614.33, 229.77, 102.33, 1.76, 1.95, 1.84, 1.85),
(17, '2024-04-03', 620.67, 225.40, 103.07, 1.85, 1.92, 1.90, 1.89),
(18, '2024-04-04', 610.33, 230.10, 102.40, 1.68, 1.93, 1.91, 1.84),
(19, '2024-04-05', 621.33, 225.73, 103.10, 1.89, 1.89, 1.89, 1.89),
(20, '2024-04-06', 604.33, 226.20, 104.40, 1.85, 1.84, 1.80, 1.83),
(21, '2024-04-07', 629.00, 229.50, 103.90, 1.93, 1.87, 1.86, 1.89),
(22, '2024-04-08', 619.33, 229.97, 102.97, 1.90, 1.84, 1.84, 1.86),
(23, '2024-04-09', 619.67, 225.80, 102.87, 1.91, 1.87, 1.88, 1.89),
(24, '2024-04-10', 611.33, 225.40, 103.50, 1.85, 1.86, 1.86, 1.86),
(25, '2024-04-11', 618.67, 223.10, 103.23, 1.83, 1.89, 1.96, 1.89),
(26, '2024-04-12', 620.00, 226.57, 104.37, 1.89, 1.94, 1.79, 1.87),
(27, '2024-04-13', 624.67, 225.87, 102.10, 1.91, 1.97, 1.84, 1.91),
(28, '2024-04-14', 624.33, 233.67, 104.07, 1.79, 1.93, 1.83, 1.85),
(29, '2024-04-15', 615.67, 230.03, 105.73, 1.79, 1.85, 1.86, 1.83),
(30, '2024-04-16', 615.67, 225.90, 103.90, 1.84, 1.95, 1.81, 1.87),
(31, '2024-04-17', 620.33, 230.43, 103.10, 1.79, 1.91, 1.88, 1.86),
(32, '2024-04-18', 627.00, 230.37, 102.77, 1.83, 1.93, 1.88, 1.88),
(33, '2024-04-19', 601.00, 223.67, 99.83, 1.88, 1.85, 1.84, 1.86),
(34, '2024-04-20', 637.67, 230.90, 102.07, 1.95, 1.97, 1.83, 1.92),
(35, '2024-04-21', 621.00, 230.30, 102.63, 1.92, 1.93, 1.75, 1.87),
(36, '2024-04-22', 618.67, 230.87, 102.37, 1.81, 1.90, 1.86, 1.86),
(37, '2024-04-23', 627.33, 225.77, 102.90, 1.87, 1.97, 1.88, 1.91),
(38, '2024-04-24', 606.33, 230.43, 102.53, 1.79, 1.87, 1.81, 1.82),
(39, '2024-04-25', 601.00, 230.53, 102.50, 1.71, 1.82, 1.89, 1.81),
(40, '2024-04-26', 607.00, 226.17, 102.30, 1.78, 1.85, 1.91, 1.85),
(41, '2024-04-27', 621.67, 230.47, 102.80, 1.91, 1.82, 1.87, 1.87),
(42, '2024-04-28', 606.67, 229.43, 103.10, 1.90, 1.91, 1.67, 1.83),
(43, '2024-04-29', 617.67, 229.83, 104.33, 1.92, 1.84, 1.79, 1.85),
(44, '2024-04-30', 625.33, 229.40, 102.77, 1.78, 2.00, 1.87, 1.88),
(45, '2024-05-01', 612.00, 226.37, 102.97, 1.78, 1.92, 1.88, 1.86);

-- --------------------------------------------------------

--
-- Table structure for table `siang`
--

CREATE TABLE `siang` (
  `id` int(255) NOT NULL,
  `tgl` date NOT NULL,
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
  `ups6` double(15,2) NOT NULL,
  `recti` double(15,2) NOT NULL,
  `ups` double(15,2) NOT NULL,
  `total` double(15,2) NOT NULL,
  `pue` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siang`
--

INSERT INTO `siang` (`id`, `tgl`, `lvmdp`, `rect1`, `rect2`, `rect3`, `rect4`, `rect5`, `rect6`, `rect7`, `rect8`, `rect9`, `rect10`, `rect11`, `rect12`, `rect13`, `ups1`, `ups2`, `ups3`, `ups4`, `ups5`, `ups6`, `recti`, `ups`, `total`, `pue`) VALUES
(1, '2024-03-18', 628.00, 19.30, 20.90, 16.00, 17.20, 17.00, 20.60, 15.20, 15.20, 9.00, 14.20, 25.30, 24.80, 12.20, 20.50, 20.40, 12.90, 9.70, 20.10, 19.30, 226.90, 102.90, 329.80, 1.90),
(2, '2024-03-19', 638.00, 19.00, 20.70, 15.80, 17.50, 16.90, 21.10, 15.80, 15.40, 8.70, 14.30, 25.50, 24.70, 12.30, 20.10, 20.50, 13.00, 9.80, 19.90, 19.30, 227.70, 102.60, 330.30, 1.93),
(3, '2024-03-20', 611.00, 18.90, 20.80, 16.00, 17.60, 16.90, 20.80, 15.80, 15.50, 8.80, 14.30, 25.30, 24.70, 12.30, 20.60, 20.50, 13.00, 9.80, 20.10, 19.30, 227.70, 103.30, 331.00, 1.85),
(4, '2024-03-21', 584.00, 19.00, 20.60, 15.90, 17.50, 17.00, 20.70, 15.80, 15.30, 8.70, 14.20, 25.20, 24.70, 12.40, 20.10, 21.30, 13.00, 9.80, 20.30, 19.40, 227.00, 103.90, 330.90, 1.76),
(5, '2024-03-22', 612.00, 18.90, 20.70, 15.90, 17.40, 17.30, 21.00, 15.70, 15.10, 8.50, 14.10, 25.60, 24.10, 12.60, 21.40, 22.00, 12.80, 9.60, 19.90, 19.40, 226.90, 105.10, 332.00, 1.84),
(6, '2024-03-23', 625.00, 19.00, 20.50, 15.90, 17.60, 17.40, 20.80, 15.80, 15.00, 8.60, 13.90, 25.30, 24.50, 12.40, 21.30, 22.40, 13.00, 9.70, 20.30, 19.20, 226.70, 105.90, 332.60, 1.88),
(7, '2024-03-24', 618.00, 19.70, 21.60, 16.80, 18.40, 18.00, 21.60, 16.50, 16.10, 9.30, 14.70, 26.30, 25.70, 13.10, 20.60, 21.20, 12.90, 9.70, 19.90, 19.20, 237.80, 103.50, 341.30, 1.81),
(8, '2024-03-25', 634.00, 19.10, 20.50, 16.00, 16.90, 17.10, 21.20, 15.10, 15.50, 8.70, 14.00, 26.10, 24.50, 12.20, 20.70, 20.70, 12.90, 9.80, 20.00, 19.30, 226.90, 103.40, 330.30, 1.92),
(9, '2024-03-26', 635.00, 19.20, 20.60, 15.90, 16.70, 17.10, 21.60, 15.10, 15.20, 8.70, 14.10, 25.60, 24.50, 12.20, 21.00, 21.60, 12.90, 9.80, 20.00, 19.30, 226.50, 104.60, 331.10, 1.92),
(10, '2024-03-27', 606.00, 19.20, 20.60, 15.90, 16.70, 17.00, 21.60, 15.30, 15.40, 8.60, 14.20, 25.80, 24.60, 12.20, 21.00, 21.60, 12.80, 9.70, 20.00, 19.30, 227.10, 104.40, 331.50, 1.83),
(11, '2024-03-28', 618.00, 19.30, 20.40, 15.90, 16.60, 17.20, 21.90, 15.10, 15.50, 8.60, 14.10, 25.80, 24.80, 12.30, 20.20, 21.20, 12.90, 9.70, 21.00, 19.30, 227.50, 104.30, 331.80, 1.86),
(12, '2024-03-29', 621.00, 19.00, 20.70, 15.90, 16.70, 14.20, 18.20, 15.10, 15.40, 8.60, 14.20, 25.70, 24.60, 12.20, 19.70, 20.80, 12.90, 9.60, 20.10, 19.30, 220.50, 102.40, 322.90, 1.92),
(13, '2024-03-30', 626.00, 19.50, 20.60, 15.90, 16.60, 17.50, 21.10, 15.20, 15.30, 9.60, 14.10, 25.90, 24.40, 12.30, 19.70, 20.40, 12.90, 9.60, 20.20, 19.30, 228.00, 102.10, 330.10, 1.90),
(14, '2024-03-31', 601.00, 18.90, 20.70, 15.50, 16.60, 17.00, 25.80, 15.30, 15.50, 8.80, 14.00, 21.70, 24.60, 12.20, 19.80, 21.20, 12.90, 9.70, 20.10, 19.40, 226.60, 103.10, 329.70, 1.82),
(15, '2024-04-01', 643.00, 19.30, 20.60, 15.90, 16.70, 17.10, 21.20, 15.30, 15.40, 8.80, 14.20, 25.70, 24.50, 12.20, 19.30, 21.10, 12.70, 9.70, 20.00, 19.50, 226.90, 102.30, 329.20, 1.95),
(16, '2024-04-02', 645.00, 19.00, 20.70, 15.90, 16.80, 17.20, 21.40, 15.20, 15.10, 8.60, 14.00, 25.80, 24.90, 12.10, 21.00, 21.70, 12.90, 9.60, 19.90, 19.40, 226.70, 104.50, 331.20, 1.95),
(17, '2024-04-03', 633.00, 18.70, 20.40, 15.90, 16.30, 17.00, 21.30, 15.60, 15.10, 8.70, 14.30, 25.80, 24.50, 12.50, 21.00, 21.70, 12.90, 9.60, 19.90, 19.30, 226.10, 104.40, 330.50, 1.92),
(18, '2024-04-04', 636.00, 18.80, 20.50, 16.00, 16.20, 17.00, 21.60, 15.60, 15.30, 8.80, 14.30, 26.20, 24.60, 12.50, 19.40, 21.40, 13.00, 9.80, 19.80, 19.10, 227.40, 102.50, 329.90, 1.93),
(19, '2024-04-05', 622.00, 18.60, 20.50, 16.00, 16.40, 17.10, 21.80, 15.60, 15.20, 8.70, 14.30, 25.90, 23.80, 12.30, 20.20, 21.10, 12.90, 9.60, 19.90, 19.70, 226.20, 103.40, 329.60, 1.89),
(20, '2024-04-06', 610.00, 18.70, 20.60, 15.90, 16.20, 17.40, 21.70, 15.60, 15.30, 8.70, 14.20, 26.10, 24.10, 12.40, 21.40, 21.80, 12.90, 9.70, 19.90, 19.30, 226.90, 105.00, 331.90, 1.84),
(21, '2024-04-07', 644.00, 19.70, 21.50, 16.80, 16.90, 18.20, 22.60, 16.30, 16.40, 9.50, 14.80, 27.40, 25.20, 13.00, 20.60, 22.30, 12.90, 9.70, 20.40, 19.30, 238.30, 105.20, 343.50, 1.87),
(22, '2024-04-08', 607.00, 18.80, 20.60, 16.00, 16.20, 17.00, 21.60, 15.70, 15.70, 8.70, 14.10, 26.20, 24.20, 12.30, 20.20, 21.40, 12.80, 9.70, 19.90, 19.30, 227.10, 103.30, 330.40, 1.84),
(23, '2024-04-09', 616.00, 18.70, 20.60, 23.90, 16.10, 17.10, 20.40, 15.50, 15.20, 8.70, 14.10, 19.90, 23.80, 12.30, 20.40, 21.20, 12.80, 9.50, 19.90, 19.20, 226.30, 103.00, 329.30, 1.87),
(24, '2024-04-10', 617.00, 19.00, 20.50, 16.00, 16.50, 17.10, 21.80, 15.60, 15.10, 8.60, 14.00, 26.20, 24.10, 12.20, 21.00, 21.50, 13.00, 9.80, 20.10, 19.10, 226.70, 104.50, 331.20, 1.86),
(25, '2024-04-11', 627.00, 18.70, 20.60, 16.00, 16.40, 16.90, 21.30, 15.50, 15.60, 9.00, 14.10, 26.60, 24.40, 12.20, 20.40, 20.50, 13.00, 9.80, 20.40, 19.50, 227.30, 103.60, 330.90, 1.89),
(26, '2024-04-12', 644.00, 19.10, 20.60, 15.90, 16.40, 17.50, 22.10, 15.40, 15.10, 8.80, 13.90, 26.10, 24.20, 12.20, 21.20, 21.50, 13.10, 9.80, 20.00, 19.30, 227.30, 104.90, 332.20, 1.94),
(27, '2024-04-13', 649.00, 18.80, 20.70, 16.00, 16.50, 16.90, 22.00, 15.60, 15.30, 8.80, 14.10, 26.00, 24.30, 12.20, 20.30, 20.30, 12.90, 9.80, 20.10, 19.30, 227.20, 102.70, 329.90, 1.97),
(28, '2024-04-14', 662.00, 19.70, 21.70, 16.80, 17.30, 18.10, 22.10, 16.50, 16.20, 9.50, 14.80, 27.20, 25.70, 13.00, 20.60, 21.30, 13.00, 9.70, 20.50, 19.30, 238.60, 104.40, 343.00, 1.93),
(29, '2024-04-15', 618.00, 18.90, 20.60, 15.90, 16.40, 17.00, 21.60, 15.50, 15.40, 8.80, 14.10, 26.50, 24.50, 12.30, 22.90, 21.40, 13.00, 9.70, 20.00, 19.30, 227.50, 106.30, 333.80, 1.85),
(30, '2024-04-16', 647.00, 18.70, 20.60, 16.10, 16.40, 16.80, 21.70, 15.70, 15.10, 8.60, 14.30, 26.40, 24.40, 12.20, 21.00, 21.70, 13.10, 9.90, 20.50, 19.40, 227.00, 105.60, 332.60, 1.95),
(31, '2024-04-17', 631.00, 18.50, 20.70, 16.10, 16.50, 16.90, 21.60, 15.60, 15.20, 8.80, 14.30, 26.60, 24.90, 12.30, 19.60, 20.50, 13.00, 9.80, 20.10, 19.50, 228.00, 102.50, 330.50, 1.91),
(32, '2024-04-18', 636.00, 18.50, 20.40, 16.10, 16.60, 16.90, 21.40, 15.70, 15.30, 8.70, 14.30, 26.50, 24.70, 12.20, 19.60, 21.00, 12.90, 9.70, 19.90, 19.30, 227.30, 102.40, 329.70, 1.93),
(33, '2024-04-19', 613.00, 18.50, 20.60, 16.20, 16.30, 16.80, 21.60, 15.70, 15.40, 8.80, 14.50, 26.20, 24.70, 12.20, 19.50, 21.80, 12.90, 9.70, 20.00, 19.30, 227.50, 103.20, 330.70, 1.85),
(34, '2024-04-20', 674.00, 19.50, 21.70, 16.90, 17.40, 17.90, 22.50, 16.50, 16.20, 9.40, 15.30, 27.40, 25.70, 13.00, 19.60, 21.10, 12.90, 9.90, 20.10, 19.30, 239.40, 102.90, 342.30, 1.97),
(35, '2024-04-21', 637.00, 18.50, 20.60, 16.10, 16.40, 17.00, 21.30, 15.70, 15.30, 8.80, 14.50, 26.50, 24.70, 12.20, 19.00, 21.50, 12.90, 9.70, 20.00, 19.30, 227.60, 102.40, 330.00, 1.93),
(36, '2024-04-22', 629.00, 18.80, 20.60, 16.10, 16.40, 17.10, 21.40, 15.70, 15.40, 8.80, 14.30, 26.50, 24.70, 12.20, 19.30, 21.90, 13.00, 9.80, 19.90, 19.30, 228.00, 103.20, 331.20, 1.90),
(37, '2024-04-23', 649.00, 18.80, 20.70, 16.10, 17.60, 16.60, 20.90, 15.90, 15.20, 8.50, 14.10, 25.20, 24.00, 12.70, 20.70, 21.30, 12.90, 9.70, 19.80, 19.30, 226.30, 103.70, 330.00, 1.97),
(38, '2024-04-24', 615.00, 19.10, 20.70, 16.00, 17.40, 17.10, 21.20, 15.60, 15.40, 8.80, 14.10, 25.20, 24.20, 12.80, 18.60, 22.30, 13.10, 9.90, 18.80, 19.30, 227.60, 102.00, 329.60, 1.87),
(39, '2024-04-25', 602.00, 18.80, 21.00, 16.10, 17.60, 16.70, 21.20, 15.80, 15.50, 8.60, 14.20, 25.50, 24.10, 12.60, 19.30, 21.90, 12.90, 9.70, 19.90, 19.20, 227.70, 102.90, 330.60, 1.82),
(40, '2024-04-26', 612.00, 18.90, 20.60, 16.00, 17.60, 17.60, 21.10, 15.80, 15.20, 8.60, 14.30, 25.40, 23.90, 12.70, 20.20, 21.30, 12.90, 9.70, 20.00, 19.30, 227.70, 103.40, 331.10, 1.85),
(41, '2024-04-27', 622.00, 19.90, 21.70, 16.90, 18.50, 18.20, 22.00, 16.70, 16.20, 9.60, 14.90, 26.00, 25.10, 13.40, 19.80, 21.70, 13.00, 9.80, 19.80, 19.30, 239.10, 103.40, 342.50, 1.82),
(42, '2024-04-28', 624.00, 18.70, 21.00, 14.60, 17.40, 16.70, 17.80, 15.90, 15.40, 8.80, 14.20, 25.90, 24.20, 12.70, 19.40, 21.90, 12.90, 9.70, 20.00, 19.20, 223.30, 103.10, 326.40, 1.91),
(43, '2024-04-29', 609.00, 19.00, 20.70, 16.00, 17.30, 16.70, 21.00, 15.70, 15.40, 8.70, 14.30, 25.10, 24.20, 12.70, 20.30, 21.50, 12.90, 9.70, 20.00, 19.30, 226.80, 103.70, 330.50, 1.84),
(44, '2024-04-30', 659.00, 18.90, 20.80, 16.10, 17.50, 16.80, 20.40, 15.90, 15.20, 8.60, 14.10, 25.60, 23.80, 12.60, 20.50, 21.20, 13.00, 9.90, 20.00, 19.30, 226.30, 103.90, 330.20, 2.00),
(45, '2024-05-01', 637.00, 18.70, 20.70, 16.00, 17.10, 16.70, 21.30, 15.80, 15.40, 8.80, 14.20, 27.10, 24.30, 12.60, 20.50, 21.00, 13.00, 9.70, 20.00, 19.30, 228.70, 103.50, 332.20, 1.92);

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
-- Indexes for table `pue`
--
ALTER TABLE `pue`
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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `pagi`
--
ALTER TABLE `pagi`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `pue`
--
ALTER TABLE `pue`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `siang`
--
ALTER TABLE `siang`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- Database: `suhu`
--
CREATE DATABASE IF NOT EXISTS `suhu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `suhu`;

-- --------------------------------------------------------

--
-- Table structure for table `battery4`
--

CREATE TABLE `battery4` (
  `id` int(255) NOT NULL,
  `s1` double(15,2) DEFAULT NULL,
  `k1` double(15,2) DEFAULT NULL,
  `w1` datetime NOT NULL,
  `s2` double(15,2) DEFAULT NULL,
  `k2` double(15,2) DEFAULT NULL,
  `w2` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bss`
--

CREATE TABLE `bss` (
  `id` int(255) NOT NULL,
  `s1` double(15,2) NOT NULL,
  `k1` double(15,2) DEFAULT NULL,
  `w1` datetime NOT NULL,
  `s2` double(15,2) DEFAULT NULL,
  `k2` double(15,2) DEFAULT NULL,
  `w2` datetime NOT NULL,
  `s3` double(15,2) DEFAULT NULL,
  `k3` double(15,2) DEFAULT NULL,
  `w3` datetime NOT NULL,
  `s4` double(15,2) DEFAULT NULL,
  `k4` double(15,2) DEFAULT NULL,
  `w4` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inter`
--

CREATE TABLE `inter` (
  `id` int(255) NOT NULL,
  `s1` double(15,2) NOT NULL,
  `k1` double(15,2) NOT NULL,
  `w1` datetime NOT NULL,
  `s2` double(15,2) NOT NULL,
  `k2` double(15,2) NOT NULL,
  `w2` datetime NOT NULL,
  `s3` double(15,2) NOT NULL,
  `k3` double(15,2) NOT NULL,
  `w3` datetime NOT NULL,
  `s4` double(15,2) NOT NULL,
  `k4` double(15,2) NOT NULL,
  `w4` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `recti4`
--

CREATE TABLE `recti4` (
  `id` int(255) NOT NULL,
  `s1` double(15,2) NOT NULL,
  `k1` double(15,2) NOT NULL,
  `w1` datetime NOT NULL,
  `s2` double(15,2) NOT NULL,
  `k2` double(15,2) NOT NULL,
  `w2` datetime NOT NULL,
  `s3` double(15,2) NOT NULL,
  `k3` double(15,2) NOT NULL,
  `w3` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `trans`
--

CREATE TABLE `trans` (
  `id` int(255) NOT NULL,
  `s1` double(15,2) NOT NULL,
  `k1` double(15,2) NOT NULL,
  `w1` datetime NOT NULL,
  `s2` double(15,2) NOT NULL,
  `k2` double(15,2) NOT NULL,
  `w2` datetime NOT NULL,
  `s3` double(15,2) NOT NULL,
  `k3` double(15,2) NOT NULL,
  `w3` datetime NOT NULL,
  `s4` double(15,2) NOT NULL,
  `k4` double(15,2) NOT NULL,
  `w4` datetime NOT NULL,
  `s5` double(15,2) NOT NULL,
  `k5` double(15,2) NOT NULL,
  `w5` datetime NOT NULL,
  `s6` double(15,2) NOT NULL,
  `k6` double(15,2) NOT NULL,
  `w6` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
