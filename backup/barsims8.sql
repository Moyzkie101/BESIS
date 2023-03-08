-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2022 at 08:36 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `barsims`
--

-- --------------------------------------------------------

--
-- Table structure for table `financial`
--

CREATE TABLE IF NOT EXISTS `financial` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `complete_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(100) NOT NULL,
  `contact_no` int(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `remarks` text NOT NULL,
  `f_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `financial`
--

INSERT INTO `financial` (`id`, `complete_name`, `address`, `occupation`, `gender`, `age`, `contact_no`, `status`, `remarks`, `f_id`) VALUES
(1, 'Grace Caballero', 'Bolocboloc', 'Farmer', 'Female', 20, 912345667, 'Done', 'wqwdqwd', 1),
(2, 'her', 'Bolocboloc', 'Engineer', 'Female', 32, 912345667, 'Scheduled', 'sadas', 1),
(3, 'tina', 'Bolocboloc', 'HW', 'Male', 45, 912345667, 'Undone', 'sadasd', 1),
(4, 'sffasddf', 'Bolocboloc33444', 'HW', 'Male', 32, 912345667, 'Scheduled', 'adsds', 2),
(5, 'tina', 'Bolocboloc33444', 'Farmer', 'Female', 32, 912345667, 'Undone', 'dsdd', 2),
(6, 'hjknht', 'jhuifv', 'chgjk', 'Female', 78, 956859544, 'Done', 'guyiuhdcyvboiu', 1),
(7, 'saadsa', 'dewed', 'sdad', 'Male', 34, 333, 'Done', 'dsasdsdsa', 10),
(8, 'grace bornea', 'vito, barili, cebu', 'CEO', 'Female', 28, 2147483647, 'Done', 'Mayta tagaan nku ug ayuda', 4);

-- --------------------------------------------------------

--
-- Table structure for table `financial_aids`
--

CREATE TABLE IF NOT EXISTS `financial_aids` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `financial_aids`
--

