-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2021 at 03:25 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peta`
--

-- --------------------------------------------------------

--
-- Table structure for table `markers`
--

CREATE TABLE `markers` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `latitude` float(10,6) NOT NULL,
  `tipe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `markers`
--

INSERT INTO `markers` (`id`, `nama`, `alamat`, `longitude`, `latitude`, `tipe`) VALUES
(1, 'Kabupaten Serang', 'Jl. Yumaga Gg Penerangan No. 3 Serang', 106.148003, -6.122000, 'kantor baznas'),
(2, 'Kabupate Lebak', 'Jl. Abdi Negara No. 3, Rangkasbitung, Lebak', 106.241997, -6.383000, 'kantor baznas'),
(3, 'Kabupaten Pandeglang', 'Jln. Kesehatan No. 1A Pandeglang', 106.095993, -6.298000, 'kantor baznas'),
(4, 'Kabupaten Tangerang', 'Jl.Islamic Center No.1 Citra Raya Panongan\n', 106.531998, -6.250000, 'kantor baznas'),
(5, 'Kota Tangerang', 'Jl. Achmad Yani No. 8, Tangerang', 106.708000, -6.176000, 'kantor baznas'),
(6, 'Kota Cilegon', 'Jl. S.A Tirtayasa No. 1 gd', 106.050003, -6.011000, 'kantor baznas'),
(7, 'Kota Tagerang Selatan', 'Jl. Pamulang II Blok F1 No. 27 Pamulang', 106.713997, -6.333000, 'kantor baznas'),
(8, 'Kota Serang', 'Jl. Jend. A. Yani No.8, Pisang Mas', 106.150002, -6.120000, 'kantor baznas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
