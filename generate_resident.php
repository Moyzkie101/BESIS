<?php include 'server/server.php' ?>
<?php 
    $id = $_GET['id'];
	$query = "SELECT * FROM tblresident WHERE id='$id'";
    $result = $conn->query($query);
    $resident = $result->fetch_assoc();
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<?php include 'templates/header.php' ?>
	<title>Generate Resident Profile -  BIS</title>
</head>
<body>
<?php include 'templates/loading_screen.php' ?>
	<div class="wrapper">
		<!-- Main Header -->
		<?php include 'templates/main-header.php' ?>
		<!-- End Main Header -->

		<!-- Sidebar -->
		<?php include 'templates/sidebar.php' ?>
		<!-- End Sidebar -->

		<div class="main-panel">
			<div class="content">
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div> 
								<h2 class="text-white fw-bold">Generate Resident Profile</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="page-inner">
					<div class="row mt--2">
						<div class="col-md-12">

                            <?php if(isset($_SESSION['message'])): ?>
                                <div class="alert alert-<?php echo $_SESSION['success']; ?> <?= $_SESSION['success']=='danger' ? 'bg-danger text-light' : null ?>" role="alert">
                                    <?php echo $_SESSION['message']; ?>
                                </div>
                            <?php unset($_SESSION['message']); ?>
                            <?php endif ?>

                            <div class="card">
								<div class="card-header">
									<div class="card-head-row">
										<div class="card-title">Resident Profile</div>
										<div class="card-tools">
											<button class="btn btn-info btn-border btn-round btn-sm" onclick="printDiv('printThis')">
												<i class="fa fa-print"></i>
												Print Report
											</button>
										</div>
									</div>
								</div>
								<div class="card-body m-5" id="printThis">
                                    <div class="d-flex flex-wrap justify-content-around" style="border-bottom:1px solid red">
                                        <div class="text-center">
                                            <img src="assets/uploads/<?= $city_logo ?>" class="img-fluid" width="100">
										</div>
										<div class="text-center">
                                            <h3 class="mb-0">Republic of the Philippines</h3>
                                            <h3 class="mb-0">Province of <?= ucwords($province) ?></h3>
											<h3 class="mb-0">Municipality of <?= ucwords($town) ?></h3>
											<h2 class="fw-bold mb-0">Barangay <?= ucwords($brgy) ?></h2>
                                            <p><i>Mobile No. <?= $number ?></i></p>
                                            <h1 class="fw-bold mb-3 ">Resident Profile</h1>

										</div>
                                        <div class="text-center">
                                            <img src="assets/uploads/<?= $brgy_logo ?>" class="img-fluid" width="100">
										</div>
									</div>
                                    <div class="row mt-2">
                                        <div class="col-md-3">
                                            <div class="text-center p-1" style="border:1px solid red">
                                                <img src="<?= preg_match('/data:image/i', $resident['picture']) ? $resident['picture'] : 'assets/uploads/resident_profile/'.$resident['picture'] ?>" alt="Resident Profile" class="img-fluid">
                                            </div>
                                        </div>

                                        <div class="col-md-9">
                                            <div class="row">
                                                <div class="col">
                                                    <div class="form-group row">
                                                        <h3 class="mt-5 col-lg-10 col-md-6 col-sm-4 mt-sm-2 text-left">Complete Name:</h3>
                                                        <div class="col-lg-12 col-md-12 col-sm-12 text-left">
                                                            <input type="text" class="form-control-plaintext fw-bold" style="font-size:20px" value="<?= ucwords($resident['firstname'].' '.$resident['middlename'].' '.$resident['lastname']) ?>" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <h3 class="mt-5 col-lg-5 col-md-4 col-sm-4 mt-sm-2 text-left">National ID:</h3>
                                                        <div class="col-lg-12 col-md-12 col-sm-12 text-left">
                                                            <input type="text" class="form-control-plaintext fw-bold" style="font-size:20px" value="<?= $resident['national_id'] ?>" readonly>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-group row">
                                                        <h3 class="mt-5 col-lg-5 col-md-4 col-sm-4 mt-sm-2 text-left">Vital Status:</h3>
                                                        <div class="col-lg-12 col-md-12 col-sm-12 text-left">
                                                            <input type="text" class="form-control-plaintext fw-bold" style="font-size:20px" value="<?= $resident['resident_type']==1 ? 'Alive' : 'Deceased' ?>" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <h3 class="mt-5 col-lg-4 col-md-4 col-sm-4 mt-sm-2 text-left">Alias:</h3>
                                                        <div class="col-lg-12 col-md-12 col-sm-12 text-left">
                                                            <input type="text" class="form-control-plaintext fw-bold" style="font-size:20px" value="<?= $resident['alias'] ?>" readonly>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group row">
                                                <h3 class="mt-5 col-lg-5 col-md-4 col-sm-4 mt-sm-2 text-left">Birthdate:</h3>
                                                <div class="col-lg-12 col-md-12 col-sm-12 text-left">
                                                    <input type="text" class="form-control-plaintext fw-bold" style="font-size:20px" value="<?= date('F d, Y', strtotime($resident['birthdate'])) ?>" readonly>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group row">
                                                <h3 class="mt-5 col-lg-4 col-md-4 col-sm-4 mt-sm-2 text-left">Age:</h3>
                                                <div class="col-lg-12 col-md-12 col-sm-12 text-left">
                                                    <input type="text" class="form-control-plaintext fw-bold" style="font-size:20px" value="<?= $resident['age'] ?> yrs. old" readonly>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group row">
                                                <h3 class="mt-5 col-lg-10 col-md-6 col-sm-4 mt-sm-2 text-left">Civil Status:</h3>
                                                <div class="col-lg-12 col-md-12 col-sm-12 text-left">
                                                    <input type="text" class="form-control-plaintext fw-bold" style="font-size:20px" value="<?= $resident['civilstatus'] ?>" readonly>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group row">
                                                <h3 class="mt-5 col-lg-4 col-md-4 col-sm-4 mt-sm-2 text-left">Gender:</h3>
                                                <div class="col-lg-12 col-md-12 col-sm-12 text-left">
                                                    <input type="text" class="form-control-plaintext fw-bold" style="font-size:20px" value="<?= $resident['gender'] ?>" readonyl>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group row">
                                                <h3 class="mt-5 col-lg-4 col-md-4 col-sm-4 mt-sm-2 text-left">Purok:</h3>
                                                <div class="col-lg-12 col-md-12 col-sm-12 text-left">
                                                    <input type="text" class="form-control-plaintext fw-bold" style="font-size:20px" value="<?= $resident['purok'] ?>" readonly>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group row">
                                                <h3 class="mt-5 col-lg-10 col-md-6 col-sm-4 mt-sm-2 text-left">Household No.:</h3>
                                                <div class="col-lg-12 col-md-12 col-sm-12 text-left">
                                                    <input type="text" class="form-control-plaintext fw-bold" style="font-size:20px" value="<?= $resident['household'] ?>" readonly>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group row">
                                                <h3 class="mt-5 col-lg-10 col-md-10 col-sm-4 mt-sm-2 text-left">Registered Voter:</h3>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 text-left">
                                            <input type="text" class="form-control-plaintext fw-bold" style="font-size:20px" value="<?= $resident['voterstatus'] ?>" readonly>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group row">
                                                <h3 class="mt-5 col-lg-10 col-md-10 col-sm-4 mt-sm-2 text-left">Voter Identified as:</h3>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 text-left">
                                                <input type="text" class="form-control-plaintext fw-bold" style="font-size:20px" value="<?= $resident['identified_as'] ?>" readonly>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group row">
                                                <h3 class="mt-5 col-lg-10 col-md-6 col-sm-4 mt-sm-2 text-left">Phone Number:</h3>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 text-left">
                                                <input type="text" class="form-control-plaintext fw-bold" style="font-size:20px" value="<?= $resident['phone'] ?>" readonly>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group row">
                                                <h3 class="mt-5 col-lg-10 col-md-4 col-sm-4 mt-sm-2 text-left">Email Address:</h3>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 text-left">
                                            <input type="text" class="form-control-plaintext fw-bold" style="font-size:20px" value="<?= $resident['email'] ?>" readonly>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group row">
                                                <h3 class="mt-5 col-lg-10 col-md-4 col-sm-4 mt-sm-2 text-left">Occupation:</h3>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 text-left">
                                                <textarea class="form-control-plaintext fw-bold" style="font-size:20px" rows="3" readonly><?= ucwords(trim($resident['occupation'])) ?></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                         
                                       
                                        </div>
                                    </div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Main Footer -->
			<?php include 'templates/main-footer.php' ?>
			<!-- End Main Footer -->
			
		</div>
		
	</div>
	<?php include 'templates/footer.php' ?>
    <script>
            function printDiv(divName) {
            var printContents = document.getElementById(divName).innerHTML;
            var originalContents = document.body.innerHTML;

            document.body.innerHTML = printContents;

            window.print();

            document.body.innerHTML = originalContents;
        }
    </script>
</body>
</html>