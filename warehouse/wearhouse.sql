-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2019 at 01:15 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wearhouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkpost`
--

CREATE TABLE `checkpost` (
  `item_no` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `deliver_date_out` date NOT NULL,
  `deliver_time_out` time NOT NULL,
  `address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkpost`
--

INSERT INTO `checkpost` (`item_no`, `status`, `deliver_date_out`, `deliver_time_out`, `address`) VALUES
('ITNO001', 'on_time', '2017-02-25', '05:00:00', 'bangalore'),
('ITNO002', 'late', '2017-03-20', '05:00:00', 'bangalore'),
('ITNO003', 'late', '2017-02-09', '05:00:00', 'bangalore'),
('ITNO004', 'on_time', '2017-03-01', '05:00:00', 'bangalore'),
('ITNO007', 'on_time', '2017-02-22', '05:00:00', 'bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `deliver`
--

CREATE TABLE `deliver` (
  `deliver_date` date NOT NULL,
  `deliver_time` time NOT NULL,
  `emply_no` varchar(20) NOT NULL,
  `item_no` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deliver`
--

INSERT INTO `deliver` (`deliver_date`, `deliver_time`, `emply_no`, `item_no`, `status`) VALUES
('2017-02-23', '12:12:11', 'EMP01', 'ITNO001', 'on_shelf'),
('2017-03-23', '14:22:11', 'EMP02', 'ITNO002', 'on_shelf'),
('2017-02-11', '22:12:01', 'EMP03', 'ITNO003', 'restock'),
('2017-02-13', '03:34:12', 'EMP04', 'ITNO004', 'on_shelf'),
('2017-02-07', '06:12:15', 'EMP05', 'ITNO005', 'on_shelf'),
('2017-02-05', '09:55:11', 'EMP06', 'ITNO006', 'on_shelf'),
('2017-02-20', '12:12:11', 'EMP07', 'ITNO007', 'on_shelf'),
('2017-02-24', '12:52:11', 'EMP08', 'ITNO008', 'on_shelf'),
('2017-02-16', '11:12:41', 'EMP09', 'ITNO009', 'on_shelf'),
('2017-02-14', '17:46:51', 'EMP10', 'ITNO010', 'on_shelf');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `emply_no` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `salary` int(8) NOT NULL,
  `contact` int(100) NOT NULL,
  `super_emply` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`fname`, `lname`, `emply_no`, `pass`, `salary`, `contact`, `super_emply`) VALUES
('bharath', 'v', 'EMP00', 'admin', 50000, 2147483647, 'EMP00'),
('James', 'Garcia', 'EMP01', '1234', 35000, 2147483647, NULL),
('Michael', 'Smith', 'EMP02', '1234', 35000, 2147483647, NULL),
('Robert', 'Smith', 'EMP03', '1234', 35000, 2147483647, NULL),
('Maria', 'Smith', 'EMP04', '1234', 35000, 2147483647, NULL),
('David', 'Rodriguez', 'EMP05', '1234', 35000, 2147483647, NULL),
('Maria', 'Smith', 'EMP06', '1234', 35000, 2147483647, NULL),
('Mary', 'Hernandez', 'EMP07', '1234', 35000, 2147483647, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_name` varchar(20) NOT NULL,
  `item_no` varchar(20) NOT NULL,
  `stock` int(8) NOT NULL,
  `price` int(8) NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_name`, `item_no`, `stock`, `price`, `status`) VALUES
('helmet', 'ITNO001', 3, 500, 'onshelf'),
('dipers', 'ITNO002', 50, 50, 'onshelf'),
('snickers', 'ITNO003', 0, 25, 'restock'),
('webcam', 'ITNO004', 4, 300, 'onshelf'),
('keyboard', 'ITNO005', 4, 600, 'onshelf'),
('mouse', 'ITNO006', 6, 450, 'onshelf'),
('mouse2', 'ITNO007', 6, 500, 'onshelf'),
('keyboard2', 'ITNO008', 7, 650, 'onshelf'),
('webcam2', 'ITNO009', 7, 250, 'omshelf'),
('computer chair', 'ITNO010', 7, 700, 'onshelf');

-- --------------------------------------------------------

--
-- Table structure for table `shelf`
--

CREATE TABLE `shelf` (
  `shelf_name` varchar(20) NOT NULL,
  `on_level` int(2) NOT NULL,
  `shelf_no` varchar(20) NOT NULL,
  `item_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shelf`
--

INSERT INTO `shelf` (`shelf_name`, `on_level`, `shelf_no`, `item_no`) VALUES
('candy', 1, 'SH01', 'ITNO003'),
('computer accesseorie', 1, 'SH02', 'ITNO004'),
('computer accesseorie', 2, 'SH02', 'ITNO005'),
('computer accesseorie', 3, 'SH02', 'ITNO006'),
('computer accesseorie', 3, 'SH02', 'ITNO007'),
('computer accesseorie', 2, 'SH02', 'ITNO008'),
('computer accesseorie', 1, 'SH02', 'ITNO009'),
('computer accesseorie', 4, 'SH02', 'ITNO010'),
('baby products', 1, 'SH03', 'ITNO002'),
('motor accessories', 1, 'SH04', 'ITNO001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkpost`
--
ALTER TABLE `checkpost`
  ADD PRIMARY KEY (`item_no`);

--
-- Indexes for table `deliver`
--
ALTER TABLE `deliver`
  ADD PRIMARY KEY (`emply_no`,`item_no`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emply_no`),
  ADD KEY `super_emply` (`super_emply`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_no`);

--
-- Indexes for table `shelf`
--
ALTER TABLE `shelf`
  ADD KEY `item_no` (`item_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`super_emply`) REFERENCES `employee` (`emply_no`);

--
-- Constraints for table `shelf`
--
ALTER TABLE `shelf`
  ADD CONSTRAINT `shelf_ibfk_1` FOREIGN KEY (`item_no`) REFERENCES `item` (`item_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
