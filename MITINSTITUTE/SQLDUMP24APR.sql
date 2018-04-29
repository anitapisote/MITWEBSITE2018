-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 23, 2018 at 09:07 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `omkardb`
--

-- --------------------------------------------------------

--
-- Table structure for table `event_master`
--

CREATE TABLE `event_master` (
  `event_id` int(11) NOT NULL,
  `event_title` text NOT NULL,
  `event_description` text NOT NULL,
  `image_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event_master`
--

INSERT INTO `event_master` (`event_id`, `event_title`, `event_description`, `image_path`) VALUES
(2, 'MoU Euro Deligates', 'The Memorandum of Understanding was signed between MIT and The European Deligates', 'uploads/img2.jpg'),
(3, 'TechnoMIT', 'TechnoMIt is an event organised by the Computer Science Department of Maharashtra Institute of Technology, Aurangabad', 'uploads/img3.jpg'),
(5, 'Technovanza', 'Technovanza is an event organised by VJTI in teh month of december', 'uploads/img.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `library_master`
--

CREATE TABLE `library_master` (
  `accession_num` int(11) NOT NULL,
  `title` text NOT NULL,
  `authors` text NOT NULL,
  `edition` text NOT NULL,
  `publisher` text NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `library_master`
--

INSERT INTO `library_master` (`accession_num`, `title`, `authors`, `edition`, `publisher`, `book_id`) VALUES
(12, 'Engineering Mathematics', 'Omkar Bahiwal', '12', 'TATA McGraw Hill', 2),
(33, 'PHP Programming', 'Aparna Maam', '2', 'TATA McGraw Hill', 3),
(1234, 'The Alchemist', 'Paulo Colheo', '3', 'Binding Books', 6),
(123, 'asdasd', 'asdad', 'asd', 'asd', 7);

-- --------------------------------------------------------

--
-- Table structure for table `mit_courses`
--

CREATE TABLE `mit_courses` (
  `CourseID` int(11) NOT NULL,
  `CourseName` varchar(100) NOT NULL,
  `Description` varchar(300) DEFAULT NULL,
  `InstituteID` int(11) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `LastUpdatedBy` varchar(50) DEFAULT NULL,
  `LastUpdatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mit_courses`
--

INSERT INTO `mit_courses` (`CourseID`, `CourseName`, `Description`, `InstituteID`, `CreatedBy`, `CreatedDate`, `LastUpdatedBy`, `LastUpdatedDate`) VALUES
(1, 'Bachelor of Engineering (B.E.)', 'CSE 4 year degree course', 1, 'VVS', '2018-04-24 06:23:30', 'VVS', '2018-04-24 00:00:00'),
(2, 'xyZ', 'XYZ', 1, 'VVS', '2018-04-24 00:00:00', 'VSS', '2018-04-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mit_department`
--

CREATE TABLE `mit_department` (
  `DepartmentID` int(11) NOT NULL,
  `DepartmentName` varchar(50) NOT NULL,
  `InstituteID` int(11) NOT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `LastUpdatedBy` varchar(50) DEFAULT NULL,
  `LastUpdatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mit_department`
--

INSERT INTO `mit_department` (`DepartmentID`, `DepartmentName`, `InstituteID`, `CreatedBy`, `CreatedDate`, `LastUpdatedBy`, `LastUpdatedDate`) VALUES
(101, 'MCA', 1, 'VVS', '2018-03-12 00:00:00', 'VVS', '2018-03-12 00:00:00'),
(102, 'CSE', 1, 'VVS', '2018-03-12 00:00:00', 'VVS', '2018-03-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mit_employeemaster`
--

CREATE TABLE `mit_employeemaster` (
  `StaffID` bigint(6) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `MiddleName` varchar(30) DEFAULT NULL,
  `LastName` varchar(30) NOT NULL,
  `DepartmentID` int(11) NOT NULL,
  `EmailID` varchar(50) NOT NULL,
  `MobileNo` bigint(10) NOT NULL,
  `ImagePath` varchar(200) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `LastUpdatedBy` varchar(50) DEFAULT NULL,
  `LastUpdatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mit_employeemaster`
--

INSERT INTO `mit_employeemaster` (`StaffID`, `FirstName`, `MiddleName`, `LastName`, `DepartmentID`, `EmailID`, `MobileNo`, `ImagePath`, `CreatedBy`, `CreatedDate`, `LastUpdatedBy`, `LastUpdatedDate`) VALUES
(100069, 'Vikrant', 'Vijaykant', 'Shaga', 101, 'shagavik@gmail.com', 9975772460, 'http://192.168.43.21:81/images/1.jpg', 'VVS', '2018-03-13 00:00:00', 'VVS', '2018-03-13 00:00:00'),
(100350, 'Prashant', 'Laxminarayan', 'Chintal', 101, 'prashant.chintal@gmail.com', 8805955244, 'http://192.168.43.21:81/images/2.jpg', 'VVS', '2018-03-13 00:00:00', 'VVS', '2018-03-13 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mit_eventcategory`
--

CREATE TABLE `mit_eventcategory` (
  `EventCategoryID` int(2) NOT NULL,
  `EventCategory` varchar(50) NOT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `LastUpdatedBy` varchar(50) DEFAULT NULL,
  `LastUpdatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mit_eventcategory`
--

INSERT INTO `mit_eventcategory` (`EventCategoryID`, `EventCategory`, `CreatedBy`, `CreatedDate`, `LastUpdatedBy`, `LastUpdatedDate`) VALUES
(1, 'Conference', 'VVS', '2018-03-14 00:00:00', 'VVS', '2018-03-14 00:00:00'),
(2, 'Workshop', 'VVS', '2018-03-14 00:00:00', 'VVS', '2018-03-14 00:00:00'),
(3, 'Seminar', 'VVS', '2018-03-14 00:00:00', 'VVS', '2018-03-14 00:00:00'),
(4, 'Guest Lecture', 'VVS', '2018-03-14 00:00:00', 'VVS', '2018-03-14 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mit_eventmaster`
--

CREATE TABLE `mit_eventmaster` (
  `EventID` bigint(20) UNSIGNED NOT NULL,
  `EventName` varchar(200) NOT NULL,
  `EventTypeID` int(2) NOT NULL,
  `EventCategoryID` int(2) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL,
  `EventDescription` varchar(300) DEFAULT NULL,
  `Cost` int(10) NOT NULL,
  `StaffID` bigint(6) NOT NULL,
  `StatusID` int(11) NOT NULL,
  `ImagePath` text NOT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdatedBy` varchar(50) DEFAULT NULL,
  `LastUpdatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mit_eventmaster`
--

INSERT INTO `mit_eventmaster` (`EventID`, `EventName`, `EventTypeID`, `EventCategoryID`, `StartDate`, `EndDate`, `StartTime`, `EndTime`, `EventDescription`, `Cost`, `StaffID`, `StatusID`, `ImagePath`, `CreatedBy`, `CreatedDate`, `LastUpdatedBy`, `LastUpdatedDate`) VALUES
(1, 'TechnoMIT', 1, 1, '2018-04-06', '2018-04-07', '10:00:00', '22:00:00', 'This event is organised by the Computer science and engineering department of Maharshtra Institute of Technology, Aurangabad ', 4000, 100350, 2, 'uploads/img3.jpg', 'VVS', '2018-03-31 18:30:00', 'VVS', '2018-03-31 18:30:00'),
(2, 'Technovanza', 2, 2, '2018-04-10', '2018-04-12', '01:01:00', '02:00:00', 'TEchnovanza is an event organised by VJTI', 3000, 100069, 1, 'uploads/img.jpg', 'PLC', '2018-04-02 07:00:05', 'PLC', '2018-04-02 07:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `mit_eventtypes`
--

CREATE TABLE `mit_eventtypes` (
  `EventTypeID` int(2) NOT NULL,
  `EventType` varchar(50) NOT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mit_eventtypes`
--

INSERT INTO `mit_eventtypes` (`EventTypeID`, `EventType`, `CreatedBy`, `CreatedDate`, `UpdatedBy`, `UpdatedDate`) VALUES
(1, 'Local', 'VVS', '2018-03-13 00:00:00', 'VVS', '2018-03-13 00:00:00'),
(2, 'National', 'VVS', '2018-03-13 00:00:00', 'VVS', '2018-03-13 00:00:00'),
(3, 'International', 'VVS', '2018-03-13 00:00:00', 'VVS', '2018-03-13 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mit_hallmaster`
--

CREATE TABLE `mit_hallmaster` (
  `HallID` int(11) NOT NULL,
  `HallName` varchar(50) NOT NULL,
  `HallType` varchar(50) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `StaffID` bigint(6) NOT NULL,
  `NoOfChairs` int(5) DEFAULT NULL,
  `NoOfTables` int(4) DEFAULT NULL,
  `NoOfDices` int(4) DEFAULT NULL,
  `NoOfAC` int(3) DEFAULT NULL,
  `NoOfProjector` int(4) DEFAULT NULL,
  `NoOfFans` int(3) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `LastUpdatedBy` varchar(50) DEFAULT NULL,
  `LastUpdatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mit_hallmaster`
--

INSERT INTO `mit_hallmaster` (`HallID`, `HallName`, `HallType`, `Capacity`, `Location`, `StaffID`, `NoOfChairs`, `NoOfTables`, `NoOfDices`, `NoOfAC`, `NoOfProjector`, `NoOfFans`, `CreatedBy`, `CreatedDate`, `LastUpdatedBy`, `LastUpdatedDate`) VALUES
(101, 'Auditorium', 'Auditorium', 350, 'MIT Engineering near IBS ', 100069, 350, 10, 2, 5, 1, 10, 'VVS', '2018-03-13 00:00:00', 'VVS', '2018-03-13 00:00:00'),
(105, 'Seminar Hall', 'Seminar', 150, 'MIT Engineering near Admission Office ', 100350, 100, 2, 1, 5, 1, 10, 'VVS', '2018-03-13 00:00:00', 'VVS', '2018-03-13 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mit_hallrequest`
--

CREATE TABLE `mit_hallrequest` (
  `StaffID` bigint(6) NOT NULL,
  `HallID` int(11) NOT NULL,
  `EventID` bigint(20) UNSIGNED NOT NULL,
  `StatusID` int(11) NOT NULL,
  `DateofRequest` datetime NOT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mit_institute`
--

CREATE TABLE `mit_institute` (
  `InstituteID` int(11) NOT NULL,
  `InstituteName` varchar(50) NOT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `LastUpdatedBy` varchar(50) DEFAULT NULL,
  `LastUpdatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mit_institute`
--

INSERT INTO `mit_institute` (`InstituteID`, `InstituteName`, `CreatedBy`, `CreatedDate`, `LastUpdatedBy`, `LastUpdatedDate`) VALUES
(1, 'MIT ENGINEERING', 'VVS', '2018-03-13 00:00:00', 'VVS', '2018-03-13 00:00:00');

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
-- Dumping data for table `mit_international_admission_enquiry`
--

INSERT INTO `mit_international_admission_enquiry` (`EnquiryID`, `FullName`, `DOB`, `EmailID`, `MobileNo`, `State`, `City`, `CountryOfResidence`, `CountryOfCitizenShip`, `InstituteID`, `CourseID`, `enquiry_message`, `CreatedBy`, `CreatedDate`, `LastUpdatedBy`, `LastUpdatedDate`) VALUES
(3, 'Omkar Bahiwal', '2018-04-10', 'ombahiwal@gmail.com', '9373130909', 'Maharashtra', 'Aurangabad', 'United States', 'India', 1, 1, 'Hi', 'VVS', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mit_statusmaster`
--

CREATE TABLE `mit_statusmaster` (
  `StatusID` int(11) NOT NULL,
  `StatusFor` varchar(50) NOT NULL,
  `StatusValue` varchar(50) NOT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `LastUpdatedBy` varchar(50) DEFAULT NULL,
  `LastUpdatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mit_statusmaster`
--

INSERT INTO `mit_statusmaster` (`StatusID`, `StatusFor`, `StatusValue`, `Description`, `CreatedBy`, `CreatedDate`, `LastUpdatedBy`, `LastUpdatedDate`) VALUES
(1, 'Event', 'PENDING', 'Pending Status of Event', 'VVS', '2018-03-13 00:00:00', 'VVS', '2018-03-13 00:00:00'),
(2, 'Event', 'APPROVED', 'APPROVED Status of Event', 'VVS', '2018-03-13 00:00:00', 'VVS', '2018-03-13 00:00:00'),
(3, 'Event', 'REJECTED', 'REJECTION Status of Event', 'VVS', '2018-03-13 00:00:00', 'VVS', '2018-03-13 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `practice`
--

CREATE TABLE `practice` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `practice`
--

INSERT INTO `practice` (`id`, `username`, `pass`, `name`) VALUES
(1, 'omkar', 'omkar123', 'Omkar Bahiwal');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `name` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`) VALUES
(1, 'ombahiwal', 'Omkar Bahiwal', 'omkar123'),
(4, 'omkar', 'Aparna Maam', 'omkar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event_master`
--
ALTER TABLE `event_master`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `library_master`
--
ALTER TABLE `library_master`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `mit_courses`
--
ALTER TABLE `mit_courses`
  ADD PRIMARY KEY (`CourseID`),
  ADD KEY `FK_INSTITUTE_COURSE` (`InstituteID`);

--
-- Indexes for table `mit_department`
--
ALTER TABLE `mit_department`
  ADD PRIMARY KEY (`DepartmentID`),
  ADD KEY `FK_INSTITUTE_DEPARTMENT` (`InstituteID`);

--
-- Indexes for table `mit_employeemaster`
--
ALTER TABLE `mit_employeemaster`
  ADD PRIMARY KEY (`StaffID`),
  ADD KEY `FK_EMPDEPT` (`DepartmentID`);

--
-- Indexes for table `mit_eventcategory`
--
ALTER TABLE `mit_eventcategory`
  ADD PRIMARY KEY (`EventCategoryID`);

--
-- Indexes for table `mit_eventmaster`
--
ALTER TABLE `mit_eventmaster`
  ADD PRIMARY KEY (`EventID`),
  ADD KEY `FK_MIT_EVENTMASTER_MIT_EMPLOYEEMASTER` (`StaffID`),
  ADD KEY `FK_MIT_EVENTMASTER_MIT_EVENTTYPES` (`EventTypeID`),
  ADD KEY `FK_EVENTCATEGORY_EVENTMASTER` (`EventCategoryID`),
  ADD KEY `FK_EVENT_STATUS` (`StatusID`);

--
-- Indexes for table `mit_eventtypes`
--
ALTER TABLE `mit_eventtypes`
  ADD PRIMARY KEY (`EventTypeID`);

--
-- Indexes for table `mit_hallmaster`
--
ALTER TABLE `mit_hallmaster`
  ADD PRIMARY KEY (`HallID`),
  ADD KEY `FK_MIT_HALLMASTER_MIT_EMPLOYEEMASTER` (`StaffID`);

--
-- Indexes for table `mit_hallrequest`
--
ALTER TABLE `mit_hallrequest`
  ADD KEY `FK_MIT_HALLREQUEST_MIT_EMPLOYEEMASTER` (`StaffID`),
  ADD KEY `FK_MIT_HALLREQUEST_MIT_HALLMASTER` (`HallID`),
  ADD KEY `FK_MIT_HALLREQUEST_MIT_STATUSMASTER` (`StatusID`),
  ADD KEY `FK_MIT_HALLREQUEST_MIT_EVENTMASTER` (`EventID`);

--
-- Indexes for table `mit_institute`
--
ALTER TABLE `mit_institute`
  ADD PRIMARY KEY (`InstituteID`);

--
-- Indexes for table `mit_international_admission_enquiry`
--
ALTER TABLE `mit_international_admission_enquiry`
  ADD PRIMARY KEY (`EnquiryID`),
  ADD KEY `InstituteID` (`InstituteID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `mit_statusmaster`
--
ALTER TABLE `mit_statusmaster`
  ADD PRIMARY KEY (`StatusID`);

--
-- Indexes for table `practice`
--
ALTER TABLE `practice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_master`
--
ALTER TABLE `event_master`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `library_master`
--
ALTER TABLE `library_master`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mit_eventmaster`
--
ALTER TABLE `mit_eventmaster`
  MODIFY `EventID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mit_international_admission_enquiry`
--
ALTER TABLE `mit_international_admission_enquiry`
  MODIFY `EnquiryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `practice`
--
ALTER TABLE `practice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mit_courses`
--
ALTER TABLE `mit_courses`
  ADD CONSTRAINT `FK_INSTITUTE_COURSE` FOREIGN KEY (`InstituteID`) REFERENCES `mit_institute` (`InstituteID`);

--
-- Constraints for table `mit_department`
--
ALTER TABLE `mit_department`
  ADD CONSTRAINT `FK_INSTITUTE_DEPARTMENT` FOREIGN KEY (`InstituteID`) REFERENCES `mit_institute` (`InstituteID`);

--
-- Constraints for table `mit_employeemaster`
--
ALTER TABLE `mit_employeemaster`
  ADD CONSTRAINT `FK_EMPDEPT` FOREIGN KEY (`DepartmentID`) REFERENCES `mit_department` (`DepartmentID`);

--
-- Constraints for table `mit_eventmaster`
--
ALTER TABLE `mit_eventmaster`
  ADD CONSTRAINT `FK_EVENTCATEGORY_EVENTMASTER` FOREIGN KEY (`EventCategoryID`) REFERENCES `mit_eventcategory` (`EventCategoryID`),
  ADD CONSTRAINT `FK_EVENT_STATUS` FOREIGN KEY (`StatusID`) REFERENCES `mit_statusmaster` (`StatusID`),
  ADD CONSTRAINT `FK_MIT_EVENTMASTER_MIT_EMPLOYEEMASTER` FOREIGN KEY (`StaffID`) REFERENCES `mit_employeemaster` (`StaffID`),
  ADD CONSTRAINT `FK_MIT_EVENTMASTER_MIT_EVENTTYPES` FOREIGN KEY (`EventTypeID`) REFERENCES `mit_eventtypes` (`EventTypeID`);

--
-- Constraints for table `mit_hallmaster`
--
ALTER TABLE `mit_hallmaster`
  ADD CONSTRAINT `FK_MIT_HALLMASTER_MIT_EMPLOYEEMASTER` FOREIGN KEY (`StaffID`) REFERENCES `mit_employeemaster` (`StaffID`);

--
-- Constraints for table `mit_hallrequest`
--
ALTER TABLE `mit_hallrequest`
  ADD CONSTRAINT `FK_MIT_HALLREQUEST_MIT_EMPLOYEEMASTER` FOREIGN KEY (`StaffID`) REFERENCES `mit_employeemaster` (`StaffID`),
  ADD CONSTRAINT `FK_MIT_HALLREQUEST_MIT_EVENTMASTER` FOREIGN KEY (`EventID`) REFERENCES `mit_eventmaster` (`EventID`),
  ADD CONSTRAINT `FK_MIT_HALLREQUEST_MIT_HALLMASTER` FOREIGN KEY (`HallID`) REFERENCES `mit_hallmaster` (`HallID`),
  ADD CONSTRAINT `FK_MIT_HALLREQUEST_MIT_STATUSMASTER` FOREIGN KEY (`StatusID`) REFERENCES `mit_statusmaster` (`StatusID`);

--
-- Constraints for table `mit_international_admission_enquiry`
--
ALTER TABLE `mit_international_admission_enquiry`
  ADD CONSTRAINT `mit_international_admission_enquiry_ibfk_1` FOREIGN KEY (`InstituteID`) REFERENCES `mit_institute` (`InstituteID`),
  ADD CONSTRAINT `mit_international_admission_enquiry_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `mit_courses` (`CourseID`);
