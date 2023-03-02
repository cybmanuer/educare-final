-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2023 at 04:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_name` varchar(250) NOT NULL,
  `a_pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_name`, `a_pass`) VALUES
('megha', 'megha123'),
('anisha', 'anisha123'),
('kushi', 'kushi123'),
('likitha', 'liki123');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `msg` varchar(300) NOT NULL,
  `t_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_name` varchar(250) NOT NULL,
  `s_reg` varchar(100) NOT NULL,
  `s_phno` varchar(30) NOT NULL,
  `s_sem` int(100) NOT NULL,
  `s_comb` varchar(100) NOT NULL,
  `s_pass` varchar(100) NOT NULL,
  `s_fees` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_name`, `s_reg`, `s_phno`, `s_sem`, `s_comb`, `s_pass`, `s_fees`) VALUES
('anisha', '20b19008', '9876543210', 5, 'BCA', 'anisha123', ''),
('likitha', '20b19047', '5975894486', 4, 'BBM', 'liki123', '5000'),
('megha', '20b19052', '8867474824', 5, 'bca', 'megha123', '30000');

-- --------------------------------------------------------

--
-- Table structure for table `tblfiles`
--

CREATE TABLE `tblfiles` (
  `FileName` varchar(2000) NOT NULL,
  `Location` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `t_name` varchar(250) NOT NULL,
  `t_phno` varchar(50) NOT NULL,
  `t_address` varchar(250) NOT NULL,
  `t_dept` varchar(250) NOT NULL,
  `t_pass` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`t_name`, `t_phno`, `t_address`, `t_dept`, `t_pass`) VALUES
('anisha', '6565565665', 'tml', 'bcom', 'ani123'),
('megha', '8867474824', 'tmk', 'bca', 'megha123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD UNIQUE KEY `msg` (`msg`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_reg`);

--
-- Indexes for table `tblfiles`
--
ALTER TABLE `tblfiles`
  ADD UNIQUE KEY `FileName` (`FileName`) USING HASH;

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`t_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
