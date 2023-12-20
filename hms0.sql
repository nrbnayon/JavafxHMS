-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 10:35 PM
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
-- Database: `hms0`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininfo`
--

CREATE TABLE `admininfo` (
  `NID` varchar(25) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `PASSWORD` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admininfo`
--

INSERT INTO `admininfo` (`NID`, `NAME`, `PASSWORD`) VALUES
('123', 'admin', 'admin'),
('admin', 'admin', 'admin'),
('root', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `checkinoutinfo`
--

CREATE TABLE `checkinoutinfo` (
  `SI_NO` int(11) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `PHONE` varchar(30) DEFAULT NULL,
  `ADDRESS` varchar(30) DEFAULT NULL,
  `NID` varchar(15) DEFAULT NULL,
  `ROOMNO` varchar(15) DEFAULT NULL,
  `ROOMTYPE` varchar(15) DEFAULT NULL,
  `CAPACITY` varchar(15) DEFAULT NULL,
  `CHECKEDIN` varchar(20) DEFAULT NULL,
  `CHECKEDOUT` varchar(20) DEFAULT NULL,
  `PRICEDAY` varchar(30) DEFAULT NULL,
  `TOTALDAYS` varchar(30) DEFAULT NULL,
  `TOTALPRICE` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkinoutinfo`
--

INSERT INTO `checkinoutinfo` (`SI_NO`, `NAME`, `EMAIL`, `PHONE`, `ADDRESS`, `NID`, `ROOMNO`, `ROOMTYPE`, `CAPACITY`, `CHECKEDIN`, `CHECKEDOUT`, `PRICEDAY`, `TOTALDAYS`, `TOTALPRICE`) VALUES
(41, 'Nayon', 'n@gmail.com', '01777', 'NortunBazar', '123', '3', 'AC', 'Double', '2023-04-04', '2023-05-10', '600', '37', '22200'),
(42, 'Nayon', 'n@gmail.com', '01777', 'NortunBazar', '123', '9', '9', '9', '2023-05-02', '2023-05-10', '9', '9', '81');

-- --------------------------------------------------------

--
-- Table structure for table `customerinfo`
--

CREATE TABLE `customerinfo` (
  `NAME` varchar(30) DEFAULT NULL,
  `NID` varchar(30) NOT NULL,
  `PASSWORD` varchar(30) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `PHONE` varchar(30) DEFAULT NULL,
  `ADDRESS` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customerinfo`
--

INSERT INTO `customerinfo` (`NAME`, `NID`, `PASSWORD`, `EMAIL`, `PHONE`, `ADDRESS`) VALUES
('Tanvir', '12', '12', 't@gmail.com', '019000', 'Mirpur'),
('Nayon', '123', '123', 'n@gmail.com', '01777', 'NortunBazar'),
('Anita', '1234', '1234', 'a@gmail.com', '01888', 'Uttara');

-- --------------------------------------------------------

--
-- Table structure for table `employeeinfo`
--

CREATE TABLE `employeeinfo` (
  `NAME` varchar(30) DEFAULT NULL,
  `NID` varchar(30) NOT NULL,
  `PASSWORD` varchar(30) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `ADDRESS` varchar(40) DEFAULT NULL,
  `PHONE` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employeeinfo`
--

INSERT INTO `employeeinfo` (`NAME`, `NID`, `PASSWORD`, `EMAIL`, `ADDRESS`, `PHONE`) VALUES
('Anita', '1', '1', '1', '1', '1'),
('Tanvir', '111', '1111', '111', '111', '111'),
('Nayon', '123', '123', '2', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `roominfo`
--

CREATE TABLE `roominfo` (
  `ROOM_NO` varchar(30) NOT NULL,
  `TYPE` varchar(10) DEFAULT NULL,
  `CAPACITY` varchar(10) DEFAULT NULL,
  `PRICE_DAY` varchar(30) DEFAULT NULL,
  `STATUS` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roominfo`
--

INSERT INTO `roominfo` (`ROOM_NO`, `TYPE`, `CAPACITY`, `PRICE_DAY`, `STATUS`) VALUES
('13', 'Ac', '12', '12', 'Available'),
('2', 'AC-Room', 'Double', '2000', 'Booked'),
('3', 'AC', 'Double', '600', 'Available'),
('9', '9', '9', '9', 'Available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admininfo`
--
ALTER TABLE `admininfo`
  ADD PRIMARY KEY (`NID`);

--
-- Indexes for table `checkinoutinfo`
--
ALTER TABLE `checkinoutinfo`
  ADD PRIMARY KEY (`SI_NO`);

--
-- Indexes for table `customerinfo`
--
ALTER TABLE `customerinfo`
  ADD PRIMARY KEY (`NID`);

--
-- Indexes for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  ADD PRIMARY KEY (`NID`);

--
-- Indexes for table `roominfo`
--
ALTER TABLE `roominfo`
  ADD PRIMARY KEY (`ROOM_NO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkinoutinfo`
--
ALTER TABLE `checkinoutinfo`
  MODIFY `SI_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
