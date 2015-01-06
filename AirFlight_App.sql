-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 06, 2015 at 01:17 PM
-- Server version: 5.5.40-MariaDB-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `AirFlight_App`
--

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

CREATE TABLE IF NOT EXISTS `airports` (
  `code` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `destinations` longtext NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airports`
--

INSERT INTO `airports` (`code`, `name`, `city`, `destinations`) VALUES
('ATL', 'Hartsfield Jackson Atlanta International Airport', 'Atlanta', 'LAX,JFK,IAH'),
('DFW', 'Dallas/Fort Worth International Airport', 'Dallas/Fort Worth', 'LAX,DEN,JFK,SFO,MCI'),
('LAX', 'Los Angeles International Airport', 'Los Angeles', 'ATL,ORD,DFW,DEN,JFK,SFO,LAS'),
('ORD', 'O''Hare International Airport', 'Chicago', 'LAX,JFK,IAH');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE IF NOT EXISTS `flights` (
  `number` int(100) NOT NULL,
  `origin` varchar(200) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `price` int(50) NOT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`number`, `origin`, `destination`, `price`) VALUES
(321, 'ORD', 'IAH', 246),
(362, 'LAX', 'ORD', 216),
(472, 'LAX', 'DFW', 187),
(499, 'LAX', 'ATL', 224),
(720, 'ORD', 'LAX', 195),
(840, 'ORD', 'JFK', 292);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
