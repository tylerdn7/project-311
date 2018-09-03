-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2018 at 06:57 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_donation`
--

-- --------------------------------------------------------

--
-- Table structure for table `acceptor`
--

CREATE TABLE `acceptor` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `phone` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bloodgroup` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acceptor`
--

INSERT INTO `acceptor` (`fname`, `lname`, `phone`, `email`, `bloodgroup`, `city`) VALUES
('', '', 0, '', 'A+', 'Dhaka'),
('abc', 'abc', 123456, 'abc@gmail.com', 'A-', 'Rajshahi'),
('pavel', 'alam555', 225566, 'pavel1233334@gmail.com', 'AB+', 'Rajshahi'),
('jebin', 'jebin', 255269644, 'jebin@gmail.com', 'B-', 'Rajshahi'),
('mahadi', 'hassan', 1722038050, 'mahadi@yahoo.com', 'AB+', 'Rajshahi'),
('pavel', 'alam', 1740140494, 'pavel1234@gmail.com', 'A-', 'Dhaka'),
('abcd', 'abcd', 1740144655, 'abcd@gmail.com', 'O-', 'Chittagong'),
('maruf', 'islam', 1744346999, 'maruf@gmail.com', 'B+', 'Rangpur'),
('amir', 'sohel', 2147483647, 'dola@gmail.com', 'A+', 'Sylhet');

-- --------------------------------------------------------

--
-- Table structure for table `donar`
--

CREATE TABLE `donar` (
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donar`
--

INSERT INTO `donar` (`name`, `username`, `phone`, `email`, `bloodgroup`, `city`) VALUES
('abcdef', 'abc', 5552266, 'abc@gmail.com', 'A+', 'Rangpur'),
('abcd3', 'abcd3', 5555555, 'abcd3@gmail.com', 'A+', 'Rajshahi'),
('abcd4', 'abcd4', 888888888, 'abcd4@gmail.com', 'A+', 'Rangpur'),
('abcd5', 'abcd5', 555555222, 'abcd5@gmail.com', 'A+', 'Sylhet'),
('abcd7', 'abcd7', 2147483647, 'abcd7@gmail.com', 'A+', 'Barishal'),
('abcd7', 'abcd8', 566625822, 'abcd8@gmail.com', 'A+', 'Khulna'),
('asdfgh', 'adsfdgfhgj', 5252353, 'asdfghfgfh@gmail.com', 'A-', 'Khulna'),
('adsfdgfhs', 'adsfdgfhjg', 754554353, 'asdffdgfh@gmail.com', 'A-', 'Rajshahi'),
('pavel', 'alam', 14452, 'mahfuzurrahmanshuvo3@gmai', 'AB+', 'Dhaka'),
('pavel1', 'alam1', 1445255, 'mahf11111uzurrahmanshuvo3', 'O-', 'Sylhet'),
('pavel', 'alam5552222', 2147483647, 'pavel124555555553@gmail.c', 'A+', 'Dhaka'),
('pavel555555', 'alam55555', 2147483647, 'mahfuzurra22225555hmanshu', 'A-', 'Khulna'),
('sohel', 'amir', 1776913567, 'sohel@gmail.com', 'A+', 'Chittagong'),
('hgyjuhkjl', 'dfgghjkll', 46586230, 'fdgfg@gmail.com', 'Blood Grou', 'City'),
('aerstryu', 'esrdtfyg', 65656, 'sfdyj@yahoo.com', 'A+', 'Dhaka'),
('dyjgyjuu', 'fdhfyy', 5566666, '5555222@gmail.com', 'A+', 'Dhaka'),
('fgfg', 'gdgdg', 42, 'fgfg@gmail.com', 'A+', 'Dhaka'),
('ghij', 'ghij', 11120011, 'ghij@gmail.com', 'A-', 'Sylhet'),
('ght', 'ght', 898989626, 'ght@gmail.com', 'AB-', 'Khulna'),
('shimul', 'hassan', 144520563, 'hassan@gmail.com', 'A+', 'Chittagong'),
('jebin', 'jebin', 162524525, 'jebin@gmail.com', 'B+', 'Barishal'),
('maruf', 'maruf', 1744346999, 'maruf@gmail.com', 'B+', 'Rangpur'),
('masud', 'masud', 111111111, 'masud@gmail.com', 'B-', 'Rajshahi'),
('pavel123', 'pavel123', 123456, 'pavel123@gmail.com', 'O+', 'Chittagong'),
('pavel1234', 'pavel1234', 2147483647, 'pavel1234@gmail.com', 'B+', 'Rangpur'),
('pavel33', 'pavel33', 2147483647, 'pavel33@gmail.com', 'A+', 'Dhaka'),
('psyche', 'psyche', 55525952, 'psyche@gmail.com', 'A-', 'Dhaka'),
('psyche2', 'psyche2', 45556535, 'psyche2@gmail.com', 'B-', 'Dhaka'),
('psyche3', 'psyche3', 2147483647, 'psyche3@gmail.com', 'O+', 'Dhaka'),
('psyche', 'psyche4', 542546456, 'psyche4@gmail.com', 'O-', 'Dhaka'),
('psyche44', 'psyche44', 686453653, 'psyche25@gmail.com', 'AB-', 'Dhaka'),
('psyche55', 'psyche55', 2147483647, 'psyche55@gmail.com', 'AB+', 'Dhaka'),
('psyche66', 'psyche66', 0, 'psyche66@gmail.com', 'AB+', 'Dhaka'),
('raisha', 'raisha', 544995626, 'raisha@gmail.com', 'B+', 'Dhaka'),
('roman11', 'roman11', 2147483647, 'roman11@gmail.com', 'B-', 'Rajshahi'),
('rdtfyguh', 'sfdhjklktuirktryjdtu', 465123, '', 'A+', 'Dhaka'),
('xyz', 'xyz', 111111, 'xyz@gmail.com', 'B+', 'Chittagong');

-- --------------------------------------------------------

--
-- Table structure for table `dummy`
--

CREATE TABLE `dummy` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dummy`
--

INSERT INTO `dummy` (`id`, `name`) VALUES
(1, 'mahadi'),
(2, 'tahsin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acceptor`
--
ALTER TABLE `acceptor`
  ADD PRIMARY KEY (`phone`);

--
-- Indexes for table `donar`
--
ALTER TABLE `donar`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `dummy`
--
ALTER TABLE `dummy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dummy`
--
ALTER TABLE `dummy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
