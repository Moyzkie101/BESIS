# ABMS : MySQL database backup
#
# Generated: Tuesday 28. June 2022
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

INSERT INTO tbl_announce VALUES("1","PWD Payout Update");



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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_household VALUES("27","1");
INSERT INTO tbl_household VALUES("28","2");
INSERT INTO tbl_household VALUES("29","3");
INSERT INTO tbl_household VALUES("30","4");
INSERT INTO tbl_household VALUES("31","5");
INSERT INTO tbl_household VALUES("32","6");
INSERT INTO tbl_household VALUES("33","7");
INSERT INTO tbl_household VALUES("34","8");
INSERT INTO tbl_household VALUES("36","9");
INSERT INTO tbl_household VALUES("37","10");
INSERT INTO tbl_household VALUES("38","11");
INSERT INTO tbl_household VALUES("39","12");
INSERT INTO tbl_household VALUES("40","13");
INSERT INTO tbl_household VALUES("41","14");



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
  `casenum` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `details` varchar(10000) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

INSERT INTO tblblotter VALUES("27","Reydin A. Amancio","Ronel G. Torres","67","Incident","Purok Mangga","2022-06-02","06:28:00","yui
ghjghjg
gfghvh
gfhgvh","Active");
INSERT INTO tblblotter VALUES("28","Reydin A. Amancio","Ronel G. Torres","45","Amicable","dfccd","2022-06-09","11:18:00","fff","Active");



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

INSERT INTO tblbrgy_info VALUES("1","Cebu","Barili","Patupat","0919-1234567","To serve resident and maintain economic growth and focus on development.","24062022010314Screenshot2022-06-24070215.jpg","2406202201031474614_134812209909301_1972678_n.jpg","24062022010314285895986_1730365790628609_7127529693773583911_n.jpg");



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
  `contact` varchar(11) DEFAULT NULL,
  `termstart` date DEFAULT NULL,
  `termend` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblofficials VALUES("15","Angelito P. Nemeñ0","2","4","5575878686","2018-07-17","2022-12-30","Active");
INSERT INTO tblofficials VALUES("16","Wilma D. Patiga","13","15","55767","2018-07-18","2022-12-30","Active");
INSERT INTO tblofficials VALUES("17","Evony Q Bardilas","2","16","55767777777","2018-07-18","2022-12-30","Active");
INSERT INTO tblofficials VALUES("19","Victorina Ricaplaza","12","15","5575878686","2022-06-29","2022-06-30","Active");
INSERT INTO tblofficials VALUES("20","Roel Valdez ","13","14","5575878686","2022-06-08","2022-07-09","Active");



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
  `or_info` int(50) DEFAULT NULL,
  `amounts` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblpayments VALUES("15","Certificate of Indigency Payment","","40.00","2022-06-02","admin"," Reydin Altamira Amancio");
INSERT INTO tblpayments VALUES("16","Barangay Clearance Payment","","24.00","2022-06-02","admin"," Reydin Altamira Amancio");
INSERT INTO tblpayments VALUES("17","Certificate of Indigency Payment","","40.00","2022-06-02","admin"," Wensislao Kabalgmoy Obiso");
INSERT INTO tblpayments VALUES("18","Business Permit Payment","","23.00","2022-06-08","admin"," Victorina Ricaplaza");
INSERT INTO tblpayments VALUES("19","67890","","40.00","2022-06-08","admin"," Victorina Ricaplaza");
INSERT INTO tblpayments VALUES("20","123","","2.00","2022-06-08","admin"," Victorina Ricaplaza");
INSERT INTO tblpayments VALUES("21","345","","12.00","2022-06-08","admin"," Victorina Ricaplaza");
INSERT INTO tblpayments VALUES("22","Business Permit Payment","0","1.00","2022-06-08","admin"," Victorina Ricaplaza");
INSERT INTO tblpayments VALUES("23","Business Permit Payment","1","1.00","2022-06-08","admin"," Victorina Ricaplaza");
INSERT INTO tblpayments VALUES("24","Business Permit Payment","678","1.00","2022-06-08","admin"," Victorina Ricaplaza");
INSERT INTO tblpayments VALUES("25","Business Permit Payment","4567","1.00","2022-06-09","admin"," Victorina Ricaplaza");
INSERT INTO tblpayments VALUES("26","Business Permit Payment","56","1.00","2022-06-09","admin"," Victorina Ricaplaza");



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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblpermit VALUES("7","Victorina Ricaplaza","kk","hkukl","oilouilgj","2022-06-08");
INSERT INTO tblpermit VALUES("8","Victorina Ricaplaza","tssdf","","6ertwrq4","2022-06-12");



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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblrequest VALUES("19","reydin","12345678","gerald@gmail.com","24","Male","Barangay Certificates","Pending");
INSERT INTO tblrequest VALUES("21","Wensislao Obiso","8787469","ronel.torres@ctu.edu.ph","78","Male","Certificate of Indigency","pending");



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
  `fourps` varchar(10) NOT NULL,
  `address` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `resident_type` int(11) DEFAULT 1,
  `remarks` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=206 DEFAULT CHARSET=latin1;

INSERT INTO tblresident VALUES("190","01145663789","Filipino","person.png","Nita","O.","Decipulo","N/A","6","Barili,Cebu","1887-09-22","35","Married","Female","Cacecas","Yes","Positive","09xxxxxx","nita@gmail.com","Restaurant cook","","","1","");
INSERT INTO tblresident VALUES("187","08363487636454","Filipino","person.png","Reydin","Altamira","Amancio","dencio","1","Patupat,barili,cebu","1999-03-23","23","Single","Male"," Central","Yes","","09187844862","reydin.amancio@ctu.edu.ph","student","","","1","");
INSERT INTO tblresident VALUES("188","6378899","filipino","person.png","Lorna","Altamera","Amancio","Lorn","1","Patupat,barili,cebu","1971-01-31","51","Married","Female"," Central","Yes","Active","09532263527","Lorna.amancio123@gmail.com","HW","","","1","");
INSERT INTO tblresident VALUES("191","080946856524","Filipino","person.png","Sulpicia","M.","Cañete","N/A","1","Barili,Cebu","1933-04-29","88","Married","Female","Cacecas","Yes","Positive","09xxxxxxxx","sulpicia@gmail.com","Housewife","","","1","");
INSERT INTO tblresident VALUES("192","01946354876","Filipino","person.png","Maximo","M.","Cañete","N/A","1","Barili,Cebu","1962-10-30","58","Married","Male","Cacecas","Yes","Positive","09xxxxxxxx","maximo@gmail.com","Farmer","","","1","");
INSERT INTO tblresident VALUES("193","01223057646","Filipino","person.png","Andelon","P.","Onoy","N/A","2","Barili,Cebu","1885-06-14","36","Married","Male","Lower","Yes","Positive","09xxxxxxxx","andelon@gmail.com","Lending collector","","","1","");
INSERT INTO tblresident VALUES("194","0111675638532","Filipino","person.png","Roxan","F.","Onoy","N/A","2","Barili,Cebu","1991-08-07","30","Married","Female","Lower","Yes","Positive","09xxxxxxxx","roxan@gmail.com","Housewife","","","1","");
INSERT INTO tblresident VALUES("195","0384754246748","Filipino","person.png","Reynaldo","M.","Pagar","N/A","3","Barili,Cebu","1974-02-17","48","Married","Male","Lower","Yes","Positive","09xxxxxxxx","reynaldo@gmail.com","Carpenter","","","1","");
INSERT INTO tblresident VALUES("196","01223467435377","Filipino","person.png","Rosalinda","M.","Pagar","N/A","3","Barili,Cebu","1979-10-29","42","Married","Male","Lower","Yes","Positive","09xxxxxxxx","rosalinda@gmail.com","B.H.W","","","1","");
INSERT INTO tblresident VALUES("197","0495874553","Filipino","person.png","Florencio","Atillo","Ewican","N/A","4","Barili,Cebu","1974-11-28","47","Married","Male","Mangga","Yes","Positive","09xxxxxxxx","florencio@gmail.com","Construction worker","","","1","");
INSERT INTO tblresident VALUES("198","096323124365","Filipino","person.png","Caryl","Gemeda","Ewican","N/A","3","Barili,Cebu","2005-04-27","16","Single","Male","Mangga","Yes","Positive","09xxxxxxxx","caryl@gmail.com","none","","","1","");
INSERT INTO tblresident VALUES("199","08874565638","Filipino","person.png","Carmelito","Gongoy","Carampatana","N/A","4","Barili,Cebu","1850-10-21","72","Married","Male","Kbp","Yes","Positive","09xxxxxxxx","carmelito@gmail.com","driver","","","1","");
INSERT INTO tblresident VALUES("200","087532346754","Filipino","person.png","Juliana","Guzman","Carampatana","","4","Barili,Cebu","1953-06-19","69","Married","Female","Kbp","Yes","Positive","09xxxxxx","juliana@gmail.com","Housewife","","","1","");
INSERT INTO tblresident VALUES("201","098877565432","Filipino ","person.png","Ricardo","Craste","Tiin","N/A","5","Barili,Cebu","1985-09-18","37","Married","Male","Kbp","Yes","Positive","09xxxxxxxx","ricardo@gmail.com","Carpenter","","","1","");
INSERT INTO tblresident VALUES("202","01234426537565","Filipino ","person.png","Rodulfo","Basabe","Bulaga","N/A","7","Barili,Cebu","1988-03-10","34","Married","Male","Manokan","Yes","Positive","09xxxxxxxx","rodulfo@gmail.com","Carpenter","","","1","");
INSERT INTO tblresident VALUES("203","0123876347557","Filipino","person.png","Escanilla","Baguio","Escanilla","N/A","8","Barili,Cebu","1967-08-09","54","Married","Female","Manokan","","Positive","9xxxxxxxx","flora@gmail.com","Housewife","","","1","");
INSERT INTO tblresident VALUES("204","0232345436753","Filipino","person.png","Victoria","Sambabad","Logico","N/A","9","Barili,Cebu","1958-09-14","64","Married","Female","Mosaka","Yes","Positive","9xxxxxxxx","victoria@gmail.com","Housewife","","","1","");
INSERT INTO tblresident VALUES("205","9846453945","african","data:image/jpeg;base64,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","Wensislao","Kabalgmoy","Obiso","n/a","3","barili.cebu","1975-09-23","78","Single","Male","Cacecas","Yes","","09xxxxxxx","gerald@gmail.com","IT","","","1","");

