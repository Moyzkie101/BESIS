<?php include 'server/server.php' ?>
<?php
$query = "SELECT * FROM tblpurok";
$result = $conn->query($query);

$house = array();
while($row = $result->fetch_assoc()){
	$house[] = $row; 
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<?php include 'templates/header.php' ?>
	<title>Barangay PUROK -  BIS</title>
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
								<h2 class="text-white fw-bold">Barangay Purok</h2>
	                            <input type="hidden" class="user_id" name="user_id" value="<?php echo $_SESSION['id']; ?>">
                                <input type="hidden" class="user_name" name="user_name" value="<?php echo $_SESSION['username']; ?>">

							</div>
						</div>
					</div>
				</div>
				<div class="page-inner">
					<div class="row mt--2">
						<div class="col-md-12">

                            <?php if(isset($_SESSION['message'])): ?>
                                <div class="alert alert-<?php echo $_SESSION['success']; ?><?= $_SESSION['success']=='danger' ? 'bg-danger text-light' : null ?>" role="alert">
                                    <?php echo $_SESSION['message']; ?>
                                </div>
                            <?php unset($_SESSION['message']); ?>
                            <?php endif ?>
				
							<!-- <div class="card">
								<div class="card-body"> -->
									<div class="d-flex flex-wrap pb-2 justify-content-between">
										<div class="px-2 pb-2 pb-md-0 text-center">
											
										</div>
										<!-- <div class="px-2 pb-2 pb-md-0 text-center">
											<h2 class="fw-bold mt-3">Bolocboloc</h2>
											<h4 class="fw-bold mt-3"><?= ucwords($town) ?>, <?= ucwords($province) ?> </h4>
										</div> -->

										<!--<div class="px-2 pb-2 pb-md-0 text-center">
											<img src="assets/img/brgy-logo.png" class="img-fluid" width="100" style="visibility:hidden;">
										</div>-->
                                            <div class="text-center">
                                                       
									</div>
								</div>
							</div>
                    
				</div>
                            <div class="card">
								<div class="card-header">
									<div class="card-head-row">
										<div class="card-household"> All Purok</div>
										
											<div class="card-tools">
												<a href="#add" data-toggle="modal" class="btn btn-info btn-border btn-round btn-sm">
													<i class="fa fa-plus"></i>
													Purok
												</a>
											</div>
									</div>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-striped" >
											<thead>
												<tr>
													<th scope="col">Purok</th>
													<th scope="col" rowspan='3' style='text-align:right'>View</th>
												</tr>
											</thead>
											<tbody>
												<?php if(!empty($house)): ?>
													<?php foreach($house as $row): ?>
													<tr>
												
														<td><?= $row['name'] ?></td>
														<td>
															<center>
															<div class="form-button-action">
																<td><a type="button" href="#edit" data-toggle="modal" class="btn btn-link btn-primary purok" 
																	household="Edit Purok" onclick="editpurok(this)" data-id="<?= $row['id'] ?>" data-purok="<?= $row['name'] ?>" 

																	
																	><i class="fa fa-eye"></td>
																</i></a>


															<input type ="hidden" name = "try" id = "try" value = "<?= $row['id'] ?>"s>
 															</div>
 														</center>
														</td>
													</tr>
													<?php  endforeach ?>
												<?php else: ?>
													<tr>
														<td colspan="3" class="text-center">No Available Data</td>
													</tr>
												<?php endif ?>
											</tbody>
											<tfoot>
												<tr>
												
													<th scope="col">Purok</th>
													<th scope="col" rowspan='3' style='text-align:right;'>View</th>
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

            <!-- Modal -->
            <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
               
                        <div class="modal-body">
                            <form method="POST" action="model/save_household.php" >
                                <div class="form-group">
                                    <label>PUROK</label>
                                    <input type="text" class="form-control" placeholder="Enter Purok Name" name="purok" required><br>
                                    <label for="details">Purok No.</label><br>
                                    <input type="text" class="form-control" placeholder="Enter Purok No.">
                                </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">ADD</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>

            <script src="js/jquery-purok.js"></script>


           <script>
			$( document ).ready(function() {
                 
                 $(".close").click(function(){
                 	   window.location.href = "household.php";
                 });

			      $('.purok').click(function(){
			      	   $('#purok_name').val($(this).attr('data-purok'));
			      	   $(".purok-name").text("Purok - " + $(this).attr('data-purok'));
			      	   $.ajax({
                            url : 'purok_household.php',
			      	   	    method : 'post',
			      	   	    data : {
			      	   	    	  'purok' : $(this).attr('data-purok'),
			      	   	    	  'user_id' : $('.user_id').val(),
			      	   	    	  'user_name' : $('.user_name').val(),
			      	   	    	  'history' : $(this).attr('data-history')
			      	   	     },
			      	   	    success : function(d){
			      	   	    	 var household_no = JSON.parse(d);
			      	   	    	 var table = "<tr><th>Household No.</th><th>Action</th></tr>";
			      	   	    	 $.each(household_no, function(i, item) {
								       table += "<tr><td>"+item+"</td><td><button class='click_household btn btn-primary' data_household='"+item+"' data-history='View'>View</button></td></tr>";
								});
                                $("#purok_household").html(table);

                                $('.click_household').click(function(){
                                	  $.ajax({
                                	  	 url : 'household_info.php',
                                	  	 method : 'post',
                                	    data : {
                                	    	 'household' : $(this).attr('data_household'),
                                	  	     'purok' : $('#purok_name').val(),
                                	  	     'user_id' : $('.user_id').val(),
						      	   	    	 'user_name' : $('.user_name').val(),
						      	   	    	 'history' : $(this).attr('data-history') 
                                	  	 },
                                	  	 success : function(info) {
                                                var data_info = JSON.parse(info);
			      	   	    	                var table_info = "<tr><th>Firstname</th><th>Lastname</th></tr>";
			      	   	    	                $.each(data_info, function(i, item) {
												       table_info += "<tr><td>"+item.firstname+"</td><td>"+item.lastname+"</td></tr>";
												});
											    $("#household_info").html(table_info);

                                	  	 }
                                	  });
                                });
			      	   	    }
			      	   });
			      });

			});
		   </script>
          
            <!-- Modal -->
            <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                	<input type="hidden" id="purok_name">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-household purok-name" id="exampleModalLabel">Edit Household</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                              
                               <table id="purok_household" width="500px"></table>
                               <hr/>
                               <table class="table" id="household_info" width="500px"></table>
                            
                        </div>
                        <div class="modal-footer">
						
                            
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