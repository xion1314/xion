-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2020 at 02:59 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sota_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `antrians`
--

CREATE TABLE `antrians` (
  `user_id` char(36) DEFAULT NULL,
  `antrian` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `antrians`
--

INSERT INTO `antrians` (`user_id`, `antrian`, `created_at`) VALUES
('daaa9ca0-fc7c-11ea-b485-ddbfc62f7c38', 1, '2020-09-22 03:34:46'),
('daaa9ca0-fc7c-11ea-b485-ddbfc62f7c38', 2, '2020-09-22 03:36:16'),
('daaa9ca0-fc7c-11ea-b485-ddbfc62f7c38', 3, '2020-09-22 03:38:39'),
('daaa9ca0-fc7c-11ea-b485-ddbfc62f7c38', 4, '2020-09-22 04:25:40'),
('daaa9ca0-fc7c-11ea-b485-ddbfc62f7c38', 5, '2020-09-22 04:38:07'),
('daaa9ca0-fc7c-11ea-b485-ddbfc62f7c38', 6, '2020-09-22 08:32:15'),
('6a8fd640-fcab-11ea-b086-b98a2e337479', 1, '2020-09-23 02:46:19'),
('6a8fd640-fcab-11ea-b086-b98a2e337479', 2, '2020-09-23 02:55:27'),
('6a8fd640-fcab-11ea-b086-b98a2e337479', 3, '2020-09-23 03:28:41'),
('6a8fd640-fcab-11ea-b086-b98a2e337479', 4, '2020-09-23 03:41:42'),
('6a8fd640-fcab-11ea-b086-b98a2e337479', 5, '2020-09-23 06:59:47'),
('6a8fd640-fcab-11ea-b086-b98a2e337479', 6, '2020-09-23 07:13:23'),
('6a8fd640-fcab-11ea-b086-b98a2e337479', 7, '2020-09-23 07:40:51'),
('6a8fd640-fcab-11ea-b086-b98a2e337479', 8, '2020-09-23 07:46:57'),
('6a8fd640-fcab-11ea-b086-b98a2e337479', 9, '2020-09-23 07:50:55'),
('6a8fd640-fcab-11ea-b086-b98a2e337479', 10, '2020-09-23 11:03:15'),
('6a8fd640-fcab-11ea-b086-b98a1i337472', 11, '2020-09-23 12:04:28'),
('6a8fd640-fcab-11ea-b086-b98a2e337479', 12, '2020-09-23 12:12:50'),
('daaa9ca0-fc7c-11ea-b485-ddbfc62f7c38', 13, '2020-09-23 12:29:36'),
('6a8fd640-fcab-11ea-b086-b98a2e337479', 14, '2020-09-23 12:34:48'),
('6a8fd640-fcab-11ea-b086-b98a2e337479', 15, '2020-09-23 12:58:35'),
('15df3070-fd9e-11ea-8acd-4767a21bda35', 16, '2020-09-23 13:10:17'),
('8fa5bd00-02d7-11eb-b258-93312a312c94', 1, '2020-09-30 04:44:06'),
('8fa5bd00-02d7-11eb-b258-93312a312c94', 2, '2020-09-30 04:46:50'),
('8fa5bd00-02d7-11eb-b258-93312a312c94', 3, '2020-09-30 23:56:57'),
('8fa5bd00-02d7-11eb-b258-93312a312c94', 1, '2020-10-01 00:15:50'),
('8fa5bd00-02d7-11eb-b258-93312a312c94', 2, '2020-10-01 04:34:31'),
('8fa5bd00-02d7-11eb-b258-93312a312c94', 3, '2020-10-01 04:38:07'),
('6c0ffae0-06a1-11eb-9189-719a0e77edd9', 1, '2020-10-05 00:27:18'),
('6c0ffae0-06a1-11eb-9189-719a0e77edd9', 2, '2020-10-05 00:37:47'),
('6c0ffae0-06a1-11eb-9189-719a0e77edd9', 3, '2020-10-05 00:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `master_groups`
--

CREATE TABLE `master_groups` (
  `id` char(36) NOT NULL,
  `group_title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_groups`
--

INSERT INTO `master_groups` (`id`, `group_title`) VALUES
('0435e76d-0a88-11ea-9c6c-fa163e72d5e6', 'Admin'),
('8656f76c-a07f-11ea-af92-fa163e4c5a07', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `master_users`
--

CREATE TABLE `master_users` (
  `id` char(36) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `jenis_kelamin` varchar(1) DEFAULT NULL,
  `nomor_antrian` int(11) DEFAULT NULL,
  `keperluan` varchar(255) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  `group_title` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` char(255) DEFAULT NULL,
  `modi_at` datetime DEFAULT NULL,
  `modi_by` char(255) DEFAULT NULL,
  `foto` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_users`
--

INSERT INTO `master_users` (`id`, `nama`, `username`, `password`, `alamat`, `email`, `no_hp`, `jenis_kelamin`, `nomor_antrian`, `keperluan`, `group_id`, `group_title`, `created_at`, `created_by`, `modi_at`, `modi_by`, `foto`) VALUES
('15df3070-fd9e-11ea-8acd-4767a21bda35', 'ana', NULL, '1234', 'jakarta', 'ana@email.com', '081944877006', 'W', NULL, 'mandi', '8656f76c-a07f-11ea-af92-fa163e4c5a07', 'User', '2020-09-23 20:10:50', '15df3070-fd9e-11ea-8acd-4767a21bda35', '2020-09-23 20:10:50', '15df3070-fd9e-11ea-8acd-4767a21bda35', ''),
('6a8fd640-fcab-11ea-b086-b98a2e337479', 'rshshs', 'Anggi', '123', 'jdjdjs', 'ndjdjd@jsj.com', '646464', 'W', NULL, NULL, '8656f76c-a07f-11ea-af92-fa163e4c5a07', 'User', '2020-09-22 15:12:55', '6a8fd640-fcab-11ea-b086-b98a2e337479', '2020-09-22 15:12:55', '6a8fd640-fcab-11ea-b086-b98a2e337479', ''),
('6c0ffae0-06a1-11eb-9189-719a0e77edd9', 'xion14', 'xion14', 'xion', 'jln ternate', 'xion@gmail.com', '088855556666', 'P', NULL, NULL, '8656f76c-a07f-11ea-af92-fa163e4c5a07', 'User', '2020-10-05 07:26:33', '6c0ffae0-06a1-11eb-9189-719a0e77edd9', '2020-10-05 07:26:33', '6c0ffae0-06a1-11eb-9189-719a0e77edd9', ''),
('6d79c830-fd9a-11ea-8acd-4767a21bda35', 'ybbyybyb', 'gvvggv', 'ybhyyh', 'hybybyh', 'tgyvbyyb', '58585855', 'P', NULL, 'vggvvg', '8656f76c-a07f-11ea-af92-fa163e4c5a07', 'User', '2020-09-23 19:43:49', NULL, '2020-09-23 19:43:49', NULL, ''),
('8fa5bd00-02d7-11eb-b258-93312a312c94', 'xion', 'xion', 'xion', 'gor', 'jatquh@gmail.com', '081248419335', 'P', NULL, NULL, '8656f76c-a07f-11ea-af92-fa163e4c5a07', 'User', '2020-09-30 11:44:01', '8fa5bd00-02d7-11eb-b258-93312a312c94', '2020-09-30 11:44:01', '8fa5bd00-02d7-11eb-b258-93312a312c94', ''),
('c0089180-fc7d-11ea-84ba-c14c5daf45c1', 'hdhdbdb', 'Ibrar', '123', 'dhdj', 'ddbbd@kk.com', '6466464', 'W', NULL, NULL, '8656f76c-a07f-11ea-af92-fa163e4c5a07', 'User', '2020-09-22 09:46:01', 'c0089180-fc7d-11ea-84ba-c14c5daf45c1', '2020-09-22 09:46:01', 'c0089180-fc7d-11ea-84ba-c14c5daf45c1', ''),
('daaa9ca0-fc7c-11ea-b485-ddbfc62f79i9', 'admin', 'admin', '909090', NULL, NULL, NULL, NULL, NULL, NULL, '0435e76d-0a88-11ea-9c6c-fa163e72d5e6', 'Admin', NULL, NULL, NULL, NULL, ''),
('daaa9ca0-fc7c-11ea-b485-ddbfc62f7c38', 'ratri', NULL, '123', 'jakarta', 'ratri.32@facebook.com', '08125361010', 'W', 1, 'hgbgbgbgb', '8656f76c-a07f-11ea-af92-fa163e4c5a07', 'User', '2020-09-23 19:29:46', 'daaa9ca0-fc7c-11ea-b485-ddbfc62f7c38', '2020-09-23 19:29:46', 'daaa9ca0-fc7c-11ea-b485-ddbfc62f7c38', '');

-- --------------------------------------------------------

--
-- Table structure for table `master_wisatas`
--

CREATE TABLE `master_wisatas` (
  `id` char(36) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` char(255) DEFAULT NULL,
  `modi_at` datetime DEFAULT NULL,
  `modi_by` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_wisatas`
--

INSERT INTO `master_wisatas` (`id`, `judul`, `foto`, `deskripsi`, `created_at`, `created_by`, `modi_at`, `modi_by`) VALUES
('0c97f3d0-fd99-11ea-8acd-4767a21bda35', 'Wah wisata', '0c49d3d0-fd99-11ea-8acd-4767a21bda35-IMG_20200920_190006.jpg', 'aduh males bgt nulis deskripsi', '2020-09-23 19:33:57', 'daaa9ca0-fc7c-11ea-b485-ddbfc62f79i9', NULL, NULL),
('57a83e00-02d7-11eb-b258-93312a312c94', 'sota', '578043a0-02d7-11eb-b258-93312a312c94-Screenshot_20200930_005239.jpg', 'tempat liburan', '2020-09-30 11:42:27', 'daaa9ca0-fc7c-11ea-b485-ddbfc62f79i9', NULL, NULL),
('64c9f4f0-faf5-11ea-b80f-238cd43b7510', 'Taman', '7761c890-faf5-11ea-970b-955f3f406f53-628138523819720200122175513.jpg', 'Nggak perlu yang luas, cukup manfaatkan sisia lahan tersebut dan hiasilah taman dengan tanaman serta bunga yang kamu sukai. Membangun', '2020-09-20 10:57:25', 'nina', NULL, NULL),
('64c9f4f0-faf5-11ea-b80f-238cd43b7589', 'Kebun Binatang', '7761c890-faf5-11ea-970b-955f3f406f53-628138523819720200122175513.jpg', 'Nggak perlu yang luas, cukup manfaatkan sisia lahan tersebut dan hiasilah taman dengan tanaman serta bunga yang kamu sukai. Membangun', '2020-09-23 10:57:25', 'nina', NULL, NULL),
('944a2e50-fb01-11ea-970b-955f3f406f52', 'Air Mancur', '7761c890-faf5-11ea-970b-955f3f406f53-628138523819720200122175513.jpg', 'Air mancur merupakan sebuah aliran air yang menyebar secara diagonal dari sebuah sumber. Air mancur bisa berupa air mancur tembok atau berdiri sendiri. Air mancur dapat dibuat di dalam berbagai wadah seperti batu, beton atau logam. Air di suatu wadah dapa', '2020-09-21 12:24:39', 'nina', NULL, NULL),
('944a2e50-fb01-11ea-970b-955f3f406f53', 'Kolam Renang', '7761c890-faf5-11ea-970b-955f3f406f53-628138523819720200122175513.jpg', 'Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak', '2020-09-22 12:24:39', 'nina', NULL, NULL),
('f42a8cf0-06a2-11eb-9189-719a0e77edd9', 'laptop', 'f3f3c580-06a2-11eb-9189-719a0e77edd9-Screenshot_20201004_203750.jpg', 'laptop', '2020-10-05 07:37:31', 'daaa9ca0-fc7c-11ea-b485-ddbfc62f79i9', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_groups`
--
ALTER TABLE `master_groups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_users`
--
ALTER TABLE `master_users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_wisatas`
--
ALTER TABLE `master_wisatas`
  ADD PRIMARY KEY (`id`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
