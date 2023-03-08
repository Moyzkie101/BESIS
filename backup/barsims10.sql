-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 09:49 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

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
(8, 'grace bornea', 'vito, barili, cebu', 'CEO', 'Female', 28, 2147483647, 'Done', 'Mayta tagaan nku ug ayuda', 4),
(9, 'grace dragon', 'dewed', 'student', 'Female', 34, 956859544, 'Done', 'wla pko kadawat\r\n', 5),
(10, 'z', 'vito, barili, cebu', 'OFW', 'Female', 34, 956859544, 'Done', 'zzzzz', 1);

-- --------------------------------------------------------

--
-- Table structure for table `financial_aids`
--

CREATE TABLE IF NOT EXISTS `financial_aids` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `financial_aids`
--

INSERT INTO `financial_aids` (`f_id`, `description`) VALUES
(1, 'Tupadweeeee'),
(2, 'Dole'),
(3, 'Testing'),
(4, 'Solo Parent'),
(5, 'Darooooo');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=455 ;

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
(63, 10, 'staff', '07:52', '11/18/2022', 'staff updated   blotter incident details.'),
(64, 11, 'admin', '04:05', '11/20/2022', 'admin visited purok Kbp'),
(65, 11, 'admin', '04:06', '11/20/2022', 'admin visited purok Kbp and household no 4'),
(66, 11, 'admin', '04:06', '11/20/2022', 'admin visited purok Kbp and household no 5'),
(67, 11, 'admin', '04:06', '11/20/2022', 'admin visited purok Kbp and household no 13'),
(68, 11, 'admin', '04:06', '11/20/2022', 'admin visited purok Kbp and household no 5'),
(69, 11, 'admin', '04:06', '11/20/2022', 'admin visited purok Kbp and household no 4'),
(70, 11, 'admin', '04:06', '11/20/2022', 'admin visited purok Kbp'),
(71, 11, 'admin', '04:06', '11/20/2022', 'admin visited purok Kbp and household no 5'),
(72, 11, 'admin', '04:07', '11/20/2022', 'admin visited purok Kbp and household no 4'),
(73, 11, 'admin', '04:15', '11/20/2022', 'admin visited purok SAGRADA'),
(74, 11, 'admin', '06:05', '11/20/2022', 'admin visited purok SAGRADA'),
(75, 11, 'admin', '06:13', '11/20/2022', 'admin visited purok SAGRADA'),
(76, 11, 'admin', '06:37', '11/20/2022', 'admin removed user id 211 information! '),
(77, 11, 'admin', '06:37', '11/20/2022', 'admin removed user id 209 information! '),
(78, 11, 'admin', '06:53', '11/20/2022', 'admin added user id 212 Information'),
(79, 11, 'admin', '06:54', '11/20/2022', 'admin visited purok STA. CRUZ'),
(80, 11, 'admin', '06:54', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(81, 11, 'admin', '06:54', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(82, 11, 'admin', '07:10', '11/20/2022', 'admin added user id 213 Information'),
(83, 11, 'admin', '07:10', '11/20/2022', 'admin visited purok STA. CRUZ'),
(84, 11, 'admin', '07:10', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(85, 11, 'admin', '07:12', '11/20/2022', 'admin added user id 214 Information'),
(86, 11, 'admin', '07:13', '11/20/2022', 'admin visited purok STA. CRUZ'),
(87, 11, 'admin', '07:19', '11/20/2022', 'admin added user id 215 Information'),
(88, 11, 'admin', '07:19', '11/20/2022', 'admin visited purok STA. CRUZ'),
(89, 11, 'admin', '07:19', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(90, 11, 'admin', '07:19', '11/20/2022', 'admin visited purok STA. CRUZ and household no 2'),
(91, 11, 'admin', '07:22', '11/20/2022', 'admin added user id 216 Information'),
(92, 11, 'admin', '07:22', '11/20/2022', 'admin visited purok STA. CRUZ'),
(93, 11, 'admin', '07:22', '11/20/2022', 'admin visited purok STA. CRUZ and household no 2'),
(94, 11, 'admin', '07:22', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(95, 11, 'admin', '07:22', '11/20/2022', 'admin visited purok STA. CRUZ and household no 2'),
(96, 11, 'admin', '07:22', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(97, 11, 'admin', '07:22', '11/20/2022', 'admin visited purok STA. CRUZ and household no 2'),
(98, 11, 'admin', '07:25', '11/20/2022', 'admin added user id 217 Information'),
(99, 11, 'admin', '07:25', '11/20/2022', 'admin visited purok STA. CRUZ'),
(100, 11, 'admin', '07:25', '11/20/2022', 'admin visited purok STA. CRUZ and household no 2'),
(101, 11, 'admin', '07:25', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(102, 11, 'admin', '07:25', '11/20/2022', 'admin visited purok STA. CRUZ and household no 2'),
(103, 11, 'admin', '07:25', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(104, 11, 'admin', '07:25', '11/20/2022', 'admin visited purok STA. CRUZ and household no 2'),
(105, 11, 'admin', '07:30', '11/20/2022', 'admin added user id 218 Information'),
(106, 11, 'admin', '07:33', '11/20/2022', 'admin added user id 219 Information'),
(107, 11, 'admin', '07:37', '11/20/2022', 'admin visited purok STA. CRUZ'),
(108, 11, 'admin', '07:37', '11/20/2022', 'admin visited purok STA. CRUZ and household no 3'),
(109, 11, 'admin', '07:39', '11/20/2022', 'admin added user id 220 Information'),
(110, 11, 'admin', '07:41', '11/20/2022', 'admin added user id 221 Information'),
(111, 11, 'admin', '07:42', '11/20/2022', 'admin visited purok STA. CRUZ'),
(112, 11, 'admin', '07:42', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(113, 11, 'admin', '07:42', '11/20/2022', 'admin visited purok STA. CRUZ and household no 2'),
(114, 11, 'admin', '07:42', '11/20/2022', 'admin visited purok STA. CRUZ and household no 3'),
(115, 11, 'admin', '07:42', '11/20/2022', 'admin visited purok STA. CRUZ and household no 2'),
(116, 11, 'admin', '07:42', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(117, 11, 'admin', '07:42', '11/20/2022', 'admin visited purok STA. CRUZ and household no 2'),
(118, 11, 'admin', '07:42', '11/20/2022', 'admin visited purok STA. CRUZ and household no 3'),
(119, 11, 'admin', '07:47', '11/20/2022', 'admin visited purok STA. CRUZ'),
(120, 11, 'admin', '07:47', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(121, 11, 'admin', '07:47', '11/20/2022', 'admin visited purok STA. CRUZ and household no 2'),
(122, 11, 'admin', '07:47', '11/20/2022', 'admin visited purok STA. CRUZ and household no 3'),
(123, 11, 'admin', '07:48', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(124, 11, 'admin', '07:48', '11/20/2022', 'admin visited purok STA. CRUZ and household no 2'),
(125, 11, 'admin', '07:48', '11/20/2022', 'admin visited purok STA. CRUZ and household no 3'),
(126, 11, 'admin', '07:58', '11/20/2022', 'admin visited purok STA. CRUZ'),
(127, 11, 'admin', '07:58', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(128, 11, 'admin', '07:58', '11/20/2022', 'admin visited purok STA. CRUZ and household no 2'),
(129, 11, 'admin', '07:58', '11/20/2022', 'admin visited purok STA. CRUZ and household no 3'),
(130, 11, 'admin', '08:00', '11/20/2022', 'admin visited purok STA. CRUZ'),
(131, 11, 'admin', '08:00', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(132, 11, 'admin', '08:02', '11/20/2022', 'admin visited purok STA. CRUZ'),
(133, 11, 'admin', '08:09', '11/20/2022', 'admin visited purok STA. CRUZ'),
(134, 11, 'admin', '08:09', '11/20/2022', 'admin visited purok STA. CRUZ and household no 3'),
(135, 11, 'admin', '08:09', '11/20/2022', 'admin visited purok STA. CRUZ and household no 3'),
(136, 11, 'admin', '09:34', '11/20/2022', 'admin visited purok SAGRADA'),
(137, 11, 'admin', '09:34', '11/20/2022', 'admin visited purok STA. CRUZ'),
(138, 11, 'admin', '09:35', '11/20/2022', 'admin visited purok STO. NINO'),
(139, 11, 'admin', '09:40', '11/20/2022', 'admin visited purok FATIMA'),
(140, 11, 'admin', '09:40', '11/20/2022', 'admin visited purok STA. CRUZ'),
(141, 11, 'admin', '09:40', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(142, 11, 'admin', '09:40', '11/20/2022', 'admin visited purok STA. CRUZ and household no 2'),
(143, 11, 'admin', '09:40', '11/20/2022', 'admin visited purok STA. CRUZ and household no 3'),
(144, 11, 'admin', '09:40', '11/20/2022', 'admin visited purok STA. CRUZ and household no 3'),
(145, 11, 'admin', '09:40', '11/20/2022', 'admin visited purok STA. CRUZ and household no 3'),
(146, 11, 'admin', '09:44', '11/20/2022', 'admin visited purok STA. CRUZ'),
(147, 11, 'admin', '09:31', '11/20/2022', 'admin visited purok SAGRADA'),
(148, 11, 'admin', '09:31', '11/20/2022', 'admin visited purok STA. CRUZ'),
(149, 11, 'admin', '09:31', '11/20/2022', 'admin visited purok STA. CRUZ and household no 3'),
(150, 11, 'admin', '09:36', '11/20/2022', 'admin added user id 222 Information'),
(151, 11, 'admin', '09:36', '11/20/2022', 'admin visited purok STA. CRUZ'),
(152, 11, 'admin', '09:36', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(153, 11, 'admin', '09:44', '11/20/2022', 'admin visited purok STA. CRUZ'),
(154, 11, 'admin', '09:44', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(155, 11, 'admin', '09:44', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(156, 11, 'admin', '09:44', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(157, 11, 'admin', '09:44', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(158, 11, 'admin', '09:44', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(159, 11, 'admin', '09:44', '11/20/2022', 'admin visited purok STA. CRUZ'),
(160, 11, 'admin', '09:44', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(161, 11, 'admin', '09:44', '11/20/2022', 'admin visited purok STA. CRUZ and household no 2'),
(162, 11, 'admin', '09:45', '11/20/2022', 'admin visited purok STA. CRUZ and household no 3'),
(163, 11, 'admin', '09:45', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(164, 11, 'admin', '09:45', '11/20/2022', 'admin visited purok STA. CRUZ and household no 2'),
(165, 11, 'admin', '09:45', '11/20/2022', 'admin visited purok STA. CRUZ and household no 3'),
(166, 11, 'admin', '09:45', '11/20/2022', 'admin visited purok STA. CRUZ and household no 4'),
(167, 11, 'admin', '09:45', '11/20/2022', 'admin updated Cresencia Empleo information.'),
(168, 11, 'admin', '09:46', '11/20/2022', 'admin visited purok STA. CRUZ'),
(169, 11, 'admin', '09:46', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(170, 11, 'admin', '09:49', '11/20/2022', 'admin added user id 223 Information'),
(171, 11, 'admin', '09:49', '11/20/2022', 'admin visited purok STA. CRUZ'),
(172, 11, 'admin', '09:49', '11/20/2022', 'admin visited purok STA. CRUZ and household no 4'),
(173, 11, 'admin', '09:51', '11/20/2022', 'admin visited purok STA. CRUZ'),
(174, 11, 'admin', '09:51', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(175, 11, 'admin', '09:52', '11/20/2022', 'admin visited purok STA. CRUZ'),
(176, 11, 'admin', '09:52', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(177, 11, 'admin', '09:53', '11/20/2022', 'admin visited purok STA. CRUZ and household no 2'),
(178, 11, 'admin', '09:53', '11/20/2022', 'admin visited purok STA. CRUZ and household no 3'),
(179, 11, 'admin', '09:53', '11/20/2022', 'admin visited purok STA. CRUZ and household no 4'),
(180, 11, 'admin', '09:57', '11/20/2022', 'admin added user id 224 Information'),
(181, 11, 'admin', '09:57', '11/20/2022', 'admin visited purok STA. CRUZ'),
(182, 11, 'admin', '09:58', '11/20/2022', 'admin visited purok STA. CRUZ and household no 4'),
(183, 11, 'admin', '09:58', '11/20/2022', 'admin visited purok STA. CRUZ'),
(184, 11, 'admin', '10:01', '11/20/2022', 'admin added user id 225 Information'),
(185, 11, 'admin', '10:01', '11/20/2022', 'admin visited purok STA. CRUZ'),
(186, 11, 'admin', '10:01', '11/20/2022', 'admin visited purok STA. CRUZ and household no 4'),
(187, 11, 'admin', '10:04', '11/20/2022', 'admin added user id 226 Information'),
(188, 11, 'admin', '10:04', '11/20/2022', 'admin visited purok STA. CRUZ'),
(189, 11, 'admin', '10:04', '11/20/2022', 'admin visited purok STA. CRUZ and household no 4'),
(190, 11, 'admin', '10:08', '11/20/2022', 'admin added user id 227 Information'),
(191, 11, 'admin', '10:11', '11/20/2022', 'admin added user id 228 Information'),
(192, 11, 'admin', '10:11', '11/20/2022', 'admin visited purok STA. CRUZ'),
(193, 11, 'admin', '10:11', '11/20/2022', 'admin visited purok STA. CRUZ and household no 4'),
(194, 11, 'admin', '10:14', '11/20/2022', 'admin added user id 229 Information'),
(195, 11, 'admin', '10:16', '11/20/2022', 'admin added user id 230 Information'),
(196, 11, 'admin', '10:16', '11/20/2022', 'admin visited purok STA. CRUZ'),
(197, 11, 'admin', '10:16', '11/20/2022', 'admin visited purok STA. CRUZ and household no 5'),
(198, 11, 'admin', '10:16', '11/20/2022', 'admin visited purok STA. CRUZ and household no 4'),
(199, 11, 'admin', '10:16', '11/20/2022', 'admin visited purok STA. CRUZ and household no 3'),
(200, 11, 'admin', '10:16', '11/20/2022', 'admin visited purok STA. CRUZ and household no 2'),
(201, 11, 'admin', '10:16', '11/20/2022', 'admin visited purok STA. CRUZ and household no 1'),
(202, 11, 'admin', '10:16', '11/20/2022', 'admin visited purok STA. CRUZ'),
(203, 11, 'admin', '10:19', '11/20/2022', 'admin added user id 231 Information'),
(204, 11, 'admin', '10:21', '11/20/2022', 'admin added user id 232 Information'),
(205, 11, 'admin', '10:24', '11/20/2022', 'admin added user id 233 Information'),
(206, 11, 'admin', '10:24', '11/20/2022', 'admin visited purok STA. CRUZ'),
(207, 11, 'admin', '10:24', '11/20/2022', 'admin visited purok STA. CRUZ and household no 6'),
(208, 11, 'admin', '10:24', '11/20/2022', 'admin visited purok STA. CRUZ and household no 5'),
(209, 11, 'admin', '10:25', '11/20/2022', 'admin visited purok STA. CRUZ'),
(210, 11, 'admin', '10:26', '11/20/2022', 'admin added user id 234 Information'),
(211, 11, 'admin', '10:28', '11/20/2022', 'admin added user id 235 Information'),
(212, 11, 'admin', '10:29', '11/20/2022', 'admin visited purok STA. CRUZ'),
(213, 11, 'admin', '10:29', '11/20/2022', 'admin visited purok STA. CRUZ and household no 7'),
(214, 11, 'admin', '10:29', '11/20/2022', 'admin visited purok STA. CRUZ and household no 6'),
(215, 11, 'admin', '10:29', '11/20/2022', 'admin visited purok STA. CRUZ and household no 7'),
(216, 11, 'admin', '10:29', '11/20/2022', 'admin visited purok STA. CRUZ and household no 6'),
(217, 11, 'admin', '10:30', '11/20/2022', 'admin updated Khan Rey  Padin information.'),
(218, 11, 'admin', '10:30', '11/20/2022', 'admin updated Michelle Padin information.'),
(219, 11, 'admin', '10:30', '11/20/2022', 'admin visited purok STA. CRUZ'),
(220, 11, 'admin', '10:30', '11/20/2022', 'admin visited purok STA. CRUZ and household no 6'),
(221, 11, 'admin', '06:32', '11/21/2022', 'admin visited purok STA. CRUZ'),
(222, 11, 'admin', '06:32', '11/21/2022', 'admin visited purok STA. CRUZ'),
(223, 11, 'admin', '06:32', '11/21/2022', 'admin visited purok STA. CRUZ and household no 6'),
(224, 11, 'admin', '06:32', '11/21/2022', 'admin visited purok STA. CRUZ and household no 5'),
(225, 11, 'admin', '06:33', '11/21/2022', 'admin visited purok STA. CRUZ and household no 6'),
(226, 11, 'admin', '06:33', '11/21/2022', 'admin visited purok STA. CRUZ and household no 3'),
(227, 11, 'admin', '06:33', '11/21/2022', 'admin visited purok STA. CRUZ and household no 4'),
(228, 11, 'admin', '06:33', '11/21/2022', 'admin visited purok STA. CRUZ and household no 6'),
(229, 11, 'admin', '06:36', '11/21/2022', 'admin added user id 236 Information'),
(230, 11, 'admin', '06:36', '11/21/2022', 'admin visited purok STA. CRUZ'),
(231, 11, 'admin', '06:36', '11/21/2022', 'admin visited purok STA. CRUZ and household no 7'),
(232, 11, 'admin', '06:40', '11/21/2022', 'admin added user id 237 Information'),
(233, 11, 'admin', '06:42', '11/21/2022', 'admin added user id 238 Information'),
(234, 11, 'admin', '07:48', '11/21/2022', 'admin visited purok STA. CRUZ'),
(235, 11, 'admin', '07:48', '11/21/2022', 'admin visited purok STA. CRUZ and household no 1'),
(236, 11, 'admin', '07:48', '11/21/2022', 'admin visited purok STA. CRUZ and household no 2'),
(237, 11, 'admin', '07:49', '11/21/2022', 'admin visited purok STA. CRUZ and household no 3'),
(238, 11, 'admin', '09:42', '11/21/2022', 'admin visited purok STA. CRUZ'),
(239, 11, 'admin', '09:45', '11/21/2022', 'admin visited purok SAGRADA'),
(240, 11, 'admin', '09:56', '11/21/2022', 'admin visited purok SAGRADA'),
(241, 11, 'admin', '09:56', '11/21/2022', 'admin visited purok STA. CRUZ'),
(242, 11, 'admin', '09:56', '11/21/2022', 'admin visited purok STA. CRUZ and household no 7'),
(243, 11, 'admin', '09:56', '11/21/2022', 'admin visited purok STA. CRUZ and household no 6'),
(244, 11, 'admin', '09:56', '11/21/2022', 'admin visited purok STA. CRUZ and household no 1'),
(245, 11, 'admin', '09:56', '11/21/2022', 'admin visited purok STA. CRUZ'),
(246, 11, 'admin', '09:57', '11/21/2022', 'admin visited purok STA. CRUZ'),
(247, 11, 'admin', '09:57', '11/21/2022', 'admin visited purok STA. CRUZ and household no 1'),
(248, 11, 'admin', '09:57', '11/21/2022', 'admin visited purok STA. CRUZ and household no 2'),
(249, 11, 'admin', '09:57', '11/21/2022', 'admin visited purok STA. CRUZ and household no 3'),
(250, 11, 'admin', '01:07', '11/21/2022', 'admin visited purok SAGRADA'),
(251, 11, 'admin', '01:08', '11/21/2022', 'admin visited purok SAGRADA'),
(252, 11, 'admin', '01:15', '11/21/2022', 'admin visited purok SAGRADA'),
(253, 11, 'admin', '03:32', '11/21/2022', 'admin visited purok SAGRADA'),
(254, 11, 'admin', '03:33', '11/21/2022', 'admin visited purok SAGRADA'),
(255, 11, 'admin', '03:59', '11/21/2022', 'admin visited purok STA. CRUZ'),
(256, 11, 'admin', '11:29', '11/21/2022', 'admin visited purok SAGRADA'),
(257, 11, 'admin', '11:35', '11/21/2022', 'admin visited purok SAGRADA'),
(258, 11, 'admin', '11:36', '11/21/2022', 'admin visited purok SAGRADA'),
(259, 11, 'admin', '11:39', '11/21/2022', 'admin visited purok SAGRADA'),
(260, 11, 'admin', '11:39', '11/21/2022', 'admin visited purok SAGRADA'),
(261, 11, 'admin', '11:41', '11/21/2022', 'admin visited purok SAGRADA'),
(262, 11, 'admin', '11:41', '11/21/2022', 'admin visited purok STA. CRUZ'),
(263, 11, 'admin', '11:48', '11/21/2022', 'admin visited purok STA. CRUZ'),
(264, 11, 'admin', '11:51', '11/21/2022', 'admin visited purok SAGRADA'),
(265, 11, 'admin', '11:52', '11/21/2022', 'admin visited purok SAGRADA'),
(266, 11, 'admin', '11:52', '11/21/2022', 'admin visited purok FATIMA'),
(267, 11, 'admin', '11:52', '11/21/2022', 'admin visited purok STA. CRUZ'),
(268, 11, 'admin', '11:53', '11/21/2022', 'admin visited purok STA. CRUZ and household no 1'),
(269, 11, 'admin', '11:53', '11/21/2022', 'admin visited purok FATIMA'),
(270, 11, 'admin', '11:53', '11/21/2022', 'admin visited purok SAGRADA'),
(271, 11, 'admin', '11:53', '11/21/2022', 'admin visited purok STA. CRUZ'),
(272, 11, 'admin', '11:53', '11/21/2022', 'admin visited purok STA. CRUZ'),
(273, 11, 'admin', '11:54', '11/21/2022', 'admin visited purok SAGRADA'),
(274, 11, 'admin', '11:55', '11/21/2022', 'admin visited purok STA. CRUZ'),
(275, 11, 'admin', '12:00', '11/22/2022', 'admin visited purok SAGRADA'),
(276, 11, 'admin', '12:01', '11/22/2022', 'admin visited purok SAGRADA'),
(277, 11, 'admin', '12:04', '11/22/2022', 'admin visited purok SAGRADA'),
(278, 11, 'admin', '12:05', '11/22/2022', 'admin visited purok SAGRADA'),
(279, 11, 'admin', '12:05', '11/22/2022', 'admin visited purok STA. CRUZ'),
(280, 11, 'admin', '12:05', '11/22/2022', 'admin visited purok STA. CRUZ'),
(281, 11, 'admin', '12:05', '11/22/2022', 'admin visited purok STA. CRUZ and household no 1'),
(282, 11, 'admin', '12:05', '11/22/2022', 'admin visited purok STA. CRUZ and household no 2'),
(283, 11, 'admin', '12:05', '11/22/2022', 'admin visited purok STA. CRUZ and household no 3'),
(284, 11, 'admin', '12:05', '11/22/2022', 'admin visited purok STA. CRUZ and household no 4'),
(285, 11, 'admin', '12:05', '11/22/2022', 'admin visited purok STA. CRUZ and household no 5'),
(286, 11, 'admin', '12:05', '11/22/2022', 'admin visited purok STA. CRUZ and household no 6'),
(287, 11, 'admin', '12:05', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(288, 11, 'admin', '12:06', '11/22/2022', 'admin visited purok MARGARITA'),
(289, 11, 'admin', '12:06', '11/22/2022', 'admin visited purok LOURDES'),
(290, 11, 'admin', '12:06', '11/22/2022', 'admin visited purok FATIMA'),
(291, 11, 'admin', '12:06', '11/22/2022', 'admin visited purok STA. CRUZ'),
(292, 11, 'admin', '12:06', '11/22/2022', 'admin visited purok STA. CRUZ and household no 1'),
(293, 11, 'admin', '12:06', '11/22/2022', 'admin visited purok LOURDES'),
(294, 11, 'admin', '12:06', '11/22/2022', 'admin visited purok SAGRADA'),
(295, 11, 'admin', '12:12', '11/22/2022', 'admin added user id 239 Information'),
(296, 11, 'admin', '12:12', '11/22/2022', 'admin visited purok MARGARITA'),
(297, 11, 'admin', '12:12', '11/22/2022', 'admin visited purok MARGARITA and household no 1'),
(298, 11, 'admin', '12:12', '11/22/2022', 'admin visited purok SAGRADA'),
(299, 11, 'admin', '12:12', '11/22/2022', 'admin visited purok STA. CRUZ'),
(300, 11, 'admin', '12:12', '11/22/2022', 'admin visited purok SAGRADA'),
(301, 11, 'admin', '12:14', '11/22/2022', 'admin visited purok STA. CRUZ'),
(302, 11, 'admin', '12:17', '11/22/2022', 'admin visited purok SAGRADA'),
(303, 11, 'admin', '12:17', '11/22/2022', 'admin visited purok MARGARITA'),
(304, 11, 'admin', '12:17', '11/22/2022', 'admin visited purok STA. CRUZ'),
(305, 11, 'admin', '12:17', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(306, 11, 'admin', '12:17', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(307, 11, 'admin', '12:17', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(308, 11, 'admin', '12:17', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(309, 11, 'admin', '12:17', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(310, 11, 'admin', '12:17', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(311, 11, 'admin', '12:17', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(312, 11, 'admin', '12:17', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(313, 11, 'admin', '12:17', '11/22/2022', 'admin visited purok STA. CRUZ and household no 1'),
(314, 11, 'admin', '12:19', '11/22/2022', 'admin visited purok SAGRADA'),
(315, 11, 'admin', '12:19', '11/22/2022', 'admin visited purok MARGARITA'),
(316, 11, 'admin', '12:19', '11/22/2022', 'admin visited purok MARGARITA and household no 1'),
(317, 11, 'admin', '12:19', '11/22/2022', 'admin visited purok STA. CRUZ'),
(318, 11, 'admin', '12:19', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(319, 11, 'admin', '12:19', '11/22/2022', 'admin visited purok MARGARITA'),
(320, 11, 'admin', '12:20', '11/22/2022', 'admin visited purok STA. CRUZ'),
(321, 11, 'admin', '12:20', '11/22/2022', 'admin visited purok STA. CRUZ and household no 1'),
(322, 11, 'admin', '12:20', '11/22/2022', 'admin visited purok STA. CRUZ and household no 1'),
(323, 11, 'admin', '12:20', '11/22/2022', 'admin visited purok STA. CRUZ and household no 1'),
(324, 11, 'admin', '12:20', '11/22/2022', 'admin visited purok STA. CRUZ and household no 1'),
(325, 11, 'admin', '12:21', '11/22/2022', 'admin visited purok SAGRADA'),
(326, 11, 'admin', '12:21', '11/22/2022', 'admin visited purok STA. CRUZ'),
(327, 11, 'admin', '12:21', '11/22/2022', 'admin visited purok STA. CRUZ and household no 6'),
(328, 11, 'admin', '12:21', '11/22/2022', 'admin visited purok STA. CRUZ and household no 6'),
(329, 11, 'admin', '12:21', '11/22/2022', 'admin visited purok STA. CRUZ and household no 6'),
(330, 11, 'admin', '12:21', '11/22/2022', 'admin visited purok STA. CRUZ and household no 6'),
(331, 11, 'admin', '12:21', '11/22/2022', 'admin visited purok STA. CRUZ and household no 6'),
(332, 11, 'admin', '12:21', '11/22/2022', 'admin visited purok STA. CRUZ and household no 6'),
(333, 11, 'admin', '12:22', '11/22/2022', 'admin visited purok SAGRADA'),
(334, 11, 'admin', '12:22', '11/22/2022', 'admin visited purok STA. CRUZ'),
(335, 11, 'admin', '12:22', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(336, 11, 'admin', '12:22', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(337, 11, 'admin', '12:22', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(338, 11, 'admin', '12:23', '11/22/2022', 'admin visited purok SAGRADA'),
(339, 11, 'admin', '12:23', '11/22/2022', 'admin visited purok STA. CRUZ'),
(340, 11, 'admin', '12:23', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(341, 11, 'admin', '12:23', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(342, 11, 'admin', '12:23', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(343, 11, 'admin', '12:23', '11/22/2022', 'admin visited purok STA. CRUZ'),
(344, 11, 'admin', '12:23', '11/22/2022', 'admin visited purok STA. CRUZ and household no 6'),
(345, 11, 'admin', '12:23', '11/22/2022', 'admin visited purok STA. CRUZ and household no 6'),
(346, 11, 'admin', '12:23', '11/22/2022', 'admin visited purok STA. CRUZ'),
(347, 11, 'admin', '12:23', '11/22/2022', 'admin visited purok STA. CRUZ and household no 6'),
(348, 11, 'admin', '12:23', '11/22/2022', 'admin visited purok STA. CRUZ and household no 6'),
(349, 11, 'admin', '12:23', '11/22/2022', 'admin visited purok STA. CRUZ and household no 6'),
(350, 11, 'admin', '12:23', '11/22/2022', 'admin visited purok SAGRADA'),
(351, 11, 'admin', '12:24', '11/22/2022', 'admin visited purok STA. CRUZ'),
(352, 11, 'admin', '12:24', '11/22/2022', 'admin visited purok STA. CRUZ and household no 1'),
(353, 11, 'admin', '12:24', '11/22/2022', 'admin visited purok MARGARITA'),
(354, 11, 'admin', '12:24', '11/22/2022', 'admin visited purok STO. NINO'),
(355, 11, 'admin', '12:25', '11/22/2022', 'admin visited purok SAGRADA'),
(356, 11, 'admin', '12:25', '11/22/2022', 'admin visited purok STA. CRUZ'),
(357, 11, 'admin', '12:25', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(358, 11, 'admin', '12:25', '11/22/2022', 'admin visited purok STO. NINO'),
(359, 11, 'admin', '12:26', '11/22/2022', 'admin visited purok SAGRADA'),
(360, 11, 'admin', '12:26', '11/22/2022', 'admin visited purok STA. CRUZ'),
(361, 11, 'admin', '12:26', '11/22/2022', 'admin visited purok STA. CRUZ and household no 1'),
(362, 11, 'admin', '12:26', '11/22/2022', 'admin visited purok STA. CRUZ and household no 2'),
(363, 11, 'admin', '12:26', '11/22/2022', 'admin visited purok STA. CRUZ and household no 3'),
(364, 11, 'admin', '12:26', '11/22/2022', 'admin visited purok STA. CRUZ and household no 4'),
(365, 11, 'admin', '12:26', '11/22/2022', 'admin visited purok STA. CRUZ and household no 5'),
(366, 11, 'admin', '12:26', '11/22/2022', 'admin visited purok STA. CRUZ and household no 6'),
(367, 11, 'admin', '12:26', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(368, 11, 'admin', '12:26', '11/22/2022', 'admin visited purok SAGRADA'),
(369, 11, 'admin', '12:26', '11/22/2022', 'admin visited purok STO. NINO'),
(370, 11, 'admin', '02:02', '11/22/2022', 'admin visited purok FATIMA'),
(371, 11, 'admin', '02:05', '11/22/2022', 'admin visited purok SAGRADA'),
(372, 11, 'admin', '02:05', '11/22/2022', 'admin visited purok STA. CRUZ'),
(373, 11, 'admin', '02:05', '11/22/2022', 'admin visited purok STA. CRUZ and household no 1'),
(374, 11, 'admin', '02:05', '11/22/2022', 'admin visited purok SAGRADA'),
(375, 11, 'admin', '02:05', '11/22/2022', 'admin visited purok SAGRADA'),
(376, 11, 'admin', '02:09', '11/22/2022', 'admin visited purok STA. CRUZ'),
(377, 11, 'admin', '02:47', '11/22/2022', 'admin visited purok SAGRADA'),
(378, 11, 'admin', '03:56', '11/22/2022', 'admin visited purok SAGRADA'),
(379, 11, 'admin', '03:56', '11/22/2022', 'admin visited purok STA. CRUZ'),
(380, 11, 'admin', '08:31', '11/22/2022', 'admin visited purok STA. CRUZ'),
(381, 11, 'admin', '08:31', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(382, 11, 'admin', '08:37', '11/22/2022', 'admin added user id 240 Information'),
(383, 11, 'admin', '08:37', '11/22/2022', 'admin visited purok STA. CRUZ'),
(384, 11, 'admin', '08:37', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(385, 11, 'admin', '08:41', '11/22/2022', 'admin visited purok STA. CRUZ'),
(386, 11, 'admin', '08:41', '11/22/2022', 'admin visited purok STA. CRUZ and household no 1'),
(387, 11, 'admin', '08:42', '11/22/2022', 'admin visited purok STA. CRUZ and household no 2'),
(388, 11, 'admin', '08:42', '11/22/2022', 'admin visited purok STA. CRUZ and household no 1'),
(389, 11, 'admin', '08:42', '11/22/2022', 'admin visited purok STA. CRUZ and household no 3'),
(390, 11, 'admin', '08:42', '11/22/2022', 'admin visited purok STA. CRUZ and household no 4'),
(391, 11, 'admin', '08:42', '11/22/2022', 'admin visited purok STA. CRUZ and household no 5'),
(392, 11, 'admin', '08:42', '11/22/2022', 'admin visited purok STA. CRUZ and household no 6'),
(393, 11, 'admin', '08:42', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(394, 11, 'admin', '08:46', '11/22/2022', 'admin visited purok STA. CRUZ'),
(395, 11, 'admin', '08:46', '11/22/2022', 'admin visited purok STA. CRUZ and household no 7'),
(396, 11, 'admin', '08:48', '11/22/2022', 'admin added user id 241 Information'),
(397, 11, 'admin', '08:48', '11/22/2022', 'admin visited purok STA. CRUZ'),
(398, 11, 'admin', '08:48', '11/22/2022', 'admin visited purok STA. CRUZ and household no 1'),
(399, 11, 'admin', '08:58', '11/22/2022', 'admin added user id 242 Information'),
(400, 11, 'admin', '08:58', '11/22/2022', 'admin visited purok STA. CRUZ'),
(401, 11, 'admin', '08:58', '11/22/2022', 'admin visited purok STA. CRUZ and household no 8'),
(402, 11, 'admin', '08:58', '11/22/2022', 'admin visited purok STA. CRUZ'),
(403, 11, 'admin', '08:59', '11/22/2022', 'admin visited purok STA. CRUZ and household no 8'),
(404, 11, 'admin', '08:59', '11/22/2022', 'admin visited purok STA. CRUZ'),
(405, 11, 'admin', '08:59', '11/22/2022', 'admin visited purok STA. CRUZ and household no 8'),
(406, 11, 'admin', '08:59', '11/22/2022', 'admin visited purok STA. CRUZ'),
(407, 11, 'admin', '08:59', '11/22/2022', 'admin visited purok STA. CRUZ and household no 8'),
(408, 11, 'admin', '09:04', '11/22/2022', 'admin added user id 243 Information'),
(409, 11, 'admin', '09:04', '11/22/2022', 'admin visited purok STA. CRUZ'),
(410, 11, 'admin', '09:13', '11/22/2022', 'admin added user id 244 Information'),
(411, 11, 'admin', '09:19', '11/22/2022', 'admin visited purok STA. CRUZ'),
(412, 11, 'admin', '09:20', '11/22/2022', 'admin visited purok STA. CRUZ and household no 8'),
(413, 11, 'admin', '09:20', '11/22/2022', 'admin visited purok STA. CRUZ'),
(414, 11, 'admin', '09:20', '11/22/2022', 'admin visited purok STA. CRUZ'),
(415, 11, 'admin', '09:20', '11/22/2022', 'admin visited purok STA. CRUZ and household no 8'),
(416, 11, 'admin', '09:21', '11/22/2022', 'admin updated Tolomia Escultor information.'),
(417, 11, 'admin', '03:50', '11/23/2022', 'admin visited purok SAGRADA'),
(418, 11, 'admin', '03:51', '11/23/2022', 'admin visited purok STA. CRUZ'),
(419, 11, 'admin', '04:58', '11/23/2022', 'admin visited purok FATIMA'),
(420, 11, 'admin', '04:59', '11/23/2022', 'admin visited purok STA. CRUZ'),
(421, 11, 'admin', '04:59', '11/23/2022', 'admin visited purok STA. CRUZ and household no 1'),
(422, 11, 'admin', '04:59', '11/23/2022', 'admin visited purok SAGRADA'),
(423, 11, 'admin', '05:08', '11/23/2022', 'admin added user id 245 Information'),
(424, 11, 'admin', '05:08', '11/23/2022', 'admin visited purok MARGARITA'),
(425, 11, 'admin', '05:08', '11/23/2022', 'admin visited purok MARGARITA and household no 1'),
(426, 11, 'admin', '05:09', '11/23/2022', 'admin visited purok MARGARITA'),
(427, 11, 'admin', '05:09', '11/23/2022', 'admin visited purok MARGARITA and household no 1'),
(428, 11, 'admin', '05:09', '11/23/2022', 'admin visited purok SAGRADA'),
(429, 11, ' admin', '05:32', '11/23/2022', ' admin removed ronel.torres@ctu.edu.ph requested certificate '),
(430, 11, 'admin', '05:32', '11/23/2022', 'admin visited purok SAGRADA'),
(431, 11, 'admin', '05:32', '11/23/2022', 'admin visited purok STA. CRUZ'),
(432, 11, 'admin', '05:32', '11/23/2022', 'admin visited purok MARGARITA'),
(433, 11, 'admin', '05:33', '11/23/2022', 'admin visited purok STO. NINO'),
(434, 11, 'admin', '05:33', '11/23/2022', 'admin visited purok SAN JOSE'),
(435, 11, 'admin', '09:07', '11/24/2022', 'admin visited purok STA. CRUZ'),
(436, 11, 'admin', '09:07', '11/24/2022', 'admin visited purok STA. CRUZ and household no 7'),
(437, 11, 'admin', '09:07', '11/24/2022', 'admin visited purok SAGRADA'),
(438, 11, 'admin', '09:07', '11/24/2022', 'admin visited purok SAGRADA'),
(439, 11, 'admin', '09:08', '11/24/2022', 'admin visited purok MARGARITA'),
(440, 11, 'admin', '09:08', '11/24/2022', 'admin visited purok SAGRADA'),
(441, 11, 'admin', '09:08', '11/24/2022', 'admin visited purok STA. CRUZ'),
(442, 11, 'admin', '09:16', '11/24/2022', 'admin visited purok SAGRADA'),
(443, 11, 'admin', '09:16', '11/24/2022', 'admin visited purok STA. CRUZ'),
(444, 11, 'admin', '09:19', '11/24/2022', 'admin visited purok STA. CRUZ'),
(445, 11, 'admin', '09:19', '11/24/2022', 'admin visited purok STA. CRUZ'),
(446, 11, 'admin', '09:20', '11/24/2022', 'admin visited purok STA. CRUZ'),
(447, 11, 'admin', '09:21', '11/24/2022', 'admin visited purok STA. CRUZ'),
(448, 11, 'admin', '09:21', '11/24/2022', 'admin visited purok STA. CRUZ'),
(449, 11, 'admin', '09:22', '11/24/2022', 'admin visited purok STA. CRUZ'),
(450, 11, 'admin', '09:22', '11/24/2022', 'admin visited purok STA. CRUZ and household no 1'),
(451, 11, 'admin', '09:22', '11/24/2022', 'admin visited purok MARGARITA'),
(452, 11, 'admin', '09:22', '11/24/2022', 'admin visited purok STA. CRUZ'),
(453, 11, 'admin', '09:22', '11/24/2022', 'admin visited purok STA. CRUZ and household no 8'),
(454, 11, 'admin', '09:23', '11/24/2022', 'admin visited purok SAGRADA');

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE IF NOT EXISTS `house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`id`, `house`) VALUES
(1, 3),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `stat_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(255) NOT NULL,
  PRIMARY KEY (`stat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`stat_id`, `status_name`) VALUES
(1, '4P''s'),
(2, 'Solo Parent'),
(3, 'Senior Citizen'),
(4, 'Pensioner'),
(5, 'UCT'),
(6, 'PWD'),
(7, 'None');

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
(24, 'admin', '2', '11', '3333', '2018-07-06', '2022-12-22', 'Active'),
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
(15, 'SAGRADA', 'Purok 5', 5),
(16, 'STA. CRUZ', 'Purok 1', 1),
(17, 'MARGARITA', 'Purok 2\r\n', 2),
(18, 'STO. NINO', 'Purok 4', 4),
(19, 'SAN JOSE', 'Purok  6', 6),
(20, 'LOURDES', 'Purok 3', 3),
(23, 'FATIMA', 'Purok 7', 7);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `tblrequest`
--

INSERT INTO `tblrequest` (`id`, `gcontact`, `national_id`, `fullname`, `age`, `gender`, `form`, `status`) VALUES
(24, 'Grace Caballero', '098765', 'grace@gmail.com', 0, 'Female', 'Barangay Certificates', 'pending'),
(25, 'Chericel Bornea', '0987', 'chericelbornea@gmail.com', 28, 'Female', 'Certicicate of Residency', 'pending');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=246 ;

--
-- Dumping data for table `tblresident`
--

INSERT INTO `tblresident` (`id`, `active`, `national_id`, `citizenship`, `picture`, `firstname`, `middlename`, `lastname`, `alias`, `household`, `birthplace`, `birthdate`, `age`, `civilstatus`, `gender`, `purok`, `voterstatus`, `identified_as`, `phone`, `email`, `occupation`, `fourps`, `address`, `resident_type`, `remarks`, `stat_id`) VALUES
(212, '', '1', 'Filipino', 'person.png', 'Cresencia', 'Gingoyon', 'Empleo', '', '1', 'Campanga, Barili', '1948-06-01', 89, 'Widow', 'Female', 'STA. CRUZ', 'Yes', 'Active', '', '', '', '', '', 1, '', 2),
(213, '', '2', 'Filipino', 'person.png', 'Samuel', 'Gingoyon', 'Empleo', '', '1', 'Bolocboloc, barili', '1975-07-24', 65, 'Single', 'Male', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 1),
(214, '', '3', 'Filipino', 'person.png', 'Nicomedes Jr.', 'Gingoyon', 'Empleo', '', '1', 'Bolocboloc,barili,cebu', '1979-12-02', 66, 'Single', 'Male', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 1),
(215, '', '4', 'Filipino', 'person.png', 'Emelito', 'Gingoyon', 'Empleo', '', '2', 'Bolocboloc,barili,cebu', '1987-04-13', 64, 'Married', 'Male', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 5),
(216, '', '5', 'Filipino', 'person.png', 'Roseline', 'Tubid', 'Empleo', '', '2', 'Lapu-Lapu City', '1986-04-11', 64, 'Married', 'Female', 'STA. CRUZ', 'No', '', '', '', '', '', NULL, 1, NULL, 5),
(217, '', '6', 'Filipino', 'person.png', 'Khalisse', 'Tubid', 'Empleo', '', '2', 'Lapu-Lapu City', '2016-04-08', 6, 'Single', 'Female', 'STA. CRUZ', 'No', '', '', '', '', '', NULL, 1, NULL, 5),
(218, '', '888', 'Filipino', 'person.png', 'Michaila', 'Tubid', 'Empleo', '', '2', 'Lapu-Lapu City', '2017-04-20', 5, 'Single', 'Female', 'STA. CRUZ', 'No', '', '', '', '', '', NULL, 1, NULL, 5),
(219, '', '999', 'Filipino', 'person.png', 'Randolf', 'Empleo', 'Sucepa', '', '3', 'Bolocboloc,barili,cebu', '1996-08-05', 63, 'Single', 'Male', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 6),
(220, '', '1000', 'Filipino', 'person.png', 'Rafaela', 'Empleo', 'Empleo', '', '3', 'Bolocboloc,barili,cebu', '2001-05-02', 22, 'Single', 'Female', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 5),
(221, '', '100', 'Filipino', 'person.png', 'Rachel Ann', 'Empleo', 'Empleo', '', '3', 'Bolocboloc,barili,cebu', '2005-01-29', 17, 'Single', 'Female', 'STA. CRUZ', 'No', '', '', '', '', '', NULL, 1, NULL, 5),
(222, '', '102', 'Filipino', 'person.png', 'Servando Sr.', 'Canete', 'Empos', '', '4', 'Bolocboloc', '1971-10-23', 68, 'Married', 'Male', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 6),
(223, '', '103', 'Filipino', 'person.png', 'Cristina', 'Dela Cerna', 'Empos', '', '4', 'Asuzena', '1974-10-23', 75, 'Married', 'Female', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 6),
(224, '', '104', 'Filipino', 'person.png', 'Servando Jr.', 'Dela Cerna', 'Empos', '', '4', 'BPH', '2001-03-12', 22, 'Single', 'Male', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 6),
(225, '', '105', 'Filipino', 'person.png', 'Christoper', 'Dela Cerna', 'Empos', '', '4', 'Bolocboloc,barili,cebu', '2002-04-10', 12, 'Single', 'Male', 'STA. CRUZ', 'No', '', '', '', '', '', NULL, 1, NULL, 6),
(226, '', '106', 'Filipino', 'person.png', 'Khecia Mae', 'Dela Cerna', 'Empos', '', '4', 'Bolocboloc,barili,cebu', '2003-09-17', 19, 'Single', 'Female', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 6),
(227, '', '107', 'Filipino', 'person.png', 'Kenneth', 'Dela Cerna', 'Empos', '', '4', 'Bolocboloc,barili,cebu', '2006-09-10', 16, 'Single', 'Male', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 6),
(228, '', '108', 'Filipino', 'person.png', 'Germon', 'Dela Cerna', 'Empos', '', '4', 'BP4', '2013-06-14', 9, 'Single', 'Male', 'STA. CRUZ', 'No', '', '', '', '', '', NULL, 1, NULL, 6),
(229, '', '109', 'Filipino', 'person.png', 'Miguel ', 'Timagos', 'Carbero', '', '5', 'Bolocboloc,barili,cebu', '1966-09-29', 79, 'Married', 'Male', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 1),
(230, '', '1010', 'Filipino', 'person.png', 'Merlinda', 'Francisco', 'Carbero', '', '5', 'Mindanao', '1972-09-11', 80, 'Married', 'Female', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 1),
(231, '', '1011', 'Filipino', 'person.png', 'Anna Marie', 'Francisco', 'Carbero', '', '5', 'Bolocboloc,barili,cebu', '1994-06-20', 73, 'Single', 'Female', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 1),
(232, '', '1012', 'Filipino', 'person.png', 'Marian Joy', 'Francisco', 'Carbero', '', '5', 'Bolocboloc,barili,cebu', '1997-02-15', 64, 'Single', 'Female', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 1),
(233, '', '1013', 'Filipino', 'person.png', 'Renand', 'Tecson', 'Padin', '', '6', 'Libo Sibonga, Cebu', '1991-05-10', 43, 'Married', 'Male', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 5),
(234, '', '1014', 'Filipino', 'person.png', 'Michelle', 'Carbero', 'Padin', '', '6', 'Bolocboloc,barili,cebu', '1991-09-23', 36, 'Married', 'Female', 'STA. CRUZ', 'Yes', '', '', '', '', '', '', 1, '', 5),
(235, '', '1015', 'Filipino', 'person.png', 'Khan Rey ', 'Carbero', 'Padin', '', '6', 'Barili Dist. H.', '2012-09-23', 10, 'Single', 'Male', 'STA. CRUZ', 'No', '', '', '', '', '', '', 1, '', 5),
(236, '', '113', 'Filipino', 'person.png', 'Elesio', 'Escandallo', 'Tenebroso', '', '7', 'Bolocboloc,barili,cebu', '1975-11-16', 78, 'Married', 'Male', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 6),
(237, '', '114', 'Filipino', 'person.png', 'Genara', 'Escandllo', 'villarin', '', '7', 'Pinamongajan, cebu', '1976-03-03', 76, 'Married', 'Female', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 6),
(238, '', '115', 'Filipino', 'person.png', 'Ma. Elna', 'Villarin', 'Escandallo', '', '7', 'Minglanilla, Cebu', '1997-02-16', 25, 'Single', 'Female', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 5),
(239, '', '0', 'Filipino', 'person.png', 'mdn', 'dmn', 'ff', '', '1', 'Bolocboloc,barili,cebu', '1997-12-09', 45, 'Married', 'Male', 'MARGARITA', 'Yes', '', '', '', '', '', NULL, 1, NULL, 3),
(240, '', '130', 'Filipino', 'person.png', 'Elezar', 'Villarin', 'Escandallo', '', '7', 'Minglanilia, Cebu', '1999-07-10', 24, 'Single', 'Male', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 1),
(241, '', '132', 'Filipino', 'person.png', 'Ergel', 'Villarin', 'Escandallo', '', '7', 'Bolocboloc,barili,cebu', '2002-07-09', 20, 'Single', 'Male', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 6),
(242, '', '201', 'Filipino', 'person.png', 'Sebastian', 'Flores', 'Escultor', '', '8', 'Giloctog, Barili, Cebu', '1970-11-20', 78, 'Married', 'Male', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 6),
(243, '', '202', 'Filipino', 'person.png', 'Tolomia', 'Marilou', 'Escultor', '', '8', 'Manila', '1979-12-13', 87, 'Married', 'Female', 'STA. CRUZ', 'Yes', '', '', '', '', '', '', 1, '', 6),
(244, '', '203', 'Filipino', 'person.png', 'Kathleneshane', 'Tolomia', 'Escultor', '', '8', 'Patupat,barili,cebu', '2004-12-06', 18, 'Single', 'Female', 'STA. CRUZ', 'Yes', '', '', '', '', '', NULL, 1, NULL, 6),
(245, '', '5555', 'Filipino', 'person.png', 'BALO', 'Altamera', 'BANSOY', '', '1', 'Bolocboloc,barili,cebu', '1990-12-31', 23, '', 'Male', 'MARGARITA', 'Yes', '', '', '', '', '', NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_announce`
--

CREATE TABLE IF NOT EXISTS `tbl_announce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txt` longtext CHARACTER SET latin1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_announce`
--

INSERT INTO `tbl_announce` (`id`, `txt`) VALUES
(1, 'PWD Payout Update\r\n\r\n'),
(2, 'ggggg'),
(3, 'Ang nakadawat!');

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
