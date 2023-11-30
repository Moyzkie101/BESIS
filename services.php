<?php include 'server/server.php' ?>

<?php
    $query = "SELECT * FROM tbl_announce WHERE id = '1'";
    $result = $conn->query($query);
	$row = $result->fetch_assoc();

	$query1 = "SELECT * FROM tblbrgy_info WHERE id = '1'";
    $result1 = $conn->query($query1);


	$rows = $result1->fetch_assoc();

	$query2 = "SELECT * FROM `tblresident` INNER JOIN tbl_users ON tblresident.id=tbl_users.resident_id WHERE tbl_users.id='".$_SESSION['id']."'";
	$result3 = $conn->query($query2);
    $resident = $result3->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="en">


<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>

	<!-- META ============================================= -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<meta name="robots" content="" />
	
	<!-- DESCRIPTION -->
	<meta name="description" content="Barangay Bolocboloc" />
	
	<!-- OG -->
	<meta property="og:title" content="Barangay Bolocboloc" />
	<meta property="og:description" content="Barangay Bolocboloc" />
	<meta name="og:image" content="images/preview.png" align="middle"/>
	<meta name="format-detection" content="telephone=no">
	
	<link rel="icon" href="assets/images/logo2.png" type="image/x-icon" />
	<link rel="shortcut icon" type="image/x-icon" href="assets/images/logo2.png" />
	<title>Barangay Bolocboloc | SERVICES</title>

	<!-- MOBILE SPECIFIC ============================================= -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	
	<!-- All PLUGINS CSS ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/assets.css">
	<link rel="stylesheet" type="text/css" href="assets/vendors/calendar/fullcalendar.css">
	
	<!-- TYPOGRAPHY ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/typography.css">
	
	<!-- SHORTCODES ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/shortcodes/shortcodes.css">
	
	<!-- STYLESHEETS ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<link rel="stylesheet" type="text/css" href="assets/css/loader.css">

</head>
<style type="text/css">/*===================== 	Premery bg color =====================*/

	/* Chrome, Safari, Edge, Opera */
    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
    }

    /* Firefox */
    input[type=number] {
    -moz-appearance: textfield;
    }

	.header{
		position: relative;
		z-index: 999;
	}
	.dropdown, .checkbox-dropdown {
      display: none;
    }

