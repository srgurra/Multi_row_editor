-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2019 at 11:33 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datatables`
--

-- --------------------------------------------------------

--
-- Table structure for table `datatables_demo`
--

CREATE TABLE `datatables_demo` (
  `id` int(10) NOT NULL,
  `first_name` varchar(250) NOT NULL DEFAULT '',
  `last_name` varchar(250) NOT NULL DEFAULT '',
  `position` varchar(250) NOT NULL DEFAULT '',
  `email` varchar(250) NOT NULL DEFAULT '',
  `office` varchar(250) NOT NULL DEFAULT '',
  `start_date` datetime DEFAULT NULL,
  `age` int(8) DEFAULT NULL,
  `salary` int(8) DEFAULT NULL,
  `seq` int(8) DEFAULT NULL,
  `extn` varchar(8) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datatables_demo`
--

INSERT INTO `datatables_demo` (`id`, `first_name`, `last_name`, `position`, `email`, `office`, `start_date`, `age`, `salary`, `seq`, `extn`) VALUES
(65, 'usman', 'rana', 'android developer', '', 'purelogics', '2019-01-01 00:00:00', NULL, 110, NULL, 'java'),
(67, 'Umair', 'Malik', 'Web developer', '', 'purelogics', '2019-01-10 00:00:00', NULL, 95000, NULL, 'php'),
(68, 'Bilawal', 'patafi', 'frontend developer', '', 'purelogics', '2019-01-18 00:00:00', NULL, 80000, NULL, 'html'),
(69, 'qudrat', 'ullah', 'senior developer', '', '100 solution', '2019-01-23 00:00:00', NULL, 150000, NULL, 'web dev'),
(70, 'arslan', 'arsad', 'unity developer', '', 'sadiq', '2019-01-13 00:00:00', NULL, 90000, NULL, 'game'),
(71, 'asad', 'ullah', 'internee dev', '', 'ozye', '2019-02-15 00:00:00', NULL, 10000, NULL, 'android');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datatables_demo`
--
ALTER TABLE `datatables_demo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seq` (`seq`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datatables_demo`
--
ALTER TABLE `datatables_demo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
