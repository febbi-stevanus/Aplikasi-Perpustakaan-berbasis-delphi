-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2022 at 02:45 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `NIM` varchar(15) NOT NULL,
  `Nama_Mahasiswa` varchar(60) NOT NULL,
  `Kelas` varchar(15) NOT NULL,
  `Jurusan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`NIM`, `Nama_Mahasiswa`, `Kelas`, `Jurusan`) VALUES
('2018804142', 'Febby Sugianto', ' Reg Pagi ', 'Sistem Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `Kode_Buku` varchar(15) NOT NULL,
  `Judul_Buku` varchar(255) NOT NULL,
  `Penerbit` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`Kode_Buku`, `Judul_Buku`, `Penerbit`) VALUES
('A1', 'Delphi7', 'Febby'),
('A2', 'SIM', 'Febby'),
('A3', 'SBD', 'Febby');

-- --------------------------------------------------------

--
-- Table structure for table `perpus`
--

CREATE TABLE `perpus` (
  `NIM` varchar(15) NOT NULL,
  `Nama_Mahasiswa` varchar(60) NOT NULL,
  `Kelas` varchar(15) NOT NULL,
  `Jurusan` varchar(25) NOT NULL,
  `Kode_Buku` varchar(15) NOT NULL,
  `Judul_Buku` varchar(255) NOT NULL,
  `Penerbit` varchar(60) NOT NULL,
  `Tgl_Pinjam` date NOT NULL,
  `Tgl_Kembali` varchar(20) NOT NULL,
  `Lewat_Hari` varchar(10) NOT NULL,
  `Denda` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perpus`
--

INSERT INTO `perpus` (`NIM`, `Nama_Mahasiswa`, `Kelas`, `Jurusan`, `Kode_Buku`, `Judul_Buku`, `Penerbit`, `Tgl_Pinjam`, `Tgl_Kembali`, `Lewat_Hari`, `Denda`) VALUES
('2110020078', 'febby ', '2A Reg ', 'Sistem Informasi', 'A1', 'Delphi7', 'Ahmad', '2022-07-06', '06/07/2022', '-1', 'Tidak Ada Denda');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('admin', '123'),
('AhmadRosyad', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`Kode_Buku`);

--
-- Indexes for table `perpus`
--
ALTER TABLE `perpus`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