INSERT INTO `financial_aids` (`f_id`, `description`) VALUES
(1, 'Tupad'),
(2, 'Dole'),
(3, 'Testing'),
(4, 'Solo Parent');

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE IF NOT EXISTS `history_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`id`, `user_id`, `name`, `time`, `date`, `message`) VALUES
(1, 11, ' admin', '08:50', '10/20/2022', ' admin removed ronel.torres@ctu.edu.ph requested certificate '),
(2, 11, 'admin', '09:21', '10/20/2022', 'admin updated Lorna Amancio'),
(3, 11, 'admin', '09:23', '10/20/2022', 'admin updated Lorna Amancio information.'),
(4, 11, 'admin', '09:25', '10/20/2022', 'admin updated Lorna Amancio information.'),
(5, 11, 'admin', '09:33', '10/20/2022', 'admin removed  resident information! '),
(6, 11, 'admin', '09:36', '10/20/2022', 'admin removed  resident information! '),
(7, 11, 'admin', '09:36', '10/20/2022', 'admin removed Rodulfo Bulaga resident information! '),
(8, 11, 'admin', '09:52', '10/20/2022', 'admin removed Grace Caballero blotter/incident complaint. '),
(9, 11, 'admin', '10:21', '10/20/2022', 'admin updated gerald@gmail.com from Done to Pending'),
(10, 11, 'admin', '10:26', '10/20/2022', 'admin updated Chericel Bornea information.'),
(11, 11, 'admin', '10:28', '10/20/2022', 'admin visited purok Kbp'),
(12, 11, 'admin', '10:28', '10/20/2022', 'admin visited purok Kbp and household no 4'),
(13, 11, 'admin', '10:49', '10/20/2022', ' updated Ronel G. Torres  blotter incident details.'),
(14, 11, ' admin', '02:23', '10/20/2022', ' admin removed gerald@gmail.com requested certificate '),
(15, 11, 'admin', '08:51', '10/21/2022', 'admin updated Chericel Bornea information.'),
(16, 11, 'admin', '08:51', '10/21/2022', 'admin removed  resident information! '),
(17, 11, 'admin', '01:48', '10/15/2022', 'admin visited purok Kbp'),
(18, 11, 'admin', '01:48', '10/15/2022', 'admin visited purok Kbp and household no 4'),
(19, 11, 'admin', '03:51', '10/15/2022', 'admin visited purok Kbp'),
(20, 11, 'admin', '03:51', '10/15/2022', 'admin visited purok Kbp and household no 4'),
(21, 11, 'admin', '03:51', '10/15/2022', 'admin visited purok Kbp and household no 5'),
(22, 11, 'admin', '03:58', '10/15/2022', 'admin updated Lorna Amancio information.'),
(23, 11, 'admin', '02:56', '11/06/2022', 'admin visited purok Kbp'),
(24, 11, 'admin', '02:56', '11/06/2022', 'admin visited purok Kbp and household no 4'),
(25, 11, 'admin', '02:34', '11/06/2022', 'admin visited purok Kbp'),
(26, 11, 'admin', '02:34', '11/06/2022', 'admin visited purok Kbp and household no 4'),
(27, 11, 'admin', '02:34', '11/06/2022', 'admin visited purok Kbp and household no 4'),
(28, 11, 'admin', '07:31', '11/15/2022', 'admin visited purok Kbp'),
(29, 11, 'admin', '07:31', '11/15/2022', 'admin visited purok Kbp and household no 5'),
(30, 11, 'admin', '07:31', '11/15/2022', 'admin visited purok Kbp and household no 4'),
(31, 11, 'admin', '12:28', '11/15/2022', 'admin visited purok Kbp'),
(32, 11, 'admin', '12:28', '11/15/2022', 'admin visited purok Kbp and household no 4'),
(33, 11, 'admin', '12:29', '11/15/2022', 'admin visited purok Kbp and household no 5'),
(34, 11, 'admin', '12:29', '11/15/2022', 'admin visited purok Kbp and household no 4'),
(35, 11, 'admin', '12:29', '11/15/2022', 'admin visited purok Kbp and household no 4'),
(36, 11, 'admin', '05:06', '11/18/2022', 'admin visited purok Kbp'),
(37, 11, 'admin', '05:07', '11/18/2022', 'admin visited purok Kbp and household no 4'),
(38, 11, 'admin', '05:07', '11/18/2022', 'admin visited purok Kbp and household no 5'),
(39, 11, 'admin', '05:07', '11/18/2022', 'admin visited purok Kbp and household no 4'),
(40, 11, 'admin', '05:08', '11/18/2022', 'admin visited purok Kbp'),
(41, 11, 'admin', '05:08', '11/18/2022', 'admin visited purok Kbp and household no 5'),
(42, 11, 'admin', '05:14', '11/18/2022', 'admin visited purok Kbp'),
(43, 11, 'admin', '06:29', '11/18/2022', 'admin visited purok Kbp'),
(44, 11, 'admin', '06:29', '11/18/2022', 'admin visited purok Kbp and household no 4'),
(45, 11, 'admin', '06:32', '11/18/2022', 'admin removed  resident information! '),
(46, 11, 'admin', '06:42', '11/18/2022', 'admin removed user id 193 information! '),
(47, 11, 'admin', '06:50', '11/18/2022', 'admin removed user id 188 information! '),
(48, 11, 'admin', '06:53', '11/18/2022', 'admin removed user id 190 information! '),
(49, 11, 'admin', '06:57', '11/18/2022', 'admin removed user id 199 information! '),
(50, 11, 'admin', '06:58', '11/18/2022', 'admin updated Maximo Cañete information.'),
(51, 11, 'admin', '06:59', '11/18/2022', ' updated Clark  blotter incident details.'),
(52, 11, 'admin', '07:10', '11/18/2022', '210 Information'),
(53, 11, 'admin', '07:17', '11/18/2022', 'admin added user id 211 Information'),
(54, 11, 'admin', '07:23', '11/18/2022', 'admin removed blotter from 29 Information'),
(55, 11, 'admin', '07:23', '11/18/2022', 'admin removed Clark blotter/incident complaint. '),
(56, 11, 'admin', '07:24', '11/18/2022', ' updated Ronel G. Torres  blotter incident details.'),
(57, 11, 'admin', '07:37', '11/18/2022', 'admin removed 22 Current Barangay Official. '),
(58, 10, 'staff', '07:43', '11/18/2022', 'staff updated ronel.torres@ctu.edu.ph from pending to Done'),
(59, 10, 'staff', '07:43', '11/18/2022', 'staff visited purok Kbp'),
(60, 10, 'staff', '07:43', '11/18/2022', 'staff visited purok Kbp and household no 4'),
(61, 10, 'staff', '07:44', '11/18/2022', ' updated Ronel G. Torres  blotter incident details.'),
(62, 10, 'staff', '07:48', '11/18/2022', 'staff visited purok Kbp'),
(63, 10, 'staff', '07:52', '11/18/2022', 'staff updated   blotter incident details.');

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE IF NOT EXISTS `house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `stat_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(255) NOT NULL,
  PRIMARY KEY (`stat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`stat_id`, `status_name`) VALUES
