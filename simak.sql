-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2020 at 09:41 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simak`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `nik` varchar(15) NOT NULL,
  `nama_guru` varchar(100) NOT NULL,
  `jenis_kelamin_guru` varchar(10) NOT NULL,
  `alamat_guru` varchar(300) NOT NULL,
  `katasandi_guru` varchar(255) NOT NULL,
  `jenis_akun` int(1) NOT NULL,
  `kode_wali_kelas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`nik`, `nama_guru`, `jenis_kelamin_guru`, `alamat_guru`, `katasandi_guru`, `jenis_akun`, `kode_wali_kelas`) VALUES
('10112', 'THERESIA LISTYOWATI, S.Pd', 'Perempuan', '-', '$2y$10$R8z6FVr4/F3EAAxT3Hlj2uFtX9xgynI7a7wwCazAXx1i.wlHNYWIO', 2, 22),
('10120', 'LIANA HARNANDY, A.Ma.Pd', 'Perempuan', '-', '$2y$10$R8z6FVr4/F3EAAxT3Hlj2uFtX9xgynI7a7wwCazAXx1i.wlHNYWIO', 2, 23),
('10187', 'MUJI LESTARI, S.Pd.SD', 'Perempuan', '-', '$2y$10$R8z6FVr4/F3EAAxT3Hlj2uFtX9xgynI7a7wwCazAXx1i.wlHNYWIO', 2, 28),
('10204', 'SAKEUS DARMAN', 'Laki-Laki', '-', '$2y$10$R8z6FVr4/F3EAAxT3Hlj2uFtX9xgynI7a7wwCazAXx1i.wlHNYWIO', 2, NULL),
('10392', 'COLETA SUSANTININGRUM, S.Pd', 'Perempuan', '-', '$2y$10$R8z6FVr4/F3EAAxT3Hlj2uFtX9xgynI7a7wwCazAXx1i.wlHNYWIO', 2, 19),
('10441', 'ANASTASIA SULISTIANI, S.Pd.SD', 'Perempuan', '-', '$2y$10$R8z6FVr4/F3EAAxT3Hlj2uFtX9xgynI7a7wwCazAXx1i.wlHNYWIO', 2, 27),
('10462', 'MARIA MAGDALENA SRI HANDAYANI S. S.Pd', 'Perempuan', '-', '$2y$10$R8z6FVr4/F3EAAxT3Hlj2uFtX9xgynI7a7wwCazAXx1i.wlHNYWIO', 2, 30),
('10542', 'THEODORUS CANDRA LB, S.Pd', 'Laki-Laki', '-', '$2y$10$R8z6FVr4/F3EAAxT3Hlj2uFtX9xgynI7a7wwCazAXx1i.wlHNYWIO', 2, 25),
('10568', 'SUSANTI SUSILAWATI, S.Komp, S.Pd', 'Perempuan', '-', '$2y$10$R8z6FVr4/F3EAAxT3Hlj2uFtX9xgynI7a7wwCazAXx1i.wlHNYWIO', 2, 20),
('10571', 'PETRUS SANTOSO, S.Pd.SD', 'Laki-Laki', '-', '$2y$10$R8z6FVr4/F3EAAxT3Hlj2uFtX9xgynI7a7wwCazAXx1i.wlHNYWIO', 2, NULL),
('10667', 'MARIA ALFRIDA NONA YANTI, S.Pd', 'Perempuan', '-', '$2y$10$R8z6FVr4/F3EAAxT3Hlj2uFtX9xgynI7a7wwCazAXx1i.wlHNYWIO', 2, 29),
('10901', 'ALFREDO H. SIMATUPANG S. Kom', 'Laki-Laki', '-', '$2y$10$R8z6FVr4/F3EAAxT3Hlj2uFtX9xgynI7a7wwCazAXx1i.wlHNYWIO', 2, NULL),
('10971', 'SUHADI, S.Pd', 'Laki-Laki', '-', '$2y$10$R8z6FVr4/F3EAAxT3Hlj2uFtX9xgynI7a7wwCazAXx1i.wlHNYWIO', 2, NULL),
('11110', 'MENIAMA GEA, S.Pd.K', 'Perempuan', '-', '$2y$10$R8z6FVr4/F3EAAxT3Hlj2uFtX9xgynI7a7wwCazAXx1i.wlHNYWIO', 2, 24),
('11111', 'LINCERIA SIHOMBING, S.Pd', 'Perempuan', '-', '$2y$10$R8z6FVr4/F3EAAxT3Hlj2uFtX9xgynI7a7wwCazAXx1i.wlHNYWIO', 2, 21),
('18110102', 'NICO SURYA HILKIA, S.S', 'Laki-Laki', '-', '$2y$10$R8z6FVr4/F3EAAxT3Hlj2uFtX9xgynI7a7wwCazAXx1i.wlHNYWIO', 2, NULL),
('202190194', 'ELISABETH DHIAN NOVITASARI, S.Pd', 'Perempuan', '-', '$2y$10$R8z6FVr4/F3EAAxT3Hlj2uFtX9xgynI7a7wwCazAXx1i.wlHNYWIO', 2, NULL),
('207197287', 'MERLIN ERVINA ROTUA RAJA GUK-GUK, S.Si', 'Perempuan', '-', '$2y$10$R8z6FVr4/F3EAAxT3Hlj2uFtX9xgynI7a7wwCazAXx1i.wlHNYWIO', 2, 26),
('admin', 'Simak', '-', '-', '$2y$10$7nrOvO5AJcqPUqUuGJRYbO6RuwtkW8ynnPxZy2WD/G3WjTipWfDKe', 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `informasi_akademik`
--

CREATE TABLE `informasi_akademik` (
  `no_info` int(11) NOT NULL,
  `judul_info` varchar(100) NOT NULL,
  `deskripsi_info` varchar(1000) NOT NULL,
  `media_info` varchar(250) DEFAULT NULL,
  `media_info_tipe` varchar(3) DEFAULT NULL,
  `tanggal_info` varchar(10) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `kode_jadwal` int(11) NOT NULL,
  `nama_hari` varchar(10) NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_keluar` time NOT NULL,
  `nik` varchar(15) NOT NULL,
  `kode_mata_pelajaran` varchar(2) NOT NULL,
  `kode_kelas` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`kode_jadwal`, `nama_hari`, `jam_masuk`, `jam_keluar`, `nik`, `kode_mata_pelajaran`, `kode_kelas`) VALUES
(1, 'Monday', '07:45:00', '08:20:00', '10901', 'KP', '1A'),
(2, 'Monday', '08:20:00', '08:55:00', '10901', 'KP', '1A'),
(3, 'Monday', '09:15:00', '09:50:00', '10568', 'BD', '1A'),
(4, 'Monday', '09:50:00', '10:25:00', '10392', 'MT', '1A'),
(5, 'Monday', '10:25:00', '11:00:00', '10392', 'MT', '1A'),
(6, 'Monday', '11:15:00', '11:50:00', '10392', 'BI', '1A'),
(7, 'Monday', '12:25:00', '13:00:00', '10392', 'SB', '1A'),
(8, 'Tuesday', '07:25:00', '08:00:00', '10971', 'OR', '1A'),
(9, 'Tuesday', '08:00:00', '08:35:00', '10971', 'OR', '1A'),
(10, 'Tuesday', '08:35:00', '09:10:00', '10392', 'AG', '1A'),
(11, 'Tuesday', '09:30:00', '10:05:00', '10392', 'AG', '1A'),
(12, 'Tuesday', '10:05:00', '10:40:00', '10392', 'MT', '1A'),
(13, 'Tuesday', '10:40:00', '11:15:00', '10392', 'MT', '1A'),
(14, 'Tuesday', '11:30:00', '12:05:00', '10392', 'BI', '1A'),
(15, 'Wednesday', '07:25:00', '08:00:00', '10392', 'PK', '1A'),
(16, 'Wednesday', '08:00:00', '08:35:00', '10392', 'PK', '1A'),
(17, 'Wednesday', '08:35:00', '09:10:00', '10568', 'BD', '1A'),
(18, 'Wednesday', '09:30:00', '10:05:00', '10392', 'AG', '1A'),
(19, 'Wednesday', '10:05:00', '10:40:00', '10392', 'MT', '1A'),
(20, 'Wednesday', '10:40:00', '11:15:00', '10392', 'BI', '1A'),
(21, 'Wednesday', '11:30:00', '12:05:00', '10392', 'BP', '1A'),
(22, 'Thursday', '07:35:00', '08:10:00', '18110102', 'IG', '1A'),
(23, 'Thursday', '08:10:00', '08:45:00', '18110102', 'IG', '1A'),
(24, 'Thursday', '09:05:00', '09:40:00', '10392', 'PK', '1A'),
(25, 'Thursday', '09:40:00', '10:15:00', '10392', 'BI', '1A'),
(26, 'Thursday', '10:15:00', '10:50:00', '10392', 'BI', '1A'),
(27, 'Thursday', '11:05:00', '11:40:00', '10392', 'SB', '1A'),
(28, 'Friday', '07:25:00', '08:00:00', '10392', 'PK', '1A'),
(29, 'Friday', '08:00:00', '08:35:00', '10392', 'PK', '1A'),
(30, 'Friday', '08:35:00', '09:10:00', '10392', 'BI', '1A'),
(31, 'Friday', '09:30:00', '10:05:00', '10392', 'BI', '1A'),
(32, 'Friday', '10:05:00', '10:40:00', '10392', 'BI', '1A'),
(33, 'Friday', '10:40:00', '11:15:00', '10392', 'PL', '1A'),
(34, 'Monday', '07:45:00', '08:20:00', '10568', 'MT', '1B'),
(35, 'Monday', '08:20:00', '08:55:00', '10568', 'MT', '1B'),
(36, 'Monday', '09:15:00', '09:50:00', '10901', 'KP', '1B'),
(37, 'Monday', '09:50:00', '10:25:00', '10901', 'KP', '1B'),
(38, 'Monday', '10:25:00', '11:00:00', '10568', 'BD', '1B'),
(39, 'Monday', '11:15:00', '11:50:00', '10568', 'BI', '1B'),
(40, 'Monday', '12:25:00', '13:00:00', '10568', 'SB', '1B'),
(41, 'Tuesday', '07:25:00', '08:00:00', '10392', 'AG', '1B'),
(42, 'Tuesday', '08:00:00', '08:35:00', '10392', 'AG', '1B'),
(43, 'Tuesday', '08:35:00', '09:10:00', '10568', 'MT', '1B'),
(44, 'Tuesday', '09:30:00', '10:05:00', '10971', 'OR', '1B'),
(45, 'Tuesday', '10:05:00', '10:40:00', '10971', 'OR', '1B'),
(46, 'Tuesday', '10:40:00', '11:15:00', '10568', 'MT', '1B'),
(47, 'Tuesday', '11:30:00', '12:05:00', '10568', 'BI', '1B'),
(48, 'Wednesday', '07:25:00', '08:00:00', '10568', 'MT', '1B'),
(49, 'Wednesday', '08:00:00', '08:35:00', '10568', 'PK', '1B'),
(50, 'Wednesday', '08:35:00', '09:10:00', '10392', 'AG', '1B'),
(51, 'Wednesday', '09:30:00', '10:05:00', '10568', 'BD', '1B'),
(52, 'Wednesday', '10:05:00', '10:40:00', '10568', 'PK', '1B'),
(53, 'Wednesday', '10:40:00', '11:15:00', '10568', 'BI', '1B'),
(54, 'Wednesday', '11:30:00', '12:05:00', '10568', 'BP', '1B'),
(55, 'Thursday', '07:35:00', '08:10:00', '10568', 'BI', '1B'),
(56, 'Thursday', '08:10:00', '08:45:00', '10568', 'BI', '1B'),
(57, 'Thursday', '09:05:00', '09:40:00', '18110102', 'IG', '1B'),
(58, 'Thursday', '09:40:00', '10:15:00', '18110102', 'IG', '1B'),
(59, 'Thursday', '10:15:00', '10:50:00', '10568', 'PK', '1B'),
(60, 'Thursday', '11:05:00', '11:40:00', '10568', 'SB', '1B'),
(61, 'Friday', '07:25:00', '08:00:00', '10568', 'PK', '1B'),
(62, 'Friday', '08:00:00', '08:35:00', '10568', 'PK', '1B'),
(63, 'Friday', '08:35:00', '09:10:00', '10568', 'BI', '1B'),
(64, 'Friday', '09:30:00', '10:05:00', '10568', 'BI', '1B'),
(65, 'Friday', '10:05:00', '10:40:00', '10568', 'BI', '1B'),
(66, 'Friday', '10:40:00', '11:15:00', '10568', 'PL', '1B'),
(67, 'Monday', '07:45:00', '08:20:00', '10112', 'AG', '2A'),
(68, 'Monday', '08:20:00', '08:55:00', '10204', 'BD', '2A'),
(69, 'Monday', '09:15:00', '09:50:00', '11111', 'MT', '2A'),
(70, 'Monday', '09:50:00', '10:25:00', '11111', 'MT', '2A'),
(71, 'Monday', '10:25:00', '11:00:00', '11111', 'PK', '2A'),
(72, 'Monday', '11:15:00', '11:50:00', '11111', 'BI', '2A'),
(73, 'Monday', '12:25:00', '13:00:00', '11111', 'SB', '2A'),
(74, 'Tuesday', '07:25:00', '08:00:00', '10112', 'AG', '2A'),
(75, 'Tuesday', '08:00:00', '08:35:00', '10204', 'BD', '2A'),
(76, 'Tuesday', '08:35:00', '09:10:00', '11111', 'BI', '2A'),
(77, 'Tuesday', '09:30:00', '10:05:00', '10901', 'KP', '2A'),
(78, 'Tuesday', '10:05:00', '10:40:00', '10901', 'KP', '2A'),
(79, 'Tuesday', '10:40:00', '11:15:00', '11111', 'MT', '2A'),
(80, 'Tuesday', '11:30:00', '12:05:00', '11111', 'MT', '2A'),
(81, 'Tuesday', '12:05:00', '12:40:00', '11111', 'BI', '2A'),
(82, 'Wednesday', '07:25:00', '08:00:00', '10971', 'OR', '2A'),
(83, 'Wednesday', '08:00:00', '08:35:00', '10971', 'OR', '2A'),
(84, 'Wednesday', '08:35:00', '09:10:00', '10112', 'AG', '2A'),
(85, 'Wednesday', '09:30:00', '10:05:00', '11111', 'PL', '2A'),
(86, 'Wednesday', '10:05:00', '10:40:00', '11111', 'BI', '2A'),
(87, 'Wednesday', '10:40:00', '11:15:00', '11111', 'PK', '2A'),
(88, 'Wednesday', '11:30:00', '12:05:00', '11111', 'BP', '2A'),
(89, 'Thursday', '07:35:00', '08:10:00', '11111', 'BI', '2A'),
(90, 'Thursday', '08:10:00', '08:45:00', '11111', 'BI', '2A'),
(91, 'Thursday', '09:05:00', '09:40:00', '11111', 'PK', '2A'),
(92, 'Thursday', '09:40:00', '10:15:00', '11111', 'PK', '2A'),
(93, 'Thursday', '10:15:00', '10:50:00', '11111', 'PK', '2A'),
(94, 'Thursday', '11:05:00', '11:40:00', '11111', 'BI', '2A'),
(95, 'Thursday', '11:40:00', '12:15:00', '11111', 'BI', '2A'),
(96, 'Friday', '07:25:00', '08:00:00', '11111', 'MT', '2A'),
(97, 'Friday', '08:00:00', '08:35:00', '11111', 'MT', '2A'),
(98, 'Friday', '08:35:00', '09:10:00', '11111', 'SB', '2A'),
(99, 'Friday', '09:30:00', '10:05:00', '18110102', 'IG', '2A'),
(100, 'Friday', '10:05:00', '10:40:00', '18110102', 'IG', '2A'),
(101, 'Friday', '10:40:00', '11:15:00', '11111', 'PK', '2A'),
(102, 'Monday', '07:45:00', '08:20:00', '10204', 'BD', '2B'),
(103, 'Monday', '08:20:00', '08:55:00', '11111', 'SB', '2B'),
(104, 'Monday', '09:15:00', '09:50:00', '10112', 'AG', '2B'),
(105, 'Monday', '09:50:00', '10:25:00', '10112', 'MT', '2B'),
(106, 'Monday', '10:25:00', '11:00:00', '10112', 'MT', '2B'),
(107, 'Monday', '11:15:00', '11:50:00', '10112', 'PK', '2B'),
(108, 'Monday', '12:25:00', '13:00:00', '10112', 'BI', '2B'),
(109, 'Tuesday', '07:25:00', '08:00:00', '10204', 'BD', '2B'),
(110, 'Tuesday', '08:00:00', '08:35:00', '10901', 'KP', '2B'),
(111, 'Tuesday', '08:35:00', '09:10:00', '10901', 'KP', '2B'),
(112, 'Tuesday', '09:30:00', '10:05:00', '10112', 'AG', '2B'),
(113, 'Tuesday', '10:05:00', '10:40:00', '10112', 'MT', '2B'),
(114, 'Tuesday', '10:40:00', '11:15:00', '10112', 'MT', '2B'),
(115, 'Tuesday', '11:30:00', '12:05:00', '10112', 'BI', '2B'),
(116, 'Tuesday', '12:05:00', '12:40:00', '10112', 'BI', '2B'),
(117, 'Wednesday', '07:25:00', '08:00:00', '10112', 'AG', '2B'),
(118, 'Wednesday', '08:00:00', '08:35:00', '11111', 'PL', '2B'),
(119, 'Wednesday', '08:35:00', '09:10:00', '10971', 'OR', '2B'),
(120, 'Wednesday', '09:30:00', '10:05:00', '10971', 'OR', '2B'),
(121, 'Wednesday', '10:05:00', '10:40:00', '10112', 'BI', '2B'),
(122, 'Wednesday', '10:40:00', '11:15:00', '10112', 'PK', '2B'),
(123, 'Wednesday', '11:30:00', '12:05:00', '10112', 'BP', '2B'),
(124, 'Thursday', '07:35:00', '08:10:00', '10112', 'BI', '2B'),
(125, 'Thursday', '08:10:00', '08:45:00', '10112', 'BI', '2B'),
(126, 'Thursday', '09:05:00', '09:40:00', '10112', 'PK', '2B'),
(127, 'Thursday', '09:40:00', '10:15:00', '10112', 'PK', '2B'),
(128, 'Thursday', '10:15:00', '10:50:00', '10112', 'PK', '2B'),
(129, 'Thursday', '11:05:00', '11:40:00', '10112', 'BI', '2B'),
(130, 'Thursday', '11:40:00', '12:15:00', '10112', 'BI', '2B'),
(131, 'Friday', '07:25:00', '08:00:00', '18110102', 'IG', '2B'),
(132, 'Friday', '08:00:00', '08:35:00', '18110102', 'IG', '2B'),
(133, 'Friday', '08:35:00', '09:10:00', '10112', 'MT', '2B'),
(134, 'Friday', '09:30:00', '10:05:00', '10112', 'MT', '2B'),
(135, 'Friday', '10:05:00', '10:40:00', '11111', 'SB', '2B'),
(136, 'Friday', '10:40:00', '11:15:00', '10112', 'PK', '2B'),
(137, 'Monday', '07:45:00', '08:20:00', '10971', 'OR', '3A'),
(138, 'Monday', '08:20:00', '08:55:00', '10971', 'OR', '3A'),
(139, 'Monday', '09:15:00', '09:50:00', '10120', 'MT', '3A'),
(140, 'Monday', '09:50:00', '10:25:00', '10120', 'MT', '3A'),
(141, 'Monday', '10:25:00', '11:00:00', '10120', 'BI', '3A'),
(142, 'Monday', '11:15:00', '11:50:00', '10120', 'BI', '3A'),
(143, 'Monday', '12:25:00', '13:00:00', '10120', 'SB', '3A'),
(144, 'Tuesday', '07:25:00', '08:00:00', '10120', 'MT', '3A'),
(145, 'Tuesday', '08:00:00', '08:35:00', '202190194', 'AG', '3A'),
(146, 'Tuesday', '08:35:00', '09:10:00', '202190194', 'AG', '3A'),
(147, 'Tuesday', '09:30:00', '10:05:00', '10120', 'PK', '3A'),
(148, 'Tuesday', '10:05:00', '10:40:00', '10204', 'BD', '3A'),
(149, 'Tuesday', '10:40:00', '11:15:00', '10120', 'PK', '3A'),
(150, 'Tuesday', '11:30:00', '12:05:00', '10120', 'BI', '3A'),
(151, 'Tuesday', '12:05:00', '12:40:00', '10120', 'PL', '3A'),
(152, 'Wednesday', '07:25:00', '08:00:00', '18110102', 'IG', '3A'),
(153, 'Wednesday', '08:00:00', '08:35:00', '18110102', 'IG', '3A'),
(154, 'Wednesday', '08:35:00', '09:10:00', '10120', 'BI', '3A'),
(155, 'Wednesday', '09:30:00', '10:05:00', '10120', 'PK', '3A'),
(156, 'Wednesday', '10:05:00', '10:40:00', '10120', 'PK', '3A'),
(157, 'Wednesday', '10:40:00', '11:15:00', '202190194', 'AG', '3A'),
(158, 'Wednesday', '11:30:00', '12:05:00', '10120', 'BI', '3A'),
(159, 'Wednesday', '12:05:00', '12:40:00', '10120', 'PK', '3A'),
(160, 'Thursday', '07:35:00', '08:10:00', '10901', 'KP', '3A'),
(161, 'Thursday', '08:10:00', '08:45:00', '10901', 'KP', '3A'),
(162, 'Thursday', '09:05:00', '09:40:00', '10120', 'BI', '3A'),
(163, 'Thursday', '09:40:00', '10:15:00', '10120', 'BI', '3A'),
(164, 'Thursday', '10:15:00', '10:50:00', '10120', 'MT', '3A'),
(165, 'Thursday', '11:05:00', '11:40:00', '10120', 'BI', '3A'),
(166, 'Thursday', '11:40:00', '12:15:00', '10120', 'BI', '3A'),
(167, 'Thursday', '12:15:00', '12:50:00', '10120', 'SB', '3A'),
(168, 'Friday', '07:25:00', '08:00:00', '10204', 'BD', '3A'),
(169, 'Friday', '08:00:00', '08:35:00', '10120', 'PK', '3A'),
(170, 'Friday', '08:35:00', '09:10:00', '10120', 'BI', '3A'),
(171, 'Friday', '09:30:00', '10:05:00', '10120', 'MT', '3A'),
(172, 'Friday', '10:05:00', '10:40:00', '10120', 'MT', '3A'),
(173, 'Friday', '10:40:00', '11:15:00', '10120', 'BP', '3A'),
(174, 'Monday', '07:45:00', '08:20:00', '11110', 'MT', '3B'),
(175, 'Monday', '08:20:00', '08:55:00', '11110', 'MT', '3B'),
(176, 'Monday', '09:15:00', '09:50:00', '10971', 'OR', '3B'),
(177, 'Monday', '09:50:00', '10:25:00', '10971', 'OR', '3B'),
(178, 'Monday', '10:25:00', '11:00:00', '11110', 'BI', '3B'),
(179, 'Monday', '11:15:00', '11:50:00', '11110', 'SB', '3B'),
(180, 'Monday', '12:25:00', '13:00:00', '11110', 'BI', '3B'),
(181, 'Tuesday', '07:25:00', '08:00:00', '11110', 'PK', '3B'),
(182, 'Tuesday', '08:00:00', '08:35:00', '11110', 'PK', '3B'),
(183, 'Tuesday', '08:35:00', '09:10:00', '11110', 'MT', '3B'),
(184, 'Tuesday', '09:30:00', '10:05:00', '202190194', 'AG', '3B'),
(185, 'Tuesday', '10:05:00', '10:40:00', '202190194', 'AG', '3B'),
(186, 'Tuesday', '10:40:00', '11:15:00', '10204', 'BD', '3B'),
(187, 'Tuesday', '11:30:00', '12:05:00', '11110', 'BI', '3B'),
(188, 'Tuesday', '12:05:00', '12:40:00', '11110', 'PL', '3B'),
(189, 'Wednesday', '07:25:00', '08:00:00', '11110', 'PK', '3B'),
(190, 'Wednesday', '08:00:00', '08:35:00', '11110', 'PK', '3B'),
(191, 'Wednesday', '08:35:00', '09:10:00', '18110102', 'IG', '3B'),
(192, 'Wednesday', '09:30:00', '10:05:00', '18110102', 'IG', '3B'),
(193, 'Wednesday', '10:05:00', '10:40:00', '202190194', 'AG', '3B'),
(194, 'Wednesday', '10:40:00', '11:15:00', '11110', 'BI', '3B'),
(195, 'Wednesday', '11:30:00', '12:05:00', '11110', 'BI', '3B'),
(196, 'Wednesday', '12:05:00', '12:40:00', '11110', 'PK', '3B'),
(197, 'Thursday', '07:35:00', '08:10:00', '11110', 'BI', '3B'),
(198, 'Thursday', '08:10:00', '08:45:00', '11110', 'BI', '3B'),
(199, 'Thursday', '09:05:00', '09:40:00', '10901', 'KP', '3B'),
(200, 'Thursday', '09:40:00', '10:15:00', '10901', 'KP', '3B'),
(201, 'Thursday', '10:15:00', '10:50:00', '11110', 'MT', '3B'),
(202, 'Thursday', '11:05:00', '11:40:00', '11110', 'BI', '3B'),
(203, 'Thursday', '11:40:00', '12:15:00', '11110', 'BI', '3B'),
(204, 'Thursday', '12:15:00', '12:50:00', '11110', 'SB', '3B'),
(205, 'Friday', '07:25:00', '08:00:00', '11110', 'MT', '3B'),
(206, 'Friday', '08:00:00', '08:35:00', '10204', 'BD', '3B'),
(207, 'Friday', '08:35:00', '09:10:00', '11110', 'BI', '3B'),
(208, 'Friday', '09:30:00', '10:05:00', '11110', 'MT', '3B'),
(209, 'Friday', '10:05:00', '10:40:00', '11110', 'PK', '3B'),
(210, 'Friday', '10:40:00', '11:15:00', '11110', 'BP', '3B'),
(211, 'Monday', '07:45:00', '08:20:00', '202190194', 'AG', '4A'),
(212, 'Monday', '08:20:00', '08:55:00', '10542', 'PK', '4A'),
(213, 'Monday', '09:15:00', '09:50:00', '10542', 'BI', '4A'),
(214, 'Monday', '09:50:00', '10:25:00', '10542', 'PS', '4A'),
(215, 'Monday', '10:25:00', '11:00:00', '10667', 'MT', '4A'),
(216, 'Monday', '11:15:00', '11:50:00', '10667', 'MT', '4A'),
(217, 'Monday', '12:25:00', '13:00:00', '10204', 'BD', '4A'),
(218, 'Monday', '12:25:00', '13:00:00', '10542', 'BP', '4A'),
(219, 'Tuesday', '07:25:00', '08:00:00', '10542', 'BI', '4A'),
(220, 'Tuesday', '08:00:00', '08:35:00', '10542', 'BI', '4A'),
(221, 'Tuesday', '08:35:00', '09:10:00', '10204', 'BD', '4A'),
(222, 'Tuesday', '09:30:00', '10:05:00', '10542', 'PS', '4A'),
(223, 'Tuesday', '10:05:00', '10:40:00', '10542', 'PA', '4A'),
(224, 'Tuesday', '10:40:00', '11:15:00', '10667', 'MT', '4A'),
(225, 'Tuesday', '11:30:00', '12:05:00', '10667', 'MT', '4A'),
(226, 'Tuesday', '12:05:00', '12:40:00', '10901', 'SB', '4A'),
(227, 'Wednesday', '07:25:00', '08:00:00', '10542', 'BI', '4A'),
(228, 'Wednesday', '08:00:00', '08:35:00', '10542', 'BI', '4A'),
(229, 'Wednesday', '08:35:00', '09:10:00', '202190194', 'AG', '4A'),
(230, 'Wednesday', '09:30:00', '10:05:00', '202190194', 'AG', '4A'),
(231, 'Wednesday', '10:05:00', '10:40:00', '18110102', 'IG', '4A'),
(232, 'Wednesday', '10:40:00', '11:15:00', '18110102', 'IG', '4A'),
(233, 'Wednesday', '11:30:00', '12:05:00', '10542', 'PL', '4A'),
(234, 'Wednesday', '12:05:00', '12:40:00', '10542', 'PK', '4A'),
(235, 'Thursday', '07:35:00', '08:10:00', '10667', 'MT', '4A'),
(236, 'Thursday', '08:10:00', '08:45:00', '10667', 'MT', '4A'),
(237, 'Thursday', '09:05:00', '09:40:00', '10542', 'PA', '4A'),
(238, 'Thursday', '09:40:00', '10:15:00', '10542', 'BI', '4A'),
(239, 'Thursday', '10:15:00', '10:50:00', '10542', 'BI', '4A'),
(240, 'Thursday', '11:05:00', '11:40:00', '10542', 'PS', '4A'),
(241, 'Thursday', '11:40:00', '12:15:00', '10542', 'PK', '4A'),
(242, 'Thursday', '12:15:00', '12:50:00', '10542', 'PK', '4A'),
(243, 'Friday', '07:25:00', '08:00:00', '10971', 'OR', '4A'),
(244, 'Friday', '08:00:00', '08:35:00', '10971', 'OR', '4A'),
(245, 'Friday', '08:35:00', '09:10:00', '10901', 'KP', '4A'),
(246, 'Friday', '09:30:00', '10:05:00', '10901', 'KP', '4A'),
(247, 'Friday', '10:05:00', '10:40:00', '10901', 'SB', '4A'),
(248, 'Friday', '10:40:00', '11:15:00', '10542', 'PA', '4A'),
(249, 'Monday', '07:45:00', '08:20:00', '207197287', 'PK', '4B'),
(250, 'Monday', '08:20:00', '08:55:00', '202190194', 'AG', '4B'),
(251, 'Monday', '09:15:00', '09:50:00', '207197287', 'BI', '4B'),
(252, 'Monday', '09:50:00', '10:25:00', '207197287', 'PS', '4B'),
(253, 'Monday', '10:25:00', '11:00:00', '207197287', 'MT', '4B'),
(254, 'Monday', '11:15:00', '11:50:00', '207197287', 'MT', '4B'),
(255, 'Monday', '12:25:00', '13:00:00', '207197287', 'BP', '4B'),
(256, 'Monday', '12:25:00', '13:00:00', '10204', 'BD', '4B'),
(257, 'Tuesday', '07:25:00', '08:00:00', '207197287', 'BI', '4B'),
(258, 'Tuesday', '08:00:00', '08:35:00', '207197287', 'BI', '4B'),
(259, 'Tuesday', '08:35:00', '09:10:00', '207197287', 'PA', '4B'),
(260, 'Tuesday', '09:30:00', '10:05:00', '10204', 'BD', '4B'),
(261, 'Tuesday', '10:05:00', '10:40:00', '207197287', 'PS', '4B'),
(262, 'Tuesday', '10:40:00', '11:15:00', '207197287', 'BI', '4B'),
(263, 'Tuesday', '11:30:00', '12:05:00', '10901', 'SB', '4B'),
(264, 'Tuesday', '12:05:00', '12:40:00', '207197287', 'BI', '4B'),
(265, 'Wednesday', '07:25:00', '08:00:00', '202190194', 'AG', '4B'),
(266, 'Wednesday', '08:00:00', '08:35:00', '202190194', 'AG', '4B'),
(267, 'Wednesday', '08:35:00', '09:10:00', '10542', 'PL', '4B'),
(268, 'Wednesday', '09:30:00', '10:05:00', '207197287', 'MT', '4B'),
(269, 'Wednesday', '10:05:00', '10:40:00', '207197287', 'MT', '4B'),
(270, 'Wednesday', '10:40:00', '11:15:00', '207197287', 'PK', '4B'),
(271, 'Wednesday', '11:30:00', '12:05:00', '18110102', 'IG', '4B'),
(272, 'Wednesday', '12:05:00', '12:40:00', '18110102', 'IG', '4B'),
(273, 'Thursday', '07:35:00', '08:10:00', '207197287', 'MT', '4B'),
(274, 'Thursday', '08:10:00', '08:45:00', '207197287', 'MT', '4B'),
(275, 'Thursday', '09:05:00', '09:40:00', '207197287', 'PA', '4B'),
(276, 'Thursday', '09:40:00', '10:15:00', '207197287', 'BI', '4B'),
(277, 'Thursday', '10:15:00', '10:50:00', '207197287', 'BI', '4B'),
(278, 'Thursday', '11:05:00', '11:40:00', '207197287', 'PS', '4B'),
(279, 'Thursday', '11:40:00', '12:15:00', '207197287', 'PK', '4B'),
(280, 'Thursday', '12:15:00', '12:50:00', '207197287', 'PK', '4B'),
(281, 'Friday', '07:25:00', '08:00:00', '10901', 'KP', '4B'),
(282, 'Friday', '08:00:00', '08:35:00', '10901', 'KP', '4B'),
(283, 'Friday', '08:35:00', '09:10:00', '207197287', 'PA', '4B'),
(284, 'Friday', '09:30:00', '10:05:00', '10971', 'OR', '4B'),
(285, 'Friday', '10:05:00', '10:40:00', '10971', 'OR', '4B'),
(286, 'Friday', '10:40:00', '11:15:00', '10901', 'SB', '4B'),
(287, 'Monday', '07:45:00', '08:20:00', '10441', 'MT', '5A'),
(288, 'Monday', '08:20:00', '08:55:00', '10441', 'MT', '5A'),
(289, 'Monday', '09:15:00', '09:50:00', '10441', 'BI', '5A'),
(290, 'Monday', '09:50:00', '10:25:00', '10204', 'BD', '5A'),
(291, 'Monday', '10:25:00', '11:00:00', '10571', 'SL', '5A'),
(292, 'Monday', '11:15:00', '11:50:00', '10441', 'BI', '5A'),
(293, 'Monday', '12:25:00', '13:00:00', '202190194', 'AG', '5A'),
(294, 'Monday', '12:25:00', '13:00:00', '202190194', 'AG', '5A'),
(295, 'Tuesday', '07:25:00', '08:00:00', '18110102', 'IG', '5A'),
(296, 'Tuesday', '08:00:00', '08:35:00', '18110102', 'IG', '5A'),
(297, 'Tuesday', '08:35:00', '09:10:00', '10441', 'MT', '5A'),
(298, 'Tuesday', '09:30:00', '10:05:00', '10441', 'BI', '5A'),
(299, 'Tuesday', '10:05:00', '10:40:00', '10441', 'BI', '5A'),
(300, 'Tuesday', '10:40:00', '11:15:00', '10441', 'BI', '5A'),
(301, 'Tuesday', '11:30:00', '12:05:00', '10441', 'PK', '5A'),
(302, 'Tuesday', '12:05:00', '12:40:00', '10542', 'PL', '5A'),
(303, 'Wednesday', '07:25:00', '08:00:00', '10441', 'PA', '5A'),
(304, 'Wednesday', '08:00:00', '08:35:00', '10441', 'PA', '5A'),
(305, 'Wednesday', '08:35:00', '09:10:00', '10441', 'PK', '5A'),
(306, 'Wednesday', '09:30:00', '10:05:00', '10441', 'PS', '5A'),
(307, 'Wednesday', '10:05:00', '10:40:00', '10441', 'PS', '5A'),
(308, 'Wednesday', '10:40:00', '11:15:00', '10441', 'SB', '5A'),
(309, 'Wednesday', '11:30:00', '12:05:00', '10901', 'KP', '5A'),
(310, 'Wednesday', '12:05:00', '12:40:00', '10901', 'KP', '5A'),
(311, 'Thursday', '07:35:00', '08:10:00', '10441', 'MT', '5A'),
(312, 'Thursday', '08:10:00', '08:45:00', '10441', 'MT', '5A'),
(313, 'Thursday', '09:05:00', '09:40:00', '10971', 'OR', '5A'),
(314, 'Thursday', '09:40:00', '10:15:00', '10971', 'OR', '5A'),
(315, 'Thursday', '10:15:00', '10:50:00', '10441', 'PK', '5A'),
(316, 'Thursday', '11:05:00', '11:40:00', '10441', 'PA', '5A'),
(317, 'Thursday', '11:40:00', '12:15:00', '10441', 'BI', '5A'),
(318, 'Thursday', '12:15:00', '12:50:00', '10441', 'BI', '5A'),
(319, 'Friday', '07:25:00', '08:00:00', '10441', 'PS', '5A'),
(320, 'Friday', '08:00:00', '08:35:00', '10441', 'PK', '5A'),
(321, 'Friday', '08:35:00', '09:10:00', '10441', 'MT', '5A'),
(322, 'Friday', '09:30:00', '10:05:00', '202190194', 'AG', '5A'),
(323, 'Friday', '10:05:00', '10:40:00', '10204', 'BD', '5A'),
(324, 'Friday', '10:40:00', '11:15:00', '10441', 'BP', '5A'),
(325, 'Monday', '07:45:00', '08:20:00', '10187', 'MT', '5B'),
(326, 'Monday', '08:20:00', '08:55:00', '10187', 'MT', '5B'),
(327, 'Monday', '09:15:00', '09:50:00', '10204', 'BD', '5B'),
(328, 'Monday', '09:50:00', '10:25:00', '202190194', 'AG', '5B'),
(329, 'Monday', '10:25:00', '11:00:00', '202190194', 'AG', '5B'),
(330, 'Monday', '11:15:00', '11:50:00', '10571', 'SL', '5B'),
(331, 'Monday', '12:25:00', '13:00:00', '10187', 'BI', '5B'),
(332, 'Monday', '12:25:00', '13:00:00', '10187', 'BI', '5B'),
(333, 'Tuesday', '07:25:00', '08:00:00', '10187', 'MT', '5B'),
(334, 'Tuesday', '08:00:00', '08:35:00', '10187', 'BI', '5B'),
(335, 'Tuesday', '08:35:00', '09:10:00', '10187', 'BI', '5B'),
(336, 'Tuesday', '09:30:00', '10:05:00', '18110102', 'IG', '5B'),
(337, 'Tuesday', '10:05:00', '10:40:00', '18110102', 'IG', '5B'),
(338, 'Tuesday', '10:40:00', '11:15:00', '10187', 'BI', '5B'),
(339, 'Tuesday', '11:30:00', '12:05:00', '10542', 'PL', '5B'),
(340, 'Tuesday', '12:05:00', '12:40:00', '10187', 'PK', '5B'),
(341, 'Wednesday', '07:25:00', '08:00:00', '10187', 'PS', '5B'),
(342, 'Wednesday', '08:00:00', '08:35:00', '10187', 'PS', '5B'),
(343, 'Wednesday', '08:35:00', '09:10:00', '10187', 'PA', '5B'),
(344, 'Wednesday', '09:30:00', '10:05:00', '10187', 'PA', '5B'),
(345, 'Wednesday', '10:05:00', '10:40:00', '10901', 'KP', '5B'),
(346, 'Wednesday', '10:40:00', '11:15:00', '10901', 'KP', '5B'),
(347, 'Wednesday', '11:30:00', '12:05:00', '10187', 'PK', '5B'),
(348, 'Wednesday', '12:05:00', '12:40:00', '10187', 'SB', '5B'),
(349, 'Thursday', '07:35:00', '08:10:00', '10971', 'OR', '5B'),
(350, 'Thursday', '08:10:00', '08:45:00', '10971', 'OR', '5B'),
(351, 'Thursday', '09:05:00', '09:40:00', '10187', 'MT', '5B'),
(352, 'Thursday', '09:40:00', '10:15:00', '10187', 'MT', '5B'),
(353, 'Thursday', '10:15:00', '10:50:00', '10187', 'BI', '5B'),
(354, 'Thursday', '11:05:00', '11:40:00', '10187', 'BI', '5B'),
(355, 'Thursday', '11:40:00', '12:15:00', '10187', 'PA', '5B'),
(356, 'Thursday', '12:15:00', '12:50:00', '10187', 'PK', '5B'),
(357, 'Friday', '07:25:00', '08:00:00', '10187', 'PS', '5B'),
(358, 'Friday', '08:00:00', '08:35:00', '10187', 'PK', '5B'),
(359, 'Friday', '08:35:00', '09:10:00', '10187', 'MT', '5B'),
(360, 'Friday', '09:30:00', '10:05:00', '10187', 'BP', '5B'),
(361, 'Friday', '10:05:00', '10:40:00', '202190194', 'AG', '5B'),
(362, 'Friday', '10:40:00', '11:15:00', '10204', 'BD', '6A'),
(363, 'Monday', '07:45:00', '08:20:00', '18110102', 'IG', '6A'),
(364, 'Monday', '08:20:00', '08:55:00', '18110102', 'IG', '6A'),
(365, 'Monday', '09:15:00', '09:50:00', '10667', 'PK', '6A'),
(366, 'Monday', '09:50:00', '10:25:00', '10667', 'PK', '6A'),
(367, 'Monday', '10:25:00', '11:00:00', '10901', 'KP', '6A'),
(368, 'Monday', '11:15:00', '11:50:00', '10901', 'KP', '6A'),
(369, 'Monday', '12:25:00', '13:00:00', '10667', 'BI', '6A'),
(370, 'Monday', '12:25:00', '13:00:00', '10667', 'BI', '6A'),
(371, 'Tuesday', '07:25:00', '08:00:00', '10667', 'MT', '6A'),
(372, 'Tuesday', '08:00:00', '08:35:00', '10667', 'MT', '6A'),
(373, 'Tuesday', '08:35:00', '09:10:00', '10667', 'BP', '6A'),
(374, 'Tuesday', '09:30:00', '10:05:00', '10667', 'PS', '6A'),
(375, 'Tuesday', '10:05:00', '10:40:00', '10667', 'PS', '6A'),
(376, 'Tuesday', '10:40:00', '11:15:00', '10971', 'OR', '6A'),
(377, 'Tuesday', '11:30:00', '12:05:00', '10971', 'OR', '6A'),
(378, 'Tuesday', '12:05:00', '12:40:00', '10204', 'BD', '6A'),
(379, 'Wednesday', '07:25:00', '08:00:00', '10667', 'MT', '6A'),
(380, 'Wednesday', '08:00:00', '08:35:00', '10667', 'MT', '6A'),
(381, 'Wednesday', '08:35:00', '09:10:00', '10667', 'PA', '6A'),
(382, 'Wednesday', '09:30:00', '10:05:00', '10667', 'PA', '6A'),
(383, 'Wednesday', '10:05:00', '10:40:00', '10571', 'SL', '6A'),
(384, 'Wednesday', '10:40:00', '11:15:00', '10542', 'PL', '6A'),
(385, 'Wednesday', '11:30:00', '12:05:00', '10667', 'BI', '6A'),
(386, 'Wednesday', '12:05:00', '12:40:00', '10667', 'BI', '6A'),
(387, 'Thursday', '07:35:00', '08:10:00', '202190194', 'AG', '6A'),
(388, 'Thursday', '08:10:00', '08:45:00', '202190194', 'AG', '6A'),
(389, 'Thursday', '09:05:00', '09:40:00', '10667', 'MT', '6A'),
(390, 'Thursday', '09:40:00', '10:15:00', '10667', 'MT', '6A'),
(391, 'Thursday', '10:15:00', '10:50:00', '10667', 'PA', '6A'),
(392, 'Thursday', '11:05:00', '11:40:00', '10667', 'PS', '6A'),
(393, 'Thursday', '11:40:00', '12:15:00', '10667', 'BI', '6A'),
(394, 'Thursday', '12:15:00', '12:50:00', '10667', 'BI', '6A'),
(395, 'Friday', '07:25:00', '08:00:00', '202190194', 'AG', '6A'),
(396, 'Friday', '08:00:00', '08:35:00', '10667', 'PK', '6A'),
(397, 'Friday', '08:35:00', '09:10:00', '10667', 'PK', '6A'),
(398, 'Friday', '09:30:00', '10:05:00', '10204', 'BD', '6A'),
(399, 'Friday', '10:05:00', '10:40:00', '10667', 'BI', '6A'),
(400, 'Friday', '10:40:00', '11:15:00', '10667', 'SB', '6A'),
(401, 'Monday', '07:45:00', '08:20:00', '10462', 'PK', '6B'),
(402, 'Monday', '08:20:00', '08:55:00', '10462', 'PK', '6B'),
(403, 'Monday', '09:15:00', '09:50:00', '18110102', 'IG', '6B'),
(404, 'Monday', '09:50:00', '10:25:00', '18110102', 'IG', '6B'),
(405, 'Monday', '10:25:00', '11:00:00', '10971', 'OR', '6B'),
(406, 'Monday', '11:15:00', '11:50:00', '10971', 'OR', '6B'),
(407, 'Monday', '12:25:00', '13:00:00', '10901', 'KP', '6B'),
(408, 'Monday', '12:25:00', '13:00:00', '10901', 'KP', '6B'),
(409, 'Tuesday', '07:25:00', '08:00:00', '10462', 'PS', '6B'),
(410, 'Tuesday', '08:00:00', '08:35:00', '10462', 'PS', '6B'),
(411, 'Tuesday', '08:35:00', '09:10:00', '10462', 'BP', '6B'),
(412, 'Tuesday', '09:30:00', '10:05:00', '10462', 'MT', '6B'),
(413, 'Tuesday', '10:05:00', '10:40:00', '10462', 'MT', '6B'),
(414, 'Tuesday', '10:40:00', '11:15:00', '10462', 'BI', '6B'),
(415, 'Tuesday', '11:30:00', '12:05:00', '10204', 'BD', '6B'),
(416, 'Tuesday', '12:05:00', '12:40:00', '10462', 'BI', '6B'),
(417, 'Wednesday', '07:25:00', '08:00:00', '10462', 'PA', '6B'),
(418, 'Wednesday', '08:00:00', '08:35:00', '10462', 'PA', '6B'),
(419, 'Wednesday', '08:35:00', '09:10:00', '10462', 'MT', '6B'),
(420, 'Wednesday', '09:30:00', '10:05:00', '10462', 'MT', '6B'),
(421, 'Wednesday', '10:05:00', '10:40:00', '10542', 'PL', '6B'),
(422, 'Wednesday', '10:40:00', '11:15:00', '10571', 'SL', '6B'),
(423, 'Wednesday', '11:30:00', '12:05:00', '10462', 'BI', '6B'),
(424, 'Wednesday', '12:05:00', '12:40:00', '10462', 'BI', '6B'),
(425, 'Thursday', '07:35:00', '08:10:00', '10462', 'PA', '6B'),
(426, 'Thursday', '08:10:00', '08:45:00', '10462', 'PS', '6B'),
(427, 'Thursday', '09:05:00', '09:40:00', '202190194', 'AG', '6B'),
(428, 'Thursday', '09:40:00', '10:15:00', '202190194', 'AG', '6B'),
(429, 'Thursday', '10:15:00', '10:50:00', '10462', 'MT', '6B'),
(430, 'Thursday', '11:05:00', '11:40:00', '10462', 'MT', '6B'),
(431, 'Thursday', '11:40:00', '12:15:00', '10462', 'BI', '6B'),
(432, 'Thursday', '12:15:00', '12:50:00', '10462', 'BI', '6B'),
(433, 'Friday', '07:25:00', '08:00:00', '10462', 'BI', '6B'),
(434, 'Friday', '08:00:00', '08:35:00', '202190194', 'AG', '6B'),
(435, 'Friday', '08:35:00', '09:10:00', '10204', 'BD', '6B'),
(436, 'Friday', '09:30:00', '10:05:00', '10462', 'PK', '6B'),
(437, 'Friday', '10:05:00', '10:40:00', '10462', 'PK', '6B'),
(438, 'Friday', '10:40:00', '11:15:00', '10462', 'SB', '6B');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kode_kelas` varchar(2) NOT NULL,
  `kode_wali_kelas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kode_kelas`, `kode_wali_kelas`) VALUES
('1A', 19),
('1B', 20),
('2A', 21),
('2B', 22),
('3A', 23),
('3B', 24),
('4A', 25),
('4B', 26),
('5A', 27),
('5B', 28),
('6A', 29),
('6B', 30);

-- --------------------------------------------------------

--
-- Table structure for table `kenaikan_kelas`
--

CREATE TABLE `kenaikan_kelas` (
  `kode_konfirmasi` int(11) NOT NULL,
  `status` varchar(5) NOT NULL,
  `nisn` varchar(15) NOT NULL,
  `kode_kelas` varchar(2) NOT NULL,
  `tahun` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `kode_mata_pelajaran` varchar(2) NOT NULL,
  `nama_mata_pelajaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`kode_mata_pelajaran`, `nama_mata_pelajaran`) VALUES
('AG', 'Pendidikan Agama dan Budi Pekerti'),
('BD', 'Bahasa Sunda'),
('BI', 'Bahasa Indonesia'),
('BP', 'Bimbingan Penyuluhan'),
('IG', 'Bahasa Inggris'),
('KP', 'Teknologi Komunikasi dan Informasi'),
('KT', 'Keterampilan'),
('MT', 'Matematika'),
('OR', 'Pendidikan Jasmani Olahraga dan Kesehatan'),
('PA', 'Ilmu Pengetahuan Alam'),
('PK', 'Pendidikan Pancasila dan Kewarganegaraan'),
('PL', 'Pendidikan Lingkungan Hidup'),
('PS', 'Ilmu Pengetahuan Sosial'),
('SB', 'Seni Budaya dan Prakarya'),
('SL', 'Seni Lukis'),
('SS', 'Seni Suara');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_akhir`
--

CREATE TABLE `nilai_akhir` (
  `no_nilai` int(11) NOT NULL,
  `np` int(11) DEFAULT NULL,
  `predikat_np` varchar(1) DEFAULT NULL,
  `deskripsi_np` varchar(500) DEFAULT NULL,
  `npt` int(11) DEFAULT NULL,
  `predikat_npt` varchar(1) DEFAULT NULL,
  `deskripsi_npt` varchar(500) DEFAULT NULL,
  `kode_mata_pelajaran` varchar(2) NOT NULL,
  `kode_kelas` varchar(2) NOT NULL,
  `nisn` varchar(15) NOT NULL,
  `tahun` varchar(9) NOT NULL,
  `semester` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_harian`
--

CREATE TABLE `nilai_harian` (
  `no_nilai` int(11) NOT NULL,
  `np1` int(3) DEFAULT NULL,
  `np2` int(3) DEFAULT NULL,
  `np3` int(3) DEFAULT NULL,
  `np4` int(3) DEFAULT NULL,
  `np5` int(3) DEFAULT NULL,
  `nk1` int(3) DEFAULT NULL,
  `nk2` int(3) DEFAULT NULL,
  `nk3` int(3) DEFAULT NULL,
  `nk4` int(3) DEFAULT NULL,
  `nk5` int(3) DEFAULT NULL,
  `pts` int(3) DEFAULT NULL,
  `kode_mata_pelajaran` varchar(2) NOT NULL,
  `kode_kelas` varchar(2) NOT NULL,
  `nisn` varchar(15) NOT NULL,
  `tahun` varchar(9) NOT NULL,
  `semester` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `no_presensi` int(11) NOT NULL,
  `tanggal` varchar(10) NOT NULL,
  `keterangan` varchar(5) NOT NULL,
  `nisn` varchar(15) NOT NULL,
  `kode_jadwal` int(11) NOT NULL,
  `tahun` varchar(9) NOT NULL,
  `semester` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(15) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `nis` varchar(15) NOT NULL,
  `jenis_kelamin_siswa` varchar(10) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` varchar(10) NOT NULL,
  `alamat_siswa` varchar(300) NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `pekerjaan_ayah` varchar(30) NOT NULL,
  `pekerjaan_ibu` varchar(30) NOT NULL,
  `jalan` varchar(300) NOT NULL,
  `kelurahan` varchar(30) NOT NULL,
  `kecamatan` varchar(30) NOT NULL,
  `kabupaten` varchar(30) NOT NULL,
  `provinsi` varchar(30) NOT NULL,
  `nama_wali` varchar(100) DEFAULT NULL,
  `pekerjaan_wali` varchar(30) DEFAULT NULL,
  `alamat_wali` varchar(300) DEFAULT NULL,
  `katasandi_siswa` varchar(255) NOT NULL,
  `jenis_akun` int(1) NOT NULL,
  `kode_kelas` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nama_siswa`, `nis`, `jenis_kelamin_siswa`, `tempat_lahir`, `tanggal_lahir`, `alamat_siswa`, `nama_ayah`, `nama_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `jalan`, `kelurahan`, `kecamatan`, `kabupaten`, `provinsi`, `nama_wali`, `pekerjaan_wali`, `alamat_wali`, `katasandi_siswa`, `jenis_akun`, `kode_kelas`) VALUES
('0071347603', 'Aeykall Muhammad Alazhar', '1718371040098', 'Laki-Laki', 'Bandung', '03-12-2007', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0072344887', 'Kayla Natalie Zaskia', '1718371040106', 'Perempuan', 'Bandung', '22-12-2007', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0072811603', 'Ruben Ariadika Djajakusumah', '1718371040159', 'Laki-Laki', 'Bandung', '13-04-2007', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0074835377', 'Fransisca Xaveria Widawanti Hizkia Rabdi', '1718371040166', 'Perempuan', 'Bandung', '22-12-2007', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0074984077', 'Andhika Tama Nathaniel Sitanggang', '1718371040099', 'Laki-Laki', 'Bandung', '05-11-2007', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0076257422', 'Novelin Kayla Audriana', '1718371040146', 'Perempuan', 'Bandung', '07-12-2007', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0077502611', 'Anastasha Therina Putri', '1718371040149', 'Perempuan', 'Bandung', '18-11-2007', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0077699583', 'Ellena Yemima', '1718371040163', 'Perempuan', 'Tangerang', '11-04-2007', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0078306260', 'Keisya Choirunisa Supandi', '1718371040142', 'Perempuan', 'Bandar Lampung', '03-09-2007', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0078817042', 'Hutapea Bob Polin Andreas', '1718371040102', 'Laki-Laki', 'Bandung', '18-10-2007', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0079915425', 'Katherine Suwardi', '1718371040141', 'Perempuan', 'Batam', '24-09-2007', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0081141917', 'Asheria Elissa Putri', '1718371040115', 'Perempuan', 'Bandung', '19-04-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0081166224', 'Kent Russel', '1718371040155', 'Laki-Laki', 'Bandung', '28-07-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0081246914', 'Mikael Wijaya', '1718371030178', 'Laki-Laki', 'Bandung', '25-09-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0081268684', 'Evan Natanael Ferdiar', '1718371040117', 'Laki-Laki', 'Pontianak', '18-05-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0081485299', 'Tifani Tesalonika', '171837104112', 'Perempuan', 'Jakarta', '01-10-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0081497220', 'Geovanni Kevin Putera Hariyadi', '1718371040119', 'Laki-Laki', 'Jakarta', '17-05-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0081497671', 'Manullang Gilliant Gracia', '1718371040122', 'Perempuan', 'Bandung', '31-03-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0081544427', 'Jonathan Sebastian Christianto Hamonangan S', '1718371030207', 'Laki-Laki', 'Bandung', '19-10-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0081946596', 'Siahaan, Noah Gregorian Parasian', '1718371030226', 'Laki-Laki', 'Bandung', '26-04-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0082104860', 'Ketaren, Sherina Jore', '1718371040108', 'Perempuan', 'Bandung', '13-10-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0082181328', 'William Sebastian Ressa', '1718371040165', 'Laki-Laki', 'Samarinda', '09-09-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0082571102', 'Siringo Ringo Rifaldo Lukas', '1718371040148', 'Laki-Laki', 'Bandung', '14-05-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0082607604', 'Darrell Leonard', '1718371030169', 'Laki-Laki', 'Bandung', '03-12-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0082632363', 'Lukas Richardo Hasiholan Hutagalung', '1718371040130', 'Laki-Laki', 'Medan', '03-07-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0082650705', 'Yohana Kezia Amagracia', '1718371030195', 'Perempuan', 'Bandung', '29-09-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0082795797', 'Rafael Febriano Gavin', '1718371030180', 'Laki-Laki', 'Bandung', '18-11-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0082863529', 'Angellica Tegar Sanjaya', '1718371040134', 'Perempuan', 'Bandung', '22-12-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0082953386', 'Maria Angel Kartini', '1718371040157', 'Perempuan', 'Cimahi', '21-04-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0083369001', 'Alfalencia Briliandtine Carlinda Da Conceicao Silva', '1718371040164', 'Perempuan', 'Jember', '16-09-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0083431823', 'Cristo Croccifixio Chandratama', '1718371040116', 'Laki-Laki', 'Bandung', '25-09-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0083461152', 'Ignatius Christian Pinandito', '1718371040121', 'Laki-Laki', 'Bandung', '18-06-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0083478332', 'Andrian Muenzesheimer', '1718371040113', 'Laki-Laki', 'Denpasar', '01-04-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0083524523', 'Angellina Tegar Sanjaya', '1718371040114', 'Perempuan', 'Bandung', '22-12-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0083538153', 'Vianny Desianty Tanugraha', '1718371030214', 'Perempuan', 'Bandung', '21-12-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0083631116', 'Kienan Aditi Nareswari', '1718371030224', 'Perempuan', 'Bandung', '12-09-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0083643090', 'Nathanael', '1718371040124', 'Laki-Laki', 'Bandung', '10-09-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0083996289', 'Filia Permata Rolan', '1718371040118', 'Perempuan', 'Bandung', '08-07-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0084104616', 'Anastasya Irena Sihombing', '1718371040150', 'Perempuan', 'Bandung', '20-01-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0084143705', 'Cheesy Intan Frilisya Hutahaean', '1718371030197', 'Perempuan', 'Medan', '04-12-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0084143966', 'Gabriel Jose Septianus Kaunang', '1718371030196', 'Laki-Laki', 'Bandung', '29-09-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0084319958', 'Rohfel Adyaraka Cristianugrah Puspoasmoro', '1718371040125', 'Laki-Laki', 'Bandung', '06-02-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0084378481', 'Mario David Sianturi', '1718371030177', 'Laki-Laki', 'Medan', '09-12-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0084423319', 'Michelle Isaura Johan', '1718371030198', 'Perempuan', 'Bandung', '10-09-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0084450406', 'Uktolseja Matthew Jhonalo Putra', '1718371040161', 'Laki-Laki', 'Bandung', '19-08-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0084502927', 'Vrancisca Ceciliana Brinata Simalango', '1718371040127', 'Perempuan', 'Bandung', '20-03-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0084512098', 'Angellica Caroline', '1718371040152', 'Perempuan', 'Bandung', '03-08-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0084512807', 'Friska Livina Satyaman', '1718371040101', 'Perempuan', 'Bandung', '14-01-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0084681914', 'Theodora Jessica Viorentina Boenadi', '1718371040110', 'Perempuan', 'Bandung', '28-03-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0085055729', 'Joses Alfredo Surbakti', '1718371040105', 'Laki-Laki', 'Bandung', '27-01-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0085141969', 'Exarahel Rovenesia Marpaung', '1718371040137', 'Perempuan', 'Karawang', '07-09-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0085143131', 'Ida Ayu Devika Saraswati', '1718371040120', 'Perempuan', 'Bandung', '25-05-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0085314174', 'Pasaribu Daniel Christian William', '1718371030185', 'Laki-Laki', 'Bandung', '18-12-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0085372508', 'Theresia Joan Thomagna', '1718371040111', 'Perempuan', 'Bandung', '05-03-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0085406328', 'Soplantila Nefaro Christ Alexander', '1718371040109', 'Laki-Laki', 'Bandung', '13-03-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0085416827', 'Micael', '1718371040144', 'Laki-Laki', 'Bandung', '09-04-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0086098285', 'Nathanael Ferdinand Indra', '1718371030210', 'Laki-Laki', 'Bandung', '27-11-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0086333653', 'Jevon Mayer Loppies', '1718371040104', 'Laki-Laki', 'Bandung', '26-02-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0086368712', 'Luciano Situmorang', '1718371040143', 'Laki-Laki', 'Bandung', '27-06-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0086468419', 'Cathrine Paulina', '1718371030184', 'Perempuan', 'Bandung', '22-12-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0086608446', 'Regina Luciana Situmeang', '1718371040147', 'Perempuan', 'Bandung', '15-10-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0086773214', 'Prawin Abhinas', '1718371040107', 'Laki-Laki', 'Bandung', '30-03-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0086827901', 'Kevin Alexander', '1718371030189', 'Laki-Laki', 'Bandung', '06-11-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0086931511', 'Angel Pricilla Sagala', '1718371040151', 'Perempuan', 'Jakarta', '27-03-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0087651778', 'Cheryl Yoana', '1718371040100', 'Perempuan', 'Bandung', '13-01-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0087773854', 'Quelland Viljo Archer', '1718371040158', 'Laki-Laki', 'Bandung', '21-07-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0087918483', 'Shierlyn Theana', '1718371030233', 'Perempuan', 'Banjar', '30-10-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0087942321', 'Krysante Shiren Bianinova', '1718371030208', 'Perempuan', 'Bandung', '12-09-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0088112817', 'Richard Onggo Raharjo', '1718371040132', 'Laki-Laki', 'Bandung', '12-03-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0088125320', 'Andri Wahana', '1718371040162', 'Laki-Laki', 'Bandung', '30-08-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0088306584', 'Prince Gideon Pratama Silaban', '1718371040131', 'Laki-Laki', 'Dolok Sanggul', '05-05-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0088320403', 'Irene Shevanya Br Ginting', '1718371040103', 'Perempuan', 'Bandung', '13-04-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0088409339', 'Joanne Yeira Chrisa Elani', '1718371040139', 'Perempuan', 'Bandung', '07-04-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0088493448', 'George Nezta Christian Mourinho', '1718371030173', 'Laki-Laki', 'Bandung', '03-09-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0088539328', 'Juan Ananda', '1718371040140', 'Laki-Laki', 'Bandung', '24-04-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0088596931', 'Christian Bryan Haposan', '1718371030221', 'Laki-Laki', 'Bandung', '24-10-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0088849908', 'Silalahi Hans Cando Kristian', '1718371040126', 'Laki-Laki', 'Bandung', '12-04-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0089008002', 'Cristina Anggreani Sihotang', '1718371040135', 'Perempuan', 'Bandung', '26-09-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0089157602', 'Daniel Indrawan', '1718371040136', 'Laki-Laki', 'Bandung', '08-03-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0089248847', 'Lydia Sifora Kristacia Simorangkir', '1718371040156', 'Perempuan', 'Jakarta', '04-09-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0089285043', 'Athaya Sena Wigena', '1718371040153', 'Laki-Laki', 'Bandung', '19-02-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0089394257', 'Amara Meisya Kristy', '1718371040133', 'Perempuan', 'Bandung', '18-05-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0089479334', 'Ezra Yunita', '1718371030186', 'Perempuan', 'Bandung', '13-06-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0089669344', 'Audrey Rahayu Anjani Simanjuntak', '1718371040160', 'Perempuan', 'Bandung', '29-01-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0089784652', 'Arya Faren Haryanto Souw', '1718371030231', 'Laki-Laki', 'Jakarta', '28-11-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0089830021', 'Natalie Priska Diastina', '1718371030179', 'Perempuan', 'Balikpapan', '24-12-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0089864480', 'Munthe Laura Lois Meysiana', '1718371040123', 'Perempuan', 'Bandung', '06-05-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6B'),
('0089886580', 'Habeahan Yonathan Dwi Putra', '1718371040154', 'Laki-Laki', 'Bandung', '11-11-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0089980671', 'Jonathan Waikaya', '1718371040138', 'Laki-Laki', 'Bandung', '25-08-2008', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0091013634', 'Rafaella Quinnsha Indah Nauli Panjaitan', '1718371020273', 'Laki-Laki', 'Bandung', '10-11-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0091157771', 'Joanna Alexandra Glorya Magdalena Gultom', '1718371030187', 'Perempuan', 'Bandung', '27-04-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0091248500', 'Gendis Agnesia Bekker', '1718371030172', 'Perempuan', 'Bandung', '10-05-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0091445341', 'Gathan Deckyqa', '1718371030205', 'Laki-Laki', 'Bandung', '16-04-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0091522643', 'Antonia Ganindita Nugrahaningtyas', '1718371030201', 'Perempuan', 'Bandung', '09-10-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0091652709', 'Zavdyel Davyn Keyta Tatia', '1718371030229', 'Laki-Laki', 'Bandung', '05-09-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0091661834', 'Clara Stevania Anggraini Simarmata', '1718371030202', 'Perempuan', 'Bandung', '27-10-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0091675633', 'Jessy Vintian Suasti Telaumbanua', '1718371030176', 'Perempuan', 'Balikpapan', '07-10-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0091689347', 'Gavin Gunawan', '1718371030171', 'Laki-Laki', 'Bandung', '27-08-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0091710602', 'Lazuardi Manasye Ludyn Panjaitan', '1718371030190', 'Laki-Laki', 'Bandung', '27-07-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0091771009', 'Loudya Chintya Anggreny', '1718371020255', 'Perempuan', 'Bandung', '02-12-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0091779439', 'Galang Alexander Febian', '1718371020250', 'Laki-Laki', 'Bandung', '20-02-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0091785201', 'Marcellino Gema Rahmadi', '1718371030191', 'Laki-Laki', 'Bandung', '06-05-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0092198425', 'Sari Timothy Pandjaitan', '1718371030212', 'Perempuan', 'Bandung', '02-06-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0092286173', 'Nathanael Ely Socrates Sitanggang', '1718371020243', 'Laki-Laki', 'Jakarta', '26-12-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0093186425', 'Ivander Rafa Aryasatya', '1718371030206', 'Laki-Laki', 'Semarang', '05-01-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0093219759', 'Yosia Ethan Benaya', '1718371030182', 'Laki-Laki', 'Bandung', '05-05-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0093219760', 'Alexius Dwi Ajie Julianto', '1718371030183', 'Laki-Laki', 'Bandung', '20-07-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0093306832', 'Fransiskus Susilo Yudho Prabowo', '1920037104063', 'Laki-Laki', 'Surabaya', '05-05-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0093443398', 'Andhini Nathania Sitanggang', '1718371020247', 'Perempuan', 'Bandung', '08-12-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0093535784', 'Steven Kurniawan Tommo', '1718371030227', 'Laki-Laki', 'Bandung', '21-01-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0093622296', 'Evanders Daniello Alvares', '1718371030204', 'Laki-Laki', 'Bandung', '22-06-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0093858478', 'Reyhans Samuel Pattimukay', '1718371020288', 'Laki-Laki', 'Bandung', '31-05-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0094421312', 'Tampubolon Joshua Agustinus', '1718371030213', 'Laki-Laki', 'Bandung', '03-05-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0094445258', 'Aurelia Gracia Romauli Gultom', '1718371030168', 'Perempuan', 'Bandung', '03-10-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0094467616', 'Stanley Cliff Cristiant', '1718371030193', 'Laki-Laki', 'Bandung', '22-05-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0094720875', 'Vania', '1718371020260', 'Perempuan', 'Bandung', '19-08-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0094742520', 'Jeriel Gorga Parlindungan Gurning', '1718371020268', 'Laki-Laki', 'Bandung', '13-11-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0094742997', 'Joshua Marley Putranto', '1718371030188', 'Laki-Laki', 'Bandung', '25-09-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0094808861', 'Warouw Marcello Ricardo Izecson', '1718371030194', 'Laki-Laki', 'Bandung', '10-03-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0094900100', 'Girsang, Veronica Mayhanthree', '1718371030222', 'Perempuan', 'Bandung', '26-05-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0094942203', 'Gracia Yedija Blessing', '1718371030174', 'Perempuan', 'Bogor', '02-06-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0095209228', 'Nicholas Jevon Bastian', '1718371020244', 'Laki-Laki', 'Bandung', '11-11-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0095355952', 'Dimas Sonagar Wijaya', '1718371030170', 'Laki-Laki', 'Bandung', '19-09-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0095376386', 'Ayubhian Laurent Situmorang', '1718371030217', 'Laki-Laki', 'Bandung', '24-10-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0095655700', 'Abigail Zippora Moses', '1718371030215', 'Perempuan', 'Bandung', '17-05-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0095745762', 'Jeremia Febrian Sembiring', '1718371030223', 'Laki-Laki', 'Bandung', '18-02-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0096072325', 'Munthe, Luke Teofilus', '1718371030209', 'Laki-Laki', 'Bandung', '14-07-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0096235517', 'Michael Arnold Jansen', '1718371040145', 'Laki-Laki', 'Surakarta', '13-01-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '6A'),
('0096575619', 'Gracio Abigael Sembiring', '1819371040059', 'Laki-Laki', 'Bandung', '09-03-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0096614521', 'Marsyalom Roma Uli Pakpahan', '1718371030225', 'Perempuan', 'Cimahi', '06-08-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0096628652', 'Maria Angelina Sinabutar', '1718371020256', 'Perempuan', 'Bandung', '09-07-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0096762694', 'Brodie Othello Surbakti', '1718371030220', 'Laki-Laki', 'Bandung', '11-03-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0097225839', 'Valentina Feby Triandini', '1718371030228', 'Perempuan', 'Bandung', '12-02-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0097429299', 'Samuel Adrian Samosir', '1718371030211', 'Laki-Laki', 'Bandung Barat', '16-04-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0097435061', 'Benedictus Devano Putra Triantoro', '1718371030218', 'Laki-Laki', 'Bandung', '29-01-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0097845242', 'Axel Novian Mulyana', '1718371020277', 'Laki-Laki', 'Bandung', '13-11-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0097896194', 'Deandra Aryasatya Santana', '1718371020245', 'Laki-Laki', 'Surabaya', '27-10-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0097907080', 'Regina Ayu Setyaningsih', '1718371030192', 'Perempuan', 'Cimahi', '12-07-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0098130823', 'Gavrila Sava Manuel Rorong', '1718371020266', 'Laki-Laki', 'Bandung', '20-10-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0098231894', 'Juventius Bernie Suryawan', '1718371020269', 'Laki-Laki', 'Bandung', '18-10-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0098465994', 'Arsenio Damar Satria', '1718371020263', 'Laki-Laki', 'Yogyakarta', '04-10-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0098474117', 'Nathan Saputra', '1718371020283', 'Laki-Laki', 'Jakarta', '10-10-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0098487313', 'Dominicus Alvino Adhitya', '1718371030203', 'Laki-Laki', 'Magelang', '07-06-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0098559905', 'Jovan Nabil Sadono', '1920037104064', 'Laki-Laki', 'Bekasi', '25-11-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0098636664', 'Jedidiah Dillon', '1718371030175', 'Laki-Laki', 'Bandung', '19-03-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0098687741', 'Satria Farell Ramdani Wijaya', '1718371030199', 'Laki-Laki', 'Bandung', '07-04-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0098782133', 'Tewuh Feodora Callysta', '1718371030200', 'Perempuan', 'Bandung', '05-04-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0098966090', 'Vrancisco Ceciliano Brinato Simalango', '1718371030181', 'Laki-Laki', 'Bandung', '16-12-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0099457228', 'Olivia Christine Nauli Candycius', '1718371030232', 'Perempuan', 'Bandung', '31-05-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5B'),
('0099781737', 'Zefanya L Panjaitan', '1718371030230', 'Perempuan', 'Bandung', '02-04-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0099865492', 'Jovia Natasya', '1920371050062', 'Perempuan', 'BANDUNG', '19-01-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0099885067', 'Jessica Nathalie Immanuela', '1819371030058', 'Perempuan', 'Bandung', '05-12-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0099996395', 'Arvica Joice Azalia', '1718371030167', 'Perempuan', 'Blitar', '10-08-2009', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '5A'),
('0101483602', 'Kevin Rafael Theja', '1718371020242', 'Laki-Laki', 'Bandung', '06-02-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0101541758', 'Giovani Cornelius Aaron Yuwana', '1718371020281', 'Laki-Laki', 'Bandung', '09-09-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0101870913', 'Katrine Sharon Sianturi', '1718371020241', 'Perempuan', 'Bandung', '20-10-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0102316947', 'Vincentius Pedroza Bunadi', '1718370000000', 'Laki-Laki', 'Bandung', '12-12-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0102322095', 'Radita Purwana Indrawardana', '1718371010328', 'Laki-Laki', 'Kuningan', '12-12-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0102765335', 'Ignasius Kean Saverio', '1718371020251', 'Laki-Laki', 'Bandung', '02-10-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0102877261', 'Rafael Henricho Kennard Halomoan Gultom', '1718371020285', 'Perempuan', 'Bandung', '28-11-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0102904493', 'Andhika Tri Adiguna', '1718371020246', 'Laki-Laki', 'Purwodadi', '21-10-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0103504654', 'Rachel Elisabeth Siringo Ringo', '1718371020284', 'Perempuan', 'Bandung', '05-04-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0103656663', 'Maximilianus Situmorang', '1718371020271', 'Laki-Laki', 'Bandung', '14-08-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0103706962', 'Osfred Jaehwa Hendrawan', '1718371020258', 'Laki-Laki', 'Bandung', '23-02-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0104167661', 'Davina Ruth Yemima Pakpahan', '1718371020278', 'Laki-Laki', 'Bandung', '22-06-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0104453871', 'Giovanni Delano Sitepu', '1718371020282', 'Laki-Laki', 'Garut', '13-03-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0104577836', 'Rephael Alexandre Derren', '1718371020274', 'Perempuan', 'Bandung', '14-04-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0104824931', 'Jeremias Bara Mariano Kuen', '1718371020239', 'Laki-Laki', 'Bandung', '11-11-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0104901748', 'Kevin Majesta Lingga', '1718371010299', 'Laki-Laki', 'Tasikmalaya', '13-09-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0104908029', 'Yuventius Brama Wibisono', '1718371020275', 'Perempuan', 'Bandung', '10-06-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0105071963', 'Arion Matthew Silaen', '1718371020235', 'Laki-Laki', 'Magelang', '03-08-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0105200830', 'Alvaro Asyer Manuelo Sagala', '1718371020234', 'Laki-Laki', 'Palembang', '20-12-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0105253965', 'Michelle Felisha Lexandra Pencawan', '1718371020272', 'Perempuan', 'Bandung Barat', '12-07-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0105381655', 'Rafael Roy Aldrich Sagala', '1718371020259', 'Laki-Laki', 'Bandung', '07-09-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0105610074', 'Ardifani Christ Ibrani Kapoh', '1920371040061', 'Laki-Laki', 'Tangerang', '01-11-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0105770461', 'Gracia Ria Zipora Sitorus', '1718371020267', 'Perempuan', 'Bandung', '08-02-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0106026642', 'Rifael Agustinus', '1718371010329', 'Laki-Laki', 'Bandung', '04-08-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0106046604', 'Dileon Abigael Sirait', '1718371020279', 'Laki-Laki', 'Bandung', '11-09-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0106079378', 'Giftisaac Lintong', '1718371020280', 'Laki-Laki', 'Bandung', '22-10-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0106083183', 'Teresa Parparulan Mamahang Gultom', '1718371020286', 'Perempuan', 'Bandung', '16-12-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0106116620', 'Antonius Wahyu Sulistyanto Eko Saputro', '1718371020248', 'Laki-Laki', 'Bandung', '20-09-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0106431940', 'Daniel Armandesland Tampubolon', '1718370000000', 'Laki-Laki', 'Bandung', '11-12-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0106575991', 'Athalia Anindhita Wigena', '1718371020264', 'Laki-Laki', 'Bandung', '08-06-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0106947177', 'Andrew Alvaro Tommo', '1718371020276', 'Laki-Laki', 'Bandung', '11-07-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0107115205', 'Jesicca Karoline', '1718371020254', 'Perempuan', 'Bandung', '10-01-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0107147057', 'Abigail Florencia Indra', '1718371010290', 'Perempuan', 'Bandung', '12-11-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0107303635', 'Eirika Jasmine Fransisca', '1718371020237', 'Perempuan', 'Bandung', '09-06-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0107375620', 'Ari Kanjaya Septian', '1718371010312', 'Laki-Laki', 'Bandung', '26-09-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0107691727', 'Jessy Carolina Wardani Samosir', '1718371020240', 'Perempuan', 'Bandung', '10-03-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0107704281', 'Glory Callysta Ellysia', '1819371020061', 'Perempuan', 'Bandung', '12-08-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0108105472', 'Caelistiello Benedicto Amadeo Chandratama', '1718371020236', 'Laki-Laki', 'Bandung', '21-02-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0108223021', 'Lady Michelle Thessalouniqa', '1718371020270', 'Perempuan', 'Bandung', '28-09-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0108229949', 'Rachel  Sari Putri', '1718371020337', 'Perempuan', 'Bandung', '05-01-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0109147605', 'Ivanna Debora Deyasari Tanuwijaya', '1718371020253', 'Laki-Laki', 'Palu', '30-04-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0109247760', 'Fabian Sachijanitra', '1718371010318', 'Laki-Laki', 'Bandung', '15-12-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0109266623', 'Andoni Lionel Alviano Purba', '1718371020262', 'Laki-Laki', 'Bandung', '23-07-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0109650213', 'Jeremia Timoti Panjaitan', '1718371020238', 'Laki-Laki', 'Bandung Barat', '05-03-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4B'),
('0109971851', 'Maura Evarista Putri Arianna', '1718371020257', 'Perempuan', 'Semarang', '30-09-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0109976302', 'Devina Nathania Hartono', '1718371020265', 'Perempuan', 'Bandung', '23-08-2010', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '4A'),
('0111083800', 'Celine Ester Esandara', '1718371010313', 'Perempuan', 'Bandung', '12-09-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0111185484', 'Vania Angelica Simbolon', '1718371010333', 'Perempuan', 'Bandung', '16-02-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0111385113', 'Adrian Aryasatya Ventura', '1718371010291', 'Laki-Laki', 'Bandung', '12-09-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0111537037', 'Kezia Joseyvine Sembiring', '1718370000000', 'Perempuan', 'Bandung', '13-06-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0111653303', 'Alexandra Gracia Puteri Hariyadi', '1819371010030', 'Perempuan', 'Jakarta', '08-12-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0111790582', 'Kentlofa Jovinco Ginting', '1718370000000', 'Laki-Laki', 'Medan', '25-02-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0112028602', 'Chesilia Eifelyn Sihotang', '1718371010314', 'Perempuan', 'Bandung', '23-09-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0112171104', 'Jesslyn Mulyana', '1718371010322', 'Perempuan', 'Bandung', '04-09-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0112253690', 'Arinda Naysa Semira', '1819371010033', 'Perempuan', 'Bandung', '10-10-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0112307917', 'Nikolas Ximenez Handalan Puspoasmoro', '1718370000000', 'Laki-Laki', 'Bandung', '01-03-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0112604319', 'Julian Surya Kanigara', '1718370000000', 'Laki-Laki', 'Bandung', '28-06-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0113396337', 'Ray Pasupati Junius Hutapea', '1718371010305', 'Laki-Laki', 'Bandung', '07-06-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0113540817', 'Mathew Mahar Agung', '1718370000000', 'Laki-Laki', 'Bandung', '12-07-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0113651701', 'Verdinancio Valentino Vencencio Simalango', '1718370000000', 'Laki-Laki', 'Bandung', '19-10-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A');
INSERT INTO `siswa` (`nisn`, `nama_siswa`, `nis`, `jenis_kelamin_siswa`, `tempat_lahir`, `tanggal_lahir`, `alamat_siswa`, `nama_ayah`, `nama_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `jalan`, `kelurahan`, `kecamatan`, `kabupaten`, `provinsi`, `nama_wali`, `pekerjaan_wali`, `alamat_wali`, `katasandi_siswa`, `jenis_akun`, `kode_kelas`) VALUES
('0113724980', 'Juventia Cantika Julianti', '1718371010323', 'Perempuan', 'Bandung', '14-07-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0113897141', 'Caroline Nadya Estiningtyas', '1718371010294', 'Perempuan', 'Bandung', '30-04-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0113911180', 'Ivan Christian Sianipar', '1819371010042', 'Laki-Laki', 'Bandung', '08-12-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0114197311', 'Gabriela Gladlycia Habeahan', '1718370000000', 'Perempuan', 'Bandung', '01-01-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0114235937', 'Ryu Nathanael', '1718370000000', 'Laki-Laki', 'Bandung', '06-02-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0114363115', 'Angelic Shannon Putri Sutarman', '1718370000000', 'Perempuan', 'Bandung', '31-03-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0114565433', 'Tifanny Sela Oretha Marpaung', '1819371010028', 'Perempuan', 'Bandung', '31-12-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0114625359', 'Abbymael Alblan Moishe Bukit', '1718371010289', 'Laki-Laki', 'Bandung', '07-04-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0114678478', 'Kathy Priscilla Aurelli', '1718370000000', 'Perempuan', 'Bandung', '16-06-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0114879733', 'Tyara Aretha Meivian Silalahi', '1718370000000', 'Perempuan', 'Bandung', '23-05-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('011510159', 'Kezia Evelyn Rustandi Tanuwidjaja', '1920371020059', 'Perempuan', 'Bandung', '02-02-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0115181641', 'Andreas Arthur Marpaung', '1819371010002', 'Laki-Laki', 'Bandung', '04-12-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0115258943', 'Queena Tiffany Novelia', '1819371010024', 'Perempuan', 'Bandung', '22-11-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0115738643', 'Gebrielle Joaquinn Lexandra Pencawan', '1718371010295', 'Perempuan', 'Bandung Barat', '04-06-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0115987119', 'Fadly Achdiat Wirakusumah', '1819371010038', 'Laki-Laki', 'Bandung', '20-11-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0116080563', 'Dearny Putri Renata Purba', '1718370000000', 'Perempuan', 'Bandung', '29-08-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0116107950', 'Maria Kristia Siantauli', '1718370000000', 'Perempuan', 'Semarang', '07-10-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0116288994', 'Rafael Christ Simoncelli Rupa', '1819371010051', 'Laki-Laki', 'Balikpapan', '21-12-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0116407534', 'Gideon Moreno Sembiring', '1819370000000', 'Laki-Laki', 'Medan', '04-10-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0116466533', 'Christabel Joanna Monto', '1819371010005', 'Perempuan', 'Bandung', '08-12-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0116558466', 'Tiara Risky Hasiana', '1819371010027', 'Perempuan', 'Bandung', '01-05-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0116649746', 'Valerie Abigail Ranjabar', '1718371010308', 'Perempuan', 'Bandung', '29-07-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0116683489', 'Jozelyn Trixie Alinta', '1718370000000', 'Perempuan', 'Bandung', '20-07-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0116953061', 'Aruna Devita Widiarto', '171837101293', 'Perempuan', 'Bandung', '17-01-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0117034222', 'Oeina Nicoline Lenata', '1718370000000', 'Perempuan', 'Bandung', '08-05-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0117123958', 'Christine Joseline Sembiring', '1718371010315', 'Perempuan', 'Bandung', '13-06-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0117126444', 'Natalie Christabel', '1819371010048', 'Perempuan', 'Bandung', '23-12-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0117183763', 'Nathanael Choky Simanjuntak', '1819371010022', 'Laki-Laki', 'Bandung', '20-12-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0117588539', 'Griche Bhetric Erna Tutuhatunewa', '1819371010012', 'Perempuan', 'Bandung', '08-09-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0118420211', 'Tegar Alexandro Samosir', '1718370000000', 'Laki-Laki', 'Bandung', '05-02-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0118949136', 'Gregorius William Setiadjie', '1718371010296', 'Laki-Laki', 'Bandung', '07-07-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0118969837', 'Imanuel Dion Oktoniel Tanuwijaya', '1718370000000', 'Laki-Laki', 'Bandung', '12-10-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0118983067', 'Gia Cinta Natasha Michaela', '1718370000000', 'Perempuan', 'Bandung', '27-12-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0119044170', 'Sheryl Leticia Wilhelmina', '1718370000000', 'Perempuan', 'Bandung', '28-07-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('0119077094', 'Satria Evan Airlangga Missa', '1718371010331', 'Laki-Laki', 'Purworejo', '08-06-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0119151261', 'Jogy Nathanael', '1819371010014', 'Laki-Laki', 'Bandung', '24-12-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0119169396', 'Karen Evelyn Rustandi Tanuwidjaja', '1920371020058', 'Perempuan', 'Bandung', '02-02-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0119266421', 'Florencia Annabel Sugara', '1819371010040', 'Perempuan', 'Bandung', '21-11-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0119377259', 'Nathaniel Andrew Siagian', '1920371020060', 'Laki-Laki', 'Surabaya', '18-10-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0119397321', 'Zachely Dylan Kezio Tatia', '1718371010310', 'Laki-Laki', 'Bandung', '15-02-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0119461358', 'Marco Sianturi', '1819371010047', 'Laki-Laki', 'Bandung', '15-11-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0119617591', 'Zaneta Winona Perbina Tarigan', '1718371010311', 'Perempuan', 'Jakarta', '05-06-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3B'),
('0119932112', 'Mikhaila Saydita', '1819371010021', 'Perempuan', 'Bandung', '06-06-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0121000628', 'Jeremi Darmawan', '1920371010015', 'Laki-Laki', 'Bandung', '14-09-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('0121032169', 'Reynard Aurelius Manuel', '1920371010025', 'Laki-Laki', 'Bandung', '05-11-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('0121177391', 'Flora Cecilia Ananta', '1819371010009', 'Perempuan', 'Bandung', '24-10-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0121356351', 'Jeremy Arianto', '1819371010013', 'Laki-Laki', 'Tegal', '02-01-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0121370742', 'Elizabeth Janela Sihotang', '1819371010008', 'Perempuan', 'Bandung', '15-01-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0121457946', 'Zeefanya Butar Butar', '1819371010055', 'Perempuan', 'Bandung', '14-10-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0121622064', 'Banyu Biru Agharr Hidayat', '1819371010035', 'Laki-Laki', 'Bandung', '15-02-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0121732982', 'Mesach Raphael Ginting', '1920371010021', 'Laki-Laki', 'Bandung', '01-09-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('0121824297', 'Alfian Dirgantara Timothy Samosir', '1819371010031', 'Laki-Laki', 'Bandung', '07-02-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0121862078', 'Gisela Simalango', '1920371010014', 'Perempuan', 'Tangerang', '15-11-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('0121990880', 'Jonggi Samuel Tua Putra Simarmata', '1819371010015', 'Laki-Laki', 'Bandung', '28-11-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0122330007', 'Peter Jagat Kristianto', '1819371010050', 'Laki-Laki', 'Bandung', '19-06-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0122403998', 'Miguel Prince Winata', '1819371010020', 'Laki-Laki', 'Bandung', '17-05-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0122488167', 'Michaella Gwyneth Renata Pantouw', '1819371010019', 'Perempuan', 'Bandung', '30-11-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0122858131', 'Anggita Ratna Lasmiwardana', '1920371010004', 'Perempuan', 'Kuningan', '29-12-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('0123289251', 'Krisopras Efraim Panjaitan', '1819371010017', 'Laki-Laki', 'Medan', '20-03-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0123448740', 'Atalla Dimas Adinata', '1920371010031', 'Laki-Laki', 'Bandung', '19-10-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('0123542483', 'Victory Angelia Bakkara', '1819371010054', 'Perempuan', 'Bandung', '24-08-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0124050199', 'Belvania Natalea Rosvielly Uliana Panjaitan', '1920371010032', 'Perempuan', 'Bandung', '18-12-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('0124155335', 'Kriszuan Yordan Pakpahan', '1819371010045', 'Laki-Laki', 'Bandung', '13-06-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0124290742', 'Filadelfia Yola Da Costa', '1920371010013', 'Perempuan', 'Bandung', '05-10-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('0124406436', 'Salomon Kaleb Hasian Sirait', '1819371010025', 'Laki-Laki', 'Bandung', '12-04-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0124567630', 'Tamara Cesylia Parhusip', '1819371010053', 'Perempuan', 'Bandung', '15-04-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0124800625', 'Zeilon Valentino Longevidad Aritonang', '1819371010056', 'Laki-Laki', 'Bandung', '21-01-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0124833162', 'Rafael Gading Anugerah Tampubolon', '1920371010052', 'Laki-Laki', 'Bandung', '27-02-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('0124903708', 'Reza Marshanda Septiani Siburian', '1819371010052', 'Perempuan', 'Bogor', '08-09-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0125619719', 'Paulus Paskah Ibrena Ginting Manik', '1819371010023', 'Laki-Laki', 'Bandung', '04-04-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0125834468', 'Davina Alexandra Pietersz', '1819371010006', 'Perempuan', 'Bandung', '26-08-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0126299448', 'Samuel Kenzie Hasiholan', '1819371010026', 'Laki-Laki', 'Bandung', '05-12-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0126369848', 'Natalie Aurora Allene Simanjuntak', '1920371010050', 'Perempuan', 'Bandung', '15-12-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('0126423108', 'Ana Puteri Saninten', '1819371010032', 'Perempuan', 'Bandung', '16-01-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0126583884', 'Adriell Emrick Lambe', '1819371010029', 'Laki-Laki', 'Bandung', '17-08-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0126702829', 'Marvin Darrel Sutanto', '1819371010018', 'Laki-Laki', 'Bandung', '21-03-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0127031536', 'Jose Hiskia', '1819371010016', 'Laki-Laki', 'Bandung', '29-03-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0127367117', 'Arlandho Absalom Sibarani', '1819371010003', 'Laki-Laki', 'Bandung Barat', '18-09-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0127423558', 'Bonifasius Yovie Widinugroho', '1819371010004', 'Laki-Laki', 'Bandung', '02-06-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0127477048', 'Seoul Benaiah Sitorus', '1920371010054', 'Laki-Laki', 'Bandung', '22-07-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('0127644180', 'Felice Dania Putri', '1920371010012', 'Perempuan', 'Bandung', '21-12-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('0128000275', 'Efran Irawan', '1819371010007', 'Laki-Laki', 'Bandung', '15-03-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0128116165', 'Michael Savior Putra Sutarman', '1920371010022', 'Laki-Laki', 'Bandung', '31-12-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('0128119024', 'Nicodemus Raia Matteo Kuen', '1819371010049', 'Laki-Laki', 'Bandung', '15-08-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0128299904', 'Arvino Indradeva', '1920371010005', 'Laki-Laki', 'Bandung', '20-02-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('0128629824', 'Redric Raphael Sebastian', '1920371010053', 'Laki-Laki', 'Bandung', '04-12-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('0128776388', 'Franklin Chibueze Ajonuma', '1819371010041', 'Laki-Laki', 'Bandung', '19-04-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0129141346', 'Gracia Miracle Nainggolan', '1819371010011', 'Perempuan', 'Bandung', '02-05-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0129396366', 'Davin Jeremy Sihole', '1819371010037', 'Laki-Laki', 'Bandung', '07-03-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0129446233', 'Arsyad Keanu Pratama Sirait', '1819371010034', 'Laki-Laki', 'Lubuk Pakam', '14-03-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0129462391', 'Gerren Excellent Tambunan', '1920371010038', 'Laki-Laki', 'Bandung', '10-12-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('0129627925', 'Khen Ratzon Noam', '1819371010043', 'Laki-Laki', 'Bandung', '10-01-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0129680940', 'Lionel Joshua Martinus Gultom', '1819371010046', 'Laki-Laki', 'Bandung', '30-03-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0129761219', 'Calista Gabriella Evelyn', '1819371010036', 'Perempuan', 'Bandung', '01-05-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2A'),
('0129871832', 'Feby Renata Silalahi', '1819371010039', 'Perempuan', 'Bandung', '01-12-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0129995096', 'Ghia Demishka', '1819371010010', 'Perempuan', 'Bandung', '16-06-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '2B'),
('0131140418', 'Joshua Valentino Hotasi Sitorus', '1920371010042', 'Laki-Laki', 'Bandung', '14-02-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('0131206214', 'Alfaro Josef Abednego', '1920371010029', 'Laki-Laki', 'Bandung', '24-08-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('0131441226', 'Cheryl Christine Cyenli Dachi', '1920371010008', 'Perempuan', 'Bandung', '12-02-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('0132276456', 'Chaterine Savanna Silaen', '1920371010034', 'Perempuan', 'Bandung', '03-03-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('0132475388', 'Karen Kian Mauli Simanjuntak', '1920371010018', 'Perempuan', 'Bandung', '12-04-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('0133460513', 'Devani Aleta Sapay', '1920371010009', 'Perempuan', 'Bandung', '01-02-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('0134419589', 'William De Christo Sinaga', '1920371010028', 'Laki-Laki', 'Bandung', '13-05-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('0134872806', 'Alan Friederich Siagian', '1920371010001', 'Laki-Laki', 'Karawang', '01-08-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('0135664604', 'Chiko Tobias Simanjuntak', '1920371010035', 'Laki-Laki', 'Bandung', '19-02-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('0135861263', 'Leander Evan Setiawan', '1920371010046', 'Laki-Laki', 'Bandung', '06-03-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('0135862720', 'Madelyn Christabel Ashera Hosang', '1920371010047', 'Perempuan', 'Bandung', '01-03-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('0136178734', 'Keysha Abigail Setiadjie', '1920371010043', 'Perempuan', 'Bandung', '14-08-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('0136257017', 'Shiravesa Lintong', '1920371010055', 'Perempuan', 'Bandung', '16-06-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('0136332645', 'Misael Mesakh Napitupulu', '1920371010049', 'Laki-Laki', 'Bandung', '21-03-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('0136344996', 'Bona Aksel Jordan Simangunsong', '1920371010007', 'Laki-Laki', 'Bandung', '04-01-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('0137626381', 'Nicholas Alvaro Chandra', '1920371010023', 'Laki-Laki', 'Bandung', '21-04-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('0137850163', 'Kineta Christabel Simarmata', '1920371010044', 'Perempuan', 'Kisaran', '24-02-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('0137901577', 'Jonas Avshalom Hartoyuwono', '1920371010016', 'Laki-Laki', 'Bandung', '22-06-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('0137923131', 'Hilari Grace Kusuma Putri', '1920371010040', 'Perempuan', 'Bandung', '25-05-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('0138297217', 'Galang Ganendra Sidauruk', '1920371010037', 'Laki-Laki', 'Bandung', '21-04-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('0138337764', 'Taraka Alva Anadri', '1920371010026', 'Laki-Laki', 'Bandung', '19-07-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('0139560798', 'Valleria Rebecca Simfony', '1920371010056', 'Perempuan', 'Bandung', '08-02-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('03127503594', 'Rafael Alvaro Moray', '1920371010024', 'Laki-Laki', 'Bandung', '17-12-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('03129817523', 'Keiko Iva Jeanette Hendrawan', '1920371010019', 'Perempuan', 'Bandung', '07-09-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('03131441826', 'Tifanny Lovely Ester Tanuwijaya', '1920371010027', 'Perempuan', 'Manado', '10-08-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('03133789731', 'Anand Dasdaniv Sembiring', '1920371010003', 'Laki-Laki', 'Bandung', '16-03-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('03135854238', 'Lady Merryl Louise', '1920371010020', 'Perempuan', 'Bandung', '05-10-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('03136022852', 'Jovanya Natasya', '1920371010017', 'Perempuan', 'Bandung', '19-04-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('03136030748', 'Amelia Racita Jane Sianturi', '1920371010002', 'Perempuan', 'Bandung', '03-05-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('03136344628', 'Federica Defni Moravil', '1920371010011', 'Perempuan', 'Bandung', '11-06-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('03138720732', 'Beatrice Aleric Saputra', '1920371010006', 'Perempuan', 'Bandung', '14-02-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('03139803882', 'Fariz Christ Elimanafe', '1920371010010', 'Laki-Laki', 'Bandung', '24-07-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1A'),
('3118811961', 'Jeremiah Fortoen', '1819371020060', 'Laki-Laki', 'Bandung', '18-04-2011', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '3A'),
('3121278820', 'Mikael Louis Oktavianus Kaunang', '1920371010048', 'Laki-Laki', 'Bandung', '09-10-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('3124078605', 'Isaac Nathaniel Ginting', '1920371010041', 'Laki-Laki', 'Bandung', '01-09-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('3125491944', 'Gracell Priscila Elimanafe', '1920371010039', 'Perempuan', 'Bandung', '13-09-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('3126916711', 'Kresensia Arlin Wibisono', '1920371010045', 'Perempuan', 'Bandung', '04-11-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('3129530655', 'Putri Nataline Jilenta Sinaga', '1920371010051', 'Perempuan', 'Bandung', '12-12-2012', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('3137700962', 'Zivanna Mikayla Hasiana Hutabarat', '1920371010057', 'Perempuan', 'Bandung', '02-06-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('3138038311', 'Ben Joakim Emmanuel Emory Mangundap', '1920371010033', 'Laki-Laki', 'Bandung', '03-01-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('3139163026', 'Gabriela Priskila Telaumbanua', '1920371010036', 'Perempuan', 'Bandung', '05-03-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B'),
('3139973083', 'Allan Pepayosa Sembiring', '1920371010030', 'Laki-Laki', 'Bandung', '23-02-2013', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '', '', '$2y$10$sMokE0cWIFoixxBq7g6CnOw5o4y92lq5oRo7QdfvfMlIoAAx.ru6.', 1, '1B');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `tahun` varchar(9) NOT NULL,
  `semester` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`tahun`, `semester`) VALUES
('2020/2021', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `kode_wali_kelas` int(11) NOT NULL,
  `kode_kelas` varchar(2) NOT NULL,
  `nik` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`kode_wali_kelas`, `kode_kelas`, `nik`) VALUES
(19, '1A', '10392'),
(20, '1B', '10568'),
(21, '2A', '11111'),
(22, '2B', '10112'),
(23, '3A', '10120'),
(24, '3B', '11110'),
(25, '4A', '10542'),
(26, '4B', '207197287'),
(27, '5A', '10441'),
(28, '5B', '10187'),
(29, '6A', '10667'),
(30, '6B', '10462');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nik`),
  ADD KEY `kode_wali_kelas` (`kode_wali_kelas`);

--
-- Indexes for table `informasi_akademik`
--
ALTER TABLE `informasi_akademik`
  ADD PRIMARY KEY (`no_info`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`kode_jadwal`),
  ADD KEY `nip` (`nik`),
  ADD KEY `kode_kelas` (`kode_kelas`),
  ADD KEY `kode_mata_pelajaran` (`kode_mata_pelajaran`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kode_kelas`),
  ADD KEY `kode_wali_kelas` (`kode_wali_kelas`);

--
-- Indexes for table `kenaikan_kelas`
--
ALTER TABLE `kenaikan_kelas`
  ADD PRIMARY KEY (`kode_konfirmasi`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `kode_kelas` (`kode_kelas`),
  ADD KEY `tahun` (`tahun`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`kode_mata_pelajaran`);

--
-- Indexes for table `nilai_akhir`
--
ALTER TABLE `nilai_akhir`
  ADD PRIMARY KEY (`no_nilai`),
  ADD KEY `kode_mata_pelajaran` (`kode_mata_pelajaran`),
  ADD KEY `kode_kelas` (`kode_kelas`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `tahun` (`tahun`);

--
-- Indexes for table `nilai_harian`
--
ALTER TABLE `nilai_harian`
  ADD PRIMARY KEY (`no_nilai`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `kode_mata_pelajaran` (`kode_mata_pelajaran`),
  ADD KEY `kode_kelas` (`kode_kelas`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `nisn_2` (`nisn`),
  ADD KEY `kode_kelas_2` (`kode_kelas`);

--
-- Indexes for table `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`no_presensi`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `kode_jadwal` (`kode_jadwal`),
  ADD KEY `tahun` (`tahun`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `kode_kelas` (`kode_kelas`);

--
-- Indexes for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`tahun`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`kode_wali_kelas`),
  ADD KEY `nip` (`nik`),
  ADD KEY `kode_kelas` (`kode_kelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `informasi_akademik`
--
ALTER TABLE `informasi_akademik`
  MODIFY `no_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `kode_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=439;

--
-- AUTO_INCREMENT for table `kenaikan_kelas`
--
ALTER TABLE `kenaikan_kelas`
  MODIFY `kode_konfirmasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `nilai_akhir`
--
ALTER TABLE `nilai_akhir`
  MODIFY `no_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `nilai_harian`
--
ALTER TABLE `nilai_harian`
  MODIFY `no_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `presensi`
--
ALTER TABLE `presensi`
  MODIFY `no_presensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `kode_wali_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_ibfk_1` FOREIGN KEY (`kode_wali_kelas`) REFERENCES `wali_kelas` (`kode_wali_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`kode_mata_pelajaran`) REFERENCES `mata_pelajaran` (`kode_mata_pelajaran`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`nik`) REFERENCES `guru` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_ibfk_3` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`kode_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`kode_wali_kelas`) REFERENCES `wali_kelas` (`kode_wali_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kenaikan_kelas`
--
ALTER TABLE `kenaikan_kelas`
  ADD CONSTRAINT `kenaikan_kelas_ibfk_1` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kenaikan_kelas_ibfk_2` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`kode_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kenaikan_kelas_ibfk_3` FOREIGN KEY (`tahun`) REFERENCES `tahun_ajaran` (`tahun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nilai_akhir`
--
ALTER TABLE `nilai_akhir`
  ADD CONSTRAINT `nilai_akhir_ibfk_1` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`kode_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_akhir_ibfk_2` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_akhir_ibfk_3` FOREIGN KEY (`kode_mata_pelajaran`) REFERENCES `mata_pelajaran` (`kode_mata_pelajaran`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_akhir_ibfk_4` FOREIGN KEY (`tahun`) REFERENCES `tahun_ajaran` (`tahun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nilai_harian`
--
ALTER TABLE `nilai_harian`
  ADD CONSTRAINT `nilai_harian_ibfk_1` FOREIGN KEY (`kode_mata_pelajaran`) REFERENCES `mata_pelajaran` (`kode_mata_pelajaran`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_harian_ibfk_2` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`kode_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_harian_ibfk_3` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_harian_ibfk_4` FOREIGN KEY (`tahun`) REFERENCES `tahun_ajaran` (`tahun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi`
--
ALTER TABLE `presensi`
  ADD CONSTRAINT `presensi_ibfk_1` FOREIGN KEY (`kode_jadwal`) REFERENCES `jadwal` (`kode_jadwal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_ibfk_2` FOREIGN KEY (`tahun`) REFERENCES `tahun_ajaran` (`tahun`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_ibfk_3` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`kode_kelas`);

--
-- Constraints for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD CONSTRAINT `wali_kelas_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `guru` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wali_kelas_ibfk_2` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`kode_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
