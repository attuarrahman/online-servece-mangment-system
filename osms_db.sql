-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 01, 2020 at 07:31 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `osms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

DROP TABLE IF EXISTS `adminlogin`;
CREATE TABLE IF NOT EXISTS `adminlogin` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `assign_work`
--

DROP TABLE IF EXISTS `assign_work`;
CREATE TABLE IF NOT EXISTS `assign_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` int(255) NOT NULL,
  `description` text NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `assign_technician` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_work`
--

INSERT INTO `assign_work` (`id`, `name`, `email`, `address`, `city`, `state`, `zipcode`, `description`, `mobile`, `date`, `assign_technician`) VALUES
(1, 'admin', 'attaurrahman@gmail.com', 'RAHIM ABAD', 'new islamabad', 'United Stateshh', 99, ' jo ', '03012995943', '2020-01-23', 'sadiq'),
(2, 'attaurrahman', 'attaurrahman@gmail.com', 'matako bajaur', 'new islamabad', 'islamabad', 878, ' hi i have problem in phone please read this serious issue ', '03012995943', '2020-01-20', 'fahad'),
(3, 'hussan khan', 'hussan@gmail.com', 'timargara', 'timargara', 'pakistan', 8300, ' hello sir i have problem in pc produce sound please help ', '0342667547', '2020-02-10', 'sadiq'),
(4, 'admin', 'attaurrahman@gmail.com', 'matako bajaur', 'new islamabad', 'Islam', 3, ' ge ', '03012995943', '2020-02-19', 'fahad');

-- --------------------------------------------------------

--
-- Table structure for table `createtechnician`
--

DROP TABLE IF EXISTS `createtechnician`;
CREATE TABLE IF NOT EXISTS `createtechnician` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `qualifications` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `createtechnician`
--

INSERT INTO `createtechnician` (`id`, `name`, `email`, `mobile`, `qualifications`, `address`) VALUES
(7, 'atta ur rahman', 'attaurrahman@gmail.com', '03012995943', 'software engineer', 'matako ');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `date_of_purchase` date NOT NULL,
  `available_product` varchar(255) NOT NULL,
  `total_product` int(50) NOT NULL,
  `original_price` int(50) NOT NULL,
  `selling_price` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `date_of_purchase`, `available_product`, `total_product`, `original_price`, `selling_price`) VALUES
(9, 'keyboard', '2020-01-08', '9', 12, 30, 40),
(10, 'USB', '2020-01-15', '12', 45, 300, 400);

-- --------------------------------------------------------

--
-- Table structure for table `selling_product`
--

DROP TABLE IF EXISTS `selling_product`;
CREATE TABLE IF NOT EXISTS `selling_product` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `available_product` varchar(255) NOT NULL,
  `selling_price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selling_product`
--

INSERT INTO `selling_product` (`id`, `name`, `mobile`, `customer_name`, `customer_address`, `available_product`, `selling_price`, `quantity`, `total_price`, `date`) VALUES
(42, 'USB', '03012995943', 'sohail khan', 'sakhkot', '26', '400', '1', '400', '2020-01-16'),
(43, 'USB', '03012995943', 'sohail khan', 'sakhkot', '25', '400', '13', '5200', '2020-01-15'),
(44, 'keyboard', '03012995943', 'sohail khan', 'sakhkot', '10', '40', '1', '40', '2020-01-14');

-- --------------------------------------------------------

--
-- Table structure for table `submitrequest`
--

DROP TABLE IF EXISTS `submitrequest`;
CREATE TABLE IF NOT EXISTS `submitrequest` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `request_status` int(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zipcode` int(255) NOT NULL,
  `mobile` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submitrequest`
--

INSERT INTO `submitrequest` (`id`, `name`, `request_status`, `email`, `address`, `city`, `state`, `zipcode`, `mobile`, `date`, `time`, `image`, `description`) VALUES
(91, 'admin', 1, 'attaurrahman@gmail.com', 'matako bajaur', 'new islamabad', 'Islam', 3, '03012995943', '2020-01-06', '15:03:00', 'baby-wearing-yellow-coat-bhutan-baby-prince-with-toy-car-png-clip-art.png', 'ge'),
(97, 'attaurrahman', 0, 'attaurrahman@gmail.com', 'matako bajaur', 'new islamabad', 'islamabad', 878, '03012995943', '2020-01-15', '12:59:00', 'profile_logo_.gif', 'hi i have problem in phone please read this serious issue'),
(99, 'hussan khan', 0, 'hussan@gmail.com', 'timargara', 'timargara', 'pakistan', 8300, '0342667547', '2020-01-01', '12:59:00', 'c5.png', 'hello sir i have problem in pc produce sound please help');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

DROP TABLE IF EXISTS `userregistration`;
CREATE TABLE IF NOT EXISTS `userregistration` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `name`, `email`, `password`) VALUES
(4, 'izaz', 'izaz@gmail.com', 'izaz1'),
(2, 'attaurrahman', 'attaurrahman@gmail.com', 'rahman'),
(30, 'hussan', 'hussan@gmail.com', 'hussan');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