(1, '4P''s'),
(2, 'Solo Parent'),
(3, 'Senior Citizen'),
(4, 'Pensioner'),
(5, 'UCT'),
(6, 'PWD');

-- --------------------------------------------------------

--
-- Table structure for table `tblblotter`
--

CREATE TABLE IF NOT EXISTS `tblblotter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complainant` varchar(100) DEFAULT NULL,
  `respondent` varchar(100) DEFAULT NULL,
  `casenum` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `details` varchar(10000) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `tblblotter`
--

INSERT INTO `tblblotter` (`id`, `complainant`, `respondent`, `casenum`, `type`, `location`, `date`, `time`, `details`, `status`) VALUES
(28, 'Reydin A. Amancio alyas moymoy', 'Ronel G. Torres', '1111', 'Incident', 'dfccde', '2022-06-09', '11:18:00', 'fff', 'Settled');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrgy_info`
--

CREATE TABLE IF NOT EXISTS `tblbrgy_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(100) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `brgy_name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `text` text,
  `map_url` varchar(500) DEFAULT NULL,
  `city_logo` varchar(100) DEFAULT NULL,
  `brgy_logo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblbrgy_info`
--

INSERT INTO `tblbrgy_info` (`id`, `province`, `town`, `brgy_name`, `number`, `text`, `map_url`, `city_logo`, `brgy_logo`) VALUES
(1, 'Cebu', 'Barili', 'Bolocboloc', '0919-1234567', 'To serve resident and maintain economic growth and focus on development.', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d749.3937440475648!2d123.52837343875844!3d10.113220938824915!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33a9630643dd013b%3A0x6265dd3ae93a9dd5!2sBolocboloc%20Gym!5e1!3m2!1sen!2sph!4v1667748113524!5m2!1sen!2sph" width="1000" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', '2406202201031474614_134812209909301_1972678_n.jpg', '24062022010314285895986_1730365790628609_7127529693773583911_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblchairmanship`
--

CREATE TABLE IF NOT EXISTS `tblchairmanship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tblchairmanship`
--

INSERT INTO `tblchairmanship` (`id`, `title`) VALUES
(2, 'Presiding '),
(3, 'Committee on Appropriation'),
(4, 'Committee on Peace & Order'),
(5, 'Committee on Health'),
(6, 'Committee on Education'),
(7, 'Committee on Rules'),
(8, 'Committee on Infra'),
(9, 'Committee on Solid Waste'),
(10, 'Committee on Sports'),
(11, 'No Chairmanship'),
(12, 'fggff'),
(13, 'Secretary');

