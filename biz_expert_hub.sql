-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2024 at 07:21 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biz_expert_hub`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` varchar(255) NOT NULL,
  `aemail` varchar(255) DEFAULT NULL,
  `aname` varchar(255) DEFAULT NULL,
  `apassword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `aemail`, `aname`, `apassword`) VALUES
('1', 'admin@gmail.com ', 'Jayesh Sonavane', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(9);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `serviceDescription` varchar(255) DEFAULT NULL,
  `serviceProviderContact` varchar(255) DEFAULT NULL,
  `serviceProviderName` varchar(255) DEFAULT NULL,
  `serviceTitle` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `contact`, `date`, `email`, `serviceDescription`, `serviceProviderContact`, `serviceProviderName`, `serviceTitle`, `status`, `time`, `userId`, `userName`) VALUES
(1, '8766238984', '2024-02-10', 'radharaman@gmail.com', 'We have to install various plumbing components, including pipes, fixtures, faucets, water heaters, and water softeners. ', '8600830384', 'Krishna Yadav', 'Install and repair pipes', 'Approved', '23:52', '1001', 'Radha Raman  '),
(2, '8766238984', '2024-02-09', 'radharaman@gmail.com', 'I need to replace the worn-out washer or cartridge in the faucet. In some cases, you may need to replace the entire faucet.', '8600830384', 'Krishna Yadav', 'Continuous dripping from a faucet.', 'Disapproved', '23:12', '1001', 'Radha Raman  '),
(3, '8766238984', '2024-02-16', 'radharaman@gmail.com', 'Water draining slowly or not draining at all.', '8600830384', 'Krishna Yadav', ' repair pipes', 'Approved', '15:10', '1001', 'Radha Raman  '),
(4, '8932462356', '2024-02-06', 'radheshkumar@gmail.com', 'I have to reinstall all pipes', '8600830384', 'Krishna Yadav', 'Reintall pipes', 'Approved', '11:30', '1001', 'Radhesh Kumar '),
(7, '8932462356', '2024-02-06', 'radheshkumar@gmail.com', 'There is leakage in water pipeline', '9730523061', 'BalRam Yadav', 'Leak In Water Supply', 'Approved', '14:11', '1002', 'Radhesh Kumar '),
(8, '8766238984', '2024-02-08', 'radharaman@gmail.com', 'Need to repair pipes', '8600830384', 'Krishna Yadav', 'Plumbiung', 'Pending', '17:22', '1001', 'Radha Raman  ');

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider`
--

CREATE TABLE `serviceprovider` (
  `sid` int(11) NOT NULL,
  `sServiceType` varchar(255) DEFAULT NULL,
  `sStatus` varchar(255) DEFAULT NULL,
  `saddress` varchar(255) DEFAULT NULL,
  `sage` int(11) NOT NULL,
  `sarea` varchar(255) DEFAULT NULL,
  `scategory` varchar(255) DEFAULT NULL,
  `scity` varchar(255) DEFAULT NULL,
  `sclosetime` varchar(255) DEFAULT NULL,
  `scontact` varchar(255) DEFAULT NULL,
  `semail` varchar(255) DEFAULT NULL,
  `slatitude` double NOT NULL,
  `slongitude` double NOT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `sopentime` varchar(255) DEFAULT NULL,
  `spassword` varchar(255) DEFAULT NULL,
  `spincode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `serviceprovider`
--

INSERT INTO `serviceprovider` (`sid`, `sServiceType`, `sStatus`, `saddress`, `sage`, `sarea`, `scategory`, `scity`, `sclosetime`, `scontact`, `semail`, `slatitude`, `slongitude`, `sname`, `sopentime`, `spassword`, `spincode`) VALUES
(1001, 'Plumbing Services', 'Approved', 'Tulsi Niwas', 20, 'BhaktiVedant Nagar', 'Home Services', 'Shirpur', '08:00 PM', '8600830384', 'jayeshpsonavane@gmail.com', 21.35805983328374, 74.87766593796378, 'Krishna Yadav', '09:00 AM', '1234', '425405'),
(1002, 'Plumbing Services', 'Disapproved', 'Dwarika Niwas', 20, 'Gandhi Marg ', 'Home Services', 'Shirpur', '08:00 PM', '9730523061', 'balramyadav@gmail.com', 21.351424989717096, 74.87646430832511, 'BalRam Yadav', '10:00 AM', '1234', '425405');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` varchar(255) NOT NULL,
  `uaddress` varchar(255) DEFAULT NULL,
  `uarea` varchar(255) DEFAULT NULL,
  `ucity` varchar(255) DEFAULT NULL,
  `udob` varchar(255) DEFAULT NULL,
  `uemail` varchar(255) DEFAULT NULL,
  `ulatitude` double DEFAULT NULL,
  `ulongitude` double DEFAULT NULL,
  `umob` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `upassword` varchar(255) DEFAULT NULL,
  `upincode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uaddress`, `uarea`, `ucity`, `udob`, `uemail`, `ulatitude`, `ulongitude`, `umob`, `uname`, `upassword`, `upincode`) VALUES
('1001', 'Tulsivan Niwas', 'Patel Nagar ', 'Shirpur', '2003-08-12', 'radharaman@gmail.com', 21.357540247942634, 74.8786959062255, '8766238984', 'Radha Raman ', '1234', '425405'),
('1002', 'Vrindavan Niwas', 'Ambika Nagar ', 'Shirpur', '2000-08-18', 'radheshkumar@gmail.com', 21.356141355173946, 74.87822383743888, '8932462356', 'Radhesh Kumar', '1234', '425405');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `serviceprovider`
--
ALTER TABLE `serviceprovider`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
