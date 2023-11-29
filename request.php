<?php include 'server/server.php' ?>
<?php 
	if(isset($_SESSION['role'])){
		if($_SESSION['role'] =='staff'){
			$off_q = "SELECT * FROM tblrequest ";
		}else{
			$off_q = "SELECT * FROM tblrequest  ORDER BY id DESC";
		}
	}else{
		$off_q = "SELECT * FROM tblrequest ORDER BY id DESC";
	}
	
	$res_o = $conn->query($off_q);

	$official = array();
	while($row = $res_o->fetch_assoc()){
		$official[] = $row; 
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<?php include 'templates/header.php' ?>
	<title>Requested Forms -  BESIS</title>

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
								<h2 class="text-white fw-bold">Request</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="page-inner">
					<?php if(isset($_SESSION['message'])): ?>
							<div class="alert alert-<?php echo $_SESSION['success']; ?> <?= $_SESSION['success']=='danger' ? 'bg-danger text-light' : null ?>" role="alert">
								<?php echo $_SESSION['message']; ?>
							</div>
						<?php unset($_SESSION['message']); ?>
						<?php endif ?>
					<div class="row mt--2">
						
						<div class="col-md-12">
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
							<div class="card">
								<div class="card-header">
									<div class="card-head-row">
										<div class="card-title">Requested Forms</div>
										<?php if(isset($_SESSION['username'])):?>
											
										<?php endif?>
									</div>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-striped">
											<thead>
												<tr>
													<th scope="col">Full Name</th>
													<th scope="col">National ID</th>
                                                    <th scope="col">Email Address/Contact #</th>
													<th scope="col">Age</th>
													<th scope="col">Gender</th>
													<th scope="col">Form</th>
													<?php if(isset($_SESSION['username'])):?>
														<?php if($_SESSION['role']=='administrator'):?>
															<th>Status</th>
														<?php endif ?>
														<th>Action</th>
													<?php endif?>
												</tr>
											</thead>
											<tbody>
												<?php if(!empty($official)): ?>
													<?php foreach($official as $row): ?>
														<tr>
															<td class="text-uppercase"><?= $row['fullname'] ?></td>
															<td><?= $row['national_id'] ?></td>
                                                            <td><?= $row['gcontact'] ?></td>
															<td><?= $row['age'] ?></td>
															<td><?= $row['gender'] ?></td>
															<td><?= $row['form'] ?></td>
															<td><?= $row['status'] ?></td>
																<td>
																	<a type="button" href="#edit" data-toggle="modal" class="btn btn-link btn-primary edit_official" 
																		title="Edit Position" onclick="editOfficial(this)" data-id="<?= $row['id'] ?>" data-name="<?= $row['fullname'] ?>"
                                                                       
																		 data-pos="<?= $row['age'] ?>" data-start="<?= $row['gender'] ?>" 
																		data-end="<?= $row['form'] ?>" data-status="<?= $row['status'] ?>" user_id = "<?php echo $_SESSION['id']; ?>" user_name="<?php echo $_SESSION['username']; ?>">
																		<i class="fa fa-edit"></i>
																	</a>
																	<?php if($_SESSION['role']=='administrator'):?>
																	<a type="button" data-toggle="tooltip" data-name= "<?= $row['fullname'] ?>" href="model/remove_request.php?id=<?= $row['id'] ?>&user_id=<?php echo $_SESSION['id'] ?>&username= <?php echo $_SESSION['username']; ?>&name=<?= $row['fullname'] ?>"
																	 onclick="return confirm('Are you sure you want to delete this request?');" class="btn btn-link btn-danger" data-original-title="Remove">
																		<i class="fa fa-trash"></i>
																	</a>
																	<?php  ?>
																</td>
															<?php endif?>
														</tr>
													<?php endforeach ?>
												<?php else: ?>
													<tr>
														<td colspan="8" class="text-center">No Available Data</td>
													</tr>
												<?php endif ?>
											</tbody>
											<tfoot>
												<tr>
                                                    <th scope="col">Full Name</th>
													<th scope="col">National ID</th>
													<th scope="col">Email Address/Contact #</th>
													<th scope="col">Age</th>
													<th scope="col">Gender</th>
													<th scope="col">Form</th>
													<?php if(isset($_SESSION['username'])):?>
														<?php if($_SESSION['role']=='administrator'):?>
															<th>Status</th>
														<?php endif ?>
														<th>Action</th>
													<?php endif?>
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
			
             <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
			 <script>
		  	  $(document).ready(function(){
		  	  	    $('.edit_official').click(function(){
		  	  	    	$('#req_status').val($(this).attr('data-status'));
		  	  	    	$('#data_name').val($(this).attr('data-name'));
		  	  	    });
		  	  });
		     </script>


			<!-- Modal -->
			<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Edit Request Status</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form method="POST" action="model/edit_request.php" >
                               
								
								<div class="form-group">
                                    <label>Status</label>
                                    <select class="form-control" id="status" required name="status" >
                                        <option value="Done">Done</option>
                                        <option value="Pending">Pending</option>
                                    </select>
                                </div>
                            
                        </div>
                        <div class="modal-footer">
                            <input type="hidden" id="off_id" name="id">
                            <input type="hidden" name="user_id" value="<?php echo $_SESSION['id'];
                             ?>">
                            <input type="hidden" name="username" value="<?php echo $_SESSION['username']; ?>">
                            <input type="hidden" name="request_status" id="req_status">
                            <input type="hidden" name="data_name" id="data_name">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Update</button>
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
</body>
</html>