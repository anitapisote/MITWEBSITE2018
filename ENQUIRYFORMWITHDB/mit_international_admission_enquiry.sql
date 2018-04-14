-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2018 at 08:07 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omkardb`
--

-- --------------------------------------------------------

--
-- Table structure for table `mit_international_admission_enquiry`
--

CREATE TABLE `mit_international_admission_enquiry` (
  `EnquiryID` int(11) NOT NULL,
  `FullName` varchar(200) NOT NULL,
  `DOB` date NOT NULL,
  `EmailID` varchar(30) NOT NULL,
  `MobileNo` varchar(20) NOT NULL,
  `State` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `CountryOfResidence` varchar(30) NOT NULL,
  `CountryOfCitizenShip` varchar(30) NOT NULL,
  `InstituteID` int(11) NOT NULL,
  `CourseID` int(11) NOT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `LastUpdatedBy` varchar(50) DEFAULT NULL,
  `LastUpdatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mit_international_admission_enquiry`
--
ALTER TABLE `mit_international_admission_enquiry`
  ADD PRIMARY KEY (`EnquiryID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mit_international_admission_enquiry`
--
ALTER TABLE `mit_international_admission_enquiry`
  MODIFY `EnquiryID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
