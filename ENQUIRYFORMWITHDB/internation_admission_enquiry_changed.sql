-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 15, 2018 at 07:17 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

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
  `enquiry_message` text NOT NULL,
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
  ADD PRIMARY KEY (`EnquiryID`),
  ADD KEY `InstituteID` (`InstituteID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mit_international_admission_enquiry`
--
ALTER TABLE `mit_international_admission_enquiry`
  MODIFY `EnquiryID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mit_international_admission_enquiry`
--
ALTER TABLE `mit_international_admission_enquiry`
  ADD CONSTRAINT `mit_international_admission_enquiry_ibfk_1` FOREIGN KEY (`InstituteID`) REFERENCES `mit_institute` (`InstituteID`),
  ADD CONSTRAINT `mit_international_admission_enquiry_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `mit_courses` (`CourseID`);
