<?php include 'server/server.php' ?>
<?php 
	
    if (isset($_GET['id'])) {
        $query = "SELECT r.id, r.picture, r.national_id,r.firstname,r.middlename,r.lastname,r.alias,r.household,r.birthplace,r.birthdate,DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), r.birthdate)), '%Y') + 0 AS age,r.civilstatus,r.gender,r.purok,r.voterstatus,r.identified_as,r.phone,r.email, r.resident_type, r.occupation, r.citizenship, s.status_name FROM tblresident AS r LEFT JOIN status AS s ON r.stat_id=s.stat_id where r.active!='no' AND r.stat_id ='".$_GET['id']."'";
    } else {
         $query = "SELECT r.id, r.picture, r.national_id,r.firstname,r.middlename,r.lastname,r.alias,r.household,r.birthplace,r.birthdate,DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), r.birthdate)), '%Y') + 0 AS age,r.civilstatus,r.gender,r.purok,r.voterstatus,r.identified_as,r.phone,r.email, r.resident_type, r.occupation, r.citizenship FROM tblresident AS r LEFT JOIN status AS s ON r.stat_id=s.stat_id  WHERE r.active!='no'";
    } 

    $result = $conn->query($query);

    $status = $conn->query("select status_name from status");
    $stat_list = array();

    $status_list = array();
    while ($ss = $status->fetch_assoc()) {
         $stat_list[] = $ss['status_name'];
    }

    //$order = "SELECT * FROM tblresident ORDER BY 'id' DESC";

    $resident = array();
	while($row = $result->fetch_assoc()){
		$resident[] = $row; 
	}
    
    $query2 = "SELECT * FROM tbl_household ORDER BY `household`";
    $result2 = $conn->query($query2);

    $household = array();
	while($row = $result2->fetch_assoc()){
		$household[] = $row; 
	}

    $query1 = "SELECT * FROM tblpurok ORDER BY `name`";
    $result1 = $conn->query($query1);

    $purok = array();
	while($row = $result1->fetch_assoc()){
		$purok[] = $row; 
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<?php include 'templates/header.php' ?>
	<title>Resident Information -  BESIS</title>
 
 <script src="js/jquery-purok.js"></script>
 <script>
     $(document).ready(function(){


           $('.filter_status').change(function(){

                 window.location.href = "http://localhost/bis/resident.php?id="+$(this).val();
           });
     });
 </script>

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
         
        <input type="text" id="text_filter_data">

		<div class="main-panel">
			<div class="content">
                
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white fw-bold">Residents</h2>
							</div>
						</div>
					</div>
                    							<div class="card">
								<div class="card-body">
									<div class="d-flex flex-wrap pb-2 justify-content-between">
										<div class="px-2 pb-2 pb-md-0 text-center">
										</div>
										<div class="px-2 pb-2 pb-md-0 text-center">
											<h1 class="fw-bold mt-3">Bolocboloc</h1>
											<h4 class="fw-bold mt-3"><?= ucwords($town) ?>, <?= ucwords($province) ?> </h4>
										</div>

										<!--<div class="px-2 pb-2 pb-md-0 text-center">
											<img src="assets/img/brgy-logo.png" class="img-fluid" width="100" style="visibility:hidden;">
										</div>-->
                                            <div class="text-center">
										</div>                                        
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
									<div class="card-title">Resident Information</div>
                                        <?php if(isset($_SESSION['username'])):?>
										<div class="card-tools">
                                             <select class="filter_status btn-border btn-round btn-sm" required >
                                                <option disabled selected value="">Filter Category</option>
                                                   <?php 
                                                         $stat = $conn->query("select * from status");
                                                         while ($ro = mysqli_fetch_array($stat)) {
                                                              ?> 
                                                                 <option value="<?php echo $ro['stat_id']; ?>" 
                                                                    <?php 
                                                                        if( $ro['stat_id'] == $_GET['id'] ){
                                                                            echo "selected";
                                                                        }
                                                                    ?>
                                                                ><?php echo $ro['status_name']; ?></option>
                                                        <?php
                                                         }
                                                    ?>
                                                </select>
                

											<a href="#add" data-toggle="modal" class="btn btn-info btn-border btn-round btn-sm">
												<i class="fa fa-plus"></i>
												Resident
											</a>
                                            <a href="model/export_resident_csv.php/?id=<?php echo $_GET['id']; ?>" class="btn btn-danger btn-border btn-round btn-sm">
												<i class="fa fa-file"></i>
												Export CSV
											</a>
										</div>
                                        <?php endif ?>
									</div>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table id="residenttable" class="display table table-striped remove_id">
											<thead>
												<tr>
                                                    <th scope="col">No.</th>
													<th scope="col">Full Name</th>
                                                    <th scope="col">National ID</th>
													<th scope="col">Alias</th>
                                                    <th scope="col">Household No.</th>
													<th scope="col">Birthdate</th>
													<th scope="col">Age</th>
													<th scope="col">Civil Status</th>
                                                    <th scope="col">Gender</th>
													<th scope="col">Purok</th>
                                                    <th scope="col">Beneficiary Status</th>
                                                    <?php if(isset($_SESSION['username'])):?>
                                                        <?php if($_SESSION['role']=='administrator'):?>
													<th scope="col">Registered Voter</th>
                                                    <?php endif ?>
													<th scope="col">Action</th>
                                                    <?php endif ?>
												</tr>
											</thead>
											<tbody id="filter_record">

												<?php if(!empty($resident)): ?>
													<?php $no=1; foreach($resident as $row): ?>
													<tr>
                                                        <td><?= $row['id'] ?></td>
														<td>
                                                            <div class="avatar avatar-xs">
                                                                <img src="<?= preg_match('/data:image/i', $row['picture']) ? $row['picture'] : 'assets/uploads/resident_profile/'.$row['picture'] ?>" alt="Resident Profile" class="avatar-img rounded-circle">
                                                            </div>
                                                            <?= ucwords($row['lastname'].', '.$row['firstname'].' '.$row['middlename']) ?>
                                                        </td>
                                                        <td><?= $row['national_id'] ?></td>
														<td><?= $row['alias'] ?></td>
                                                        <td><?= $row['household'] ?></td>
														<td><?= $row['birthdate'] ?></td>
														<td><?= $row['age'] ?></td>
                                                        <td><?= $row['civilstatus'] ?></td>
                                                        <td><?= $row['gender'] ?></td>
                                                        <td><?= $row['purok'] ?></td>
                                                         <td>
                                                            <!-- <?php 
                                                               if ($row['stat_id'] != 0) {
                                                                  echo $stat_list[($row['stat_id']-1)];
                                                               } else {
                                                                echo "Error not found!";
                                                               }
                                                            ?> -->      
                                                            <?= $row['status_name'] ?>

                                                         </td>
                                                        <?php if(isset($_SESSION['username'])):?>
                                                            <?php if($_SESSION['role']=='administrator'):?>
                                                        <td><?= $row['voterstatus'] ?></td>
                                                        <?php endif ?>
														<td>
															<div class="form-button-action">
                                                                <a type="button" href="#edit" data-toggle="modal" class="btn btn-link btn-primary check_status check_household" title="View Resident" onclick="editResident(this)" 
                                                                    data-id="<?= $row['id'];?>"
                                                                    data-national="<?= $row['national_id'];?>" data-fname="<?= $row['firstname'];?>" data-mname="<?= $row['middlename'];?>" data-lname="<?= $row['lastname'];?>"
                                                                    data-alias="<?= $row['alias'] ?>" 
                                                                   data-household="<?= $row['household'];?>"data-bplace="<?= $row['birthplace'];?>" data-bdate="<?= $row['birthdate'];?>"
                                                                   data-age="<?= $row['age'];?>"
                                                                    data-cstatus="<?= $row['civilstatus'];?>" data-gender="<?= $row['gender'];?>"
                                                                    data-purok="<?= $row['purok'];?>" data-vstatus="<?= $row['voterstatus'];?>"
                                                                    data-identify="<?= $row['identified_as'];?>"data-number="<?= $row['phone'];?>"
                                                                    data-email="<?= $row['email'];?>" data-address="<?= $row['address'];?>" 
                                                                    data-img="<?= $row['picture'] ?>"
                                                                    data-citi="<?= $row['citizenship'];?>" data-occu="<?= $row['occupation'];?>" data-vital="<?= $row['resident_type'];?>" data-remarks="<?= $row['remarks'];?>" data-status="<?= $row['stat_id'];?>">

                                                                    <?php if(isset($_SESSION['username'])): ?>
                                                                    <i class="fa fa-edit"></i>
                                                                    <?php else: ?>
                                                                        <i class="fa fa-eye"></i>
                                                                    <?php endif ?>
                                                                </a>
                                                                <?php if(isset($_SESSION['username']) && $_SESSION['role']=='administrator'):?>
																<a type="button" data-toggle="tooltip" href="generate_resident.php?id=<?= $row['id'] ?>" class="btn btn-link btn-info" data-original-title="Generate">
																	<i class="fa fa-file"></i>
																</a>
                                                                <a type="button" data-toggle="tooltip" href="model/remove_resident.php?id=<?= $row['id'] ?>&user_id=<?= $_SESSION['id'] ?>&username=<?= $_SESSION['username'] ?>&fullname=<?= $row['firstname'].' '. $row['lastname'] ?>" onclick="return confirm('Are you sure you want to delete this resident?');" class="btn btn-link btn-danger" data-original-title="Remove">
																	<i class="fa fa-times"></i>
																</a>
                                                                <?php endif ?>
															</div>
														</td>
                                                        <?php endif ?>
														
													</tr>
													<?php $no++; endforeach ?>
												<?php endif ?>
                                               
											</tbody>
                                        

											<tfoot>
												<tr>
                                                    <th scope="col">No.</th>
                                                    <th scope="col">Full Name</th>
                                                    <th scope="col">National ID</th>
													<th scope="col">Alias</th>
                                                    <th scope="col">Household No.</th>
													<th scope="col">Birthdate</th>
													<th scope="col">Age</th>
													<th scope="col">Civil Status</th>
                                                    <th scope="col">Gender</th>
													<th scope="col">Purok</th>
                                                    <th scope="col">Beneficiary Status</th>

                                    
                                                    <?php if(isset($_SESSION['username'])):?>
                                                        <?php if($_SESSION['role']=='administrator'):?>
													<th scope="col">Registered Voter</th>
                                                    <?php endif ?>
													<th scope="col">Action</th>
                                                    <?php endif ?>
												</tr>
											</tfoot>
										</table>
									</div>
								</div>
							</div>
						</div>        
					</div>
				</div>
			</div>

            <!-- Modal FOR ADDING DATA -->
            <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Add New Resident Registration Form</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form method="POST" action="model/save_resident.php" enctype="multipart/form-data">
                            <input type="hidden" name="size" value="1000000">
                            <div class="row">
                                <div class="col-md-4">
                                    <div style="width: 370px; height: 250;" class="text-center" id="my_camera">
                                        <img src="assets/img/person.png" alt="..." class="img img-fluid" width="250" >
                                    </div>
                                    <div class="form-group d-flex justify-content-center">
                                        <button type="button" class="btn btn-danger btn-sm mr-2" id="open_cam">Open Camera</button>
                                        <button type="button" class="btn btn-secondary btn-sm ml-2" onclick="save_photo()">Capture</button>   
                                    </div>
                                    <div id="profileImage">
                                        <input type="hidden" name="profileimg">
                                    </div>
                                    <div class="form-group">
                                        <input type="file" class="form-control" name="img" accept="image/*">
                                    </div>
                                    <div class="form-group">
                                        <label>National ID No.</label>
                                        <input type="text" class="form-control" name="national" placeholder="Enter National ID No." maxlength="16" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Citizenship</label>
                                        <input type="text" class="form-control" name="citizenship" placeholder="Enter citizenship" required>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Firstname</label>
                                                <input type="text" class="form-control" placeholder="Enter Firstname" name="fname" required>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Middlename</label>
                                                <input type="text" class="form-control" placeholder="Enter Middlename" name="mname" required>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Lastname</label>
                                                <input type="text" class="form-control" placeholder="Enter Lastname" name="lname" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Alias</label>
                                                <input type="text" class="form-control" placeholder="Enter Alias" name="alias" required>
                                            </div>
                                        </div>
                                         <div class="col">
                                            <div class="form-group">
                                                <label>Household No.</label>
                                                <select class="form-control" name="household" required>
                                                    <option disabled selected>Select Household No</option>
                                                    <?php foreach($household as $row):?>
                                                        <option value="<?= ucwords($row['household']) ?>"><?= $row['household'] ?></option>
                                                    <?php endforeach ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Place of Birth</label>
                                                <input type="text" class="form-control" placeholder="Enter Birthplace" name="bplace" required>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Birthdate</label>
                                                <input type="date" class="form-control" placeholder="Enter Birthdate" name="bdate" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <!-- <div class="col">
                                            <div class="form-group">
                                                <label>Age</label>
                                                <input type="number" class="form-control" placeholder="Enter Age" min="1" name="age" required>
                                                </div>
                                            </div> -->
                                            <div class="col">
                                                <div class="form-group">
                                                <label>Civil Status</label>
                                                <select class="form-control" name="cstatus" required>
                                                    <option disabled selected>Select Civil Status</option>
                                                    <option value="Single">Single</option>
                                                    <option value="Married">Married</option>
                                                    <option value="Widow">Widow</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Gender</label>
                                                <select class="form-control" required name="gender" required>
                                                    <option disabled selected value="">Select Gender</option>
                                                    <option value="Male">Male</option>
                                                    <option value="Female">Female</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Purok</label>
                                                <select class="form-control" name="purok" required>
                                                    <option disabled selected>Select Purok Name</option>
                                                    <?php foreach($purok as $row):?>
                                                        <option value="<?= ucwords($row['name']) ?>"><?= $row['name'] ?></option>
                                                    <?php endforeach ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Voter Registered?</label>
                                                <select class="form-control" name="vstatus" required>
                                                    <option disabled selected>Select Voters Status</option>
                                                    <option value="Yes">Yes</option>
                                                    <option value="No">No</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Voter Identified As</label>
                                                <select class="form-control" name="identity_as" required>
                                                    <option disabled selected>Select Voters Identified As</option>
                                                    <option value="Active">Active</option>
                                                    <option value="Inactive">Inactive</option>
                                                    <option value="Unregistered">Unregistered</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Email Address</label>
                                                <input type="email" class="form-control" placeholder="Enter Email" name="email" required>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Contact Number</label>
                                                <input type="text" class="form-control" placeholder="Enter Contact Number" name="number" maxlength="11" required>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Occupation</label>
                                                <input type="text" class="form-control" placeholder="Enter Occupation" name="occupation" required>
                                            </div>
                                        </div>
                                       
                                    </div>
                                   <div class="row">
                                            <div class="form-group">
                                                <label>Beneficiaries Status</label>
                                                <select class="form-control" name="status" required>
                                                    <option disabled selected value=""> Select Beneficiaries Status </option>


                                                    <?php 
                                                         $stat = $conn->query("select * from status");
                                                         while ($ro = mysqli_fetch_array($stat)) {
                                                              ?>
                                                               
                                                                 <option value="<?php echo $ro['stat_id']; ?>"><?php echo $ro['status_name']; ?></option>

                                                              <?php
                                                         }
                                                    ?>

                                                </select>
                                            </div>
                                     </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>

            <!-- Modal FOR UPDATING DATA-->
            <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Edit/View Resident Information</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form method="POST" action="model/edit_resident.php" enctype="multipart/form-data">
                            <input type="hidden" name="size" value="1000000">
                            <div class="row">
                                <div class="col-md-4">
                                    <div id="my_camera1" style="width: 370px; height: 250;" class="text-center">
                                        <img src="assets/img/person.png" alt="..." class="img img-fluid" width="250" id="image">
                                    </div>
                                    <?php if(isset($_SESSION['username'])):?>
                                    <div class="form-group d-flex justify-content-center">
                                        <button type="button" class="btn btn-danger btn-sm mr-2" id="open_cam1">Open Camera</button>
                                        <button type="button" class="btn btn-secondary btn-sm ml-2" onclick="save_photo1()">Capture</button>   
                                    </div>
                                    <div id="profileImage1">
                                        <input type="hidden" name="profileimg">
                                    </div>
                                    <div class="form-group">
                                        <input type="file" class="form-control" name="img" accept="image/*">
                                    </div>
                                    <?php endif ?>
                                    <div class="form-group">
                                        <label>Vital Status</label><br>
                                        <div class="selectgroup selectgroup-secondary selectgroup-pills">
                                            <label class="selectgroup-item">
                                                <input type="radio" name="deceased" value="1" class="selectgroup-input" checked="" id="alive">
                                                <span class="selectgroup-button selectgroup-button-icon"><i class="fa fa-walking"></i></span>
                                            </label><p class="mt-1 mr-3"><b>Alive</b></p>
                                            <label class="selectgroup-item">
                                                <input type="radio" name="deceased" value="0" class="selectgroup-input" id="dead">
                                                <span class="selectgroup-button selectgroup-button-icon"><i class="fa fa-people-carry"></i></span>
                                            </label><p  class="mt-1 mr-3"><b>Deceased</b></p>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>National ID No.</label>
                                        <input type="text" class="form-control" name="national" id="nat_id" placeholder="Enter National ID No." maxlength="16" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Citizenship</label>
                                        <input type="text" class="form-control" name="citizenship" id="citizenship" placeholder="Enter citizenship" required>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Firstname</label>
                                                <input type="text" class="form-control" placeholder="Enter Firstname" name="fname" id="fname" required>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Middlename</label>
                                                <input type="text" class="form-control" placeholder="Enter Middlename" name="mname" id="mname" required>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Lastname</label>
                                                <input type="text" class="form-control" placeholder="Enter Lastname" name="lname" id="lname" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Alias</label>
                                                <input type="text" class="form-control" placeholder="Enter Alias" id="alias" name="alias" required>
                                            </div>
                                        </div>
                                         <div class="col">
                                            <div class="form-group">
                                                <label>Household No.</label>

                                                 <script src="https://code.jquery.com/jquery-3.6.0.js"></script>

                                                <script>
                                                    $("document").ready(function(){

                                                          $(".check_household").click(function() {
                                                              var household = $(this).attr('data-household');
                                                              $("#household > option").each(function() {
                                                                    
                                                                    if (this.value == household) {
                                                                         $("#household").find('option[value="'+household+'"]').prop('selected', true);
                                                                          
                                                                     } 
                                                              });
                                                          });
                                                    });
                                                </script>

                                                <select class="form-control" required name="household" id="household">
                                                    <option disabled selected>Select Household No.</option>
                                                    <?php foreach($household as $row):?>
                                                        <option value="<?= ucwords($row['household']) ?>"><?= $row['household'] ?></option>
                                                    <?php endforeach ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Place of Birth</label>
                                                <input type="text" class="form-control" placeholder="Enter Birthplace" name="bplace" id="bplace" required>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Birthdate</label>
                                                <input type="date" class="form-control" placeholder="Enter Birthdate" name="bdate" id="bdate" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Age</label>
                                                <input type="number" class="form-control" placeholder="Enter Age" min="1" name="age" id="age" readonly>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="form-group">
                                                <label>Civil Status</label>
                                                <select class="form-control" required name="cstatus" id="cstatus">
                                                    <option disabled selected>Select Civil Status</option>
                                                    <option value="Single">Single</option>
                                                    <option value="Married">Married</option>
                                                    <option value="Widow">Widow</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Gender</label>
                                                <select class="form-control" required name="gender" id="gender">
                                                    <option disabled selected>Select Gender</option>
                                                    <option value="Male">Male</option>
                                                    <option value="Female">Female</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Purok</label>
                                                <select class="form-control" required name="purok" id="purok">
                                                    <option disabled selected>Select Purok Name</option>
                                                    <?php foreach($purok as $row):?>
                                                        <option value="<?= ucwords($row['name']) ?>"><?= $row['name'] ?></option>
                                                    <?php endforeach ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Voter Registered?</label>
                                                <select class="form-control" required name="vstatus" id="vstatus">
                                                    <option disabled selected>Select Voters Status</option>
                                                    <option value="Yes">Yes</option>
                                                    <option value="No">No</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Voter Identified As</label>
                                                <select class="form-control" name="identity_as" id="identify" required>
                                                    <option disabled selected>Select Voter Identified As</option>
                                                    <option  value="Active">Active</option>
                                                    <option  value="Inactive">Inactive</option>
                                                    <option  value="Unregistered">Unregistered</option>
                                                </select>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Email Address</label>
                                                <input type="email" class="form-control" placeholder="Enter Email" name="email" id="email" required>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Contact Number</label>
                                                <input type="text" class="form-control" placeholder="Enter Contact Number" name="number" id="number" maxlength="11" required>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label>Occupation</label>
                                                <input type="text" class="form-control" placeholder="Enter Occupation" name="occupation" id="occupation" required>
                                            </div>
                                        </div>
                                    </div>
                                        <div class="row">
                                            <div class="form-group">
                                                <label>Beneficiaries Status</label>

                                                <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
                                                <script>
                                                    $("document").ready(function(){

                                                          $(".check_status").click(function() {
                                                              var stat = $(this).attr('data-status');
                                                              $("#status > option").each(function() {
                                                                    
                                                                    if (this.value == stat) {
                                                                         $("#status").find('option[value="'+stat+'"]').prop('selected', true);
                                                                          
                                                                     } 
                                                              });
                                                          });

                                                          
                                                    });
                                                </script>

                                                <select class="form-control" required name="status" id="status">
                                                   <?php 
                                                         $stat = $conn->query("select * from status");
                                                         while ($ro = mysqli_fetch_array($stat)) {
                                                              ?>
                                                                 <option value="<?php echo $ro['stat_id']; ?>"><?php echo $ro['status_name']; ?></option>
                                                              <?php
                                                         }
                                                    ?>
                                                </select>
                                            </div>
                                        </div>
                                    <input type="hidden" name="user_id" value="<?php echo $_SESSION['id']; ?>">
                                    <input type="hidden" name="name" value="<?php echo $_SESSION['username']; ?>">
                                </div>
                            
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="hidden" name="id" id="res_id">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <?php if(isset($_SESSION['username'])): ?>
                            <button type="submit" class="btn btn-primary">Update</button>
                            <?php endif ?>
                        </div>
                        </form>
                    </div>
                </div>
            </div>

			<!-- Main Footer -->
			<?php include 'templates/main-footer.php' ?>
			<!-- End Main Footer -->
			
		</div>
		
	</div>
	<?php include 'templates/footer.php' ?>
    <script src="assets/js/plugin/datatables/datatables.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#residenttable').DataTable();
        });
    </script>
</body>
</html>