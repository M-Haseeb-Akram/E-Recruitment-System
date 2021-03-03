-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2021 at 05:09 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_recruitment_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Name`, `Email`, `Username`, `pass`) VALUES
('Abdul Muqeet', 'abdulcoool@mail.com', 'Abdul', '123456'),
('Muhammad Haseeb Akram', 'xrexes09@gmail.com', 'hasib', '129090');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `Cid` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone` varchar(13) NOT NULL,
  `profession` varchar(100) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`Cid`, `Name`, `Email`, `Phone`, `profession`, `Address`, `Password`) VALUES
(1, 'Abdur Rehmman', 'abdulcoool@gmail.com', '3334466778', 'Database Administrator', 'Sialkot, Pakistan', '11221122'),
(2, 'Minuj', 'kynimo@gmail.com', '87654356', 'Enterpeneur', 'Amratsar, India', '909890'),
(3, 'Samiya', 'samiya@gmail.com', '08898723', 'Student', 'Jahangir', '12341234'),
(4, 'Muhammad Aleem', 'hseev@gmail.com', '04123345', 'Front End Designer', 'T. T. Singh', 'jijiji'),
(11, 'Haseeb Akram', 'xrexes01@gmail.com', '03075216024', 'Software Developer', 'Lahore', '112221'),
(12, 'Mohsin Afzal', 'shatan@gmail.com', '0334789234', 'Web Developer', 'Islamabad', '11221122'),
(15, 'Abdur Rehmman', 'coool@gmail.com', '3334466778', 'Database Administrator', 'Sialkot, Pakistan', '11221122');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Eid` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone` varchar(13) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `company` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Eid`, `Name`, `Email`, `Phone`, `Address`, `company`, `password`) VALUES
(24, 'Muhammad Haseeb Akram', 'ha832440@gmail.com', '03075216024', 'T. T. Singh\r\n ', 'Systems Ltd.', '1234'),
(43, 'Mohsin Afzal', 'xrexex09@gmail.com', '03337867564', 'DG Khan', 'Interloop Ltd.', '1122'),
(44, 'Sheikh Sohaib', 'xrexex01@gmail.com', '03337867564', 'Multan', 'NetSol Inc.', '23456'),
(45, 'Abdur Rehman', 'abdul@gmail.com', '03457890223', 'Sialkot', 'SoftTech Inc.', '1222222'),
(46, 'Mian Azeem', 'kynimo@gmail.com', '87654356', 'T. T. Singh', 'SmartTech Ltd.', '1122334'),
(47, 'Mian Aleem', 'kynimo912@gmail.com', '672323112', 'T. T. Singh, Pakistan', 'SoftTech Ltd.', '1122334');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(6) UNSIGNED NOT NULL,
  `Eid` int(11) DEFAULT NULL,
  `Title` varchar(100) NOT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Discription` text DEFAULT NULL,
  `Quaification` text DEFAULT NULL,
  `Add_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Deadline` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `Eid`, `Title`, `Location`, `Type`, `Salary`, `Discription`, `Quaification`, `Add_at`, `Deadline`) VALUES
(4, 24, 'Database Administrator', 'Lahore', 'Full Time', 40000, 'Ms (Comp. Science)', 'Ms (Comp. Science)', '2021-03-03 03:17:35', '0000-00-00 00:00:00'),
(5, 24, 'Database Administrator', 'Lahore', 'Full Time', 40000, 'Ms (Comp. Science)', 'Ms (Comp. Science)', '2021-03-03 03:22:18', '2021-04-20 00:00:00'),
(6, 43, 'DevOps Engineer', 'Islamabad', 'Part Time', 50000, 'Nothing to Express', 'Bs (Comp. Science)', '2021-03-03 03:22:58', '2021-03-29 00:00:00'),
(7, 24, 'Sr. Software Engineer', 'Quetta', 'Full Time', 100000, 'Ms (SE)', 'Ms (SE)', '2021-03-03 03:24:56', '2021-05-20 00:00:00'),
(8, 45, 'Marketing Manager', 'Karachi', 'Part Time', 40000, 'Nothing to Express', 'BBA', '2021-03-03 03:26:43', '2021-05-21 00:00:00'),
(9, 44, 'Driver', 'Islamabad', 'Full Time', 40000, 'Driving Licences is mandontory', 'Matric', '2021-03-03 03:29:14', '2021-03-20 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `job_application`
--

CREATE TABLE `job_application` (
  `Aid` int(11) UNSIGNED NOT NULL,
  `Jid` int(6) UNSIGNED NOT NULL,
  `Cid` int(11) DEFAULT NULL,
  `Astatus` varchar(30) DEFAULT NULL,
  `Add_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_application`
--

INSERT INTO `job_application` (`Aid`, `Jid`, `Cid`, `Astatus`, `Add_at`) VALUES
(1, 4, 1, 'Pending', '2021-03-03 04:07:30'),
(2, 5, 1, 'Pending', '2021-03-03 04:07:49');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `Mid` int(11) NOT NULL,
  `comment` text NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Subject` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`Mid`, `comment`, `Email`, `Name`, `Subject`) VALUES
(7, 'well', 'nbxbxb@gmail.com', 'Fari', 'Test'),
(8, 'jknm', 'samiir@gmail.com', 'Aroshman', 'Tutor'),
(9, 'Useful Achi  nigi', 'samiir@gmail.com', 'M.Akram', 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `resumes`
--

CREATE TABLE `resumes` (
  `id` int(11) NOT NULL,
  `Cid` int(11) NOT NULL,
  `resume` blob NOT NULL,
  `Add_At` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `S_mail` varchar(30) NOT NULL,
  `Join_At` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`S_mail`, `Join_At`) VALUES
('abdulcool@gmail.com', '2021-03-03 02:55:06'),
('cvnv@gmail.com', '2021-01-12 17:03:16'),
('hijun@gmail.com', '2021-01-21 09:05:08'),
('mehndi@gmail.com', '2021-01-12 06:48:04'),
('nuhjgd@gmail.com', '2021-01-14 17:43:58'),
('samiir@gmail.com', '2021-01-12 05:43:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`Cid`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Eid`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_xyz` (`Eid`);

--
-- Indexes for table `job_application`
--
ALTER TABLE `job_application`
  ADD PRIMARY KEY (`Aid`),
  ADD KEY `Cid` (`Cid`),
  ADD KEY `Jid` (`Jid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`Mid`);

--
-- Indexes for table `resumes`
--
ALTER TABLE `resumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Cid` (`Cid`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`S_mail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `Cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `job_application`
--
ALTER TABLE `job_application`
  MODIFY `Aid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `Mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `resumes`
--
ALTER TABLE `resumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `fk_xyz` FOREIGN KEY (`Eid`) REFERENCES `employee` (`Eid`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`Eid`) REFERENCES `employee` (`Eid`),
  ADD CONSTRAINT `jobs_ibfk_2` FOREIGN KEY (`Eid`) REFERENCES `employee` (`Eid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_application`
--
ALTER TABLE `job_application`
  ADD CONSTRAINT `job_application_ibfk_1` FOREIGN KEY (`Cid`) REFERENCES `candidates` (`Cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_application_ibfk_2` FOREIGN KEY (`Jid`) REFERENCES `jobs` (`id`);

--
-- Constraints for table `resumes`
--
ALTER TABLE `resumes`
  ADD CONSTRAINT `resumes_ibfk_1` FOREIGN KEY (`Cid`) REFERENCES `candidates` (`Cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
