-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2023 at 03:26 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `besis`
--

-- --------------------------------------------------------

--
-- Table structure for table `benefits_status`
--

CREATE TABLE IF NOT EXISTS `benefits_status` (
  `benefit_id` int(11) NOT NULL AUTO_INCREMENT,
  `benefit_name` text NOT NULL,
  PRIMARY KEY (`benefit_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `benefits_status`
--

INSERT INTO `benefits_status` (`benefit_id`, `benefit_name`) VALUES
(1, 'Done'),
(2, 'Scheduled'),
(3, 'Undone');

-- --------------------------------------------------------

--
-- Table structure for table `financial`
--

CREATE TABLE IF NOT EXISTS `financial` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `address` varchar(100) NOT NULL,
  `remarks` text NOT NULL,
  `f_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `financial`
--

INSERT INTO `financial` (`id`, `address`, `remarks`, `f_id`, `res_id`) VALUES
(5, 'Bolocboloc33444', 'dsdd', 2, 0),
(7, 'dewed', 'dsasdsdsa', 10, 0),
(8, 'vito, barili, cebu', 'Mayta tagaan nku ug ayuda', 4, 0),
(10, 'vito, barili, cebu', 'zzzzz', 1, 0),
(13, 'bolocboloc', 'nakadawt na', 3, 0),
(14, 'Bolocboloc33444', 'yati', 1, 0);

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
(1, 'Senior '),
(2, 'Dole'),
(3, 'Tupad'),
(4, 'Solo Parent'),
(5, 'PWD');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=657 ;

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
(454, 11, 'admin', '09:23', '11/24/2022', 'admin visited purok SAGRADA'),
(455, 11, 'admin', '03:45', '11/26/2022', 'admin visited purok SAGRADA'),
(456, 11, 'admin', '03:45', '11/26/2022', 'admin visited purok SAGRADA'),
(457, 23, 'secretary', '10:57 pm', '12/01/2022', 'secretary added Cristo Ray Magsusi Corales from Resident Information.'),
(458, 23, 'secretary', '10:58 pm', '12/01/2022', 'secretary updated Cristo Ray Magsusi Corales from Resident Information.'),
(459, 23, 'secretary', '10:59 pm', '12/01/2022', 'secretary updated Cristo Ray Magsusi Corales from Resident Information.'),
(460, 23, 'secretary', '11:02 pm', '12/01/2022', 'secretary updated Cristo Ray Magsusi Corales from Resident Information.'),
(461, 23, 'secretary', '11:12 pm', '12/01/2022', 'secretary updated Cristo Ray Magsusi Corales from Resident Information.'),
(462, 23, 'secretary', '11:15 pm', '12/01/2022', 'secretary updated Cristo Ray Magsusi Corales from Resident Information.'),
(463, 23, 'secretary', '11:32 pm', '12/01/2022', 'secretary updated Cristo Ray Magsusi Corales from Resident Information.'),
(464, 23, 'secretary', '11:39 pm', '12/01/2022', 'secretary updated Cristo Ray Magsusi Corales from Resident Information.'),
(465, 23, 'secretary', '12:12 am', '12/02/2022', 'secretary updated Cristo Ray Magsusi Corales from Resident Information.'),
(466, 23, 'secretary', '12:13 am', '12/02/2022', 'secretary updated Cristo Ray Magsusi Corales from Resident Information.'),
(467, 23, 'secretary', '12:14 am', '12/02/2022', 'secretary updated Cristo Ray Magsusi Corales from Resident Information.'),
(468, 23, 'secretary', '12:15 am', '12/02/2022', 'secretary updated Cristo Ray Magsusi Corales from Resident Information.'),
(469, 23, 'secretary', '12:22 am', '12/02/2022', 'secretary updated Cristo Ray Magsusi Corales from Resident Information.'),
(470, 23, 'secretary', '12:23 am', '12/02/2022', 'secretary updated Cristo Ray Magsusi Corales from Resident Information.'),
(471, 23, 'secretary', '12:27 am', '12/02/2022', 'secretary updated Cristo Ray Magsusi Corales from Resident Information.'),
(472, 23, 'secretary', '12:32 am', '12/02/2022', 'secretary updated Cristo Ray Magsusi Corales from Resident Information.'),
(473, 23, 'secretary', '12:53 am', '12/02/2022', 'secretary updated Cristo Ray Magsusi Corales from Resident Information.'),
(474, 23, 'secretary', '01:03 am', '12/02/2022', 'secretary updated Cristo Ray Magsusi Corales from Resident Information.'),
(475, 23, 'secretary', '01:04 am', '12/02/2022', 'secretary updated Cristo Ray Magsusi Corales from Resident Information.'),
(476, 23, 'secretary', '01:04 am', '12/02/2022', 'secretary updated Cristo Ray Magsusi Corales from Resident Information.'),
(477, 23, 'secretary', '01:33 am', '12/02/2022', 'secretary updated   blotter incident details.'),
(478, 23, 'secretary', '01:40 am', '12/02/2022', 'secretary added alyas moymoy from  blotter incident details in Blotter Records.'),
(479, 23, 'secretary', '01:50 am', '12/02/2022', 'secretary updated   blotter incident details.'),
(480, 23, 'secretary', '01:51 am', '12/02/2022', 'secretary updated  from  to Active in Blotter Records.'),
(481, 23, 'secretary', '02:05 am', '12/02/2022', 'secretary updated  from  to Active in Blotter Records.'),
(482, 23, 'secretary', '02:10 am', '12/02/2022', 'secretary updated  from Scheduled to  in Blotter Records.'),
(483, 23, 'secretary', '02:16 am', '12/02/2022', 'secretary updated  from Active to  in Blotter Records.'),
(484, 23, 'secretary', '02:21 am', '12/02/2022', 'secretary updated  from blotter incident details in Blotter Records.'),
(485, 23, 'secretary', '02:23 am', '12/02/2022', 'secretary updated Ronel G. Torres from blotter incident details in Blotter Records.'),
(486, 23, 'secretary', '02:25 am', '12/02/2022', 'secretary added Moymoy from  blotter incident details in Blotter Records.'),
(487, 23, 'secretary', '02:38 am', '12/02/2022', 'secretary visited purok KAMUNGAY'),
(488, 23, 'secretary', '02:39 am', '12/02/2022', 'secretary visited purok MARGARITA'),
(489, 23, 'secretary', '02:39 am', '12/02/2022', 'secretary visited at Purok MARGARITA in household no 1 from Purok.'),
(490, 23, 'secretary', '02:42', '12/02/2022', 'secretary removed Moymoy blotter/incident complaint. '),
(491, 23, 'secretary', '03:46 am', '12/02/2022', 'secretary updated Cristo Ray Magsusi Corales from Resident Information.'),
(492, 23, 'secretary', '02:19 pm', '12/02/2022', 'secretary visited purok SAGRADA'),
(493, 23, 'secretary', '04:19 pm', '12/02/2022', 'secretary visited at Purok MARGARITA in household no 1 from Purok.'),
(494, 23, 'secretary', '04:20 pm', '12/02/2022', 'secretary visited at purok SAGRADA from Purok.'),
(495, 23, 'secretary', '04:25 pm', '12/02/2022', 'secretary removed Chericel Bornea from blotter/incident complaint in Blotter Records.'),
(496, 23, 'secretary', '06:24 pm', '12/02/2022', 'secretary visited at Purok MARGARITA from Purok.'),
(497, 23, 'secretary', '06:24 pm', '12/02/2022', 'secretary visited at Purok MARGARITA in household no 1 from Purok.'),
(498, 23, 'secretary', '07:03', '12/04/2022', 'secretary removed MOYmoyMoy in financial aid grantee '),
(499, 23, 'secretary', '12:14 pm', '12/04/2022', 'secretary visited at Purok SAGRADA from Purok.'),
(500, 23, 'secretary', '12:15 pm', '12/04/2022', 'secretary visited at Purok STA. CRUZ from Purok.'),
(501, 23, 'secretary', '12:15 pm', '12/04/2022', 'secretary visited at Purok STA. CRUZ in household no 1 from Purok.'),
(502, 23, 'secretary', '12:16 pm', '12/04/2022', ''),
(503, 23, 'secretary', '12:23 pm', '12/04/2022', 'secretary visited at Purok KAMUNGAY from Purok.'),
(504, 23, 'secretary', '12:23 pm', '12/04/2022', 'secretary visited at Purok SAGRADA from Purok.'),
(505, 23, 'secretary', '12:23 pm', '12/04/2022', 'secretary visited at Purok STA. CRUZ from Purok.'),
(506, 23, 'secretary', '12:23 pm', '12/04/2022', 'secretary visited at Purok STA. CRUZ in household no 1 from Purok.'),
(507, 23, 'secretary', '12:24 pm', '12/04/2022', 'secretary visited at Purok STA. CRUZ from Purok.'),
(508, 23, 'secretary', '12:31 pm', '12/04/2022', 'secretary added veronico  gonzaga alquizola from Resident Information.'),
(509, 23, 'secretary', '12:32 pm', '12/04/2022', 'secretary visited at Purok SAGRADA from Purok.'),
(510, 23, 'secretary', '12:32 pm', '12/04/2022', 'secretary visited at Purok STA. CRUZ from Purok.'),
(511, 23, 'secretary', '12:32 pm', '12/04/2022', 'secretary visited at Purok STA. CRUZ in household no 1 from Purok.'),
(512, 23, 'secretary', '12:32 pm', '12/04/2022', 'secretary visited at Purok STA. CRUZ in household no 10 from Purok.'),
(513, 23, 'secretary', '12:32 pm', '12/04/2022', 'secretary visited at Purok STA. CRUZ in household no 6 from Purok.'),
(514, 23, 'secretary', '12:39 pm', '12/04/2022', 'secretary updated  from  to Done in Requested.'),
(515, 11, 'admin', '04:41 pm', '12/07/2022', 'admin added Cristo Ray Magsusi Corales from Resident Information.'),
(516, 11, 'admin', '09:38 pm', '12/07/2022', 'admin visited at Purok SAGRADA from Purok.'),
(517, 11, 'admin', '09:39 pm', '12/07/2022', 'admin visited at Purok MARGARITA from Purok.'),
(518, 11, 'admin', '09:39 pm', '12/07/2022', 'admin visited at Purok MARGARITA in household no 1 from Purok.'),
(519, 11, 'admin', '01:23 am', '12/14/2022', 'admin visited at Purok STA. CRUZ from Purok.'),
(520, 11, 'admin', '01:23 am', '12/14/2022', 'admin visited at Purok STA. CRUZ in household no 1 from Purok.'),
(521, 11, 'admin', '01:31:am', '12/14/2022', 'admin removed sffasddf in Financial grantee from Financial Aid'),
(522, 11, 'admin', '02:09 am', '12/14/2022', 'admin added Chericel Alberio Bornea from Resident Information.'),
(523, 11, 'admin', '02:21 am', '12/14/2022', 'admin added Grace Crator Caballero from Resident Information.'),
(524, 11, 'admin', '10:47 am', '12/14/2022', 'admin updated CLark from financial details in Financial Records.'),
(525, 11, 'admin', '10:49 am', '12/14/2022', 'admin updated CLark from financial details in Financial Records.'),
(526, 11, 'admin', '12:57 pm', '12/14/2022', 'admin removed 248 from Resident Information! '),
(527, 11, ' admin', '01:12 pm', '12/14/2022', ' admin removed  from Requested Certificate in Request.'),
(528, 11, 'admin', '01:14 pm', '12/14/2022', 'admin visited at Purok SAGRADA from Purok.'),
(529, 11, 'admin', '01:14 pm', '12/14/2022', 'admin visited at Purok STA. CRUZ from Purok.'),
(530, 11, 'admin', '01:14 pm', '12/14/2022', 'admin visited at Purok STA. CRUZ in household no 1 from Purok.'),
(531, 11, 'admin', '01:26 pm', '12/14/2022', 'admin visited at Purok STA. CRUZ from Purok.'),
(532, 11, 'admin', '01:26 pm', '12/14/2022', 'admin visited at Purok STA. CRUZ in household no 1 from Purok.'),
(533, 11, 'admin', '01:26 pm', '12/14/2022', 'admin visited at Purok STA. CRUZ in household no 1 from Purok.'),
(534, 11, 'admin', '01:32 pm', '12/14/2022', 'admin added Clark Aliño from  blotter incident details in Blotter Records.'),
(535, 11, 'admin', '01:45 pm', '12/14/2022', 'admin updated Christoper Dela Cerna Empos from Resident Information.'),
(536, 11, 'admin', '07:57 pm', '01/03/2023', 'admin added Cristo Ray Crator Crator from Resident Information.'),
(537, 11, 'admin', '02:08 pm', '01/04/2023', 'admin updated  from financial details in Financial Records.'),
(538, 11, 'admin', '02:54 pm', '01/04/2023', 'admin updated  from financial details in Financial Records.'),
(539, 11, 'admin', '03:22 pm', '01/04/2023', 'admin updated  from financial details in Financial Records.'),
(540, 11, 'admin', '03:23 pm', '01/04/2023', 'admin updated  from financial details in Financial Records.'),
(541, 11, 'admin', '03:23 pm', '01/04/2023', 'admin updated  from financial details in Financial Records.'),
(542, 11, 'admin', '05:39 pm', '01/04/2023', 'admin updated  from financial details in Financial Records.'),
(543, 11, 'admin', '05:40 pm', '01/04/2023', 'admin updated  from financial details in Financial Records.'),
(544, 11, 'admin', '05:43 pm', '01/04/2023', 'admin updated  from financial details in Financial Records.'),
(545, 11, 'admin', '05:44 pm', '01/04/2023', 'admin updated  from financial details in Financial Records.'),
(546, 11, 'admin', '07:18 pm', '01/04/2023', 'admin updated  from financial details in Financial Records.'),
(547, 11, 'admin', '07:18 pm', '01/04/2023', 'admin updated  from financial details in Financial Records.'),
(548, 11, 'admin', '10:25 am', '01/05/2023', 'admin added Jerome B Aguilar from Resident Information.'),
(549, 11, 'admin', '10:42 am', '01/05/2023', 'admin updated Jerome Aguilar from pending to Done in Requested.'),
(550, 11, 'admin', '04:24:pm', '01/05/2023', 'admin removed  in Financial grantee from Financial Aid'),
(551, 11, 'admin', '04:24:pm', '01/05/2023', 'admin removed  in Financial grantee from Financial Aid'),
(552, 11, 'admin', '04:54:pm', '01/05/2023', 'admin removed  at  in Financial grantee from Financial Aid'),
(553, 11, 'admin', '12:25 pm', '01/06/2023', 'admin updated  from financial details in Financial Records.'),
(554, 11, 'admin', '04:26 pm', '01/07/2023', 'admin updated  from financial details in Financial Records.'),
(555, 11, 'admin', '04:29 pm', '01/07/2023', 'admin updated  from financial details in Financial Records.'),
(556, 11, 'admin', '04:31 pm', '01/07/2023', 'admin updated  from financial details in Financial Records.'),
(557, 11, 'admin', '04:33 pm', '01/07/2023', 'admin updated  from financial details in Financial Records.'),
(558, 11, 'admin', '04:36 pm', '01/07/2023', 'admin updated  from financial details in Financial Records.'),
(559, 11, 'admin', '05:05 pm', '01/07/2023', 'admin added test1 test1 test1 from Resident Information.'),
(560, 11, 'admin', '05:26 pm', '01/07/2023', 'admin added test1 test1 test1 from Resident Information.'),
(561, 11, 'admin', '06:42 pm', '01/07/2023', 'admin removed 254 from Resident Information! '),
(562, 11, 'admin', '08:02 pm', '01/07/2023', 'admin updated Grace Crator Caballero from Resident Information.'),
(563, 11, '', '10:55:pm', '01/08/2023', 'admin reset all Benefits Status at Financial Aid'),
(564, 11, 'admin', '11:03 pm', '01/08/2023', 'admin updated  from financial details in Financial Records.'),
(565, 11, 'admin', '11:06:pm', '01/08/2023', 'admin reset all Benefits Status at Financial Aid'),
(566, 11, 'admin', '12:21:pm', '01/09/2023', 'admin reset all Benefits Status at Financial Aid'),
(567, 11, 'admin', '05:25:pm', '01/09/2023', 'admin reset all Benefits Status from Financial Aid'),
(568, 11, 'admin', '05:25:pm', '01/09/2023', 'admin reset all Benefits Status from Financial Aid');
INSERT INTO `history_log` (`id`, `user_id`, `name`, `time`, `date`, `message`) VALUES
(569, 11, 'admin', '07:07:pm', '01/09/2023', 'admin reset all Benefits Status from Financial Aid'),
(570, 11, 'admin', '07:25:pm', '01/09/2023', 'admin reset all Benefits Status from Financial Aid'),
(571, 11, 'admin', '07:25 pm', '01/09/2023', 'admin updated  from financial details in Financial Records.'),
(572, 11, 'admin', '07:25 pm', '01/09/2023', 'admin updated  from financial details in Financial Records.'),
(573, 11, 'admin', '07:25:pm', '01/09/2023', 'admin reset all Benefits Status from Financial Aid'),
(574, 11, 'admin', '07:37 pm', '01/09/2023', 'admin updated  from financial details in Financial Records.'),
(575, 11, 'admin', '07:37:pm', '01/09/2023', 'admin reset all Benefits Status at 4P''s from Financial Aid'),
(576, 11, 'admin', '07:42:pm', '01/09/2023', 'admin removed  at  in Financial grantee from Financial Aid'),
(577, 11, 'admin', '07:54:pm', '01/09/2023', 'admin removed MerlindaCarbero at  in Financial grantee from Financial Aid'),
(578, 11, 'admin', '09:04 pm', '01/09/2023', 'admin updated Cristo Ray Magsusi Corales from Resident Information.'),
(579, 11, 'admin', '09:15 pm', '01/09/2023', 'admin updated  from financial details in Financial Records.'),
(580, 11, 'admin', '09:15 pm', '01/09/2023', 'admin updated  from financial details in Financial Records.'),
(581, 11, 'admin', '09:15:pm', '01/09/2023', 'admin reset all Benefits Status at 4P''s from Financial Aid'),
(582, 11, 'admin', '09:27 pm', '01/09/2023', 'admin Updated No. 231 from financial Details in Financial Records.'),
(583, 11, 'admin', '09:30:pm', '01/09/2023', 'admin reset all Benefits Status at 4P''s from Financial Aid'),
(584, 11, 'admin', '09:31:pm', '01/09/2023', 'admin reset all Benefits Status at 4P''s from Financial Aid'),
(585, 11, 'admin', '09:34 pm', '01/09/2023', 'admin has Updated No. 231 from 4P''s in Financial Aids.'),
(586, 11, 'admin', '09:38:pm', '01/09/2023', 'admin reset all Benefits Status at 4P''s from Financial Aid'),
(587, 11, 'admin', '09:44 pm', '01/09/2023', 'admin visited at Purok SAGRADA from Purok.'),
(588, 11, 'admin', '09:44 pm', '01/09/2023', 'admin visited at Purok STA. CRUZ from Purok.'),
(589, 11, 'admin', '02:25 pm', '01/10/2023', 'admin has Updated No. 231 from 4P''s in Financial Aids.'),
(590, 11, 'admin', '02:26:pm', '01/10/2023', 'admin reset all Benefits Status at 4P''s from Financial Aid'),
(591, 11, 'admin', '02:31 pm', '01/10/2023', 'admin visited at Purok SAGRADA from Purok.'),
(592, 11, 'admin', '02:31 pm', '01/10/2023', 'admin visited at Purok STA. CRUZ from Purok.'),
(593, 11, 'admin', '02:31 pm', '01/10/2023', 'admin visited at Purok STA. CRUZ in household no 1 from Purok.'),
(594, 11, 'admin', '02:31 pm', '01/10/2023', 'admin visited at Purok STA. CRUZ in household no 1 from Purok.'),
(595, 11, 'admin', '02:31 pm', '01/10/2023', 'admin visited at Purok STA. CRUZ in household no 2 from Purok.'),
(596, 11, 'admin', '04:11 pm', '01/10/2023', 'admin visited at Purok STA. CRUZ from Purok.'),
(597, 11, 'admin', '04:11 pm', '01/10/2023', 'admin visited at Purok STA. CRUZ in household no 10 from Purok.'),
(598, 11, 'admin', '04:11 pm', '01/10/2023', 'admin visited at Purok STA. CRUZ in household no 1 from Purok.'),
(599, 11, 'admin', '04:33 pm', '01/10/2023', 'admin visited at Purok SAGRADA from Purok.'),
(600, 11, 'admin', '04:33 pm', '01/10/2023', 'admin visited at Purok STA. CRUZ from Purok.'),
(601, 11, 'admin', '04:33 pm', '01/10/2023', 'admin visited at Purok STA. CRUZ in household no 1 from Purok.'),
(602, 11, 'admin', '05:04 pm', '01/10/2023', 'admin visited at Purok STA. CRUZ from Purok.'),
(603, 11, 'admin', '05:04 pm', '01/10/2023', 'admin visited at Purok STA. CRUZ in household no 10 from Purok.'),
(604, 11, 'admin', '05:54 pm', '01/10/2023', 'admin visited at Purok KAMUNGAY from Purok.'),
(605, 11, 'admin', '05:55 pm', '01/10/2023', 'admin visited at Purok LOURDES from Purok.'),
(606, 11, 'admin', '05:55 pm', '01/10/2023', 'admin visited at Purok KAMUNGAY from Purok.'),
(607, 11, 'admin', '05:57 pm', '01/10/2023', 'admin visited at Purok SAN JOSE from Purok.'),
(608, 11, 'admin', '05:57 pm', '01/10/2023', 'admin visited at Purok SAGRADA from Purok.'),
(609, 11, 'admin', '05:57 pm', '01/10/2023', 'admin visited at Purok STA. CRUZ from Purok.'),
(610, 11, 'admin', '05:57 pm', '01/10/2023', 'admin visited at Purok KAMUNGAY from Purok.'),
(611, 11, 'admin', '05:57 pm', '01/10/2023', 'admin visited at Purok KAMUNGAY in household no 13 from Purok.'),
(612, 11, 'admin', '05:58 pm', '01/10/2023', 'admin visited at Purok KAMUNGAY in household no 11 from Purok.'),
(613, 11, 'admin', '06:01 pm', '01/10/2023', 'admin updated Cristo Ray Crator Crator from Resident Information.'),
(614, 11, 'admin', '06:02 pm', '01/10/2023', 'admin visited at Purok KAMUNGAY from Purok.'),
(615, 11, 'admin', '06:02 pm', '01/10/2023', 'admin visited at Purok KAMUNGAY from Purok.'),
(616, 11, 'admin', '06:02 pm', '01/10/2023', 'admin visited at Purok KAMUNGAY in household no 14 from Purok.'),
(617, 11, 'admin', '06:02 pm', '01/10/2023', 'admin visited at Purok KAMUNGAY in household no 13 from Purok.'),
(618, 11, 'admin', '06:02 pm', '01/10/2023', 'admin visited at Purok KAMUNGAY in household no 10 from Purok.'),
(619, 11, 'admin', '06:02 pm', '01/10/2023', 'admin visited at Purok KAMUNGAY in household no 14 from Purok.'),
(620, 11, 'admin', '06:02 pm', '01/10/2023', 'admin visited at Purok KAMUNGAY from Purok.'),
(621, 11, 'admin', '06:03 pm', '01/10/2023', 'admin visited at Purok KAMUNGAY in household no 14 from Purok.'),
(622, 11, 'admin', '06:03 pm', '01/10/2023', 'admin visited at Purok KAMUNGAY from Purok.'),
(623, 11, 'admin', '06:03 pm', '01/10/2023', 'admin visited at Purok KAMUNGAY in household no 14 from Purok.'),
(624, 11, 'admin', '06:03 pm', '01/10/2023', 'admin visited at Purok SAGRADA from Purok.'),
(625, 11, 'admin', '06:03 pm', '01/10/2023', 'admin visited at Purok KAMUNGAY from Purok.'),
(626, 11, 'admin', '06:03 pm', '01/10/2023', 'admin visited at Purok KAMUNGAY in household no 14 from Purok.'),
(627, 11, 'admin', '06:03 pm', '01/10/2023', 'admin updated Cristo Ray Crator Crator from Resident Information.'),
(628, 11, 'admin', '06:03 pm', '01/10/2023', 'admin visited at Purok SAGRADA from Purok.'),
(629, 11, 'admin', '06:04 pm', '01/10/2023', 'admin visited at Purok SAGRADA in household no 14 from Purok.'),
(630, 11, 'admin', '06:04 pm', '01/10/2023', 'admin visited at Purok KAMUNGAY from Purok.'),
(631, 11, 'admin', '08:05 pm', '01/10/2023', 'admin visited at Purok SAGRADA from Purok.'),
(632, 11, 'admin', '09:28 am', '01/11/2023', 'admin visited at Purok SAGRADA from Purok.'),
(633, 11, 'admin', '09:28 am', '01/11/2023', 'admin visited at Purok SAGRADA in household no 14 from Purok.'),
(634, 11, 'admin', '09:54 pm', '01/18/2023', 'admin updated Ted Dragon from pending to Done in Requested.'),
(635, 11, 'admin', '09:56 pm', '01/18/2023', 'admin has Updated No. 212 from Solo Parent in Financial Aids.'),
(636, 11, 'admin', '09:56:pm', '01/18/2023', 'admin reset all Benefits Status at Solo Parent from Financial Aid'),
(637, 11, 'admin', '02:20 pm', '01/19/2023', 'admin visited at Purok SAGRADA from Purok.'),
(638, 11, 'admin', '02:20 pm', '01/19/2023', 'admin visited at Purok STA. CRUZ from Purok.'),
(639, 11, 'admin', '02:20 pm', '01/19/2023', 'admin visited at Purok STA. CRUZ from Purok.'),
(640, 11, 'admin', '02:20 pm', '01/19/2023', 'admin visited at Purok STA. CRUZ in household no 1 from Purok.'),
(641, 11, 'admin', '02:20 pm', '01/19/2023', 'admin visited at Purok STA. CRUZ in household no 1 from Purok.'),
(642, 11, 'admin', '02:20 pm', '01/19/2023', 'admin visited at Purok STA. CRUZ in household no 2 from Purok.'),
(643, 11, 'admin', '02:24 pm', '01/19/2023', 'admin visited at Purok SAGRADA from Purok.'),
(644, 11, 'admin', '02:24 pm', '01/19/2023', 'admin visited at Purok SAGRADA from Purok.'),
(645, 11, 'admin', '02:24 pm', '01/19/2023', 'admin visited at Purok STA. CRUZ from Purok.'),
(646, 11, 'admin', '02:32 pm', '01/19/2023', 'admin visited at Purok SAGRADA from Purok.'),
(647, 11, 'admin', '03:40 pm', '01/19/2023', 'admin has Updated No. 246 from Solo Parent in Financial Aids.'),
(648, 11, 'admin', '03:41:pm', '01/19/2023', 'admin reset all Benefits Status at Solo Parent from Financial Aid'),
(649, 11, 'admin', '04:47:pm', '01/19/2023', 'admin reset all Benefits Status at PWD from Financial Aid'),
(650, 11, 'admin', '04:59 pm', '01/19/2023', 'admin updated  from  to Pending in Requested.'),
(651, 11, 'admin', '05:36 pm', '01/19/2023', 'admin has Updated No. 231 from 4P''s in Financial Aids.'),
(652, 11, 'admin', '05:36:pm', '01/19/2023', 'admin reset all Benefits Status at 4P''s from Financial Aid'),
(653, 11, 'admin', '06:01 pm', '01/19/2023', 'admin has Updated No. 231 from 4P''s in Financial Aids.'),
(654, 11, 'admin', '10:59 am', '01/31/2023', 'admin updated Aimar Corales from Pending to Done in Requested.'),
(655, 32, 'resident', '03:18 pm', '01/31/2023', 'resident updated Jerome from Pending to Done in Requested.'),
(656, 11, 'admin', '05:35 pm', '02/23/2023', 'admin added testing testing testing from Resident Information.');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `stat_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(255) NOT NULL,
  PRIMARY KEY (`stat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

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
(7, 'DSWD'),
(8, 'CHED'),
(9, 'None');

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
  `res_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `tblblotter`
--

INSERT INTO `tblblotter` (`id`, `complainant`, `respondent`, `casenum`, `type`, `location`, `date`, `time`, `details`, `status`, `res_id`) VALUES
(28, 'Reydin A. Amancio alyas moymoy', 'Ronel G. Torres', '2342354', 'Incident', 'dfccde', '2022-06-09', '11:18:00', 'fff', 'Active', 0),
(29, 'Ronel G. Torres', 'Moymoy', '1233312344', 'Amicable', 'barili', '2022-12-02', '04:11:00', 'sdfqweqesdasdsad', 'Scheduled', 0),
(30, 'Clark Aliño', 'Cristo Ray Corales', '12353423123', 'Amicable', 'bolocboloc, barili, Cebu', '2022-12-02', '04:32:00', 'ghgdfrwewer.', '', 0),
(32, 'Reydin A. Amancio', 'alyas moymoy', '534523123', 'Amicable', 'barili, tubod, cebu', '2022-12-02', '01:40:00', 'dgfdfwerddfg.', 'Active', 0),
(33, 'Ronel G. Torres', 'Clark Aliño', '12344', 'Incident', 'cagay, barili, cebu', '2022-12-14', '13:32:00', 'nailog sa  bahaw', 'Scheduled', 0);

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
(1, 'Cebu', 'Barili', 'Bolocboloc', '0919-1234567', 'To serve resident and maintain economic growth and focus on development.', '<center><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d353.19068910775235!2d123.52840191273643!3d10.113071819246983!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33a9630643dd013b%3A0x6265dd3ae93a9dd5!2sBolocboloc%20Gym!5e1!3m2!1sen!2sph!4v1669472881399!5m2!1sen!2sph" width="1000" height="600" style="border:0;" allowfullscreen="" loading="lazy" class="responsive-iframe" referrerpolicy="no-referrer-when-downgrade"></iframe></center>', '2406202201031474614_134812209909301_1972678_n.jpg', '24112022143730314345846_2423026054517382_4632324901099039762_n.png');

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
  `chairmanship` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `contact` varchar(11) DEFAULT NULL,
  `termstart` date DEFAULT NULL,
  `termend` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `res_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `tblofficials`
--

INSERT INTO `tblofficials` (`id`, `chairmanship`, `position`, `contact`, `termstart`, `termend`, `status`, `res_id`) VALUES
(17, '2', '15', '09123456712', '2018-07-18', '2022-12-30', 'Active', 0),
(23, '2', '11', '09453628294', '2018-06-21', '2022-12-28', 'Active', 0),
(24, '2', '11', '3333', '2018-07-06', '2022-12-22', 'Active', 0),
(25, '2', '12', '09345678243', '2018-07-06', '2022-12-26', 'Active', 0),
(26, '2', '14', '0997456787', '2018-07-18', '2022-12-28', 'Active', 0),
(27, '2', '16', '0975456786', '2018-07-06', '2022-12-21', 'Active', 0),
(28, '2', '17', '09345728534', '2018-07-06', '2022-12-22', 'Active', 0);

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
  `res_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `tblpayments`
--

INSERT INTO `tblpayments` (`id`, `details`, `or_info`, `amounts`, `date`, `user`, `name`, `res_id`) VALUES
(15, 'Certificate of Indigency Payment', 0, '40.00', '2022-06-02', 'admin', ' Reydin Altamira Amancio', 0),
(16, 'Barangay Clearance Payment', 0, '24.00', '2022-06-02', 'admin', ' Reydin Altamira Amancio', 0),
(17, 'Certificate of Indigency Payment', 0, '40.00', '2022-06-02', 'admin', ' Wensislao Kabalgmoy Obiso', 0),
(18, 'Business Permit Payment', 0, '23.00', '2022-06-08', 'admin', ' Victorina Ricaplaza', 0),
(19, '67890', 0, '40.00', '2022-06-08', 'admin', ' Victorina Ricaplaza', 0),
(20, '123', 0, '2.00', '2022-06-08', 'admin', ' Victorina Ricaplaza', 0),
(21, '345', 0, '12.00', '2022-06-08', 'admin', ' Victorina Ricaplaza', 0),
(22, 'Business Permit Payment', 0, '1.00', '2022-06-08', 'admin', ' Victorina Ricaplaza', 0),
(23, 'Business Permit Payment', 1, '1.00', '2022-06-08', 'admin', ' Victorina Ricaplaza', 0),
(24, 'Business Permit Payment', 678, '1.00', '2022-06-08', 'admin', ' Victorina Ricaplaza', 0),
(25, 'Business Permit Payment', 4567, '1.00', '2022-06-09', 'admin', ' Victorina Ricaplaza', 0),
(26, 'Business Permit Payment', 56, '1.00', '2022-06-09', 'admin', ' Victorina Ricaplaza', 0),
(27, 'Barangay Clearance Payment', 0, '56.00', '2022-06-28', 'admin', ' Lorna Altamera Amancio', 0),
(28, 'Certificate of Indigency Payment', 0, '30.00', '2022-06-28', 'admin', ' Lorna Altamera Amancio', 0),
(29, 'Barangay Clearance Payment', 0, '60.00', '2022-12-04', 'secretary', ' Veronico  Gonzaga Alquizola', 0);

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
  `res_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tblpermit`
--

INSERT INTO `tblpermit` (`id`, `name`, `owner1`, `owner2`, `nature`, `applied`, `res_id`) VALUES
(7, 'Victorina Ricaplaza', 'kk', 'hkukl', 'oilouilgj', '2022-06-08', 0),
(8, 'Victorina Ricaplaza', 'tssdf', '', '6ertwrq4', '2022-06-12', 0);

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
  `res_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblprecinct`
--

INSERT INTO `tblprecinct` (`id`, `precinct`, `details`, `res_id`, `status`) VALUES
(1, 'qw', 'qwqwe', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblpurok`
--

CREATE TABLE IF NOT EXISTS `tblpurok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `details` text,
  `status` int(11) NOT NULL,
  `total_household` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tblpurok`
--

INSERT INTO `tblpurok` (`id`, `name`, `details`, `status`, `total_household`) VALUES
(15, 'SAGRADA', 'Purok 5', 5, 0),
(16, 'STA. CRUZ', 'Purok 1', 1, 0),
(17, 'MARGARITA', 'Purok 2\r\n', 2, 0),
(18, 'STO. NINO', 'Purok 4', 4, 0),
(19, 'SAN JOSE', 'Purok  6', 6, 0),
(20, 'LOURDES', 'Purok 3', 3, 0),
(21, 'KAMUNGAY', 'Purok 7', 0, 0);

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
  `res_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `res_id` (`res_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `tblrequest`
--

INSERT INTO `tblrequest` (`id`, `gcontact`, `national_id`, `fullname`, `age`, `gender`, `form`, `status`, `res_id`) VALUES
(24, 'Grace Caballero', '098765', 'grace@gmail.com', 0, 'Female', 'Barangay Certificates', 'pending', 0),
(25, 'Chericel Bornea', '0987', 'chericelbornea@gmail.com', 28, 'Female', 'Certicicate of Residency', 'Done', 0),
(27, '', '', '', 0, '', '', 'pending', 0),
(28, 'chericel@email.com / 09123411224', '12344422211231', 'Chericel Bornea', 26, 'Female', 'Barangay Business Clearance', 'pending', 0),
(29, '09123456789', '1231312313', 'CRISTO RAY CORALES', 23, 'Male', 'Barangay Clearance', 'pending', 0),
(30, 'moy@mail.com / 09123456789', '22114433', 'CRISTO RAY CORALES', 34, 'Male', 'Barangay Business Clearance', 'pending', 0),
(31, 'qwe@qwe.com 091231234', '6434535345345345', 'Clark AliÃ±o', 55, 'Male', 'Barangay Clearance', 'pending', 0),
(32, 'jerome.aguilar@ctu.edu.ph', '9268', 'Jerome Aguilar', 25, 'Male', 'Barangay Clearance', 'Done', 0),
(33, '093473362224', '74843928i2274377', 'Cristo Ray', 26, 'Male', 'Barangay Clearance', 'Pending', 0),
(34, 'gracecrator@gmail.com', '0099988877', 'Ted Dragon', 22, 'Male', 'Issuance of Summons', 'Done', 0),
(35, '091155664332', '6684483363365573', 'Clark Aliño', 21, 'Male', 'Use of Barangay Facilities', 'Pending', 0),
(36, 'aimar.corales@gmail.com', '12345678', 'Aimar Corales', 50, 'Female', 'Barangay Clearance', 'Done', 0),
(37, 'jerome.aguilar@gmail.com', '92468', 'Jerome', 32, 'Male', 'Use of Barangay Facilities', 'Done', 0),
(38, 'Christianruden@email.com', '1234567890112233', 'Christian Ruden', 23, 'Male', 'Barangay Clearance', 'Pending', 0);

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
  `phone` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `benefit_id` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `stat_id` int(11) NOT NULL,
  `resident_type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=256 ;

--
-- Dumping data for table `tblresident`
--

INSERT INTO `tblresident` (`id`, `active`, `national_id`, `citizenship`, `picture`, `firstname`, `middlename`, `lastname`, `alias`, `household`, `birthplace`, `birthdate`, `age`, `civilstatus`, `gender`, `purok`, `phone`, `email`, `occupation`, `benefit_id`, `remarks`, `stat_id`, `resident_type`) VALUES
(212, '', '1', 'Filipino', 'person.png', 'Cresencia', 'Gingoyon', 'Empleo', '', '1', 'Campanga, Barili', '1948-06-01', 89, 'Widow', 'Female', 'STA. CRUZ', '', '', '', 0, 'Humana', 2, 1),
(213, '', '2', 'Filipino', 'person.png', 'Samuel', 'Gingoyon', 'Empleo', '', '1', 'Bolocboloc, barili', '1975-07-24', 65, 'Single', 'Male', 'STA. CRUZ', '', '', '', 0, '', 0, 1),
(214, '', '3', 'Filipino', 'person.png', 'Nicomedes Jr.', 'Gingoyon', 'Empleo', '', '1', 'Bolocboloc,barili,cebu', '1979-12-02', 66, 'Single', 'Male', 'STA. CRUZ', '', '', '', 0, '', 0, 1),
(215, '', '4', 'Filipino', 'person.png', 'Emelito', 'Gingoyon', 'Empleo', '', '2', 'Bolocboloc,barili,cebu', '1987-04-13', 64, 'Married', 'Male', 'STA. CRUZ', '', '', '', 0, '', 5, 1),
(216, '', '5', 'Filipino', 'person.png', 'Roseline', 'Tubid', 'Empleo', '', '2', 'Lapu-Lapu City', '1986-04-11', 64, 'Married', 'Female', 'STA. CRUZ', '', '', '', 0, '', 5, 1),
(217, '', '6', 'Filipino', 'person.png', 'Khalisse', 'Tubid', 'Empleo', '', '2', 'Lapu-Lapu City', '2016-04-08', 6, 'Single', 'Female', 'STA. CRUZ', '', '', '', 0, '', 5, 1),
(218, '', '888', 'Filipino', 'person.png', 'Michaila', 'Tubid', 'Empleo', '', '2', 'Lapu-Lapu City', '2017-04-20', 5, 'Single', 'Female', 'STA. CRUZ', '', '', '', 0, '', 5, 1),
(219, '', '999', 'Filipino', 'person.png', 'Randolf', 'Empleo', 'Sucepa', '', '3', 'Bolocboloc,barili,cebu', '1996-08-05', 63, 'Single', 'Male', 'STA. CRUZ', '', '', '', 0, '', 6, 1),
(220, '', '1000', 'Filipino', 'person.png', 'Rafaela', 'Empleo', 'Empleo', '', '3', 'Bolocboloc,barili,cebu', '2001-05-02', 22, 'Single', 'Female', 'STA. CRUZ', '', '', '', 0, '', 5, 1),
(221, '', '100', 'Filipino', 'person.png', 'Rachel Ann', 'Empleo', 'Empleo', '', '3', 'Bolocboloc,barili,cebu', '2005-01-29', 17, 'Single', 'Female', 'STA. CRUZ', '', '', '', 0, '', 5, 1),
(222, '', '102', 'Filipino', 'person.png', 'Servando Sr.', 'Canete', 'Empos', '', '4', 'Bolocboloc', '1971-10-23', 68, 'Married', 'Male', 'STA. CRUZ', '', '', '', 0, '', 6, 1),
(223, '', '103', 'Filipino', 'person.png', 'Cristina', 'Dela Cerna', 'Empos', '', '4', 'Asuzena', '1974-10-23', 75, 'Married', 'Female', 'STA. CRUZ', '', '', '', 0, '', 6, 1),
(224, '', '104', 'Filipino', 'person.png', 'Servando Jr.', 'Dela Cerna', 'Empos', '', '4', 'BPH', '2001-03-12', 22, 'Single', 'Male', 'STA. CRUZ', '', '', '', 0, '', 6, 1),
(225, '', '105', 'Filipino', 'person.png', 'Christoper', 'Dela Cerna', 'Empos', 'MOY', '4', 'Bolocboloc,barili,cebu', '2002-04-10', 100, 'Single', 'Male', 'STA. CRUZ', '09398019721', 'qwe22@gmail.com', 'OFW', 0, '', 6, 1),
(226, '', '106', 'Filipino', 'person.png', 'Khecia Mae', 'Dela Cerna', 'Empos', '', '4', 'Bolocboloc,barili,cebu', '2003-09-17', 19, 'Single', 'Female', 'STA. CRUZ', '', '', '', 0, '', 6, 1),
(227, '', '107', 'Filipino', 'person.png', 'Kenneth', 'Dela Cerna', 'Empos', '', '4', 'Bolocboloc,barili,cebu', '2006-09-10', 16, 'Single', 'Male', 'STA. CRUZ', '', '', '', 0, '', 6, 1),
(228, '', '108', 'Filipino', 'person.png', 'Germon', 'Dela Cerna', 'Empos', '', '4', 'BP4', '2013-06-14', 9, 'Single', 'Male', 'STA. CRUZ', '', '', '', 0, '', 6, 1),
(229, '', '109', 'Filipino', 'person.png', 'Miguel ', 'Timagos', 'Carbero', '', '5', 'Bolocboloc,barili,cebu', '1966-09-29', 79, 'Married', 'Male', 'STA. CRUZ', '', '', '', 0, '', 0, 1),
(230, '', '1010', 'Filipino', 'person.png', 'Merlinda', 'Francisco', 'Carbero', '', '5', 'Mindanao', '1972-09-11', 80, 'Married', 'Female', 'STA. CRUZ', '', '', '', 0, '', 0, 1),
(231, '', '1011', 'Filipino', 'person.png', 'Anna Marie', 'Francisco', 'Carbero', '', '5', 'Bolocboloc,barili,cebu', '1994-06-20', 73, 'Single', 'Female', 'STA. CRUZ', '', '', '', 1, '', 1, 1),
(232, '', '1012', 'Filipino', 'person.png', 'Marian Joy', 'Francisco', 'Carbero', '', '5', 'Bolocboloc,barili,cebu', '1997-02-15', 64, 'Single', 'Female', 'STA. CRUZ', '', '', '', 0, '', 1, 1),
(233, '', '1013', 'Filipino', 'person.png', 'Renand', 'Tecson', 'Padin', '', '6', 'Libo Sibonga, Cebu', '1991-05-10', 43, 'Married', 'Male', 'STA. CRUZ', '', '', '', 0, '', 5, 1),
(234, '', '1014', 'Filipino', 'person.png', 'Michelle', 'Carbero', 'Padin', '', '6', 'Bolocboloc,barili,cebu', '1991-09-23', 36, 'Married', 'Female', 'STA. CRUZ', '', '', '', 0, '', 5, 1),
(235, '', '1015', 'Filipino', 'person.png', 'Khan Rey ', 'Carbero', 'Padin', '', '6', 'Barili Dist. H.', '2012-09-23', 10, 'Single', 'Male', 'STA. CRUZ', '', '', '', 0, '', 5, 1),
(236, '', '113', 'Filipino', 'person.png', 'Elesio', 'Escandallo', 'Tenebroso', '', '7', 'Bolocboloc,barili,cebu', '1975-11-16', 78, 'Married', 'Male', 'STA. CRUZ', '', '', '', 0, '', 6, 1),
(237, '', '114', 'Filipino', 'person.png', 'Genara', 'Escandllo', 'villarin', '', '7', 'Pinamongajan, cebu', '1976-03-03', 76, 'Married', 'Female', 'STA. CRUZ', '', '', '', 0, '', 6, 1),
(238, '', '115', 'Filipino', 'person.png', 'Ma. Elna', 'Villarin', 'Escandallo', '', '7', 'Minglanilla, Cebu', '1997-02-16', 25, 'Single', 'Female', 'STA. CRUZ', '', '', '', 0, '', 5, 1),
(239, '', '0', 'Filipino', 'person.png', 'mdn', 'dmn', 'ff', '', '1', 'Bolocboloc,barili,cebu', '1997-12-09', 45, 'Married', 'Male', 'MARGARITA', '', '', '', 0, 'samok', 3, 1),
(240, '', '130', 'Filipino', 'person.png', 'Elezar', 'Villarin', 'Escandallo', '', '7', 'Minglanilia, Cebu', '1999-07-10', 24, 'Single', 'Male', 'STA. CRUZ', '', '', '', 0, '', 1, 1),
(241, '', '132', 'Filipino', 'person.png', 'Ergel', 'Villarin', 'Escandallo', '', '7', 'Bolocboloc,barili,cebu', '2002-07-09', 20, 'Single', 'Male', 'STA. CRUZ', '', '', '', 0, '', 6, 1),
(242, '', '201', 'Filipino', 'person.png', 'Sebastian', 'Flores', 'Escultor', '', '8', 'Giloctog, Barili, Cebu', '1970-11-20', 78, 'Married', 'Male', 'STA. CRUZ', '', '', '', 0, '', 6, 1),
(243, '', '202', 'Filipino', 'person.png', 'Tolomia', 'Marilou', 'Escultor', '', '8', 'Manila', '1979-12-13', 87, 'Married', 'Female', 'STA. CRUZ', '', '', '', 0, '', 6, 1),
(244, '', '203', 'Filipino', 'person.png', 'Kathleneshane', 'Tolomia', 'Escultor', '', '8', 'Patupat,barili,cebu', '2004-12-06', 18, 'Single', 'Female', 'STA. CRUZ', '', '', '', 0, '', 6, 1),
(245, '', '5555', 'Filipino', 'person.png', 'BALO', 'Altamera', 'BANSOY', '', '1', 'Bolocboloc,barili,cebu', '1990-12-31', 23, '', 'Male', 'MARGARITA', '', '', '', 0, '', 1, 1),
(246, '', '1444331121231234', 'Filipino', '02122022034618icons8-literature-100.png', 'Cristo Ray', 'Magsusi', 'Corales', 'N/A', '1', 'Balamban, Cebu', '1998-10-29', 24, 'Single', 'Male', 'STA. CRUZ', '09553332322', 'moy70@ymail.com', 'student', 0, '', 2, 1),
(247, '', '123456', 'Filipino', 'data:image/jpeg;base64,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', 'veronico ', 'gonzaga', 'alquizola', 'nic', '10', 'bolocboloc', '1962-07-09', 60, 'Married', 'Male', 'STA. CRUZ', '09104935212', 'veronico@gmail.com', 'secretary', 0, 'igit ka', 3, 1);
INSERT INTO `tblresident` (`id`, `active`, `national_id`, `citizenship`, `picture`, `firstname`, `middlename`, `lastname`, `alias`, `household`, `birthplace`, `birthdate`, `age`, `civilstatus`, `gender`, `purok`, `phone`, `email`, `occupation`, `benefit_id`, `remarks`, `stat_id`, `resident_type`) VALUES
(248, 'no', '2854905861873108', 'Filipino', 'data:image/jpeg;base64,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', 'Cristo Ray', 'Magsusi', 'Corales', 'MOY', '1', 'Balamban, Cebu', '1998-10-29', 24, 'Single', 'Male', 'MARGARITA', '09398019721', 'bleanzh.corales@gmail.com', 'student', 0, '', 0, 1),
(249, '', '9180234', 'Filipino', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gHYSUNDX1BST0ZJTEUAAQEAAAHIAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAACRyWFlaAAABFAAAABRnWFlaAAABKAAAABRiWFlaAAABPAAAABR3dHB0AAABUAAAABRyVFJDAAABZAAAAChnVFJDAAABZAAAAChiVFJDAAABZAAAAChjcHJ0AAABjAAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAAgAAAAcAHMAUgBHAEJYWVogAAAAAAAAb6IAADj1AAADkFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9YWVogAAAAAAAA9tYAAQAAAADTLXBhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABtbHVjAAAAAAAAAAEAAAAMZW5VUwAAACAAAAAcAEcAbwBvAGcAbABlACAASQBuAGMALgAgADIAMAAxADb/2wBDAAMCAgMCAgMDAwMEAwMEBQgFBQQEBQoHBwYIDAoMDAsKCwsNDhIQDQ4RDgsLEBYQERMUFRUVDA8XGBYUGBIUFRT/2wBDAQMEBAUEBQkFBQkUDQsNFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBT/wAARCAD6AXIDASIAAhEBAxEB/8QAHAAAAgIDAQEAAAAAAAAAAAAABQYDBAACBwEI/8QAQhAAAgEDAwMDAgQEBAQFAgcAAQIDAAQRBRIhBjFBEyJRYXEHFDKBFVKRoSNCscFDYtHhFhcz8PFygiQ0U1SSk6L/xAAbAQADAQEBAQEAAAAAAAAAAAABAgMEAAUGB//EACoRAAICAQQCAgICAwADAAAAAAABAhEhAxIxQQRREyIFYTJxQlKBFbHR/9oADAMBAAIRAxEAPwD4XRgntbJVvJ8VK0BwGLBCv171XSb85DuClXH6jmpAgiKjbuz9+abB5aSf8iWWRLq2fK72RcjbzS0nUcsM7qtsZJFzx24pgkje3kWWNmxjwMA0P1nQH1JUmgOG8kD+1PjhMfT2rki0/ql47lQ8hW1mHt+VPkVpc3cWk6gbqKQyWs3DY5wayXp8z2QhcEtH2dRjNT20Fo1l+SmAkAHk8ign0ytx6RMwTWYEkiuJIo/GB/rQTqDS2D+sgkkmHAMS5JFEkVrLbFE2Ij5bjA+lWmuY2jGHHFJW4T5NrxwKUNtd6jmGWNnVRhWlBGD8Va07pl3uDHOGhg7EK2Tn5ppiEcsRlj4P0rdiW2kDCnvjvR2jfI02ogyPo0xyxxyXbvCDlRgd6nvujraVmkKv8lQeD+1Ht6tZ7ly8yDHA8VXS5TaWkDNjnjjFdtSeRVqzq2C5Ej0fTo4rTasj/wDDzgr9aE6VpM2s3MjsGktY29x/natdZle6kaWNv8SVvTVR8fNOWgWf8P0YBiI2HjPH3zQ5YybSc3yD3t0trfai+1B+jFUWVZRlMLirt7rm9SiI03PGwAqPsaCXOtRwrhonVz4K/wCppsLkXbeXybXlqtxGVY7lbiue6naflLlkVTyeKdXu7uUepHbqwPYlv9hS1rkVxvEkgCZ/l5pJGjSbiwEYWJJI5zU1krLMoztycVZtk9cOpUhl5BrxoDHKDz3zjHINKnZV2N1nH6duY7mNkkH/AKb4xkfTNANSiWPUkcElAeCfNM9lKmqWKK0hcKoGDzjigGtW/tJA3BP8wpciVXBcBTdnlx5weK1vXUiKTJBRsA1FaSCZFYZ7cipb0CSzIIKkcrxzSuL9FoSp2dD0LWI5rGP3DkYOKeenNUijDbeWI4A81xnpy4ZoAE5XGDTnpV+0EqLGcZ+RzXzWrprT1mfsf43zPm8SLG3X1Bb1GYZbuBwc0qTXiW0MoJGMdj5oprN3LJErj3/OaXPXgjvIjMCsKsC4ftikjpqUqXZr8jyHHScqqhMvbGe8uGMNq8hJOCiE5ohp3QuvamSsOmyYI/z+0f3rs9v+InTdkqiO23OBxsjwKlP4wWMTH0tPZyP52x/tX0UNKo1R+K+RrS1ZttHLdM/B3qCadFlg9MDtvPAprsvwSv5FAnukhxweCwH96MzfjDO5IhtYkznk+6hN5+JmtywssNwIsnxGM/1NUcE+TI5PgL2n4G2lswmnvZZWBBwBgH+pp4t9K0yws1jLwxlQPcMVxm7611aQFZbmZsj64qi2vXE6gPK5Hfk0zihPszuFzqul6ehZruIADtkHIoJc9e6NGCEb1Np4AHmuO3GrOUOZu3BzVObUoCCC6nnuDRaQHFPKHnqDqCLqC8EqgoqqQCaDG4CMGJYHxxVPRtsqowO/IyAKMtEY/fswv+lUikkeTrV8ltFHLFwQCC3wK2Nq5UljtyPjmrZBmUEAA14WCIoA2/JPmnUaIbqeOylHYraqff6hP+bHIr2VQ/DD3A8GrErxbQoVlzzmoMEsBkPmhVOznKUn7K0lur9yCQKhFuVYsX4PjFX/AESBlRgduTXkqsgyGHIxj5oOmx3KSpMoGIFjnaD8DzU8QOMKML5BqImSQlQARnvUjxtEo4OCORQjHaK428ZJdufBH0zWVHuPx/rWVXc/Ydq/1I4XbT7veP8A0m7gjxU93dK+GLbgOQDwBVG5H5mFth9y/wApzW2l3aTxm3nYsy/pCDJJpk0nZ6Si2sIJQztJb7V2yRkcxnuPtWsMyB2hVDC55U5yCftQSWaSyviqDYPgAg1ZOoxzSe6Rlk/m7/71z5wMky3NcPKD6khSVOMhRiheoywRKXlZQ386Ctb7VIV3OfjDGk7U9V9ZtqsDGDnGak30NGLGCbWS6ZRd4H+Ynn+9UbfWlLEOQq7icfH9KWZtSdgQOB8CoPRnmUFQT811tos4XyP1l1DBE7APlMdvFSp1JbksoG4fXOKQoLe52ABSfpjvVxLS7gQEROQf8uKG47ajoGndQosgKSFcnvRDUtQa7sJGPvIHG0ea5VLc3tth2Vlx24q9pvUcjuPUlMW0cDPBoqVkpaXY4aNoc1xPBdSK8IiyQpXcWJ/fjvV/XtSD3cVortJ8ggf04pci6rmvENrHciFT+pgef+1U7iSWG53LMJWU5VlrsJFIxscorBreImRwVfsPiqK2sUhkjlAkQ57k8VvYa/HevHFNiN8cq/H9K1v5o4JNygbef0+a4VrpYFO8SS0mmhjfcgyQPihNxO9whR1O3wQe1H542lleRYvV75AoLOiXUiiGBiBwVXk0tMvBcNg+0AWdfUyBRk2JeLIG8d8mhMsIWRgM4z2PijVqont0w2fBFJZaaumeaZObW5Vd2E+KK6jpYvFOJk27c4BGc/HFBni9Obg7STjBovpUPq4USiN85YN5rrIsF6WGjikixyGxzycUUkYfltjrlj8Co5rNbHV5VBVxINwOeKzIWU7hnHcDxXDJmdOTtHO8QOB8Cma2uvSmHpsCw7kdqULaMRalw+wPyDTMD6UJw+T3zXi+ZFOdn6L+A1XPQ+O+Bmk1N301vWUrx3HNKGr6mHiUSDn+bzUF5q9w6ekJCYv5c0H1G6aVVHAIGDUdHSe5M9fz/IUdGSsunVo1QBDkjvx3+tbW+tGPOAWb60Cydw2txViOJ8ZBJY8nFe3wj8pnnLDD9Qf4hVVUkcgnxWp1qWQZQKp84zS+59O5zlckZNXEUEKdxx9KOGRaoKnW7pEOHIz4x24qu2pyzswkkZvtVcKZMgk+0ZFavHiRcHBPyMUUqR2CdmZUJOcHkgHNU5JZHXdjIqw4dRkkkHyKhkyykLg4oPDuxHfY39GI7W6tuOTkAEYpskRolLY3A8EZpX6L3flFxjOSccZHFMd4+yJRkqxOdvzVU67PF1ouU+DI1yuF4XHYHmopQcr7QvwakEmxQXU4IzuFaw7pWUBuAMmnarLIWldG0sI27fPkeDVcZSTGzt8irc6iM4BAAHYVVJXuWAY9h3ocjR3PghuiRgdxnz4/vURBAAySD5z2raFC8xeRsDsCeBXk5Dc5HHj6V38Tnd0j1YkAJAJ+CTXkrkQlWBJ7Zatm9kORnJ7fNRKTkchlHPPBo3Z0U8s0EBIHuP8AasqU4yf+orKY636/9/8AwDaZew3EDOCFzwysOM1PMjJKG3lSvIKHAP2pPtZW0q7wykxE8g022xV0jYP7iMgD4ro5WT15QcX9Te8KXsG8TFXX9Qaly5ujEsnqzAYHermva2+lMy7I5C4+tI093Lcszs37VzeQ6cHyWb/U2kYoGyPmhpPJPzUkFvJcybUUsx8AZNNui/hdq2rhWZPQQ+HyG/pU3JLk1xj0hUto5JHUKCQfpTjonS93eFAqOo4PAIrqHSn4RW2mqryqJGAyWcZpzt9EFgoESQkjtkVNzk+AtLsUekfw0ZsNNCA38wXOa6HafhRYXEeZ4gR8lc1pp3WNvpEojvYRCOBvByP6U/6brmm6rYrLaXCtkdlPb9qoo7uSDdPBzjX/AMFdNa19lupI544rjHVv4UR2ryC3IWQZIU9q+l9X6ke0DoAH4xnxXLepNRW5nZmA3Hse1Tn9cotHJ82XumXelzEOhXnANWtNv2eQAt7weMCumdSaHFqEPON2DgrXNL/R5tLnLLxtPcDNdGafI218oLme4tpTHy0jHcAwzmpYbi4S69KS2DOcYQrtrTQNTtRdRtK3uHIcjODTjcGOaNJyVbJ4bA3H+lVSb4IuX6EW+F1HNJuR4884BNVliubZTOodUPZhTwdWs1dIpH3RMcEg9j9asXunwTW+BHmEnnNHb2d8mKaOX3EUpkJOFB+QaL9OXKndATtJ+Fo/qejrc2pVBtK9sClSwkWy1BSQc5wQTSyVPJeMlOLQYu4BFMMNnzg0RitlvIAVYrJj4wGrXVbTfGsythSP055qbR4luLbYhCyqecnuKEl6IRYHvxPBJE7ZIDbcn4qzEPzScYxnk4zW+voHRgeCBjA+aqW7t+XjwcA4zz2oXawUqjL2PZdQvuJA4NFvzvYK2EI8Gqb2nriM7gfcDVe8BspSv+UcisHkxUmkfW/g9T44zbZrcSnLFew+TQmaVpHIY4P0qW4uhISATzVckL3BzQ047eTR+R13rQaizaNXycDtxV2NTtyG5HyKhii9ud236Zq3HGPS9xwa126s+OdMo3GGnQluO1WoyAijdkeOKjuRnacYCnH2qUAIFKjg85+tC2ybRYVMnxu+K9uIHJJOBzg4+a9t1wTzz3wR3r27AWJSeFOP/mmVoGCIptiAJ5PwarND7G3bgR2q0AGIyML35qJ3dkOSCo8GilkTI09JK35ZOSO/emG4U3Esa8nP14FAOlpAlpH4yDnFMProZl5/QO/yaqjydZveSvHtQLgALW9qsgb3c581HLM5249xxyQO1apI6qxBK8cheKN3hmVxbwjaeRWnKnIwMEioCwcuqc/txWgf3PvBIP1rE2PkbTz/AGovkXC+ppESCeMftXjL6jkkg/erDOqQd1J8EN/tVRJFUkg5o4BUt2T0ghyN7KAfHY15I2EJUc/JFRhi0ud+5Oc5FeyAKnB4z580P7LTXs9Hbl1zWVDsY8hePvWU1/sTf+iLVOnLHUoGYSkSgd8DFL+m3xsZWtZRiRM4JPamOdDbESxkmA8d8gfSgev6aWH5uMjeoySPIpXXKPZi6xIWdTN3qt07hS0e7aGxkfatdK0CbUbpYFiJZjjJrpfRN3ZXPTpSaFBLE5IOByaYdLsRe6k9/MA1xMdxfHPjk1Ny5ZpjGsIs9C/h5ZabCjyxJJPgHcQK6tovSX5hSwC8D/KKW9Ou0t1XJB+PvTfoPW38JD7DG25drAj+4qUfs7ZV2lgX+oLYWmYGkZBjGVOCK57d6nrPT96rSS/n7VsksuMqPsTzTv1feDVpmkU8sc8GufazYXN1bvHHGzofg1R4dCqLkr7N9a6x0zWog0TbyPacjaQfOR4pYsuob/p279fT5iqE8op4Yf6Upaj0vqFpMzLFJsz7QE7/AHp86Q/D3Vb2xWW6tykTZI396bc4iqKf8hotutjq1mGYnJGTmh95eJOzZIJ+O9Yenv4LE0B9vOeKrGCKNW7O4Oe9RlnktGrKk0hIYe3A+lKfUcEcyOUByAcimG/mADHse2D4pT1rUdoIUsDnt4pFFeiiqmI0kjW87BeMHPFN2hdQxPbKtzNtK/zD/SlK/f1LhmOM/So4nOCBnH0rWnSszOO4ZtWvY5p2aBgUJyfrTpol5/EdPBRiwRQCDxg1zGISzFURWZuwAGTTt0vbXOkxyPdxmNW5HP8AtQi23Y2pBRig1cBUSQycIvyaQdQ2PeMUGFLZFMuq6i+olgrGG3U8kjml+/s5vRM6IwgTgMw/V9apJp8Iz6be6+g5Zzm5sQHJBUY4HFVoJ5LKYsnc9s1D0/IGzGxwG+amvYPRuFAZsg8nwKnyUktrN9SuHlj9oy55+9DtPbdEy59ynGM0TnVTbqxYlxycLQ219P8AiAIYhG5Ix3qaVcIN4CEKvFMgfIHyKzqGJGZNrE+0eMVNLC4bcqkLxt3ZOaFX99JckKygbeOKz60cpn0P4qcNs4PsGgFXwMN9TWzEswUd/PFbgLyBnNaICWIP6cdqWKt5L+VJaek0nlk8aZIxg8eeBVpFxtI8d81DEgXlvParMZIwpBx8g1W6VWfNtFa9JA4weeMVujb4gCACO5rS/kUA45Jr2Fkkj7lTjxxXdfUVpG8LPvIOXz2Ge1TzMfTDMMfY1BGrghVyfuKm/LXMq7FibB7e3zTXZ39EP5jgEDPzWS4IYsMjxzV626Z1S4OIraV08nbROP8ADnXLgD/8MyrnvjGK5i2EOmpC9lGAufbjNHZGVNp2ncPPihemaXLo8XozAb14Iq5IzY29xn7VVSR4+s7nzwemVi5YDg9/Fes7ZIIAH3qMbd2N4A+gr0uUHtPtP+XHeqN2rRBpLNHpfIHGU+cVq8m2FgDtbwAO9eAh2AxuqNlBYnJAHzQVMSknuXJGZ8xbSBkeBWu/epHYd8nxVm3tnuWIt8fUk4qz/CwoYPLEAO+5qG5RKVatcgsS5lH+YV67+ouSOO2RirLW0AmK+ruHkoucVMy6bFtEk0zcfpCAf7mpPU/RWGk2wXiQ85X+orKLfm9LP/Bm/qKyl+f9Gj4f2BYLzchV2LRt3DY/riqd05RjaM4IPKMB3+lJ8+tXSsUWQBfiiGhXMl/qUCyLkLzuBrRuVWjVsyOOh6LHYwJGp98p3OKf7K0MEChQQQMftSrp7k3m4DeqDH0prgvFUDeApxisrk3hGuMaVlS/u3slcbww74HNC/8AxO8asfUI58cVb1CYyvsULgn9R7Vc0zp3SpJRJdSxse+wtRtroO61TFq56xnlO2MmQD5pj6Vk1DVTu9NhH/M/anODROm5bNlihiEuB70AzST1D1DrHRDh7SBJ7LOSVHj4qtWcpUqOraNokF5bqtzDGCPoOak6g1OPp3T9ihCDwARSRo/4n2d1p6+pDtkdNwIbBBpF6+61N0QFmJUHhQ3NddZBVvLK/VfWrXNy+SAfgUtx65cKDIjAkeDzS/eSzX8wK5Oe5FTxX0EX+FOWLgYDjgZ+KWOWGX0wEbjqNbgOki7ZT8Utahc5Y+7g9twqxqMUd1E0ikK68gqe9AZrltmHAJo0mxV6K1y+5/H7UZ6SgjluX9XAj7E+RQJiSSRxn4opocRdjtV3J4AUd6rwJK6wPkWo2OnRlYgJHz7QoHJqG7MkrK15IU3nK26D3H6Yq1oOkMyhmha0U8b39z/tTXZdOWVsTMrG4mP/ABH71RQcngyySX8mKdpoktw8ct6gEI5jhA/uaO3GnRajp7wCLaxXgggD+lH/AMuh4Ad+PiqtxpbMBJCmADnB71eOnT9oDldHIEMmmamUYfpbBNMd1aobcSk5J5+371nWliPzQmSNU3d9q4ya00xgbDI93yD4rJKO2VM1ye6KZEEXZ+rLNwfb2oZeW7QSJMmTtPOFzRpHT0yQDhjnHY1FdbmjcKQHI/SR4oP9CIngDvbocBQQc0F1C19GbCqSG54orZXZlijG7n4UY5qrqDyNKr7MYPOPihJKSqRbS1ZaMrgCYrXe2Rnb5yK3nsXadFjyzHxii62yGEuOHI/mqr+Ze2mikGSVPY0sYKKLa3ky12G9E/DjVNXAZQqDvudsY/oKarT8Fbx+ZrqNB5CjOa90z8RHs7GKK3hVJMDLHmiT/iTqEloU37Sw4cAZFLuszZ5I4vwVgTBnuSU7EjGakToDSNKunDx/mowOCXwf6UGm621N0aP1Pa3kgVSbqC5mJDSkDt3xSSxwDnkc4dL0W0O7+GCPHO4jNWW1nS7RGC28Kt9ga59Pqs7EgzMVxzls1Wm1KBIveWYfJNcsrJw7XPWEkZJikijT+VFA/wBqpSfiBOibfWOfgAf9KRJtTt3QlFbNUzqIdQ2ASPOKNKzmvQ8xzXGrSvNsaQk5yq8V7NZXCOfU9v0JGaAwdealDaJbRy+lCq4wigf1IoZcazc3jNumL88EmqJx4o86XjylPc+BrS3kaTClOOSWYDH9aySWCLh3Qk+QRSU12553sSB5NRNdPge/3HuATRboL8Zsa5L+HcQLhFI4x/7FVrvWrWFSouDI2PC4pRnd8k5bvmoVeQcthv3zQu1kdeNFdjfZXouR6iMwCnPergmOQQxb6Y70K0VWWzUkbd3YE80QYtGW2YIHhqzzlcsFI6a/iyX80IOBj5IxVd7t5ABk5zjtVfMjkjeOT9xVhyYgob3EDhRXOllhS245K4e5A4PH/wBNZXvqE8/71lVtewWznatuYgD6ZJNOHTWky2Bjnl9hkHCnjioegem7fU71nuJMCMgqgHf/ALU29Txfw4xFMGMefii272o00kEtERpi+eBnuO1NcGlNIgZiAD58Uk9N3qCNTvzuPmug6e6TRDDbQR47Cpxd9jcLBDd9Pw6hauglZDjAKnGK5tqvTeoaDfRPPOzWjthbgscD7mulamVtIjhuBzweSaVrjqSG4tJ7O8G5G7Bxj7d6pF5pDwim8suRaVrmmQpNbgarb7Q7SWh9QIPqRxQ3UOqEuIWWZtrY9y85FAtP6k1boYTyabOTYXB/xYT+k/X7j5oXqxTVUN7BKXkf3OoGT+9UpdMLTi/sQdQam1s6/k5BsbnafFUJJp7+KLeAZPpVG5Y5y23nzV3SIx6qPg7RzwM0jsZc0Mem6H6UaEgqWHJxQbqjRJgTMEL4HjtTYt7GbdDuxt4INQX+rxy2rLwyY7Yqe6S4LuEGs8nObSV0jKkEDsQD2oZdOGmbBPeiOpuIJJCnt3HsKG21rLezLFChkkbsqirRXZlbxRZ0jTZNVvEhRSw/zEeBXUtI0WOzjEKoPGQBVTonpDUbVfZYPI57ntk09S6JfWL+nPZG0YgH/FIUft81eKtmPU1EmUo4QI0J3AA9gM1ft4pHO1M89iR2qJ7m3s1Cy31ojHuTKo/1NQzdUaLbsRNrtvHweQrOPt7FNaF9OSN7uA0LMx4zKpb/AFrWWGWEBpEUqeQSRk0ozdeaEiN6c97M4OfbGqqw+h3Z/sKoXn4h2MibI7SXd/PJLx9sY/3plqpZZ0YSC/VkdtqFmyJEDIoyG+tI+iRyM0qPE0adsjjNWLjrWaZisUcca/IGT/eh0evXD3KNISQDwPBrLqam40QTjgIXltLE3tVsjsPmtSzsmSMY4J8iiU0yzJuy2fgULmkV0bYxDHv9al/YqeSpZu0M0yHgqcj7GppsPbSE8vjJxntVEkC5yT+oYwRU6sSGBbkrwCK7PCKtYNIbppB+hlQDuMgVXuZGK98AfIqskkqFkXsD81sAZYm3YPFBYO/Zul+V47nsM96sRahMvHqHH/NQdsgjngfSrAO1B7uaVjLDCTalK2B2A4JBNV7W4YtJuY7iexPFRw5Bz9PNeRuBO2SFz4FTd9DBeG5faygEfbINey59PBUhv5s5qkkrZBycHirBfchyueeMd66nYKyUjMOVALY7EV6ZVVD5NezRhWBUKV5wPn9q1jVBkuAM1zj2gqiRCXVf1Nmt1HpsC2QB8GqzOFJKkg/GKsLMHPOCKCTBdkrEkbgRj4qrKpyGwQc/tUzyhm2+3P1qGWRQTj9IprpAK0020Es37itYSWKhc7Tzmo7hxztJ5qxpXvuY0yd24A5PFMl7Of6HkRJb6XCduSABjxVMPtB9xHgYovd4XT41A2rjHHmgDTKqEcrj+YVl/k2iStcEaB3mbLYXPAJrae8KNtxgjgk9jUcDelHIxy4+RUXpvcKGG76ZHj707uTt8FOskbXsu4+09/j/ALVlT+g//L/Wspf+Db17Few1e6t7gSQlgQe9Ol1qf8f0vDuiyqvK5yc0iZyuMgEd9taJeyWz4R+SMduRWuUb4YkWvQf0zW5NPl2sysQe1PXTvV6uuGYDnkE1x6a6eR9xbLZ7gVestQkiYbZPGCM4pdtIsmzuFzrUV1EQGGR33NSXryo8nrRuSw5PPag2mayyg7pAV+M5q1daissTjJQnwo70tMrjmyrNrdxFF6Te9D4xxQv+JT2kxNvwGGGXOAasyYbAbJ+KrMFJyTn7110wt7lREu+4DbgEPwBRbT1/KKpD4/5SM1RLqCMHGPgd69N+AAvB+3ejbXAIquQvcXRbn1OfhjxQy5vBGpLyYA7fBofdajhSM898E0Ld5b18s3A+a5RvkMtRPhGt3ctdS7j28Cimh3k+lMZImCufIAzVa2s49uSCW+tWv8pXvjt9qdvpGe0w1L1bqXBN9MFxyokK5/YVTvNWubkFmmL/AFYn/rVKL2sSGyAOR81ArtvKjsO3Peucn7BS6J2nfYMP/SqVzIZkOMAjnFSGULyT+2MVDKQgwpXLeRQyDFmsFwxwpPNTySFSDuHznNV49Plm/wDTBYnkADNZLY3MPDRyf/x4qgSyr5OTwRzUy3DqFycD5NC1d4mw3f4NbtMGXg/sKRo5jvYX4e3QZBY92IqvM5jm5I9M9jQnSrgsuCSuO2KJTI0ic/HANPwSwsEF+OElBHtPcHmvFm3tksOR3rwQgRMGyRjFUsmFRv7nnbSZ6HwbTEwSt7g/2rVrnPuJC4HfNVbu5UDhQCT81SNy+RyPtRSfZyVoIF8kkNuH3r3dnGGIx8mhfrHdkcc+K3WYq+e+a6hqYWSTcvJ+1ao2Lk8jB5xVJZX75H2FSKspOdp57ZNTp8M5MKi4CkKDgDxmp1ukc9wuKGxWs7gbQzMfG3NELXQ7+5G2OGRh87aZJ9jWiOWQt2YEA+cVCZwFOTj4BoxD0dqLMqmF1J+TiiKfhzfsu6VoVB/mbkUu3oVvIqi4Yx7d2fJ4zWpmC+4gjHkHmmuXo38qAZLqIL8LzVOXpqCMgvdptPcAUeDrQAMpOG5+gJzWj+qqknGD4PcUfXS9NRgTNIR/yirsH8HiJxbO5H8x4NLuS4ObE5NzKc//AOeKL9PWjNqkLEHvwKPx6jZWbFobOIfU8mp7PV1nuiDGiA8+xcGi7awJYR1iQvEigZb4NVo+n7m7t0ZUYhs4Ge9WCi3UqNvAQHOPNS6lrktqixxtsVeAFrO3s4WQVTReh/D12s45Z547YEZ25BaqUmjw2rLDHMpj8uTVJtbMsChpOCe5+ap3N0ZJwAzM2OGzgUqUmyidoYP4Vbf/ALtP7f8AWsoDz/8AqL//AG1lLs/Ym05eSTn5/vRnQLCy9ZbnU5XSxQ+5YwPUf6Ln/Wh2nCL8ypmbag5Jq9ruo2utXsK2FgLKFI1jWNZGYuwHLkk9yeeMAeBXqYrIzT4RBrGoRahdstrD+Wsw5MUWdzKCfLeTj/4qkgEb4znP0pgl0WHTrBWcZue7c9qAXLb3JpLUh/0WI5ihz6m34zVqPVsEAsCO2TQcknuayhtDwGX1Ld5Gfvn+1aNdjbhm5xzQmrVstvIAHdo3+cZFLsURkywbzYoAUn/eo5Lo8Z/V3qX+E3EuBARcgDj0j7sfbvVQxtFLtkjYEHGCK5U+ANskYCVATwfqK8jYQMFbDA8itGLKD7T35FSMjJCJGUYPYZ5H7UUmIW423KDk881uxIGSCD9DVFbtduDwT/apDckrtG8j4+aSshRZVxvycYrWRkDbkPjkCqwmIAUJj6+ajcmQYC8+cU1Ab9k3/wCZk2qQBngd6fug/wAJp+oZBcXhEVuDjGOWqh+HfScmq3RmmhLW0ZBJx3+ldp0yTUFZbfTIEhjHAaT/AKUJ+kGC7DnTH4QaNZwgsgQceOT+9FNQ/DjRo0YRwxnI7kc0IudX6t6RkWS5/J39qRn00DZ/2xR/SOqLbXbT15YTbSH9S5yAaRQaKb1LDRyrrf8AB+wuYpJoFWOXuCtcG1nR5NFvXglGSp7+K+pur+tdIsozGwld8kYXH9a431m9l1FbPPa4aRPGPdimjuXJ0tlYZzvT5/SmVjg0xLMJ4x7wuOcUvRLtf0ygyD8UQmkPoDGVJGCe1WRnZJPd+kcDbk0OvLiWQjgYrWRkWUFuT8ZzzV+0sn1A7I1OP60OAJZBXomTJ5JPbaM1i6dMduY2wfOO1dL0P8PJFjWWaI7GHA7U1Q9Bh4lSKIkEdsf6VGWrGPBeOnJ5RwiWykicgoQucc+Ki9Lax5I+PrX0LF+GFq4ZriJiw42kUs9Ufhdbrua0Vgw8HtSR108PBR6UkrOUWrxp+vLY5xTj09qel26bpbdZZM8buaWdS0qbTpyk0ZBX9v71XtrhopAvIXwCavhmZ+jqX/ia2gA9OzgTPOcVn/jaUoVjhRT4wKQYbl5G/lAq76wKg9j8nxQbC1aGObrCeVcNIUbzjxVG66juZCcykpjyc0FjBKO2c89/pWhcREKB4zxmleEGleC//EZGKuzEHk9+9RSPJIdy5H1PiqwYS4AXaR8VLJLsCrgg/egq4fIH7Iyj4BBIUecVjPiPgEN81M0npjkHnuSaryspA5PH0yBSuzk7Vlf1Xy0fY/Ir2C7nicbAwzxk1Aztl2UnaOOK29ZpACNxHYA81ZCthFOopYyFbK4/zA1YGoesMucnv96ElHlTlMN84r2NHWTO7bjx81zjfB10HoJI5NnqYUA+1SKspPHFvJClu3BoVb3KDC9yO+OMVObqNiB7sHycVOUV2d/RZ9PdztPPNZVc6iVO30844zjvWVLaduYiEk1JBO1vKsicMOxqOsraVCZ1aS9YC4fC/vVO6hWOT2OHB54qCsoVRxhGKysrKJxlZWV6jbGBwGx4PmuOPVdh2Jz9KYNNBSzElzcyEnOyIjIPwearWeoQgM4ghjI+mTUq6osMhuJMMwGEXHFGFXbRGblVIsQ3VjZKzzxmSTORkcGtv4XcdQFriJI49x/lwtALueW9kaRzux8eKK6XfNbWyozHHennqNx29AjHtl6HoC9kUt6kSgdyDUo6LihOJtSRCeMKu6tYtbb1FMTMuO9Wb+e5sVL36sjtynqDkgjOazfYvFJ8ujYdOaZGy+pdSTE9gqYqHVunhFNE9ojmE4BOeQfrUVrrCXE0KmOLbuBLgHP784rt9zY2Op9IWT20Mbx8ZlUDk+eR9aFvgb4lzdnn4baKsOmQKi5bucjvTlrXS2oCBLmxnkjZTkiLA/1Bqj0xGbG2RguM80w3/Wl1b2g060HqTSNnYRn96RXeSySSFKGw6k1W8CTzu8OQGMiqMD9qbZ+m7bTtFcg7rjHJwBmqk41fR7Y3DQi+Zxu9OJ8YPxQa/wDxL9K19G9097SQnBXBYj96OeTmoV9cg5NG0iweSbU4GvCwyH25RT9vNc36z/J3NzK+mQpFjOQi4yPtiu3dJRaT1XbyJK5Zc4GQeKD9ddI6To9pP+XVQ+Mbv/muTYrhSwfLhVmun4w3PevZHlRCje4HtRi80hnvppN8QG4gBnCmht1ZtHIFJVmz2U5FURlZHpGjSapfCIHjPLeBXYOleiEBQKBgeT5pW6K039Mgwzn68V2bpnTLZ3j/ADku2MkEqGxUZuTx0aNNV9qyMOg6DpjhI7u6jjA7c10bSOkek5rR86lIk68qqxZDfvn/AGrn+vr0zZtHFazRiQqCcPk1miySQzLsmJiftml2xiUTlL9DRrtto2lIfSy+O5Y1zvWbiC8LLBYvIPGwZz9aYuqbffJhJDIpqpb9V2nRs2x7JrhlA9QKu4gH4oQUZcDTtf2ci6u6WW+tGZrd42HILL2rjmq6ZJYXTIw247fWvpHqPra01m4ljWzmgUnHvTn+grl3WugG5g/MxgGP6CqRkk9pmatWItruaMMWAqUOQf8A1MDxVcwumVUMftUkelXc+NkbMT4UEmmavIqwYtyUlYZGT9OK3e4Bz7st81PB0lqc7nFrMw8DYQatx9Cak7jfbtGPqwFc1i2D+gQ8xDD3c+RXrXeVBDffIpli/Dy4UAyXECg9/dk1s/QkUeWe9jOPCilVezt1iu1ydueckfHeoGnd8hTmj2paPbWEBZZzJJ24Whdhpkt5KApDA9uKdU+AWRW9vLOpIA58kURtdLmwGEeR9s0/9M/hvNdRK7jAPbP/AEroOifhkjDDDPkgDiqbkFQcjhn8CvXGVjKAj7g1XuOnLzaWQFcHk19P/wDlpDBBkRb+O3x9qWdb6PMKnbGFC/IpHJ3VDKHR86zWMtuwVie/PGDUjl4V79hyRXQeoOm0Mr5ABxndikfVNMa3YgEle3NNaEcOmVP4gBx6i/uKyqTWQDHCcZ+Kyl2oTb+wSQc8Vm00VitARngn4rZrNCSCKHyHsLwpNWmCAuSKsJZMRljtXvRARpAuMD64qOWVpvYnb5rnNvgaPiwinvdv0C3UK2AcivDRmPTFH6v1V61knfA+xofKuA/+P1Wr4AuKzaTRaOyRnzwBW72ZuJvTUAY7mj8qFXgzq7BAQ9+xrZ3MzEsQMDijiacka7mA2/3qCe3t2JKKVwe5oLVTGn+PnFXasqalpv8ADhD/AI8c5kQOfSOdn/KfrVaCOS5kWNTz9TwKkvd7Pudmdj5PgVXXPirtp5R5TjKH1lyOWgrHpt5bOQpCMGYkcHmovxC11NY1yaSM5jUBV/YAH++aDPc/l9PEbsWlbuM9hQtnJ+1UUnGLijOo7pbjdZWQ8HGK6z0l+IFvbdKxaRLua5MoYMewFcjANWbLcjiQMQQfnFRasve3g+otA6gS7sUww9vHFGponuFS4ssC5A5ZhxXC+k+pfQZUeTg9xXYOleoIWIQsMN2wahLdHoonawFLbVepIjsdoETOMqpIxQHqXUb2NyXaCaPPIxzXRUFrNae6VVbGDk0rapoULI7LKG5zlqdZ5Hg4rlCvoXVkzz/l7OJkmJ4AXzW/Xmr3a27RXLbWIwQO+a2g1u16ZaVgqvM3ZuxFI+va5Lq9wXkf3k9s+KaEHOaiuxJTSTaZz/WRLDdMSSysM4qrZobtR4IPbzTTf6cL1ShwGxkHtQuGwksZAXB2ZHJGM16/meBLxGn0zDHV3HSvw90UywxP+/NP13+H1zqjJK8+EP8Awl9ooD+G08QiQja2f7V33pFbK5dBdKGXv3xXz87c8Hoab+pzTRvwvVrmMi1I2j3YJbd96aTp4tmS19PZ6Y2k4wAPiuj6veWNtI8WmkRRqMsx7muI9T3OtatdS21tMbVS5Pq9807TlyyiW3KQ1a7pVtBZpMl0HkxypXAH0781Q0zSP425TZmXHcNSvf8ATmqXmn+i+qhzH/xMn3ftW/S11qWj30Ba63iPgsTy1Ckg3f8AY03X4YGGYysmWByS4zSp1V0rAbR1ZF7d8V1SLqtr62ZZDk470g9Z6mjW8gZgvGc9qk007TGpP+SODepD0/cTQm2hZgchyM1rN1h6ZwDHHjsFUDFUetIpLm7Z4Yy2OSQO1JE0o5Lbs/Ga0xysmKSQ83HWjTsD6zLxyRnNVZeqRsb3PJ8E0mxNuIYMSD810jpDo+w1XT45JVYSH9T7yVx9qasUJgXx1HIASU3j71WfXZ5mfGBnsR4rp0/4d6WseUiyR3O4mgfUXS2madaSSQQklV/z5HNclQu9SeDnl1PJdMMtufsRnFP34ddNvLJHcSrx3AK80l6DZrdasiFAcNwtd46WsCkSEKAcckChJ0i0I2xs0q3SFQMU2aZJGkikqF+vzS3ZJtXk4oqr7CoB3HvilgqNEkkNZvIintwWIxSv1Avrg5VfjtUq3YQYb/WqF7cJOpLPg/1qhJVdnP8AXtCjncgIPuPBrnfUPTzKGyOAe6rXZru3hkHEitjxS3q1jGIy2Nw7ZxzSNOOQupcHDn0X3Hjz81ldAksl9RvYO5/y/wDasobmLticqLqMYAxjxXpIPP6R8960YszNk8/NaF/T87jnzWdcH1KlTp4NLjJ4JGB9KksYirZ8V5tMhGTkfWrEQCjAOB3xRtpUNDTTlvlwbzFVjOMg/Bqqo3tgk5+lez3SoNqjnNSWzIFLsDkfSlppWW3xlKrNXXZgAdq2hARC7+0fTvUZkYvnPfxWrgzHcx9g8V1ewbs3E2zJdPhThKvR28QXH+Yc/NVIUlP6conbNXUiVcHOfkk0r9GjRzcmrKOrQ+vD+gq47cUukEU2zyKiFeCx7H4pavECzMR5NadGT4Z4X5LSVrURXySKw1lZ4rUeEbI209gav2yqFODkZ+KhtI1dGJHPzRHTNLub6UCJHYZySBwKPCsjJ26RZezntoUlQEIR+oeaLaR1Ld2ZUrISq49pPambTtIimsY4JlAJGMDwfkUA1bp9tNmYZ3xE8Hbis97iy4QSP4jalbOSsjMCcnc2RU8/4l39wFDMUXGOfNK0lkuzdkgePIqAWvuCN2PkiqJYBYan12XUJSzyb9x7c8VLEZYyDKu7PY/FLFzdvpzAouADwSeaki6tdxsdSyHuCa9z8ZLx9Ke/V56MutvaqPA0PdmUgLlie4Azj96J6V0w+sI0rxTzJ2Cxf69qT26h3IIraMhj3bxXYfwP6lt3sJ7K7YGeN96sx5YH/p/vXp/l/NjLR2Rd2T8bT+9yQO6VA0+59FGIIOApODXZOmNVkJXfkHGMjxXLepjDpXVbBHGJgJFx8En/AKGmnRtXSMqGckfQ18M2uz1o30OutdTizSRjINnmkaPqa+1nU9mmWz3DHgELmr3Umjz6rp0i2rhW/UdzckfTFWOg+p7jovTPykFskcxbeblk3MDjHBqiS5Geo+Bkl/Bnrq+tYJzNboZ13iP1CNvGcHiuea1oXU2getJcW0zJECWcLuUDOM04t1VqjXBvG6i1Z5c7gPzjBB9AudoH0Ax9KD6p17rF7FcWz3TXMEq7GWUKdw/pTYYamsumDuj+q5b8lDn28HB7VL1Q24NnOD/Sh3T2mQaSCckSSsSzE9h8V51NfiYsRt9ID9Knmoza4Eu3gTLPSH1rW/QGcDJOBxjPNKnV/Rcttrd0lvFuhEhCsSAMUw22qy2Gq+tCSmMjPjBoDq3UDXuoTyFDJlicA1ZL0Z5NUBR0zNDjLRxA+S9dG6ChaytWiaUMQeCpzwaRPzM8q+2zZj3HBp4/DpbkXUqXMDQhlBXcCMnNOkyLaH6VfTtNxBx3JHFI3WVyklnMuQBtzkV0Oe2E0CxZO0fWud9a6S6uQuQAMsQO9EnGm8iN0bEo1hnyzEdsCu0afb6k8aem4iLAHafFcp6RtCusOBhR/wAxrob6lqUTiGBWRf5m/wC9A2R4oZkbU9Oy0h3qBzgUW0rWPzXBO1x9aULbUdeuUQzSIcHG1mxxTBpNk8d2kpIBYZYfBrm65Hi7wHbydxHkZ+/alS7lur2baZjDH2wppw1q3Ro0CZyR3B7Uka9p0+8MHMUYP6gTyfvXX6BSfJdi0ZbdfVNy0nHA3dqGamyhWRZCp8/FLl5p19ndFqG1M/p3ncau6ZpmrTId/wDjxD/McjP2Nc88ixwRlUyeQf2rKJ/wR/jFZSbl7GpnzvtZeBkft3rV2OQfNZ6jZ/8AfNQvISCck1LPZ7qniy0sgXBIOD8iop5w4IXOB8VWaVyBuY/NRiQYIJ5oqAr8htUbxlyScZHzU6XEmCvODVJpCgwDVy2ieRMtwv8Ac00kllktFuUtseSVMtxjv5FWUtzkEkk/BrPYmAPce+BWzGVxxlF+Kzt3we1CKiqeWTeuqIVJ5HYVE88jgchR2AArFQDkKAw55NeylI+WOfpSl05U80QzNtQkHJ+TQS6kLyk8ftRK6uGdewVR4FCHO5ia16UayfO+fq7qieZr0Ng/FeVlak6PHN1kKng10PpvqSObRo7VI0jlj4ZgO/Peuc1Na3clnLviba1LNuaoFHVLa5kiYFRxnwe1F2ZLqDEi5Pjd81zvTOrYl2iZSjHgsO33px0rVbK8mjCXKnIHntUdtZG/QO1CwImCqOfjGcCqlzEBEUwOB3xzXTbvRLS60zfvjDgZ3g8mub62bexL7pUdyeynJqt9EhR1WNpBtBzt84oPk5opfXMly5VV2p25Oc1WS0AHJDVaGlOWQ7ki3ot8I5iJXUIBnDeftTbpfUkWm3Cy279u6pHx+9J9ufykiuqjcvPPamnTurvTg2Pboo8FBijr6WpdydiqS6GXXOrLXVre3ljhuI504O5eKM9N66L2JI2b3fJpOtdWGpMyqUiUDA3nk/YVBFPLo9/hXOO4LdzWJw9ovDUyfQWl6oxtgpOWAwPqK3MC3GO+a51ofVIkx79hHz5p40zqO3Cq4dT+9SWDS75LP/h2SX3bmbH/AC+K8m0xIEwQc/Hmia9X28SgblUY5NAdU6ohmY7ZN2T3xirNdkd2SpfH0hk8ADsDSdq+qEOVBJFXdf6kj2lEOfr2pOvbpyjS4I4754BpLzTF6COgy293qRFwpK9sMOK6BptjY27ri1gPxiMA1ybQGX8/HuYgnk8117T7WNzEFYhf5gauv2YZyp0EXs7dnLJGgBHHGKGXYKAmARrInbcaMSWMiMpJLY54HBqpc6NLMzMm0ZGaNJkU6zYKOpaoU5aEfZOaCazJeXBzKwY4xgL3pug0Sd9gOP68Vl70vNjjYVI555pdj6KqcUI/SWl7dbBYKCOe1dYi0SyvBtnHuJxSc2lTaZMsp2gKRlsjNM+n6tHKq5fg8YzXSjRs0pXwHbXpKxtF9RYwxHZmJNVDGsdyFUEkHHFX1uvVsyEfGBxzSVc9ZrZ3e0odwPJpOWak0sjjrEUkKoze0EdqjtJ4XhMUiK4Pg0q6h16JUGVaTAztA71mha+dcu4oltzBuzu3HIxTKLR0nFrI22uhaZdXGRDGsh+gNWNRsobWHYgAX4oW0jWM2NwI+lUdW1vYCTJjjgZo8kWkaMPcf0jmspdbXCST6qD/AO7/ALVlJTF3HzO87KxwfaPJrwznAJPH0NVDMW7msySOD/3obfZsWq1W0stNu5P+tQSPg/eo+B5zXoVnIVQWJ7Ac0yjQstVtUbwMDIC/IHiiDanHGAQhP0qaz6O1a+CtHaMqkZ9/tP8AQ1d/8uNaXvCoHfhq5xjJ5BDyp6SagDF1ZCQRHyPk1KNViYDJKnPNSXfQ+rWwDG29p/lOaEXFhcWzYkjYH4INI9KDNEPyOtEMNdxSDCykZHNalEAPuJ+pNAnLAYPt+lbJcyIR7sj4NL8Ppl4/kbdziW7yQYOCTQ+ppphIM85qGrwVI87yNT5J2jKysrKczGVlZWVxxgrZXaM5Vip+hxWuOKymOLUd/OoK+q+09/camWT1hycn6mh+cVZt25XJwPtWrRkm6aJyRbjJEn0+M16VPJ8Vh2uwGQfvW3cYAwO2Qa3qS/iuCDR4EKgg5YmpQntGewqMrtwfP37VL6myI9iTTbY1k4gedkXcjsu3sc1PZ6pPeOBK28gYBqpI+yEgnBPirnSVqt5qQicKQRx815Pkxay0aNNZDtrezQR5zg/Pai9jrTrgs7ZH1xV646Nkii9ZCJUx+kDJFDk0sdj3HGDXmX/qbqvDYTbXH7SPlD2G7mo/4qdre9j8BTUlno0U4GUDH6nFRXemRQswUBVAxladyZKop0Upb4yEbyQo+fNQSXI3qgJCnwCajlT0mAHuA4JzzmtHAWdOc/XdQ3VyI1bC2m2AiukbJwT4bGa7/wBNdPLLYQSBwSVBIz/rXDbeZVkQ8AfArvnQdxHPpMQL+BkDxWyCs87VYWTREPDMTnyBU66NAq8kk98ir8bruxuAGeN1TpJC3G4Z81dJUedJtdg3+DwMuQmMecmqt1pMcy7I02DsWySTTH6asBg8Y+nFaPCvbGSfIp1A5SbE7Vuk/wA3YSxxqA+3G4+a5jBLcWF16bFvafHAxXfjGNu1uB9a5T1zpB03UTcgb7aQ5yB2PxUpwo1+PrVJqyo3VotVVGfCjvzUK65pV7Id8SuT39vJoeywXdowKDPgEZrSzs40dWaOM+cHgVkce0e3pNSwxgQaKiM6wlyewPO2oD1HZQNtTCEccDB/tU9o9pDE/wDg2rbhgbh2oLcactzKzD0lx2IFPWAuMU3kuydTQzgoZhn/ACnzQu+u5buM4YgDgZ7VPbaXAWJMaj6gYqK+aISBFACIeOf71zVYMzfoFlGyfch/+6sq+bqEkmso7WTuXs+aiME57isVv3r3d7iQOPtXm7ntSmpYyYPc2Md/iui9AdLxHF1MAznhQfFK/S2hNqV6u5TsU5Oe1dl0OAW6J7AnGMfFSm8UibdhWzt0t09y5HjNSv7VyAAG4wa09TA4GT8k1TnuWCkgnA+v/ap/9AkmeXpUoVCFvngYpU1nT7eZWDouTwM0au78bCAcnHcmlXVNRO4r3PPftRX7G22Jur6QIXYrjA7+cUvOu1iPg4pp1C4V0MeOPOaXLpwWxjt896tEWqIKysrBxVDjKysrK44ysqSKURjlA1NXQOmaRq2qP/EpBBEi7gC2Mmg2llgB+g9Eav1E4/K2xCH/AIkh2inC1/BK5jK/nr5UJ/yQqSf60xHrGBL2203Tdssn6TIvYD5p8N/aaZppuZ23ELncSKnuZSK/Rz6y/AywkZXaa7kTPIZlAP8AamaH8INEjiRGt1yvYg+4/c0X6a15dcjWSVzFEzHanYkfNNcVxaq/p27LLKBzznH3NDdJdnOK9HLtR/BSzKb7cMg+A1KOofhVcwllSVgR/MuRX0PNdLaxEsV+SV7UuXmq29xd4AQgd8Gj82pH/IOyL4VnBbv8O9TiUPHsfHfnBpe1HT7mzcQzxOj5wOM5r6Iu5YmTkKEz3ApF6pnt52SNUVsHO4AcVdeVNYlkMPGepKoiHY9PxzJunVm44B7VLoenw2+vIIgyMvJ8ij8bMq7VB5Hn/pW+gaSq6lJOhyzd/pUJ6zkss9jV8SGjp7oo6f06qzQiNxkY7mttX6JgnBlhj2Me9T6FGI1QBiCRxTdbRtNGuQHA81li1eDy55qjmMfSt1B+mPcO2V7ig2qaZNEWEqkEfNdo2LC7YjC5+R3oHrVit0MtEDkfFUb7JrDOLT2K4Vwp74oRqFvJ+rB47ZHaut3XTMEUTSBSSecZ4pR1XTSVkCAjjjFCk2O02rYl6ZrFw1wsftkJOMGvoX8M9ShewW2Zwsq+BjNfOVtFJZaqS3Yf5jTzouvzWMsc0b4CkEY71pUtrRy8P54Np5PppYh6I9TJB7E1Yjt0zyQM0H0Pqi06h6etZIiA6jDA+DRFbpFUbjkntg9q2LNHzWpCUW4vkvPGUKkNkeDW5347/vVJbpf/AKsDOK0k1DL8DPnBp95GmlZcRCcknGPNUdX02DU7OSCcbkYcH4+orc3bZPYDHmojcs3fjPYiuk7VhSbycd17SLnQL1o33NbE+x1HBqil4AQpJwf5jXYNTsYtTtnglTcCOAa5hrvSd3pkjmBGuIPAHcVGqyero6yf1lyTWsMUijeT+xHNZNMlqWCnOcgUqHVJ7MlOUIPZhzU8OudmkVX4zzU5N2bLVB3cYwXJK8ZANBdUuotpyMMOPd2FQajr+6E4bafvml+51CS5BXk/G7mhyJxwXTcKTn1FH0zWUDIfP6sfSso0/YTl3c9+atabYvfXccSgtkgnb4FVkRpnCoMk+K6J0loSW1uHeM+oec+ajKVIr2HOn9FSxjUKNuO5bz/amyzkSJcnBx3Hmh9jCG44Jq7LsjGBj7N5rPfpAwTSXKt+nihl7e+1gCDzjvWt3cNnb7V/5hQW8nGG4z9cc0qW3CDS5NNSv0SNssCT2FK19dFm3g7mx2zVnULokbVH3BoDf3HAznP+lPFDN0ipqF0Bu+T4oS7bmJqa4m3ucdhUFaYqifJgGa9A4JzxXlZk4x4pjj0jgc5J8VhUgkEc16shRg2AceDUiTr6jOyckcAdqIMkNTLEOdsq5C5+Mn4qE81sq7mwMniuVdnB/pa+bRdSSd8N7c4z2pg6n61n1ILCGIt8ZYA/2pP0+0ljlDt7FOcg0Q9ELn2cGozlFPBt0vH1JK6Og6Z1xZ2unwxxr7lXAo9F11Y2dkDA4EnckeTXITMVGFXao81LFJvBXPf+9Su2ehp+IpL+Qx9T/ihq1+4hg3LDnkju1R6V1pe7PdGR/MWNAcbXAyAfoK3UOPIx8Cl3quC68FRlblgaLnqy6uomXARcY4NCRcvyd5YnyxqhjI5OCv8AWql9JcCI7Pd4yO9BO8Gj4tPR+yQfOr2tmgEkq7gOw5Oa1g62gtHzHCWb+btSUbaaU5wS31qWCymLDcAR8E96psVcmSXkaur9VDB1KD8T5mjjCbIyMA4rsH4ddSwa9bgLKpkC+5Sec18w2lslu5l9Muv8gPANFOn+rr7RNUFxbk2uGyEHb7UmysxM+pBy+jjX7PreVVQYwOD5OKgazF0f0fTPelLo78Qbbqi2VzIq3Cgb4sjNPlvq8AjJVMHHNK5R/wAjzpacoumKPVcf5WIRgBcj9JpXmsEa0YsNox+rFEevOq7OO7K+oskq9lU9q55qXX0tzE0UZjjUjBIPJpLvKVmmGhOaV4A2sxw/m9iFGIPbPao41URkE4IGABQW+1lLZ97KXY+AcYrWHqyLA3ow5/Vwasli6PV03p6MVCxz6f6v1Pp5HW2lxEx3EMMj/wCabtP/ABuu0AW4toXHbKEgn/WuS/x60nUqpYZPkV4HWSQbjjP1p1Noy63jaGs26TO82f41WRA9W0kDedjAkf6UQT8VNIlGXMkX0def7GvntWyTklgvbBxUrXMpxtYsncEntVY6rPMl+M0+EfRFv+Iej3cgAu1U/wAzggUag1yyvEHpXUUi/IkBzXy6bp1xzg/Ss/iU6AAOVYHPftVPlV5MsvxqSuLPqZ7pJCApOK0cCRiN+D8HzXBNA/FbUdHAiux+bgHtDnuB9661011TZdRW4ktZA/8AMp7rV1JM8rU0Z6TprAK/EDpP+J2b3EAVbmMZAXuwrjCTzwTmNvscmvpC4uURG3lRGBlif9a+fuv7zTh1BKNOl3Z/VsPGfpSTw8GjQlijxZguF2cEYL5r0OhdiPaPntQuz1EyIVIDfvU/5gbf04OcEHzStrs2NFwuuT/iY+nNZVlPT2j/AA/HzWU/yw9C7WInS2jPJceoVyR2zXRrC1bYApOQO3zQTTkVEAVQB9B9aZYQFVMADI8V5spbuTRtL0AAjJwVYD4ry4crGc47dya8gYhmGTjAqrqntKgcD4FLCVgoHXUrbmwdv380Cvr4oSUAz81cviQy4JHFCNQA35xzmjLDQyV4BV9duzk7i3kfSgd9OxJDDINELziVvvQOc5lf71aCXIj9EZOTWVlZVwGVlZWVxxlZWeKyuOPQpbsM1Ys4SW3kcDt9aii/S5+lFbNQ0K5AOfmkk6RbRhvnR6JGRfLL9PFTettyO/2qBgBvrE7Cs7l2e9DiiZiSAO33qSDfwucD+1ViPdjxzVuPsD5/7Uj4Kxl96SMYek5558VLHKxA4P7Co7gDZ2rLY8ikrFmpSaltLSOZRz3xjnvUckYByMqRyakZQrMQADjuK0l/WKbgaNypmqBT/lHPFeEOCAAuPrW0AG5uBWMo54FKnbphklG5I3wytvPKnithaRyIS+O+RioAOSPGantR7zTxfRPlbn2XtFv5endQiubZiuDyQO4+KdepPxfd9PWCwzG7Lh38iufXI9jfagT8ls/WmpTVs8/yIxglJLJPqWtXF9IZJJWkc9zkiqO+Z8lMn+ua3tFDOuQD96JxACUgDjH+1UdRWEeet2rywbaxS3EmJdxHy3aiC6ZE4I2kDwRUqKPUfgfpNTRc5HgUu5vBv09BJZdlA6WyH2uT8YohZxNDCWdgzipkUBuABkjNTADB4FF2xHpQjLCIWkIGcYb5r1ZSqksCcefrWXIADkDBzUcI9i/XvQjzgtJtJIsxXTbizKMHwK0nkLkuPHbFV4ySGBOR8VGpICYOKaf1dk3HDZJMxkGT2IzirOidQ3vTN6txaOQf8w5ww+D81XmHGPGe1QXAAUjHGO1UTqqMWpox1Iuxs6r/ABYvddtFtoU/KQ7Rv2N7nP3+PpSE87SPnkH5FRSnDgeM9q3ABLZFUTvk8fYo4QTtJ2OAjBD885NXfz8iKoHj5oTp5xKMfNEbkDb2/wDeaHLG4wEBrkg42vWUKUnA5rKvtj6K7Uf/2Q==', 'Chericel', 'Alberio', 'Bornea', 'Che2x', '13', 'Barili,Cebu', '2022-12-14', 23, 'Single', 'Female', 'KAMUNGAY', '091234123455555', 'checkziebornea@gmail.com', 'student', 0, '', 0, 1);
INSERT INTO `tblresident` (`id`, `active`, `national_id`, `citizenship`, `picture`, `firstname`, `middlename`, `lastname`, `alias`, `household`, `birthplace`, `birthdate`, `age`, `civilstatus`, `gender`, `purok`, `phone`, `email`, `occupation`, `benefit_id`, `remarks`, `stat_id`, `resident_type`) VALUES
(250, '', '4684029534718093', 'Filipino', 'person.png', 'Grace', 'Crator', 'Caballero', 'Grasyang', '14', 'Barili, Balamban, Cebu', '2022-12-14', 0, 'Single', 'Female', 'LOURDES', '121231255321355', 'gracecaballero123@gmail.com', 'student', 0, '', 0, 1),
(251, '', '555544323212313131344', 'Filipino', 'data:image/jpeg;base64,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', 'Cristo Ray', 'Crator', 'Crator', 'Moi', '14', 'Leyte', '1998-10-29', 24, 'Single', 'Male', 'SAGRADA', '09225513212355', 'bleanzh.corales@gmail.com', 'student', 0, '', 6, 1),
(252, '', '92468', 'Filipino', 'person.png', 'Jerome', 'B', 'Aguilar', 'Tata', '', 'Sta. Ana, Barili, Cebu', '1980-05-23', 0, 'Married', 'Male', 'LOURDES', '09664154468', 'jaconfig@yahoo.com', 'Teacher', 0, '', 0, 1),
(254, 'no', '0909255266', 'Filipino', 'person.png', 'test1', 'test1', 'test1', 'test1', '10', 'Cebu, Leyte', '1998-10-10', 24, 'Single', 'Male', 'KAMUNGAY', '0909255266', 'test1@gmail.com', 'student', 0, '', 0, 1),
(255, '', '665543244327676676723423', 'Filipino', 'person.png', 'testing', 'testing', 'testing', 'testing', '1', 'testing', '1998-10-28', 26, 'Single', 'Male', 'KAMUNGAY', '092315567234324', 'testing123@email.com', 'student', 0, '', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_announce`
--

CREATE TABLE IF NOT EXISTS `tbl_announce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txt` longtext CHARACTER SET latin1,
  `date` date NOT NULL,
  `time` varchar(255) NOT NULL,
  `updates` text NOT NULL,
  `uploads` varchar(250) NOT NULL,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_announce`
--

INSERT INTO `tbl_announce` (`id`, `txt`, `date`, `time`, `updates`, `uploads`, `title`) VALUES
(1, 'PWD Payout Update123\r\n\r\n', '0000-00-00', '1:14 am', 'happening', 'logo.png', 'PWD PAYOUT UPDATE!'),
(3, 'Ang nakadawat! - Upcoming', '0000-00-00', '', 'upcoming', '', 'Ang nakadawat!'),
(4, 'gggg - expired', '0000-00-00', '', 'expired', '', 'gggg'),
(8, 'test4', '0000-00-00', '03:05 pm ', 'happening', 'Captain.jpg', 'test4'),
(9, 'qwe', '0000-00-00', '11:21 am ', 'happening', 'Captain.jpg', 'qwe'),
(10, '-Solo Parent', '2023-01-03', '08:53 pm ', 'happening', 'icons8-literature-100.png', 'Solo Parent'),
(11, 'igit - previous', '2023-01-04', '02:52 pm ', 'expired', 'Captain.jpg', 'igit'),
(12, 'trial - happening', '2023-01-08', '08:20 pm ', 'happening', 'Captain.jpg', 'trial'),
(13, 'qwe 1', '2023-01-08', '08:03 pm ', 'happening', 'BESIS-Dashboard.jpg', 'Hello'),
(14, 'qweasdwweqweasd\r\nqweasdwweqweasd\r\nqweasdwweqweasd\r\nqweasdwweqweasd\r\nqweasdwweqweasd\r\nqweasdwweqweasd\r\nqweasdwweqweasd\r\nqweasdwweqweasd\r\nqweasdwweqweasd\r\nqweasdwweqweasd\r\nqweasdwweqweasd\r\nqweasdwweqweasd\r\nqweasdwweqweasd\r\nqweasdwweqweasd\r\nqweasdwweqweasd\r\nqweasdwwe.', '2023-01-08', '07:16 pm ', 'expired', '5.PNG', 'test51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_household`
--

CREATE TABLE IF NOT EXISTS `tbl_household` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `household` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tbl_household`
--

INSERT INTO `tbl_household` (`id`, `household`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9'),
(10, '10'),
(11, '11'),
(12, '12'),
(13, '13'),
(14, '14'),
(15, '15'),
(16, '16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` text NOT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `code` text NOT NULL,
  `avatar` text,
  `created_at` text NOT NULL,
  `resident_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `email`, `user_type`, `code`, `avatar`, `created_at`, `resident_id`) VALUES
(10, 'staff', '6ccb4b7c39a6e77f76ecfa935a855c6c46ad5611', 'test1@email.com', 'staff', '', '03052021043218icon.png', '2021-05-04 01:32:18', 0),
(11, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'totskielion1968@gmail.com', 'administrator', '', '09052021074950person.png', '2021-05-04 01:33:03', 0),
(29, 'resident4', '038b95135030481cc49441363a19e5c7d90a7237', 'checkziebornea@gmail.com', 'resident', '', '', '12-14-2022 02:12 am', 249),
(30, 'resident5', '534b9a3df5ee7d03e8b5a782e4c487f804df5c99', 'gracecaballero123@gmail.com', 'resident', '', '', '12-14-2022 02:22 am', 250),
(32, 'resident', '11d265c7c5c845b07acf1340b2207edf7c57785d', 'bleanzh.corales@gmail.com', 'resident', '', '', '01-03-2023 07:58 pm', 251),
(33, 'jerome', '5b7d3ec680d663869ced4e420437746b66ff5032', 'jaconfig@yahoo.com', 'resident', '', '', '01-05-2023 10:26 am', 252);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
