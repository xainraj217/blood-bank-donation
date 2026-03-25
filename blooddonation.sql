-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2021 at 06:43 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blooddonation`
--

-- --------------------------------------------------------

--
-- Table structure for table `available_pac`
--

CREATE TABLE `available_pac` (
  `name` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `available_pac`
--

INSERT INTO `available_pac` (`name`, `available`) VALUES
('A+', 23),
('B+', 21),
('AB+', 39),
('O+', 31),
('A-', 18),
('B-', 35),
('AB-', 40),
('O-', 24);

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(11) NOT NULL,
  `name` varchar(230) COLLATE utf8mb4_bin NOT NULL,
  `bloodgroup` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `sex` varchar(240) COLLATE utf8mb4_bin NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `phoneno` bigint(20) DEFAULT NULL,
  `date` date NOT NULL,
  `username` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `name`, `bloodgroup`, `sex`, `age`, `address`, `phoneno`, `date`, `username`, `password`) VALUES
(1, 'pooja Rupanwar', 'A+', 'Female', 20, 'satara', 2143563432, '2020-03-03', 'pooja', '1234'),
(2, 'Priya More', 'O+', 'Female', 30, 'Nagpur', 4356433265, '2021-03-08', 'priya', 'priya12'),
(3, 'Anmol Kale', 'B+', 'Male', 40, 'Gadital,Nashik', 6578893421, '2021-03-08', 'anmol', 'Anmol5'),
(4, 'kajol pawar', 'B+', 'Female', 20, 'Nagar', 3465329856, '2021-03-08', 'kajol', 'pawar1'),
(5, 'vikas koyale', 'A+', 'Male', 50, 'Indore', 3443567856, '2021-03-08', 'koyale', 'koyale'),
(6, 'Chetan Salunkhe', 'A+', 'Male', 20, 'Ram Nagar', 2354763456, '2021-03-09', 'chetan', 'chetan12');

-- --------------------------------------------------------

--
-- Table structure for table `donorhistory`
--

CREATE TABLE `donorhistory` (
  `bloodtype` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `user` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `donorhistory`
--

INSERT INTO `donorhistory` (`bloodtype`, `user`, `date`, `time`) VALUES
('A+', 'pooja', '2020-03-03', '13:42:47'),
('O+', 'priya', '2021-03-08', '13:55:34'),
('A+', 'pooja', '2021-03-08', '13:58:09'),
('B+', 'kajol', '2021-03-08', '22:53:34'),
('A+', 'koyale', '2021-03-08', '23:05:55'),
('A+', 'chetan', '2021-03-09', '13:54:29');

-- --------------------------------------------------------

--
-- Table structure for table `purchaser`
--

CREATE TABLE `purchaser` (
  `id` int(11) NOT NULL,
  `name` varchar(260) COLLATE utf8mb4_bin DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `address` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `user` varchar(259) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `purchaser`
--

INSERT INTO `purchaser` (`id`, `name`, `mobile`, `address`, `user`, `password`, `date`) VALUES
(1, 'Sanchita Joshi', 4576349432, 'Kolhapur', 'sanchita', 'sanchita', '2021-03-08'),
(2, 'Reeya Somvanshi', 5476435643, 'Shivaji Nagar', 'reeya', 'reeya', '2021-03-08'),
(3, 'Pravin Nagre', 5678343265, 'Indore', 'nagare', 'nagare', '2021-03-08'),
(4, 'Nisha More', 1234564312, 'Nagpur', 'nisha', '1234', '2021-03-08'),
(5, 'Neha Ghadge', 3254763456, 'Rajgad', 'neha', 'neha', '2021-03-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchaser`
--
ALTER TABLE `purchaser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `purchaser`
--
ALTER TABLE `purchaser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