-- --------------------------------------------------------

--
-- Table structure for table `tblofficials`
--

CREATE TABLE IF NOT EXISTS `tblofficials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `chairmanship` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `contact` varchar(11) DEFAULT NULL,
  `termstart` date DEFAULT NULL,
  `termend` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `tblofficials`
--

INSERT INTO `tblofficials` (`id`, `name`, `chairmanship`, `position`, `contact`, `termstart`, `termend`, `status`) VALUES
(17, 'admin', '2', '15', '09123456712', '2018-07-18', '2022-12-30', 'Active'),
(23, 'ANTONIETO E. TIGLEY', '2', '11', '09453628294', '2018-06-21', '2022-12-28', 'Active'),
(24, 'ABIEL ANGELITO ALCOSEBA II', '2', '11', '09567435662', '2018-07-06', '2022-12-22', 'Active'),
(25, 'JEJOMAR A. ALESNA', '2', '12', '09345678243', '2018-07-06', '2022-12-26', 'Active'),
(26, 'JANRAY C.  BRANZUELA ', '2', '14', '0997456787', '2018-07-18', '2022-12-28', 'Active'),
(27, 'PATERNA M. BITANGA', '2', '16', '0975456786', '2018-07-06', '2022-12-21', 'Active'),
(28, 'admin', '2', '17', '09345728534', '2018-07-06', '2022-12-22', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tblpayments`
--

CREATE TABLE IF NOT EXISTS `tblpayments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `details` varchar(100) DEFAULT NULL,
  `or_info` int(50) DEFAULT NULL,
  `amounts` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `tblpayments`
--

INSERT INTO `tblpayments` (`id`, `details`, `or_info`, `amounts`, `date`, `user`, `name`) VALUES
(15, 'Certificate of Indigency Payment', 0, '40.00', '2022-06-02', 'admin', ' Reydin Altamira Amancio'),
(16, 'Barangay Clearance Payment', 0, '24.00', '2022-06-02', 'admin', ' Reydin Altamira Amancio'),
(17, 'Certificate of Indigency Payment', 0, '40.00', '2022-06-02', 'admin', ' Wensislao Kabalgmoy Obiso'),
(18, 'Business Permit Payment', 0, '23.00', '2022-06-08', 'admin', ' Victorina Ricaplaza'),
(19, '67890', 0, '40.00', '2022-06-08', 'admin', ' Victorina Ricaplaza'),
(20, '123', 0, '2.00', '2022-06-08', 'admin', ' Victorina Ricaplaza'),
(21, '345', 0, '12.00', '2022-06-08', 'admin', ' Victorina Ricaplaza'),
(22, 'Business Permit Payment', 0, '1.00', '2022-06-08', 'admin', ' Victorina Ricaplaza'),
(23, 'Business Permit Payment', 1, '1.00', '2022-06-08', 'admin', ' Victorina Ricaplaza'),
(24, 'Business Permit Payment', 678, '1.00', '2022-06-08', 'admin', ' Victorina Ricaplaza'),
(25, 'Business Permit Payment', 4567, '1.00', '2022-06-09', 'admin', ' Victorina Ricaplaza'),
(26, 'Business Permit Payment', 56, '1.00', '2022-06-09', 'admin', ' Victorina Ricaplaza'),
(27, 'Barangay Clearance Payment', 0, '56.00', '2022-06-28', 'admin', ' Lorna Altamera Amancio'),
(28, 'Certificate of Indigency Payment', 0, '30.00', '2022-06-28', 'admin', ' Lorna Altamera Amancio');

-- --------------------------------------------------------

--
-- Table structure for table `tblpermit`
--

CREATE TABLE IF NOT EXISTS `tblpermit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `owner1` varchar(200) DEFAULT NULL,
  `owner2` varchar(80) DEFAULT NULL,
  `nature` varchar(220) DEFAULT NULL,
  `applied` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tblpermit`
--

INSERT INTO `tblpermit` (`id`, `name`, `owner1`, `owner2`, `nature`, `applied`) VALUES
(7, 'Victorina Ricaplaza', 'kk', 'hkukl', 'oilouilgj', '2022-06-08'),
(8, 'Victorina Ricaplaza', 'tssdf', '', '6ertwrq4', '2022-06-12');

-- --------------------------------------------------------

--
-- Table structure for table `tblposition`
--

CREATE TABLE IF NOT EXISTS `tblposition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(50) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `tblposition`
--

