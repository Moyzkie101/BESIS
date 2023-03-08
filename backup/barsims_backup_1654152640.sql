# ABMS : MySQL database backup
#
# Generated: Thursday 2. June 2022
# Hostname: localhost
# Database: barsims
# --------------------------------------------------------


#
# Delete any existing table `tbl_announce`
#

DROP TABLE IF EXISTS `tbl_announce`;


#
# Table structure of table `tbl_announce`
#



CREATE TABLE `tbl_announce` (
  `id` int(11) NOT NULL,
  `txt` longtext CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_announce VALUES("1","accffgdf");



#
# Delete any existing table `tbl_household`
#

DROP TABLE IF EXISTS `tbl_household`;


#
# Table structure of table `tbl_household`
#



CREATE TABLE `tbl_household` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `household` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_household VALUES("10","143");
INSERT INTO tbl_household VALUES("11","1");
INSERT INTO tbl_household VALUES("12","2");
INSERT INTO tbl_household VALUES("13","3");
INSERT INTO tbl_household VALUES("14","4");
INSERT INTO tbl_household VALUES("15","5");
INSERT INTO tbl_household VALUES("16","6");
INSERT INTO tbl_household VALUES("17","7");
INSERT INTO tbl_household VALUES("18","8");
INSERT INTO tbl_household VALUES("19","9");
INSERT INTO tbl_household VALUES("20","10");
INSERT INTO tbl_household VALUES("21","11");
INSERT INTO tbl_household VALUES("22","12");
INSERT INTO tbl_household VALUES("23","13");
INSERT INTO tbl_household VALUES("24","14");
INSERT INTO tbl_household VALUES("25","15");



#
# Delete any existing table `tbl_support`
#

DROP TABLE IF EXISTS `tbl_support`;


#
# Table structure of table `tbl_support`
#



CREATE TABLE `tbl_support` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;




#
# Delete any existing table `tbl_users`
#

DROP TABLE IF EXISTS `tbl_users`;


#
# Table structure of table `tbl_users`
#



CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_users VALUES("10","staff","6ccb4b7c39a6e77f76ecfa935a855c6c46ad5611","staff","03052021043218icon.png","2021-05-03 10:32:18");
INSERT INTO tbl_users VALUES("11","admin","d033e22ae348aeb5660fc2140aec35850c4da997","administrator","09052021074950person.png","2021-05-03 10:33:03");
INSERT INTO tbl_users VALUES("13","aaa","7e240de74fb1ed08fa08d38063f6a6a91462a815","administrator","","2022-03-18 22:24:24");



#
# Delete any existing table `tblblotter`
#

DROP TABLE IF EXISTS `tblblotter`;


#
# Table structure of table `tblblotter`
#



CREATE TABLE `tblblotter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complainant` varchar(100) DEFAULT NULL,
  `respondent` varchar(100) DEFAULT NULL,
  `victim` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `details` varchar(10000) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;




#
# Delete any existing table `tblbrgy_info`
#

DROP TABLE IF EXISTS `tblbrgy_info`;


#
# Table structure of table `tblbrgy_info`
#



CREATE TABLE `tblbrgy_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(100) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `brgy_name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `city_logo` varchar(100) DEFAULT NULL,
  `brgy_logo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblbrgy_info VALUES("1","Cebu","Barili","Patupat","0919-1234567","To serve resident and maintain economic growth and focus on development.","02062022054017minimal-wallpaper-8.jpg","16032022084757Screenshot2022-03-11120631.jpg","02062022054017500f286125807c96ceac154ebf9298d6.jpg");



#
# Delete any existing table `tblchairmanship`
#

DROP TABLE IF EXISTS `tblchairmanship`;


#
# Table structure of table `tblchairmanship`
#



CREATE TABLE `tblchairmanship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblchairmanship VALUES("2","Presiding ");
INSERT INTO tblchairmanship VALUES("3","Committee on Appropriation");
INSERT INTO tblchairmanship VALUES("4","Committee on Peace & Order");
INSERT INTO tblchairmanship VALUES("5","Committee on Health");
INSERT INTO tblchairmanship VALUES("6","Committee on Education");
INSERT INTO tblchairmanship VALUES("7","Committee on Rules");
INSERT INTO tblchairmanship VALUES("8","Committee on Infra");
INSERT INTO tblchairmanship VALUES("9","Committee on Solid Waste");
INSERT INTO tblchairmanship VALUES("10","Committee on Sports");
INSERT INTO tblchairmanship VALUES("11","No Chairmanship");
INSERT INTO tblchairmanship VALUES("12","fggff");
INSERT INTO tblchairmanship VALUES("13","Secretary");



#
# Delete any existing table `tblofficials`
#

DROP TABLE IF EXISTS `tblofficials`;


#
# Table structure of table `tblofficials`
#



CREATE TABLE `tblofficials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `chairmanship` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `termstart` date DEFAULT NULL,
  `termend` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblofficials VALUES("15","Angelito P. Nemeñ0","2","4","2018-07-17","2022-12-30","Active");
INSERT INTO tblofficials VALUES("16","Wilma D. Patiga","13","15","2018-07-18","2022-12-30","Active");
INSERT INTO tblofficials VALUES("17","Evony Q Bardilas","2","16","2018-07-18","2022-12-30","Active");



#
# Delete any existing table `tblpayments`
#

DROP TABLE IF EXISTS `tblpayments`;


#
# Table structure of table `tblpayments`
#



CREATE TABLE `tblpayments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `details` varchar(100) DEFAULT NULL,
  `amounts` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblpayments VALUES("15","Certificate of Indigency Payment","40.00","2022-06-02","admin"," Reydin Altamira Amancio");
INSERT INTO tblpayments VALUES("16","Barangay Clearance Payment","24.00","2022-06-02","admin"," Reydin Altamira Amancio");



#
# Delete any existing table `tblpermit`
#

DROP TABLE IF EXISTS `tblpermit`;


#
# Table structure of table `tblpermit`
#



CREATE TABLE `tblpermit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `owner1` varchar(200) DEFAULT NULL,
  `owner2` varchar(80) DEFAULT NULL,
  `nature` varchar(220) DEFAULT NULL,
  `applied` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;




#
# Delete any existing table `tblposition`
#

DROP TABLE IF EXISTS `tblposition`;


#
# Table structure of table `tblposition`
#



CREATE TABLE `tblposition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(50) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblposition VALUES("4","Captain","1");
INSERT INTO tblposition VALUES("7","Councilor 1","2");
INSERT INTO tblposition VALUES("8","Councilor 2","3");
INSERT INTO tblposition VALUES("9","Councilor 3","4");
INSERT INTO tblposition VALUES("10","Councilor 4","5");
INSERT INTO tblposition VALUES("11","Councilor 5","6");
INSERT INTO tblposition VALUES("12","Councilor 6","7");
INSERT INTO tblposition VALUES("13","Councilor 7","8");
INSERT INTO tblposition VALUES("14","SK Chairman","9");
INSERT INTO tblposition VALUES("15","Secretary","10");
INSERT INTO tblposition VALUES("16","Treasurer","11");



#
# Delete any existing table `tblprecinct`
#

DROP TABLE IF EXISTS `tblprecinct`;


#
# Table structure of table `tblprecinct`
#



CREATE TABLE `tblprecinct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `precinct` varchar(100) DEFAULT NULL,
  `details` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblprecinct VALUES("1","qw","qwqwe");



#
# Delete any existing table `tblpurok`
#

DROP TABLE IF EXISTS `tblpurok`;


#
# Table structure of table `tblpurok`
#



CREATE TABLE `tblpurok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblpurok VALUES("14","Kbp","Purok 1");
INSERT INTO tblpurok VALUES("15","Mangga","Purok 2");
INSERT INTO tblpurok VALUES("16"," Central","Purok 3");
INSERT INTO tblpurok VALUES("17","Lower","Purok 4");
INSERT INTO tblpurok VALUES("18","Cacecas","Purok 5");
INSERT INTO tblpurok VALUES("19","Mosaka","Purok 6");
INSERT INTO tblpurok VALUES("20","Manokan","Purok 7");



#
# Delete any existing table `tblrequest`
#

DROP TABLE IF EXISTS `tblrequest`;


#
# Table structure of table `tblrequest`
#



CREATE TABLE `tblrequest` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `gcontact` varchar(255) NOT NULL,
  `national_id` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `age` int(6) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `form` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblrequest VALUES("19","reydin","12345678","gerald@gmail.com","24","Male","Barangay Certificates","Done");



#
# Delete any existing table `tblresident`
#

DROP TABLE IF EXISTS `tblresident`;


#
# Table structure of table `tblresident`
#



CREATE TABLE `tblresident` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `national_id` varchar(100) DEFAULT NULL,
  `citizenship` varchar(50) DEFAULT NULL,
  `picture` text CHARACTER SET utf8mb4 DEFAULT NULL,
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
  `address` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `resident_type` int(11) DEFAULT 1,
  `remarks` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=205 DEFAULT CHARSET=latin1;

INSERT INTO tblresident VALUES("189","102346548","Filipino","person.png","Ian Vincent","P.","Decipulo","IAN","6","Barili,Cebu","1887-01-04","35","Married","Male","Cacecas","Yes","Positive","09xxxxxxxx","ian@gmail.com","Habal2 Driver","","1","");
INSERT INTO tblresident VALUES("190","01145663789","Filipino","person.png","Nita","O.","Decipulo","N/A","6","Barili,Cebu","1887-09-22","35","Married","Female","Cacecas","Yes","Positive","09xxxxxx","nita@gmail.com","Restaurant cook","","1","");
INSERT INTO tblresident VALUES("187","08363487636454","Filipino","person.png","Reydin","Altamira","Amancio","dencio","","Patupat,barili,cebu","1999-03-23","23","Single","Male"," Central","Yes","Positive","09187844862","reydin.amancio@ctu.edu.ph","student","","1","");
INSERT INTO tblresident VALUES("188","6378899","filipino","person.png","Lorna","Altamera","Amancio","Lorn","143","Patupat,barili,cebu","1971-01-31","51","Married","Female"," Central","Yes","Positive","09532263527","Lorna.amancio123@gmail.com","HW","","1","");
INSERT INTO tblresident VALUES("191","080946856524","Filipino","person.png","Sulpicia","M.","Cañete","N/A","1","Barili,Cebu","1933-04-29","88","Married","Female","Cacecas","Yes","Positive","09xxxxxxxx","sulpicia@gmail.com","Housewife","","1","");
INSERT INTO tblresident VALUES("192","01946354876","Filipino","person.png","Maximo","M.","Cañete","N/A","1","Barili,Cebu","1962-10-30","58","Married","Male","Cacecas","Yes","Positive","09xxxxxxxx","maximo@gmail.com","Farmer","","1","");
INSERT INTO tblresident VALUES("193","01223057646","Filipino","person.png","Andelon","P.","Onoy","N/A","2","Barili,Cebu","1885-06-14","36","Married","Male","Lower","Yes","Positive","09xxxxxxxx","andelon@gmail.com","Lending collector","","1","");
INSERT INTO tblresident VALUES("194","0111675638532","Filipino","person.png","Roxan","F.","Onoy","N/A","2","Barili,Cebu","1991-08-07","30","Married","Female","Lower","Yes","Positive","09xxxxxxxx","roxan@gmail.com","Housewife","","1","");
INSERT INTO tblresident VALUES("195","0384754246748","Filipino","person.png","Reynaldo","M.","Pagar","N/A","3","Barili,Cebu","1974-02-17","48","Married","Male","Lower","Yes","Positive","09xxxxxxxx","reynaldo@gmail.com","Carpenter","","1","");
INSERT INTO tblresident VALUES("196","01223467435377","Filipino","person.png","Rosalinda","M.","Pagar","N/A","3","Barili,Cebu","1979-10-29","42","Married","Male","Lower","Yes","Positive","09xxxxxxxx","rosalinda@gmail.com","B.H.W","","1","");
INSERT INTO tblresident VALUES("197","0495874553","Filipino","person.png","Florencio","Atillo","Ewican","N/A","4","Barili,Cebu","1974-11-28","47","Married","Male","Mangga","Yes","Positive","09xxxxxxxx","florencio@gmail.com","Construction worker","","1","");
INSERT INTO tblresident VALUES("198","096323124365","Filipino","person.png","Caryl","Gemeda","Ewican","N/A","3","Barili,Cebu","2005-04-27","16","Single","Male","Mangga","Yes","Positive","09xxxxxxxx","caryl@gmail.com","none","","1","");
INSERT INTO tblresident VALUES("199","08874565638","Filipino","person.png","Carmelito","Gongoy","Carampatana","N/A","4","Barili,Cebu","1850-10-21","72","Married","Male","Kbp","Yes","Positive","09xxxxxxxx","carmelito@gmail.com","driver","","1","");
INSERT INTO tblresident VALUES("200","087532346754","Filipino","person.png","Juliana","Guzman","Carampatana","","4","Barili,Cebu","1953-06-19","69","Married","Female","Kbp","Yes","Positive","09xxxxxx","juliana@gmail.com","Housewife","","1","");
INSERT INTO tblresident VALUES("201","098877565432","Filipino ","person.png","Ricardo","Craste","Tiin","N/A","5","Barili,Cebu","1985-09-18","37","Married","Male","Kbp","Yes","Positive","09xxxxxxxx","ricardo@gmail.com","Carpenter","","1","");
INSERT INTO tblresident VALUES("202","01234426537565","Filipino ","person.png","Rodulfo","Basabe","Bulaga","N/A","7","Barili,Cebu","1988-03-10","34","Married","Male","Manokan","Yes","Positive","09xxxxxxxx","rodulfo@gmail.com","Carpenter","","1","");
INSERT INTO tblresident VALUES("203","0123876347557","Filipino","person.png","Escanilla","Baguio","Escanilla","N/A","8","Barili,Cebu","1967-08-09","54","Married","Female","Manokan","","Positive","9xxxxxxxx","flora@gmail.com","Housewife","","1","");
INSERT INTO tblresident VALUES("204","0232345436753","Filipino","person.png","Victoria","Sambabad","Logico","N/A","9","Barili,Cebu","1958-09-14","64","Married","Female","Mosaka","Yes","Positive","9xxxxxxxx","victoria@gmail.com","Housewife","","1","");

