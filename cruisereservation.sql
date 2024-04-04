-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 04, 2024 at 06:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cruisereservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(100) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(254) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `IC_Number` varchar(50) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Room_Type` varchar(50) NOT NULL,
  `Ship_Type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `Name`, `IC_Number`, `Email`, `Date`, `Room_Type`, `Ship_Type`) VALUES
(3, 'naz', '001123068745', '', '2024-03-01 to 2024-03-03', 'Palace Suite', 'Resort World One'),
(5, 'abu', '4367746', '', '2024-02-03 to 2024-03-06', 'Interior Stateroom', 'Resort World One'),
(9, 'Kamarul', '23143245', '', '2024-03-01 to 2024-03-04', 'Palace Penthouse', 'Genting Dreams'),
(10, 'Razman', '010967895535', '', '2024-02-26 to 2024-03-30', 'OceanView Stateroom', 'Resort World One'),
(11, 'razmn', '0123738', '', '2024-03-12 to 2024-03-13', 'Palace Suite', 'Genting Dreams'),
(12, 'ad', '425345', '', '2024-03-01 to 2024-03-02', 'Palace Suite', 'Genting Dreams'),
(13, 'sudahlah', '5678678', '', '2024-03-01 to 2024-03-02', 'Palace Suite', 'Genting Dreams'),
(14, 'khai', '254356476', '', '2024-03-01 to 2024-03-02', 'Palace Penthouse', 'Genting Dreams'),
(45, 'hangpani', '13243', 'hangpani@memangcaripasal', '2024-04-05 to 2024-04-06', 'suite', 'ResortWorldOne'),
(47, 'aaaaaa', '13243', 'aaaaa@aaaaaaa', '2024-04-05 to 2024-04-06', 'suite', 'ResortWorldOne'),
(49, 'bay', '12131', 'b@b', '2024-04-02 to 2024-04-03', 'Deluxe', 'Genting Dreams'),
(50, 'Muhd', '011232', 'muhd@muhd', '2024-04-01 to 2024-04-02', 'deluxe', 'ResortWorldOne'),
(52, 's', '2', 's@s', '2024-03-31 to 2024-05-11', 'standard', 'ResortWorldOne'),
(53, 'bakar', '010101', '', '2024-04-01 to 2024-04-03', 'Suite', 'Resort World One');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `name` varchar(100) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`name`, `pass`) VALUES
('staff', 'staff123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
