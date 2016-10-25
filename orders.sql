-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 25, 2016 at 09:48 AM
-- Server version: 10.0.26-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gentro`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `statusId` int(11) DEFAULT '1',
  `date` date NOT NULL,
  `orderTotal` float NOT NULL,
  `totalDiscount` float NOT NULL,
  `shipping` decimal(10,0) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `contactNum` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `statusId`, `date`, `orderTotal`, `totalDiscount`, `shipping`, `lname`, `fname`, `mname`, `contactNum`, `email`, `gender`, `address`, `province`, `city`, `zip`) VALUES
(2, 1, '2016-10-25', 7, 0, '120', 'test', '', '', '22222222222', 'test@test.com', 'male', 'Test Test', 'Metro Manila', 'Caloocan', '1233'),
(3, 1, '2016-10-25', 5, 0, '120', '123', 'fsdf', '', '01234567892', 'test@test.com', 'male', 'test test', 'Metro Manila', 'Caloocan', '5555'),
(4, 1, '2016-10-25', 5, 0, '120', '123', 'fsdf', '', '01234567892', 'test@test.com', 'male', 'test test', 'Metro Manila', 'Caloocan', '5555'),
(5, 1, '2016-10-25', 5, 0, '120', '123', 'fsdf', '', '01234567892', 'test@test.com', 'male', 'test test', 'Metro Manila', 'Caloocan', '5555');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
