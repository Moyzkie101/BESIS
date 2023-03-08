-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2022 at 05:09 PM
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

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
(27, 11, 'admin', '02:34', '11/06/2022', 'admin visited purok Kbp and household no 4');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `tblblotter`
--

INSERT INTO `tblblotter` (`id`, `complainant`, `respondent`, `casenum`, `type`, `location`, `date`, `time`, `details`, `status`) VALUES
(28, 'Reydin A. Amancio', 'Ronel G. Torres', '87865', 'Incident', 'dfccd', '2022-06-09', '11:18:00', 'fff', 'Settled');

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
(18, 'AQUILES O. CANETE', '2', '4', '09123456712', '2019-05-06', '2022-12-22', 'Active'),
(19, 'APOLINAR A. TRAYA', '2', '7', '09345678243', '2018-07-19', '2022-11-02', 'Active'),
(20, 'ANALEE B. ETIC', '2', '8', '09231416721', '2018-07-26', '2022-11-09', 'Active'),
(21, 'EDUARDO T . PATERES JR.', '2', '9', '09345728534', '2018-06-13', '2022-12-08', 'Active'),
(22, 'DIONISIO S. PANUGAN', '2', '10', '0923417253', '2018-06-06', '2022-11-17', 'Active'),
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
(23, 'Ronel', 'Torres', 'ronel.torres@ctu.edu.ph', 20, 'Male', 'Brgy Business Clearance', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `tblresident`
--

CREATE TABLE IF NOT EXISTS `tblresident` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=208 ;

--
-- Dumping data for table `tblresident`
--

INSERT INTO `tblresident` (`id`, `national_id`, `citizenship`, `picture`, `firstname`, `middlename`, `lastname`, `alias`, `household`, `birthplace`, `birthdate`, `age`, `civilstatus`, `gender`, `purok`, `voterstatus`, `identified_as`, `phone`, `email`, `occupation`, `fourps`, `address`, `resident_type`, `remarks`, `stat_id`) VALUES
(190, '01145663789', 'Filipino', 'person.png', 'Nita', 'O.', 'Decipulo', 'N/A', '6', 'Barili,Cebu', '1887-09-22', 35, 'Married', 'Female', 'Cacecas', 'Yes', 'Positive', '09xxxxxx', 'nita@gmail.com', 'Restaurant cook', '', '', 1, '', 3),
(188, '6378899', 'filipino', 'person.png', 'Lorna', 'Altamera', 'Amancio', 'Lorn', '12', 'Patupat,barili,cebu', '1971-01-31', 51, 'Married', 'Female', 'Tamsi', 'No', '', '09532263527', 'Lorna.amancio123@gmail.com', 'HW', '', '', 1, '', 6),
(191, '080946856524', 'Filipino', 'person.png', 'Sulpicia', 'M.', 'Cañete', 'N/A', '1', 'Barili,Cebu', '1933-04-29', 88, 'Married', 'Female', 'Cacecas', 'Yes', 'Positive', '09xxxxxxxx', 'sulpicia@gmail.com', 'Housewife', '', '', 1, '', 1),
(192, '01946354876', 'Filipino', 'person.png', 'Maximo', 'M.', 'Cañete', 'N/A', '1', 'Barili,Cebu', '1962-10-30', 58, 'Married', 'Male', 'Cacecas', 'Yes', 'Positive', '09xxxxxxxx', 'maximo@gmail.com', 'Farmer', '', '', 1, '', 2),
(193, '01223057646', 'Filipino', 'person.png', 'Andelon', 'P.', 'Onoy', 'N/A', '2', 'Barili,Cebu', '1885-06-14', 36, 'Married', 'Male', 'Lower', 'Yes', 'Positive', '09xxxxxxxx', 'andelon@gmail.com', 'Lending collector', '', '', 1, '', 3),
(194, '0111675638532', 'Filipino', 'person.png', 'Roxan', 'F.', 'Onoy', 'N/A', '2', 'Barili,Cebu', '1991-08-07', 30, 'Married', 'Female', 'Lower', 'Yes', 'Positive', '09xxxxxxxx', 'roxan@gmail.com', 'Housewife', '', '', 1, '', 5),
(195, '0384754246748', 'Filipino', 'person.png', 'Reynaldo', 'M.', 'Pagar', 'N/A', '3', 'Barili,Cebu', '1974-02-17', 48, 'Married', 'Male', 'Lower', 'Yes', 'Positive', '09xxxxxxxx', 'reynaldo@gmail.com', 'Carpenter', '', '', 1, '', 4),
(196, '01223467435377', 'Filipino', 'person.png', 'Rosalinda', 'M.', 'Pagar', 'N/A', '3', 'Barili,Cebu', '1979-10-29', 42, 'Married', 'Male', 'Lower', 'Yes', 'Positive', '09xxxxxxxx', 'rosalinda@gmail.com', 'B.H.W', '', '', 1, '', 5),
(197, '0495874553', 'Filipino', 'person.png', 'Florencio', 'Atillo', 'Ewican', 'N/A', '4', 'Barili,Cebu', '1974-11-28', 47, 'Married', 'Male', 'Mangga', 'Yes', 'Positive', '09xxxxxxxx', 'florencio@gmail.com', 'Construction worker', '', '', 1, '', 2),
(198, '096323124365', 'Filipino', 'person.png', 'Caryl', 'Gemeda', 'Ewican', 'N/A', '3', 'Barili,Cebu', '2005-04-27', 16, 'Single', 'Male', 'Mangga', 'Yes', 'Positive', '09xxxxxxxx', 'caryl@gmail.com', 'none', '', '', 1, '', 3),
(199, '08874565638', 'Filipino', 'person.png', 'Carmelito', 'Gongoy', 'Carampatana', 'N/A', '4', 'Barili,Cebu', '1850-10-21', 72, 'Married', 'Male', 'Kbp', 'Yes', 'Positive', '09xxxxxxxx', 'carmelito@gmail.com', 'driver', '', '', 1, '', 1),
(201, '098877565432', 'Filipino ', 'person.png', 'Ricardo', 'Craste', 'Tiin', 'N/A', '5', 'Barili,Cebu', '1985-09-18', 37, 'Married', 'Male', 'Kbp', 'Yes', 'Positive', '09xxxxxxxx', 'ricardo@gmail.com', 'Carpenter', '', '', 1, '', 3),
(204, '0232345436753', 'Filipino', 'person.png', 'Victoria', 'Sambabad', 'Logico', 'N/A', '9', 'Barili,Cebu', '1958-09-14', 64, 'Married', 'Female', 'Mosaka', 'Yes', 'Positive', '9xxxxxxxx', 'victoria@gmail.com', 'Housewife', '', '', 1, '', 4),
(205, '9846453945', 'african', 'data:image/jpeg;base64,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', 'Wensislao', 'Kabalgmoy', 'Obiso', 'n/a', '3', 'barili.cebu', '1975-09-23', 78, 'Single', 'Male', 'Cacecas', 'Yes', '', '09xxxxxxx', 'gerald@gmail.com', 'IT', '', '', 1, '', 1);
INSERT INTO `tblresident` (`id`, `national_id`, `citizenship`, `picture`, `firstname`, `middlename`, `lastname`, `alias`, `household`, `birthplace`, `birthdate`, `age`, `civilstatus`, `gender`, `purok`, `voterstatus`, `identified_as`, `phone`, `email`, `occupation`, `fourps`, `address`, `resident_type`, `remarks`, `stat_id`) VALUES
(207, '45678', 'Filipino', 'data:image/jpeg;base64,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', 'Lorna', 'udigs', 'grsdrd', 'rdhdf', 'rdhdf', 'Patupat,barili,cebu', '2022-10-21', 2, 'Single', 'Male', 'Cacecas', 'Yes', '', '09532263527', 'chericel.bornea@ctu.edu.ph', '', 'student', '', 1, NULL, 3);

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
(1, 'PWD Payout Update');

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
