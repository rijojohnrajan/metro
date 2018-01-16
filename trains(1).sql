-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 03, 2017 at 03:08 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trains`
--

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `train_no` varchar(50) NOT NULL,
  `D_id` int(10) NOT NULL,
  `D_name` varchar(50) NOT NULL,
  `working_hours` int(11) NOT NULL,
  `Gender` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`train_no`, `D_id`, `D_name`, `working_hours`, `Gender`) VALUES
('', 1, 'Abu', 10, 'M'),
('', 2, 'Chethan', 4, 'M'),
('BYP-600', 1, 'Abu', 10, 'M'),
('kUV 200', 2, 'Chethan', 8, 'm'),
('MG-700', 3, 'Selvin', 5, 'M'),
('MG-800', 4, 'Sita', 6, 'F');

-- --------------------------------------------------------

--
-- Table structure for table `fare`
--

CREATE TABLE `fare` (
  `source` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `distance in km` int(20) NOT NULL,
  `fare` float NOT NULL,
  `Train_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fare`
--

INSERT INTO `fare` (`source`, `destination`, `distance in km`, `fare`, `Train_no`) VALUES
('bommanahalli', 'mg road', 12, 80, ''),
('trinity', 'baiyanapahalli', 8, 40, ''),
('baiyappanahalli', 'kempagowda station', 7, 45, 'BYP-600'),
('baiyappanahalli', 'Magadi road', 6, 30, 'BYP437'),
('Cubbon Park', 'Yelachenahalli', 6, 30, 'CB120'),
('', '', 0, 0, ''),
('Magadi road', 'Halasuru', 5, 20, 'HLS543'),
('Cubbo', 'Indiranagar ', 6, 25, 'IDC125'),
('jayaprakashnagar', 'Indiranagar', 7, 37, 'JPN321'),
('Kuvempu Road', 'Srirampura ', 7, 35, 'Kuv 200'),
('Majestic station', 'Yelachenahalli', 12, 67, 'MAJ780'),
('Cubbon Park', 'mg road', 7, 50, 'MC330'),
('Mantri square ', 'Cubbon Park', 7, 50, 'MCP442'),
('mg road', 'bommanahalli', 8, 57, 'MG-700'),
('bommanahalli', 'mg road', 8, 60, 'MG-800');

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `p_no` int(10) NOT NULL,
  `P_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`p_no`, `P_name`) VALUES
(1, 'David warner'),
(2, 'Steve smith');

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `Train_no` varchar(50) NOT NULL,
  `Train_name` varchar(50) NOT NULL,
  `Source` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `Time` time(4) NOT NULL,
  `Available_on` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`Train_no`, `Train_name`, `Source`, `Destination`, `Time`, `Available_on`) VALUES
('BYP-600', 'baiyappahalli', 'baiyappanahalli', 'kempagowda station', '00:00:04.0000', 'tuesday'),
('BYP437', 'MAGADI', 'Baiyappanahalli', 'Magadi road', '05:17:00.0000', 'Thursday'),
('CB120', 'YELACHEN', 'Cubbon Park', 'Yelachenahalli', '12:15:00.0000', 'Wednesday'),
('HLS543', 'HALASURU', 'Magadi road', 'Halasuru', '04:20:00.0000', 'Thursday'),
('IDC125', 'INDIRA', 'Cubbon Park', 'Indiranagar metro station', '11:20:12.0000', 'Sunday'),
('JPN321', 'SHIVOM', 'Jayaprakashnagar', 'Indiranagar metro station', '02:15:00.0000', 'Sunday'),
('Kuv 200', 'kuvempu-srirampura', 'Kuvempu Road', 'Srirampura metro station', '00:00:09.0000', 'Monday'),
('MAJ780', 'NADU', 'Majestic station', 'Yelachenahalli', '04:15:00.0000', 'Sunday'),
('MC330', 'GANDHI', 'Cubbon Park', 'MG road', '09:00:00.0000', 'Monday'),
('MCP442', 'SQAURE', 'Mantri square metro station', 'Cubbon Park', '10:15:20.0000', 'Thursday'),
('MG-700', 'MG-bommanahalli', 'mg road', 'bommanahalli', '00:00:05.0000', 'wednesday'),
('MG-800', 'bommanahalli-mg road', 'bommanahalli', 'mg road', '00:00:10.0000', 'thrusday'),
('MK-500', 'magadi-blore rail corporation', 'magadi road', 'hosahalli', '00:00:10.0000', 'monday'),
('MM-400', 'kempagoda_magadi', 'kempagowda ', 'magadi road', '00:00:10.0000', 'monday'),
('MMK-300', 'Mantri squarae-kempagowda', 'Mantri square metro station', 'kempagowda station', '00:00:10.0000', 'Tuesday'),
('MS899', 'SAMPIGE', 'Mantri square metro station', 'M Vishveswaraya ', '11:12:30.0000', 'Friday'),
('MY330', 'SAMPIGAE MANTRI', 'Yelachenahalli', 'Mantri square sampige 3L', '03:20:00.0000', 'tuesday'),
('SR550', '', '', '', '00:00:00.0000', ''),
('SSF100', 'Sandal factory-mahalakshmi', 'Sandal soap factory', 'Mahalakshmi', '00:00:08.0000', 'Monday'),
('TM430', 'TRMG', 'MG road', 'Trinity', '06:30:00.0000', 'Saturday'),
('TR800', 'CUBBON', 'Trinity', 'Cubbon Park', '10:30:15.0000', 'Monday'),
('TRN789', 'TRINITY', 'Trinity', 'M Vishveswaraya', '03:15:00.0000', 'Thursday'),
('YLCH-520', 'JAYAPRAKASH', 'Yelachenahalli', 'Jayaprakashnagar', '02:11:15.0000', 'Thursday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`Train_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