:root {	--primary: #5691cf;	--sc-primary: #5691cf;}

/* Hex */.bg-primary,.btn,.comments-area .comment-form p input[type="submit"],.pagination > .active > a,.pagination > .active > span,.pagination > .active > a:hover,.pagination > .active > span:hover,.pagination > .active > a:focus,.pagination > .active > span:focus,.feature-filters .active > [class*="btn"],.list-num-count > li:before,.pagination-bx.primary .pagination > li > a, .pagination-bx.primary .pagination > li > span,button.back-to-top,.rev-btn{    background-color: #5691cf;}

/*Hex color :hover */.btn:active,.btn:hover,.btn:focus,.active > .btn,.bg-primary-dark,.pagination > li > a:hover, .pagination > li > span:hover, .pagination > li > a:focus, .pagination > li > span:focus ,.pagination > .active > a, .pagination > .active > span, .pagination > .active > a:hover, .pagination > .active > span:hover, .pagination > .active > a:focus, .pagination > .active > span:focus,.sidenav .closebtn:hover,.sidenav .closebtn:focus,.owl-btn-1.primary .owl-prev:hover, .owl-btn-1.primary .owl-next:hover,.owl-btn-2.primary .owl-prev:hover, .owl-btn-2.primary .owl-next:hover,.pagination-bx.primary .pagination > li > a:hover, .pagination-bx.primary .pagination > li > span:hover,.pagination-bx.primary .pagination > li.active > span,.pagination-bx.primary .pagination > li.active > a{    background-color: #5691cf;}

/*===================== 	Premery text color =====================*/a,.text-primary,.primary li:before,.menu-links .nav > li.active > a,.menu-links .nav > li:hover > a,.menu-links .nav > li .mega-menu > li ul a:hover,.menu-links .nav > li .sub-menu li:hover > a,footer a:active,footer a:focus,footer a:hover,footer h1 a,footer h2 a,footer h3 a,footer h4 a,footer h5 a,footer h6 a,footer p a,.testimonial-1 .testimonial-position,.acod-head a:after,.acod-head a,.acod-head a:hover,.acod-head a.collapsed:hover,.ttr-tabs .nav-tabs > li > a i,h1 a:hover,h2 a:hover,h3 a:hover,h4 a:hover,h5 a:hover,h6 a:hover,.btn.outline,.btn-link:hover{    color: #5691cf;}

/*===================== 	Secondery bg color =====================*/.bg-secondry {    background-color: #5691cf;}

/*===================== 	Secondery text color =====================*/.text-secondry {    color: #5691cf;}.ovpr-light:after, .ovpr-middle:after, .ovpr-dark:after,.ovpr:after,.bg-primary{	background-color:#5691cf;}.footer-top,.footer-bottom {	background-color: #121921;}.ovbl-middle::after, .ovbl-light::after, .ovbl-dark::after{	

	/* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#267621+0,#267621+50,110038+100 */	background: #5691cf; 

	/* Old browsers */	background: -moz-linear-gradient(45deg, #5691cf 0%, #5691cf 50%, #5691cf 100%); 

	/* FF3.6-15 */	background: -webkit-linear-gradient(45deg, #5691cf 0%,#5691cf 50%,#5691cf 100%); 

	/* Chrome10-25,Safari5.1-6 */	background: linear-gradient(45deg, #5691cf 0%,#5691cf 50%,#5691cf 100%); 

	/* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#5691cf', endColorstr='#5691cf',GradientType=1 ); 

/* IE6-9 fallback on horizontal gradient */}.ttr-notify-header::after,.widget-bg1,.ttr-search-bar,.ttr-header,.ovpr-dark:after, .pricingtable-main,.account-head:after{	

	/* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#40993B+0,3f189a+100 */	background: #5691cf; 

	/* Old browsers */	background: -moz-linear-gradient(45deg, #5691cf 0%, #5691cf 100%); 

	/* FF3.6-15 */	background: -webkit-linear-gradient(45deg, #5691cf 0%,#5691cf 100%); 

	/* Chrome10-25,Safari5.1-6 */	background: linear-gradient(45deg, #5691cf 0%,#5691cf 100%); 

	/* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#5691cf', endColorstr='#5691cf',GradientType=1 ); 

	/* IE6-9 fallback on horizontal gradient */}/* Secondry Color */

.portfolio-bx .portfolio-info-bx,.btn.outline:hover,.course-info-list ul li a.active, .course-info-list ul li a:hover,.btn,.profile-tabnav .nav li a.active,button.back-to-top,.upcoming-event-carousel.owl-btn-1 .owl-prev, .upcoming-event-carousel.owl-btn-1 .owl-next,.courses-carousel .owl-nav .owl-next, .courses-carousel .owl-nav .owl-prev, .recent-news-carousel .owl-nav .owl-next, .recent-news-carousel .owl-nav .owl-prev, .testimonial-carousel .owl-nav .owl-next, .testimonial-carousel .owl-nav .owl-prev{	background-color:#5691cf;	color:#fff;}.footer_widget ul li a:hover,[class*="ovbl-"] .counter-style-1 .counter-text,.header-transparent .secondary-menu .btn-link:hover,.header-transparent .menu-links .nav > li:hover > a,.header-transparent .menu-links .nav > li.active > a{	color:#5691cf;}.course-info-list ul li a.active:hover, .course-info-list ul li a:hover,.btn:hover,.profile-tabnav .nav li a.active:hover,button.back-to-top:hover,.upcoming-event-carousel.owl-btn-1 .owl-prev:hover, .upcoming-event-carousel.owl-btn-1 .owl-next:hover,.courses-carousel .owl-nav .owl-next:hover, .courses-carousel .owl-nav .owl-prev:hover, .recent-news-carousel .owl-nav .owl-next:hover, .recent-news-carousel .owl-nav .owl-prev:hover, .testimonial-carousel .owl-nav .owl-next:hover, .testimonial-carousel .owl-nav .owl-prev:hover{	background-color:#5691cf;	color:#fff;}.heading-bx.left .title-head{	border-color:#5691cf;	}

.window-loading{
	overflow: hidden;
}

</style>

<style type="text/css">
	ul {
  list-style-type: none; /* Remove bullets */
  padding: 0; /* Remove padding */
  margin: 0; /* Remove margins */
}
</style>
<body id="bg">
<div class="page-wraper">
	<div class="loader">
		<iframe width="560" height="315" src="https://www.youtube.com/embed/Yf5d_Zx3AaI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen hidden></iframe>
	</div>
    <!-- Header Top ==== -->
    <header class="header rs-nav">
		<div class="sticky-header navbar-expand-lg">
            <div class="menu-bar clearfix">
                <div class="container clearfix">
					<!-- Header Logo ==== -->
					<div class="menu-logo">
						<a href="index-2.php"><img src="assets/images/logo-black.png" alt=""></a>
					</div>
					<!-- Mobile Nav Button ==== -->
                    <button class="navbar-toggler collapsed menuicon justify-content-end" type="button" data-toggle="collapse" data-target="#menuDropdown" aria-controls="menuDropdown" aria-expanded="false" aria-label="Toggle navigation">
						<span></span>
						<span></span>
						<span></span>
					</button>
					<!-- Author Nav ==== -->
                    <div class="secondary-menu">
                        <div class="secondary-inner">
                            <?php
                        		if(isset($_SESSION['role'])){
                        			  ?>
                        			<a href="model/logout.php">Log Out</a><?php 
                        		}else{
                        			?>
                        			<a href="login_access.php">Login</a>
                        			<?php
                        		}
                         	?>
						</div>
                    </div>
					<!-- Search Box ==== -->
                    <div class="nav-search-bar">
                        <form action="#">
                            <input name="search" value="" type="text" class="form-control" placeholder="Type to search">
                            <span><i class="ti-search"></i></span>
                        </form>
						<span id="search-remove"><i class="ti-close"></i></span>
                    </div>
					<!-- Navigation Menu ==== -->
                    <div class="menu-links navbar-collapse collapse justify-content-start" id="menuDropdown">
						<div class="menu-logo">
							<a href="index-3.php"><img src="assets/images/logo-black.png" alt=""></a>
						</div>
                        <ul class="nav navbar-nav">	
							<li><a href="index-2.php">Home</a></li>
							<li><a href="all-announcements.php">Announcements</a></li>
							<li><a href="services.php">Services</a></li>
							<!-- <li><a href="all-programs.php">Programs</a></li>
							<li><a href="guidelines.php">Guidelines</a></li> -->
							<li><a href="contact.php">Contact</a></li>
							<li><a href="javascript:;">About<i class="fa fa-chevron-down"></i></a>
								<ul class="sub-menu">
									<li><a href="history.php">Our Story</a></li>
									<li><a href="our-developers.php">Our Developers</a></li>
									<li><a href="vision-mission.php">Vision & Mission</a></li>
									<li><a href="org-structure.php">Org. Structure</a></li>
								</ul>
							</li>
							<?php
								error_reporting(0);
								if($_SESSION['role'] == 'administrator'){?>
									<li><a href="dashboard.php">Back to Dashboard</a></li>
									<?php
								}
							?>
							<!-- <li><a href="javascript:;">Services<i class="fa fa-chevron-down"></i></a>
								<ul class="sub-menu">
									<li><a href="brgy-clearance">Barangay Clearance</a></li>
									<li><a href="certif-of-residency">Certificate of Residency</a></li>
									<li><a href="certif-of-indigency">Certifcate of Indigency</a></li>
								</ul>
							</li> -->
							<!-- <li><a href="calendar.php">Calendar</a></li> -->
						</ul>
						<div class="nav-social-link">
							<?php
                        		if(isset($_SESSION['role'])){
                        			  ?>
                        			<a href="model/logout.php">Log Out</a><?php 
                        		}else{
                        			?>
                        			<a href="login_access.php">Login</a>
                        			<?php
                        		}
                         	?>
						</div>
                    </div>
					<!-- Navigation Menu END ==== -->
                </div>
            </div>
        </div>
    </header>
    <!-- header END ==== -->	
    <!-- Inner Content Box ==== -->
    <div class="page-content bg-white">
        <!-- Page Heading Box ==== -->
        <div class="page-banner ovbl-dark" style="background-image:url(assets/images/cover1.jpg);">
            <div class="container">
                <div class="page-banner-entry">
                    <h1 class="text-white">Barangay Bolocboloc Services</h1>
				 </div>
            </div>
        </div>
		<div class="breadcrumb-row">
			<div class="container">
				<ul class="list-inline">
					<li><a href="home.php">Home</a></li>
					<li>Services</li>
					<?php
						error_reporting(0);
						if($_SESSION['role'] == 'resident'){?>
							<li><a href="#add" data-toggle="modal">[ Click Request Form Here ]</a></li>
							<?php
						}
					?>

				</ul>
			</div>	
		</div>

					<!-- ==== START MODAL ==== -->

					<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-xl modal-dialog-centered" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">Request Barangay Form</h5>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<form method="POST" action="connect.php" enctype="multipart/form-data">
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label for="firstName">Full Name  (<i> Kumpletong Pangalan </i>)</label>
													<input type="text" value="<?= ucwords($resident['firstname'].' '.substr($resident['middlename'],0, 1).'. '.$resident['lastname']) ?>" class="form-control" id="firstName" name="firstName" disabled readonly/>
												</div>
												<div class="form-group">
													<div>
														<label for="password">Form to Request:   (<i> Kinahanglan nga Dokumento </i>)</label>
													</div>
													<div>
														<input type="radio" id="radioBtn1" name="showDropdown" onclick="toggleDropdown('dropdown1')">
														<label for="radioBtn1">Barangay Clearance</label>
													</div>
													<div id="dropdown1" class="dropdown">
														<div class="form-group">
															<label for="dropdownList1">For what purpose?  (<i> Unsa ang tumong? </i>)</label>
															
															<select id="dropdownList1" class="dropdown-menu">
																<option disabled selected>Select for purposes</option>
																<option value="Local Employment">Local Employment</option>
																<option value="Abroad">Abroad</option>
																<option value="School">School</option>
																<option value="Senior Citizen">Senior Citizen</option>
																<option value="Any Legal">Any Legal</option>
																<option value="Residency">Residency</option>
																<option value="Indigency">Indigency</option>
																<option value="DST O.R">DST O.R</option>
															</select>
														</div>	
													</div>
													<div>
														<input type="radio" id="radioBtn2" name="showDropdown" onclick="toggleDropdown('dropdown2')">
														<label for="radioBtn2">Use of Barangay Facilities</label>
													</div>
													<div id="dropdown2" class="dropdown">
														<div class="form-group">
															<label for="dropdownList2">For what purpose?  (<i> Unsa ang tumong? </i>)</label>
															<div class="form-group">
																<div>
																	<input type="checkbox" id="checkBox1" onclick="toggleCheckboxDropdown('checkBox1', 'checkboxDropdown1')">
																	<label for="checkBox1">Table/s</label>
																	<div id="checkboxDropdown1" class="checkbox-dropdown">
																	<!-- Dropdown content for Table/s -->
																	<label for="checkboxDropdownList">How many? (<i> Pila kabuok? </i>)</label>
																	<input type="number" class="form-control" placeholder="Enter How many Quantity"  onkeypress="return (event.keyCode >= 48 && event.keyCode <= 57) || (event.keyCode == 46 && event.keyCode == 18 );">
																	</div>
																</div>
																<div>
																	<input type="checkbox" id="checkBox2" onclick="toggleCheckboxDropdown('checkBox2', 'checkboxDropdown2')">
																	<label for="checkBox2">Chair/s</label>
																	<div id="checkboxDropdown2" class="checkbox-dropdown">
																	<!-- Dropdown content for Chair/s -->
																	<label for="checkboxDropdownList">How many? (<i> Pila kabuok? </i>)</label>
																	<input type="number" class="form-control" placeholder="Enter How many Quantity"  onkeypress="return (event.keyCode >= 48 && event.keyCode <= 57) || (event.keyCode == 46 && event.keyCode == 18 );">
																	</div>
																</div>
																<div>
																	<input type="checkbox" id="checkBox3" onclick="toggleCheckboxDropdown('checkBox3', 'checkboxDropdown3')">
																	<label for="checkBox3">Tent/s</label>
																	<div id="checkboxDropdown3" class="checkbox-dropdown">
																	<!-- Dropdown content for Tent/s -->
																	<label for="checkboxDropdownList">How many? (<i> Pila kabuok? </i>)</label>
																	<input type="number" class="form-control" placeholder="Enter How many Quantity"  onkeypress="return (event.keyCode >= 48 && event.keyCode <= 57) || (event.keyCode == 46 && event.keyCode == 18 );">
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div>
														<input type="radio" id="radioBtn3" name="showDropdown" onclick="toggleDropdown('dropdown3')">
														<label for="radioBtn3">Barangay Business Clearance</label>
													</div>
													<div id="dropdown3" class="dropdown">
														<div class="form-group">
															<label for="dropdownList3">For what purpose?  (<i> Unsa ang tumong? </i>)</label>
															<select id="dropdownList3" class="dropdown-menu">
																<option value="option7">Option 7</option>
																<option value="option8">Option 8</option>
																<option value="option9">Option 9</option>
															</select>
														</div>
													</div>
													<div>
														<input type="radio" id="radioBtn4" name="showDropdown" onclick="toggleDropdown('dropdown4')">
														<label for="radioBtn4">Issuance of Summons</label>
													</div>
													<div id="dropdown4" class="dropdown">
														<div class="form-group">
															<label for="dropdownList4">For what purpose?  (<i> Unsa ang tumong? </i>)</label>
															<select id="dropdownList4" class="dropdown-menu">
																<option value="option10">Option 10</option>
																<option value="option11">Option 11</option>
																<option value="option12">Option 12</option>
															</select>
														</div>
													</div>
												</div>
											</div>
											<div class="col">
												<div class="form-group">
													<h5><center>"Note: Make sure to input correct details, otherwise, the request will be denied"</center></h5><h5><center>"Timan-i: Ibutang ang saktong impormasyon mahitungod kanimo, mahimong invalid kung dili kini magtakdo basi sa record sa sa atong system"</center></h5>
												</div>
											</div>
										</div>
								</div>
								<div class="modal-footer">
									<input type="submit" class="btn btn-primary">
								</div>
									</form>
							</div>
						</div>
					</div>

					<!-- ==== END MODAL ==== -->

			

		
		<!-- Page Heading Box END ==== -->
        <!-- Page Content Box ==== -->
		<div class="content-block">


			 <!-- Our Story ==== -->
            <div class="section-area section-sp1">
                <div class="container">
					<div class="row align-items d-flex">
						<div class="col-lg-12 col-md-12">
							<div class="content-block">
			<!-- Portfolio  -->
			<div class="section-area section-sp1 gallery-bx">
				<div class="container">
					<div class="clearfix">
						<ul id="masonry" class="ttr-gallery-listing magnific-image row">
							<li class="action-card col-lg-6 col-md-6 col-sm-12 expired">
								<div class="event-bx m-b30">
									<!-- <div class="action-box">
										<a href="announcement-details?id=49"><img src="assets/images/announcement/service.jpg" style="height: 280px;object-fit: cover;" alt=""></a>
									</div> -->
									<div class="info-bx d-flex">
										<div>
											<a href="service-details_brgy(.)_clearance.php?id=01"><div class="event-time">
												<div class="event-date">01</div>
											</div></a>
										</div>
										<div class="event-info">
											<h4 class="event-title"><a href="service-details_brgy(.)_clearance.php?id=01">BARANGAY CLEARANCE<h4>(Local Employment, Abroad, School, Senior Citizen, Any Legal Purposes, Residency, Indigency, DST O.R)</h2> </a></h4>
											<ul class="media-post">
												<li><i>&nbsp;</i></li>
											</ul>
											<p><p>STEP 1:  Ask request slip and fill up your name.</p><p>STEP 2: Submit the filled up request slip. <a href="service-details_brgy(.)_clearance.php?id=01" style="color: #5691cf;">.... See More</a></p>
										</div>
									</div>
								</div>
							</li>
							<li class="action-card col-lg-6 col-md-6 col-sm-12 expired">
								<div class="event-bx m-b30">
									<!-- <div class="action-box">
										<a href="announcement-details?id=48"><img src="assets/images/announcement/service.jpg" style="height: 280px;object-fit: cover;" alt=""></a>
									</div> -->
									<div class="info-bx d-flex">
										<div>
											<a href="service-details_use_of_brgy(.)_facilities.php?id=02"><div class="event-time">
												<div class="event-date">02</div>
											</div></a>
										</div>
										<div class="event-info">
											<h4 class="event-title"><a href="service-details_use_of_brgy(.)_facilities.php?id=02">Use of Barangay Facilities</a></h4>
											<ul class="media-post">
												<li><i>&nbsp;</i></li>
											</ul>
											<p><p> 1: Table.</p><p>2: Chairs</p><p><a href="service-details_use_of_brgy(.)_facilities.php?id=02" style="color: #5691cf;">.... See More</a></p>
										</div>
									</div>
								</div>
							</li>
							<li class="action-card col-lg-6 col-md-6 col-sm-12 expired">
								<div class="event-bx m-b30">
									<!-- <div class="action-box">
										<a href="announcement-details?id=19"><img src="assets/images/announcement/services.jpg" style="height: 280px;object-fit: cover;" alt=""></a>
									</div> -->
									<div class="info-bx d-flex">
										<div>
											<a href="service-details_brgy(.)_business_clearance.php?id=03"><div class="event-time">
												<div class="event-date">03</div>
											</div></a>
										</div>
										<div class="event-info">
											<h4 class="event-title"><a href="service-details_brgy(.)_business_clearance.php?id=03">Barangay Business Clearance</a></h4>
											<ul class="media-post">
												<li><i>&nbsp;</i></li>
											</ul>
											<p><p>STEP 1:Ask request slip and fill up your name.</p><p data-f-id="pbf" style="text" ><a href="service-details_brgy(.)_business_clearance.php?id=03" style="color: #5691cf;">.... See More</a></p>
										</div>
									</div>
								</div>
							</li>
							<li class="action-card col-lg-6 col-md-6 col-sm-12 expired">
								<div class="event-bx m-b30">
									<!-- <div class="action-box">
										<a href="announcement-details?id=17"><img src="assets/images/announcement/services.jpg" style="height: 280px;object-fit: cover;" alt=""></a>
									</div> -->
									<div class="info-bx d-flex">
										<div>
											<a href="service-details_issuance_of_summons.php?id=04"><div class="event-time">
												<div class="event-date">04</div>
											</div></a>
										</div>
										<div class="event-info">
											<h4 class="event-title"><a href="service-details_issuance_of_summons.php?id=04">Issuance of Summons</a></h4>
											<ul class="media-post">
												<li><i>&nbsp;</i></li>
											</ul>
											<p><p>STEP 1: Ask request slip and fill up your name.</p><p>STEP 2: Submit the filled up request slip.</p><p><a href="service-details_issuance_of_summons.php?id=04" style="color: #5691cf;">.... See More</a></p>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
        </div>
							
						</div>
					</div>
                </div>
            </div>
            <!-- Our Story End -->	
			
			    </div>
		<!-- Page Content Box END ==== -->
    </div>
	<!-- Page Content Box END ==== -->
	<!-- Footer ==== -->
    <footer>
        <div class="footer-top">
			<div class="pt-exebar">
				<div class="container">
					<div class="d-flex align-items-stretch">
						<div class="pt-logo mr-auto">
							<img src="assets/images/logo-white1.png" style="width: 220px;; height: 60px;" alt=""/>
						</div>
						<div class="pt-social-link">
							<ul class="list-inline m-a0">
								<li><a href="https://facebook.com/profile.php?id=100069445621624&mibextid=ZbWKwL" class="btn-link" target="blank"><i class="fa fa-facebook"></i></a></li>
							</ul>
						</div>
						<div class="pt-btn-join">
							<a href="contact.php" class="btn ">Contact Us</a>
						</div>
					</div>
				</div>
			</div>
            <div class="container">
                <div class="row">
					<div class="col-lg-3 col-md-12 col-sm-12 footer-col-3">
                        <div class="widget">
                        	<center><img src="assets/images/logo2.png" style="width: 170px; height: 170px;"></center>
                        </div>
                    </div>
					<div class="col-12 col-lg-9 col-md-12 col-sm-12">
						<div class="row">
							<div class="col-3 col-lg-2 col-md-3 col-sm-3">
								<div class="widget footer_widget">
									<h5 class="footer-title">Gov Links</h5>
									<ul>
										<li><a href="https://www.gov.ph/" target="blank">Gov Ph</a></li>
										<li><a href="https://sugbo.ph/" target="blank">Sugbo Ph</a></li>
										<li><a href="http://barili.gov.ph/" target="blank">Barili Ph</a></li>
									</ul>
								</div>
							</div>
							<div class="col-3 col-lg-2 col-md-3 col-sm-3">
								<div class="widget footer_widget">
									<h5 class="footer-title">Quick Links</h5>
									<ul>
										<li><a href="history.php">Our Story</a></li>
										<!-- <li><a href="all-announcements.php">Brgy. Programs</a></li>
										<li><a href="guidelines.php">Guidelines</a></li> -->
										<li><a href="contact.php">Contact Us</a></li>
									</ul>
								</div>
							</div>
							<div class="col-6 col-lg-8 col-md-6 col-sm-6">
								<div class="widget footer_widget">
									<h5 class="footer-title">Contact Us</h5>
									<ul>
										<li><a href="https://www.google.com/maps/dir//4G7H%2B6FW+Bolocboloc+Gym,+brgy,+Barili,+Cebu/@10.1130842,123.5284076,96m/data=!3m1!1e3!4m8!4m7!1m0!1m5!1m1!1s0x33a9630643dd013b:0x6265dd3ae93a9dd5!2m2!1d123.528696!2d10.1131061" target="blank">Bolocboloc Gym, Barili, Cebu City,<br>6036 Barili</a></li>
										<li><a href="https://mail.google.com/mail/u/0/?fs=1&tf=cm&source=mailto&su=New+Stranger+from:&to=brgybolocboloc.infosys@gmail.com" target="blank">brgybolocboloc.infosys@gmail.com</a></li>
										<li><a href="#">09104935212</a></li>
									</ul>
								</div>
							</div>							
						</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 text-center">© 2023 <a href="#" style="color: white;">Barangay Bolocboloc</a> All Rights Reserved.</div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer END ==== -->
    <button class="back-to-top fa fa-chevron-up" ></button>
    <script data-cfasync="false" src="../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script type="text/javascript">
		document.addEventListener("contextmenu", function(e){
	    e.preventDefault();
		}, false);
	</script>			
</div>
<!-- External JavaScripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/vendors/bootstrap/js/popper.min.js"></script>
<script src="assets/vendors/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/vendors/bootstrap-select/bootstrap-select.min.js"></script>
<script src="assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
<script src="assets/vendors/magnific-popup/magnific-popup.js"></script>
<script src="assets/vendors/counter/waypoints-min.js"></script>
<script src="assets/vendors/counter/counterup.min.js"></script>
<script src="assets/vendors/imagesloaded/imagesloaded.js"></script>
<script src="assets/vendors/masonry/masonry.js"></script>
<script src="assets/vendors/masonry/filter.js"></script>
<script src="assets/vendors/owl-carousel/owl.carousel.js"></script>
<script src="assets/vendors/scroll/scrollbar.min.js"></script>
<script src="assets/js/functions.js"></script>
<script src="assets/vendors/chart/chart.min.js"></script>
<script src="assets/js/admin.js"></script>
<script src="assets/vendors/calendar/moment.min.js"></script>
<script src="assets/vendors/calendar/fullcalendar-2.js"></script>
<script src="assets/vendors/switcher/switcher.js"></script>
<script>
	$('body').addClass('window-loading');
	var loader = document.querySelector(".loader")
	window.addEventListener("load", vanish);

	function vanish(){
		loader.classList.add("disppear");
		$('body').removeClass('window-loading');
	}
</script>
<script>

function toggleDropdown(dropdownId) {
    var dropdowns = document.querySelectorAll('.dropdown');
    dropdowns.forEach(function (dropdown) {
      dropdown.style.display = 'none';
    });

    var selectedDropdown = document.getElementById(dropdownId);
    selectedDropdown.style.display = 'block';
  }

  function toggleCheckboxDropdown(checkboxId, dropdownId) {
    var checkbox = document.getElementById(checkboxId);
    var checkboxDropdown = document.getElementById(dropdownId);
    checkboxDropdown.style.display = checkbox.checked ? 'block' : 'none';
  }
  </script>
</body>

</html>