INSERT INTO `tblposition` (`id`, `position`, `order`) VALUES
(4, 'Captain', 1),
(7, 'Councilor 1', 2),
(8, 'Councilor 2', 3),
(9, 'Councilor 3', 4),
(10, 'Councilor 4', 5),
(11, 'Councilor 5', 6),
(12, 'Councilor 6', 7),
(13, 'Councilor 7', 8),
(14, 'SK Chairman', 9),
(15, 'Secretary', 10),
(16, 'Treasurer', 11),
(17, 'Chief Tanod', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tblprecinct`
--

CREATE TABLE IF NOT EXISTS `tblprecinct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `precinct` varchar(100) DEFAULT NULL,
  `details` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblprecinct`
--

INSERT INTO `tblprecinct` (`id`, `precinct`, `details`) VALUES
(1, 'qw', 'qwqwe');

-- --------------------------------------------------------

--
-- Table structure for table `tblpurok`
--

CREATE TABLE IF NOT EXISTS `tblpurok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `details` text,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `tblpurok`
--

INSERT INTO `tblpurok` (`id`, `name`, `details`, `status`) VALUES
(14, 'Kbp', 'Purok 1', 0),
(15, 'Mangga', 'Purok 2', 0),
(16, ' Central', 'Purok 3', 0),
(17, 'Lower', 'Purok 4', 0),
(18, 'Cacecas', 'Purok 5', 0),
(19, 'Mosaka', 'Purok 6', 0),
(20, 'Manokan', 'Purok 7', 0),
(21, 'Sambag', 'ffff', 0),
(22, 'Tamsi', 'dddd', 0),
(23, 'Sagrada', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblrequest`
--

CREATE TABLE IF NOT EXISTS `tblrequest` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `gcontact` varchar(255) NOT NULL,
  `national_id` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `age` int(6) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `form` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `tblrequest`
--

INSERT INTO `tblrequest` (`id`, `gcontact`, `national_id`, `fullname`, `age`, `gender`, `form`, `status`) VALUES
(23, 'Ronel', 'Torres', 'ronel.torres@ctu.edu.ph', 20, 'Male', 'Brgy Business Clearance', 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `tblresident`
--

CREATE TABLE IF NOT EXISTS `tblresident` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` varchar(10) NOT NULL,
  `national_id` varchar(100) DEFAULT NULL,
  `citizenship` varchar(50) DEFAULT NULL,
  `picture` text CHARACTER SET utf8mb4,
  `firstname` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `alias` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `household` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `birthplace` varchar(80) CHARACTER SET utf8mb4 DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `civilstatus` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `purok` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `voterstatus` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `identified_as` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `fourps` varchar(10) NOT NULL,
  `address` text CHARACTER SET utf8mb4,
  `resident_type` int(11) DEFAULT '1',
  `remarks` text,
  `stat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=212 ;

--
-- Dumping data for table `tblresident`
--

INSERT INTO `tblresident` (`id`, `active`, `national_id`, `citizenship`, `picture`, `firstname`, `middlename`, `lastname`, `alias`, `household`, `birthplace`, `birthdate`, `age`, `civilstatus`, `gender`, `purok`, `voterstatus`, `identified_as`, `phone`, `email`, `occupation`, `fourps`, `address`, `resident_type`, `remarks`, `stat_id`) VALUES
(190, 'no', '01145663789', 'Filipino', 'person.png', 'Nita', 'O.', 'Decipulo', 'N/A', '6', 'Barili,Cebu', '1887-09-22', 35, 'Married', 'Female', 'Cacecas', 'Yes', 'Positive', '09xxxxxx', 'nita@gmail.com', 'Restaurant cook', '', '', 1, '', 3),
(188, 'no', '6378899', 'filipino', 'person.png', 'Lorna', 'Altamera', 'Amancio', 'Lorn', '12', 'Patupat,barili,cebu', '1971-01-31', 51, 'Married', 'Female', 'Tamsi', 'No', '', '09532263527', 'Lorna.amancio123@gmail.com', 'HW', '', '', 1, '', 6),
(191, '', '080946856524', 'Filipino', 'person.png', 'Sulpicia', 'M.', 'Cañete', 'N/A', '1', 'Barili,Cebu', '1933-04-29', 88, 'Married', 'Female', 'Cacecas', 'Yes', 'Positive', '09xxxxxxxx', 'sulpicia@gmail.com', 'Housewife', '', '', 1, '', 1),
(192, '', '01946354876', 'Filipino', 'person.png', 'Maximo', 'M.', 'Cañete', 'N/A', '1', 'Barili,Cebu', '1962-10-30', 59, 'Married', 'Male', 'Cacecas', 'Yes', '', '09xxxxxxxx', 'maximo@gmail.com', 'Farmer', '', '', 1, '', 2),
(194, '', '0111675638532', 'Filipino', 'person.png', 'Roxan', 'F.', 'Onoy', 'N/A', '2', 'Barili,Cebu', '1991-08-07', 30, 'Married', 'Female', 'Lower', 'Yes', 'Positive', '09xxxxxxxx', 'roxan@gmail.com', 'Housewife', '', '', 1, '', 5),
(195, '', '0384754246748', 'Filipino', 'person.png', 'Reynaldo', 'M.', 'Pagar', 'N/A', '3', 'Barili,Cebu', '1974-02-17', 48, 'Married', 'Male', 'Lower', 'Yes', 'Positive', '09xxxxxxxx', 'reynaldo@gmail.com', 'Carpenter', '', '', 1, '', 4),
(196, '', '01223467435377', 'Filipino', 'person.png', 'Rosalinda', 'M.', 'Pagar', 'N/A', '3', 'Barili,Cebu', '1979-10-29', 42, 'Married', 'Male', 'Lower', 'Yes', 'Positive', '09xxxxxxxx', 'rosalinda@gmail.com', 'B.H.W', '', '', 1, '', 5),
(197, '', '0495874553', 'Filipino', 'person.png', 'Florencio', 'Atillo', 'Ewican', 'N/A', '4', 'Barili,Cebu', '1974-11-28', 47, 'Married', 'Male', 'Mangga', 'Yes', 'Positive', '09xxxxxxxx', 'florencio@gmail.com', 'Construction worker', '', '', 1, '', 2),
(198, '', '096323124365', 'Filipino', 'person.png', 'Caryl', 'Gemeda', 'Ewican', 'N/A', '3', 'Barili,Cebu', '2005-04-27', 16, 'Single', 'Male', 'Mangga', 'Yes', 'Positive', '09xxxxxxxx', 'caryl@gmail.com', 'none', '', '', 1, '', 3),
(199, 'no', '08874565638', 'Filipino', 'person.png', 'Carmelito', 'Gongoy', 'Carampatana', 'N/A', '4', 'Barili,Cebu', '1850-10-21', 72, 'Married', 'Male', 'Kbp', 'Yes', 'Positive', '09xxxxxxxx', 'carmelito@gmail.com', 'driver', '', '', 1, '', 1),
(201, '', '098877565432', 'Filipino ', 'person.png', 'Ricardo', 'Craste', 'Tiin', 'N/A', '5', 'Barili,Cebu', '1985-09-18', 37, 'Married', 'Male', 'Kbp', 'Yes', 'Positive', '09xxxxxxxx', 'ricardo@gmail.com', 'Carpenter', '', '', 1, '', 3),
(204, '', '0232345436753', 'Filipino', 'person.png', 'Victoria', 'Sambabad', 'Logico', 'N/A', '9', 'Barili,Cebu', '1958-09-14', 64, 'Married', 'Female', 'Mosaka', 'Yes', 'Positive', '9xxxxxxxx', 'victoria@gmail.com', 'Housewife', '', '', 1, '', 4),
(207, '', '45678', 'Filipino', 'data:image/jpeg;base64,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', 'Lorna', 'udigs', 'grsdrd', 'rdhdf', 'rdhdf', 'Patupat,barili,cebu', '2022-10-21', 2, 'Single', 'Male', 'Cacecas', 'Yes', '', '09532263527', 'chericel.bornea@ctu.edu.ph', '', 'student', '', 1, NULL, 3),
(208, '', '123123', 'fil', 'person.png', 'sd', 'rew', 'qwe', 'qwe', '1', 'qwe', '2022-11-18', 12, 'Single', 'Male', ' Central', 'No', '', '123144', 'qwe12@qwe.ffd', '', 'student', NULL, 1, NULL, 1);
INSERT INTO `tblresident` (`id`, `active`, `national_id`, `citizenship`, `picture`, `firstname`, `middlename`, `lastname`, `alias`, `household`, `birthplace`, `birthdate`, `age`, `civilstatus`, `gender`, `purok`, `voterstatus`, `identified_as`, `phone`, `email`, `occupation`, `fourps`, `address`, `resident_type`, `remarks`, `stat_id`) VALUES
(209, '', '1234123', 'Filipino', 'data:image/jpeg;base64,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', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', '2022-11-11', 22, 'Single', 'Male', 'Mangga', 'Yes', '', '123144', '1231@qwe.dfg', '', 'student', '', 1, NULL, 2),
(210, '', '1235123', 'Filipino', 'person.png', 'qwe', 'qwe', 'qwe', 'N/A', '13', 'Barili,Cebu', '2022-11-01', 55, 'Married', 'Male', 'Kbp', 'Yes', '', '3212212232', 'qe@qwe1.bv', '', 'Farmer', NULL, 1, NULL, 3),
(211, '', '51231233523412321', 'Filipino', 'person.png', 'asdqwesad', 'weq', 'asd', 'N/A', '7', 'Barili,Cebu', '2022-11-24', 43, 'Widow', 'Female', 'Lower', 'Yes', '', '12312664', '123qwe132@23.rtt', '', 'housewife', NULL, 1, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_announce`
--

CREATE TABLE IF NOT EXISTS `tbl_announce` (
  `id` int(11) NOT NULL,
  `txt` longtext CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_announce`
--

INSERT INTO `tbl_announce` (`id`, `txt`) VALUES
(1, 'PWD Payout Update\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_household`
--

CREATE TABLE IF NOT EXISTS `tbl_household` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `household` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `tbl_household`
--

INSERT INTO `tbl_household` (`id`, `household`) VALUES
(27, '1'),
(28, '2'),
(29, '3'),
(30, '4'),
(31, '5'),
(32, '6'),
(33, '7'),
(34, '8'),
(36, '9'),
(37, '10'),
(38, '11'),
(39, '12'),
(40, '13'),
(41, '14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_support`
--

CREATE TABLE IF NOT EXISTS `tbl_support` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` text,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `avatar` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `user_type`, `avatar`, `created_at`) VALUES
(10, 'staff', '6ccb4b7c39a6e77f76ecfa935a855c6c46ad5611', 'staff', '03052021043218icon.png', '2021-05-03 17:32:18'),
(11, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'administrator', '09052021074950person.png', '2021-05-03 17:33:03'),
(13, 'aaa', '7e240de74fb1ed08fa08d38063f6a6a91462a815', 'administrator', '', '2022-03-19 05:24:24');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
