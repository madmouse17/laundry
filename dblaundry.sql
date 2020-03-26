-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2019 at 10:05 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblaundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbambil`
--

CREATE TABLE `tbambil` (
  `no` char(20) NOT NULL,
  `tgl_ambil` date NOT NULL,
  `nama` varchar(20) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `harga` int(25) NOT NULL,
  `berat` int(30) NOT NULL,
  `total` int(20) NOT NULL,
  `dp` int(40) NOT NULL,
  `sisa` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbambil`
--

INSERT INTO `tbambil` (`no`, `tgl_ambil`, `nama`, `kategori`, `harga`, `berat`, `total`, `dp`, `sisa`) VALUES
('ab01', '2019-06-06', 'alan', 'Express', 10000, 3, 30000, 100000, 70000);

-- --------------------------------------------------------

--
-- Table structure for table `tblogin`
--

CREATE TABLE `tblogin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(25) NOT NULL,
  `hak_akses` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblogin`
--

INSERT INTO `tblogin` (`username`, `password`, `hak_akses`) VALUES
('admin', 'admin', 'admin'),
('user', 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tbpesan`
--

CREATE TABLE `tbpesan` (
  `no` char(20) NOT NULL,
  `tgl_pesan` varchar(225) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `hp` int(225) NOT NULL,
  `kategori` varchar(10) NOT NULL,
  `harga` int(225) NOT NULL,
  `berat` int(225) NOT NULL,
  `total` int(225) NOT NULL,
  `dp` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbpesan`
--

INSERT INTO `tbpesan` (`no`, `tgl_pesan`, `nama`, `alamat`, `hp`, `kategori`, `harga`, `berat`, `total`, `dp`) VALUES
('ab01', '2019-06-06', 'alan', 'solo', 9846353, 'Express', 10000, 3, 30000, 100000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbambil`
--
ALTER TABLE `tbambil`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tblogin`
--
ALTER TABLE `tblogin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbpesan`
--
ALTER TABLE `tbpesan`
  ADD PRIMARY KEY (`no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
