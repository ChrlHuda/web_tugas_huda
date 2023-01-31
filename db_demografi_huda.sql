-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2023 at 06:32 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_demografi_huda`
--

-- --------------------------------------------------------

--
-- Table structure for table `tab_agama`
--

CREATE TABLE `tab_agama` (
  `id` int(11) NOT NULL,
  `agama` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_agama`
--

INSERT INTO `tab_agama` (`id`, `agama`) VALUES
(1, 'islam'),
(2, 'kristen'),
(3, 'protestan'),
(4, 'khatolik'),
(5, 'hindu'),
(6, 'budha'),
(7, 'khonguchu'),
(8, 'lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `tab_kelurahan`
--

CREATE TABLE `tab_kelurahan` (
  `id` int(11) NOT NULL,
  `kelurahan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_kelurahan`
--

INSERT INTO `tab_kelurahan` (`id`, `kelurahan`) VALUES
(1, 'semper_barat'),
(2, 'semper_timur'),
(3, 'cilincing'),
(4, 'rorotan'),
(5, 'kalibaru'),
(6, 'sukapura'),
(7, 'marunda');

-- --------------------------------------------------------

--
-- Table structure for table `tab_pendapatan`
--

CREATE TABLE `tab_pendapatan` (
  `id` int(11) NOT NULL,
  `pendapatan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_pendapatan`
--

INSERT INTO `tab_pendapatan` (`id`, `pendapatan`) VALUES
(1, 'Dibawah UMR jakarta perbulan '),
(2, '4,6-5 Juta Perbulan'),
(3, '5-7 Juta Perbulan'),
(4, '7-10 Juta Perbulan'),
(5, 'Diatas 10 Juta Perbulan');

-- --------------------------------------------------------

--
-- Table structure for table `tab_pendidikan`
--

CREATE TABLE `tab_pendidikan` (
  `id` int(11) NOT NULL,
  `pendidikan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_pendidikan`
--

INSERT INTO `tab_pendidikan` (`id`, `pendidikan`) VALUES
(1, 'Tidak Sekolah'),
(2, 'SD'),
(3, 'SMP'),
(4, 'SMA'),
(5, 'D-1'),
(6, 'D-3'),
(7, 'S1/D-4'),
(8, 'S2'),
(9, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `tab_penduduk`
--

CREATE TABLE `tab_penduduk` (
  `nik` varchar(30) NOT NULL,
  `no_kk` varchar(20) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `pendidikan` int(11) DEFAULT NULL,
  `pendapatan` int(11) DEFAULT NULL,
  `Agama` int(11) DEFAULT NULL,
  `alamat_lengkap` varchar(255) DEFAULT NULL,
  `kelurahan` int(11) DEFAULT NULL,
  `penduduk_asli` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tab_user`
--

CREATE TABLE `tab_user` (
  `id` int(11) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `created_by` varchar(15) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_by` varchar(15) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tab_user`
--

INSERT INTO `tab_user` (`id`, `username`, `password`, `lastlogin`, `created_by`, `created_at`, `update_by`, `update_at`) VALUES
(2, 'huda', '123', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tab_agama`
--
ALTER TABLE `tab_agama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_kelurahan`
--
ALTER TABLE `tab_kelurahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_pendapatan`
--
ALTER TABLE `tab_pendapatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_pendidikan`
--
ALTER TABLE `tab_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_penduduk`
--
ALTER TABLE `tab_penduduk`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `tab_user`
--
ALTER TABLE `tab_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tab_agama`
--
ALTER TABLE `tab_agama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tab_kelurahan`
--
ALTER TABLE `tab_kelurahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tab_pendapatan`
--
ALTER TABLE `tab_pendapatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tab_pendidikan`
--
ALTER TABLE `tab_pendidikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tab_user`
--
ALTER TABLE `tab_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
