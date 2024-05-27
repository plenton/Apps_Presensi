-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8111
-- Generation Time: May 27, 2024 at 04:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `presensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_dosen`
--

CREATE TABLE `login_dosen` (
  `NID` int(10) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_dosen`
--

INSERT INTO `login_dosen` (`NID`, `password`) VALUES
(1234567890, '1234');

-- --------------------------------------------------------

--
-- Table structure for table `mhs`
--

CREATE TABLE `mhs` (
  `NIM` int(10) NOT NULL,
  `NAMA_MHS` varchar(255) NOT NULL,
  `STATUS` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mhs`
--

INSERT INTO `mhs` (`NIM`, `NAMA_MHS`, `STATUS`) VALUES
(12345, 'JEFRI NIKOL', 'HADIR'),
(12346, 'NOANU IIN', 'HADIR'),
(12347, 'YUSRILAH AWAL', 'HADIR'),
(12348, 'MUNAWAROH HADIKSUMA', 'HADIR');

-- --------------------------------------------------------

--
-- Table structure for table `record_presensi`
--

CREATE TABLE `record_presensi` (
  `NIM` int(10) NOT NULL,
  `NAMA_MHS` varchar(255) NOT NULL,
  `STATUS` varchar(1) NOT NULL,
  `waktu` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `record_presensi`
--

INSERT INTO `record_presensi` (`NIM`, `NAMA_MHS`, `STATUS`, `waktu`) VALUES
(12346, 'NOANU IIN', 'H', '2023-12-22 16:52:03.731692'),
(12345, 'JEFRI NIKOL', 'H', '2023-12-22 16:52:07.446677'),
(12347, 'YUSRILAH AWAL', 'H', '2023-12-22 16:52:09.870079'),
(12348, 'MUNAWAROH HADIKSUMA', 'H', '2023-12-22 16:52:13.330391'),
(12346, 'NOANU IIN', 'H', '2024-05-27 14:21:42.239505');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`NIM`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mhs`
--
ALTER TABLE `mhs`
  MODIFY `NIM` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12349;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
