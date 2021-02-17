-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 20, 2020 at 01:54 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `charted_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `2010_courses`
--

DROP TABLE IF EXISTS `2010_courses`;
CREATE TABLE IF NOT EXISTS `2010_courses` (
  `crs_id` char(5) NOT NULL,
  `crs_year` year(4) NOT NULL,
  `crs_name_2010` varchar(150) NOT NULL,
  `crs_name_2015` varchar(150) NOT NULL,
  PRIMARY KEY (`crs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2010_courses`
--

INSERT INTO `2010_courses` (`crs_id`, `crs_year`, `crs_name_2010`, `crs_name_2015`) VALUES
('c0110', 2010, 'CAB I Financial Accounting', 'KC1 Corporate Financial Reporting'),
('c0210', 2010, 'CAB I Business Mathematics & statistics and CAB II Fundamentals of Management Accounting & Business Finance', 'KC2 Corporate Financial and Risk Management'),
('c0310', 2010, 'CAB II Accounting Application & Taxation', 'KC3 Corporate Taxation'),
('c0410', 2010, 'CAB II Audit & Assurance', 'KC4 Corporate Governmance,Assurance & Ethics\n'),
('c0510', 2010, 'CAB II Management & Business Economics', 'KC5 Corporate Strategy & Contemporary Issues\n'),
('c0610', 2010, 'STR I Financial Reporting Framework', 'KB1 Business Financial Reporting'),
('c0710', 2010, 'STR I Strategic Management Accounting', 'KB2 Business Management Accounting'),
('c0810', 2010, 'CAB II Accounting Application & Taxation and STR I Commercial Low & Corporate Law', 'KB3 Business Taxation & Law'),
('c0910', 2010, 'CAB II Audit & Assurance', 'KB4 Business Assurance, Ethics & Audit'),
('c1010', 2010, 'STR I Strategic Management Process and STR II Business Strategy & Knowledge Management', 'KB5 Business Value Creation'),
('c1110', 2010, 'STR II Advanced Financial Reporting', 'KE1 Financial Accounting & Reporting Fundamentals'),
('c1210', 2010, 'STR II Strtegic Financial Management', 'KE2 Management Accounting Information'),
('c1310', 2010, 'STR I Advanced Taxation & Strategic Tax Planning', 'KE3 Fundamentals of Law'),
('c1410', 2010, 'STR II Advanced Audit & Assurance', 'KE4 Fundamentals of Taxation'),
('c1510', 2010, 'TOP CA Case Study', 'KE5 Commercial Insight for Management\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `2015_courses`
--

DROP TABLE IF EXISTS `2015_courses`;
CREATE TABLE IF NOT EXISTS `2015_courses` (
  `crs_id` char(5) NOT NULL,
  `crs_year` year(4) NOT NULL,
  `crs_name_2015` varchar(150) NOT NULL,
  `crs_name_2020` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2015_courses`
--

INSERT INTO `2015_courses` (`crs_id`, `crs_year`, `crs_name_2015`, `crs_name_2020`) VALUES
('c0111', 2015, 'KC1 Corporate Financial Reporting', 'SL1 Advanced Business Reporting'),
('c0211', 2015, 'KC2 Corporate Financial and Risk Management', 'SL2 Corporate Finance & Risk Management'),
('c0311', 2015, 'KC3 Corporate Taxation', 'SL3 Corporate Taxation'),
('c0411', 2015, 'KC4 Corporate Governmance,Assurance & Ethics', 'SL4 Strategic Management and Leadership'),
('c0511', 2015, 'KC5 Corporate Strategy & Contemporary Issues', 'SL5 Integrated Case Study'),
('c0611', 2015, 'KB1 Business Financial Reporting', 'CL2 Finance Reporting & Governance'),
('c0711', 2015, 'KB2 Business Management Accounting', 'CL3 Advanced management Accounting'),
('c0811', 2015, 'KB3 Business Taxation & Law', 'CL4 Corporate Law'),
('c0911', 2015, 'KB4 Business Assurance, Ethics & Audit', 'CL1 Advanced Audit and Assurance'),
('c1011', 2015, 'KE1 Financial Accounting & Reporting Fundamentals', 'BL1 Financial Accounting'),
('c1111', 2015, 'KE2 Management Accounting Information', 'BL2 Business Mathematics and Statistics'),
('c1211', 2015, 'KE3 Fundamentals of Law ', 'BL3 Business Law'),
('c1311', 2015, 'KE4 Fundamentals of Taxation', 'BL5 Audit,Business Processes & Digitalisation'),
('c1411', 2015, 'KE5 Commercial Insight for Management ', 'BL4 Business Environment and Economics');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
CREATE TABLE IF NOT EXISTS `assignment` (
  `crs_id` char(5) NOT NULL,
  `ass_id` char(5) NOT NULL,
  `ass_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `crs_stu_id` char(5) NOT NULL,
  `year` year(4) NOT NULL,
  `crs_name` varchar(200) NOT NULL,
  `price` int(5) NOT NULL,
  `pay_status` char(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lecture`
--

DROP TABLE IF EXISTS `lecture`;
CREATE TABLE IF NOT EXISTS `lecture` (
  `lec_id` char(5) NOT NULL,
  `lec_name` varchar(60) NOT NULL,
  `lec_tel` char(10) NOT NULL,
  `crs_id` char(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
CREATE TABLE IF NOT EXISTS `notice` (
  `notice_id` char(5) NOT NULL,
  `notices` varchar(200) NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`notice_id`, `notices`) VALUES
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `stu_name` char(100) NOT NULL,
  `stu_id` char(5) NOT NULL,
  `crs_id` char(5) NOT NULL,
  `pay_desc` varchar(60) NOT NULL,
  `pay_type` char(10) NOT NULL,
  PRIMARY KEY (`stu_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`stu_name`, `stu_id`, `crs_id`, `pay_desc`, `pay_type`) VALUES
('', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `role_id` char(5) NOT NULL,
  `role_name` varchar(60) NOT NULL,
  `role_desc` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `s_id` char(5) NOT NULL,
  `s_name` varchar(60) NOT NULL,
  `s_add` varchar(60) NOT NULL,
  `s_tel` char(10) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stu_result`
--

DROP TABLE IF EXISTS `stu_result`;
CREATE TABLE IF NOT EXISTS `stu_result` (
  `stu_id` char(5) NOT NULL,
  `stu_name` varchar(100) NOT NULL,
  `subject_id` char(5) NOT NULL,
  `subject_name` varchar(200) NOT NULL,
  `marks` int(3) NOT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` char(5) NOT NULL,
  `user_name` varchar(60) NOT NULL,
  `user_tel` char(10) NOT NULL,
  `user_email` char(30) NOT NULL,
  `user_address` varchar(60) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
