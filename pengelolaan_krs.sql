-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2025 at 08:33 AM
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
-- Database: `pengelolaan_krs`
--

-- --------------------------------------------------------

--
-- Table structure for table `pengambilan_krs`
--

CREATE TABLE `pengambilan_krs` (
  `id_pengambilan` int(11) NOT NULL,
  `npm` varchar(10) NOT NULL,
  `kode_mata_kuliah` varchar(10) NOT NULL,
  `nama_mata_kuliah` varchar(100) NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `tahun_akademik` int(11) NOT NULL,
  `nama_dosen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengambilan_krs`
--

INSERT INTO `pengambilan_krs` (`id_pengambilan`, `npm`, `kode_mata_kuliah`, `nama_mata_kuliah`, `sks`, `semester`, `tahun_akademik`, `nama_dosen`) VALUES
(2, '2210010293', '3', 'asndkl', 2, '4', 2020, 'aaaaaaa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengambilan_krs`
--
ALTER TABLE `pengambilan_krs`
  ADD PRIMARY KEY (`id_pengambilan`),
  ADD KEY `nim` (`npm`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengambilan_krs`
--
ALTER TABLE `pengambilan_krs`
  MODIFY `id_pengambilan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pengambilan_krs`
--
ALTER TABLE `pengambilan_krs`
  ADD CONSTRAINT `pengambilan_krs_ibfk_1` FOREIGN KEY (`npm`) REFERENCES `mahasiswa` (`npm`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
