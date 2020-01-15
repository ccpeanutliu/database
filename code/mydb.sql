-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 15, 2020 at 03:15 PM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `case_table`
--

CREATE TABLE `case_table` (
  `SID` int(11) NOT NULL,
  `TID` int(11) NOT NULL,
  `Time` text NOT NULL,
  `Region` text NOT NULL,
  `Subject` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `case_table`
--

INSERT INTO `case_table` (`SID`, `TID`, `Time`, `Region`, `Subject`) VALUES
(1, 1, 'afternoon', 'taiwan', 'math'),
(1, 1, 'night', 'Taiwan', 'science'),
(3, 1, 'afternoon', '', ''),
(3, 1, 'afternoon', 'taiwan', 'math'),
(1, 3, 'night', 'Taiwan', 'chinese');

-- --------------------------------------------------------

--
-- Table structure for table `click_table`
--

CREATE TABLE `click_table` (
  `SID` int(11) NOT NULL,
  `TID` int(11) NOT NULL,
  `Date` text NOT NULL,
  `Period` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `click_table`
--

INSERT INTO `click_table` (`SID`, `TID`, `Date`, `Period`) VALUES
(2, 1, '2020/01/15', '13:45:15'),
(2, 1, '2020/01/15', '13:50:24'),
(1, 1, '2020/01/15', '13:50:36'),
(2, 1, '2020/01/15', '13:50:42'),
(1, 1, '2020/01/15', '13:50:45'),
(1, 1, '2020/01/15', '14:51:35'),
(1, 1, '2020/01/15', '14:51:51'),
(1, 1, '2020/01/15', '14:51:53'),
(1, 1, '2020/01/15', '14:52:08'),
(3, 1, '2020/01/15', '15:02:20'),
(3, 1, '2020/01/15', '15:03:12'),
(3, 1, '2020/01/15', '15:05:32'),
(3, 1, '2020/01/15', '15:05:35'),
(3, 1, '2020/01/15', '15:09:32'),
(3, 1, '2020/01/15', '15:09:37'),
(3, 1, '2020/01/15', '15:09:49'),
(3, 1, '2020/01/15', '15:10:35'),
(1, 3, '2020/01/15', '15:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `member_table`
--

CREATE TABLE `member_table` (
  `uid` varchar(16) NOT NULL,
  `username` text CHARACTER SET big5 NOT NULL,
  `sex` text NOT NULL,
  `age` int(11) NOT NULL,
  `mail` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_table`
--

INSERT INTO `member_table` (`uid`, `username`, `sex`, `age`, `mail`, `password`) VALUES
('4gpeanut', '劉品枘', 'male', 20, '4gpeanut@gmail.com', '1230'),
('jizz', '7122', 'male', 20, 'jizz', 'jizz'),
('weipig', '陳惟中', 'female', 20, 'b06705014@ntu.edu.tw', 'weipig'),
('yellow', '黃啟宏', 'male', 20, 'b06705002@ntu.edu.tw', 'yellow');

-- --------------------------------------------------------

--
-- Table structure for table `student_table`
--

CREATE TABLE `student_table` (
  `SID` int(11) NOT NULL,
  `school` text NOT NULL,
  `UID` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_table`
--

INSERT INTO `student_table` (`SID`, `school`, `UID`) VALUES
(1, 'NTU', '4gpeanut'),
(2, 'NTU', 'jizz'),
(3, 'NTU', 'yellow');

-- --------------------------------------------------------

--
-- Table structure for table `S_case_table`
--

CREATE TABLE `S_case_table` (
  `SCID` int(11) NOT NULL,
  `SID` int(11) NOT NULL,
  `Region` text NOT NULL,
  `Subject` text NOT NULL,
  `Timee` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_table`
--

CREATE TABLE `teacher_table` (
  `TID` int(11) NOT NULL,
  `Seniority` int(11) NOT NULL,
  `Education` text NOT NULL,
  `UID` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_table`
--

INSERT INTO `teacher_table` (`TID`, `Seniority`, `Education`, `UID`) VALUES
(1, 3, 'college', '4gpeanut'),
(3, 10, 'icecream', 'weipig');

-- --------------------------------------------------------

--
-- Table structure for table `T_case_table`
--

CREATE TABLE `T_case_table` (
  `TCID` int(11) NOT NULL,
  `TID` int(11) NOT NULL,
  `Region` text NOT NULL,
  `Subject` text NOT NULL,
  `Time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `T_case_table`
--

INSERT INTO `T_case_table` (`TCID`, `TID`, `Region`, `Subject`, `Time`) VALUES
(2, 3, 'NTU', 'sex', 'everytime');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member_table`
--
ALTER TABLE `member_table`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `student_table`
--
ALTER TABLE `student_table`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `S_case_table`
--
ALTER TABLE `S_case_table`
  ADD PRIMARY KEY (`SCID`);

--
-- Indexes for table `teacher_table`
--
ALTER TABLE `teacher_table`
  ADD PRIMARY KEY (`TID`);

--
-- Indexes for table `T_case_table`
--
ALTER TABLE `T_case_table`
  ADD PRIMARY KEY (`TCID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_table`
--
ALTER TABLE `student_table`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `S_case_table`
--
ALTER TABLE `S_case_table`
  MODIFY `SCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `teacher_table`
--
ALTER TABLE `teacher_table`
  MODIFY `TID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `T_case_table`
--
ALTER TABLE `T_case_table`
  MODIFY `TCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
