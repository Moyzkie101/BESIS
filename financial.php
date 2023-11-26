<?php 

error_reporting(0);
include 'server/server.php' ?>
<?php 
	
	if (isset($_GET['id'])) {

	    $query = "SELECT * FROM tblresident where stat_id=".$_GET['id'];
     } else {
        $query = "SELECT * FROM tblresident";
     }

    $result = $conn->query($query);

    $financial = array();
	while($row = $result->fetch_assoc()){
		$financial[] = $row; 
	}

	$query1 = "SELECT * FROM tblresident WHERE `benefit_id`=1";
    $result1 = $conn->query($query1);
	$done = $result1->num_rows;

	$query2 = "SELECT * FROM tblresident WHERE `benefit_id`=2";
    $result2 = $conn->query($query2);
	$scheduled = $result2->num_rows;

	$query3 = "SELECT * FROM tblresident WHERE `benefit_id`=0";
    $result3 = $conn->query($query3);
	$undone = $result3->num_rows;
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<?php include 'templates/header.php' ?>
	<title>Financial Aids -  BESIS</title>
   
    <style>
    	  @media print {
               .noprint {
                  visibility: hidden;
               }
            }
    </style>

    <script src="js/jquery-2.1.4.min.js"></script>

    <!-- <script>
     $(document).ready(function(){


           $('.filter_status').change(function(){

                 window.location.href = "http://localhost/bis/financial.php?status="+$(this).val();
           });
     });
 	</script> -->

     <!-- <script>
   	   $(document).ready(function(){
   	   	     
   	   	     $("#editText").dblclick(function(){
   	   	     	   var text = $.trim($(this).text());

   	   	     	   $(this).html("<input type='text' id='newtext' value='"+text+"'>");
   	   	           
   	   	           $("#newtext").focusout(function(){
             	           $.ajax({
             	           	   url : "model/update_financialaids.php",
             	           	   method : "post",
             	           	   data : {
             	           	   	   "name" : $("#newtext").val(),
             	           	   	   "id" : $("#fin_id").val(),
             	           	   	   "prev_name" : $("#fin_name").val()
             	           	   },
             	           	   success : function(data) {
                                     if (data != "") {
                                          window.location.href = data;
                                     }
             	           	   }
             	           });
                    });

   	   	       
              
   	   	     });
            

   	   });
     </script> -->

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
    
      
     <!-- 
      <input type="text" id="fin_name" value="<?php echo $_GET['name']; ?>">  -->
      
		<div class="main-panel">
			<div class="content">
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white fw-bold">Financial Aids</h2>
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
										<div class="card-title">
											<?php 
											     if (isset($_GET['name'])) {
											         echo ucwords($_GET['name']); 
											     }
											 ?>
										</div>
		       								<?php if(isset($_SESSION['username'])):?>
											<div class="card-tools">
																										
														<?php 
												        if (isset($_GET['name'])) {
												        	?>
												        	<?php if(isset($_SESSION['username']) && $_SESSION['role']=='administrator'):?>
												        	   <a class="btn btn-warning btn-border btn-round btn-sm" href="model/remove_benefit.php?fin_id=<?= $_GET['id'] ?>&fin_name=<?= $_GET['name'] ?>&user_id=<?= $_SESSION['id'] ?>&username=<?= $_SESSION['username'] ?>" onclick="return confirm('Are you sure you want to Reset this Benefits?');">
												        	   <i class="fa fa-retweet"></i> Reset Benefit Status
												        	 </a>

												            &nbsp;&nbsp;
												               <a href="#" class="print">
												               <span class="btn btn-info btn-sm"><i class="fa fa-print"></i> Print</span></a>
												             <?php endif ?>
												            <?php 

												        }
												     ?>
												</div>
											<?php endif?>
											</div>
										</div>
								<div class="card-body">
									 <input type="text" class="fin_id" value="<?php echo $_GET['id'];  ?>" hidden>
									<div class="table-responsive">
										<table id="residenttable" class="display table table-striped">
											<thead>
												<tr>
													<th scope="col">No.</th>
													<th scope="col">Complete Name</th>
													<th scope="col">Address</th>
													<th scope="col">Occupation</th>
													<th scope="col">Gender</th>
													<th scope="col">Age</th>
													<th scope="col">Contact No.</th>
													<th scope="col">Benefits Status</th>
													<?php if(isset($_SESSION['username'])):?>
													<th scope="col">Action</th>
													<?php endif ?>
												</tr>
											</thead>
											<tbody>
												<?php if(!empty($financial)): ?>
													<?php foreach($financial as $row): ?>
											
													  <tr>
													  	<td><?= ucwords($row['id']) ?></td>
													  	<td><?= ucwords($row['lastname'].', '.$row['firstname'].' '.$row['middlename']) ?></td>
															<td><?= ucwords($row['purok']) ?></td>
															<td><?= ucwords($row['occupation']) ?></td>
															<td><?= ucwords($row['gender']) ?></td>
															<td><?= ucwords($row['age']) ?></td>
															<td><?= ucwords($row['phone']) ?></td>
															<td>
																<?php if($row['benefit_id']=='2'): ?>
																	<span value="2" class="badge badge-warning">Scheduled</span>
																<?php elseif($row['benefit_id']=='1'): ?>
																	<span value="1" class="badge badge-success">Done</span>
																<?php else: ?>
																	<span value="0" class="badge badge-danger">Undone</span>
																	
																<?php endif ?>
															</td>
															<td> 
															
															<?php if(isset($_SESSION['username'])):?>
															
                                                        <div class="form-button-action">
															<a type="button" href="#edit" data-toggle="modal" class="btn btn-link btn-primary check_status check_gender edit_financial" 
																title="Edit Benefits Status" data-id="<?= $row['id'] ?>" data-status="<?= $row['benefit_id'] ?>" >
																<?php if(isset($_SESSION['username'])): ?>
																<i class="fa fa-edit"></i>
																<?php else: ?>
																<i class="fa fa-eye"></i>
																<?php endif ?>
															</a>
															<?php if(isset($_SESSION['username']) && $_SESSION['role']=='administrator'):?>
															<a type="button" data-toggle="tooltip" href="model/remove_financial.php?ff_id=<?= $_GET['id'] ?>&ff_name=<?= $_GET['name'] ?>&id=<?= $row['id'] ?>&user_id=<?= $_SESSION['id'] ?>&username=<?= $_SESSION['username'] ?>&fullname=<?=  $row['firstname'], $row['lastname']?> " onclick="return confirm('Are you sure you want to delete this Grantee?');" class="btn btn-link btn-danger" data-original-title="Remove">
																<i class="fa fa-trash"></i>
															</a>
															<?php endif ?></div>
														</td>
														<?php endif ?>
													</tr>
													<?php endforeach ?>
												<?php endif ?>
											</tbody>
											<tfoot>
												<tr>
													<th scope="col">No.</th>
													<th scope="col">Complete Name</th>
													<th scope="col">Address</th>
													<th scope="col">Occupation</th>
													<th scope="col">Gender</th>
													<th scope="col">Age</th>
													<th scope="col">Contact No.</th>
													<th scope="col">Benefits Status</th>
													<?php if(isset($_SESSION['username'])):?>
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
			 <!-- Modal for adding-->
			 <!-- <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Manage Financial</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form method="POST" action="model/save_financial.php" >
								<div class="row">

									<div class="col-md-6">
										<div class="form-group">
											<label>Complete Name</label>
											<input type="text" class="form-control" placeholder="Enter Complete Name" name="complete_name" required>
											<input type="hidden" name="f_id" value="<?php echo $_GET['id']; ?>">
											<input type="hidden" name="desc" value="<?php echo $_GET['name']; ?>">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Address</label>
											<input type="text" class="form-control" placeholder="Enter Address" name="address" required>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Occupation</label>
											<input type="text" class="form-control" placeholder="Enter Occupation" name="occupation" required>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Gender</label>
											<select class="form-control" name="gender">
												<option disabled selected>Select Gender</option>
												<option value="Female">Female</option>
												<option value="Male">Male</option>
											</select>
											
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Age</label>
											<input type="text" class="form-control" placeholder="Enter Your Age" name="age" required>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Contact No.</label>
											<input type="text" class="form-control" name="contact_no" placeholder="Contact No." name="contact_no" required>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Status</label>
											<select class="form-control" name="status">
												<option disabled selected>Select Financial Status</option>
												<option value="Done">Done</option>
												<option value="Undone">Undone</option>
												<option value="Scheduled">Scheduled</option>
											</select>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label>Remarks</label>
									<textarea class="form-control" placeholder="Enter Your Remarks here..." name="remarks" required></textarea>
								</div>
                            
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div> -->

            
 
			<!-- Modal for Edit Benefits Status-->
			<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Edit Benefits Status</h5>
                             <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form method="POST" action="model/edit_financial.php" enctype="multipart/form-data">

<!--                             <input type="text" name="size" value="1000000">-->	
                            <input type="text" name="id_financial" id="_id" hidden> 	
                            <input type="text" name="f_name" value="<?php echo $_GET['name']; ?>" hidden>
                            <input type="text" name="fid" value="<?php echo $_GET['id']; ?>" hidden>
                            
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Benefits Status</label>
											<select class="form-control" name="status" id="status">
												<option disabled selected>Select Benefits Status</option>
												<option id="done" value="1">Done</option>
												<option id="undone" value="0">Undone</option>
												<option id="scheduled" value="2">Scheduled</option>
											</select>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label>Remarks</label>
									<textarea class="form-control" placeholder="Enter remarks here..." id="remarks" name="remarks"></textarea>
								</div>
                        </div>
                        <div class="modal-footer">
                            <input type="text" name="user_id" value="<?php echo $_SESSION['id']; ?>" hidden>
                            <input type="text" name="name" value="<?php echo $_SESSION['username']; ?>" hidden>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							<?php if(isset($_SESSION['username'])):?>
                            <button type="submit" name="update" class="btn btn-primary">Update</button>
							<?php endif ?>
                        </div>
                        </form>
                    </div>
                </div>
            </div>

            
                <input type="text" id="id_financial" value="<?php echo $_GET['id']; ?>" hidden>
                
                
                <div id="printThis">
                	<center>
            	        <table  border="1" id="tableAppend" width="100%" style="text-align:center">
                        </table>
                    </center>
                 </div>
            

			<!-- Main Footer -->
			<?php include 'templates/main-footer.php' ?>
			<!-- End Main Footer -->
			
		</div>
		
	</div>
	<?php include 'templates/footer.php' ?>
	<script src="assets/js/plugin/datatables/datatables.min.js"></script>

    <script>

            function printDiv(divName) {
            
           // var printContents = document.getElementById(divName).innerHTML;
            //var originalContents = document.body.innerHTML;

            //document.body.innerHTML = printContents;
            //document.body.innerHTML = divName;

            window.print(divName);

            //document.body.innerHTML = originalContents;

        }
    </script>

    <script>
        $(document).ready(function() {

    //         var oTable = $('#tblresident').DataTable({
				// "order": [[ 4, "asc" ]]
    //         });

			$("#done").click(function(){
				var textSelected = 'Done';
				oTable.columns(4).search(textSelected).draw();
			});
			$("#undone").click(function(){
				var textSelected = 'Undone';
				oTable.columns(4).search(textSelected).draw();
			});
			$("#scheduled").click(function(){
				var textSelected = 'Scheduled';
				oTable.columns(4).search(textSelected).draw();
			});


			$(".edit_financial").click(function(){

				    $.ajax({
				    	 url : "model/view_financialdata.php",
				    	 method : "post",
				    	 data : {
				    	 	"id " : $(".fin_id").val(),
				    	 	"person_id" : $(this).attr("data-id") 
				    	 },
				    	 success : function(data) {

                             var d = JSON.parse(data);
                             $("#remarks").val(d[0].remarks);
                             $("#_id").val(d[0].id);

                             $("#status").each(function() {
							       if (this.value == d[0].status) {
                                         $(this).find('option[value="'+d[0].status+'"]').attr("selected");
							       }

							 });
				    	 }
				    });
			});
            
            $(".print").click(function(){
            	$.ajax({
            		url : "print_financial.php",
            		method : "post",
            		data : {
            			id : $("#id_financial").val()
            		},
            		success : function(data) {

                       var table  = "<table border='1' width='100%'' style='text-align:center'><tr>";
                            table += "<th>Complete Name</th>";
                            table += "<th>Address</th>";
                            table += "<th>Occupation</th>";
                            table += "<th>Gender</th>";
                            table += "<th>Age</th>";
                            table += "<th>Beneficiaries Status</th>";
                            table += "<th>Contact No.</th>";
                            table += "<th>Benefits Status</th>";
                            table += "<th>Remarks</th></tr>";

                        var json_data = JSON.parse(data);

                        $.each(json_data, function(index,value){
                             table += "<tr><td>"+value.lastname+", "+value.firstname+" "+value.middlename+"</td>";
                             table += "<td>"+value.purok+"</td>";
                             table += "<td>"+value.occupation+"</td>";
                             table += "<td>"+value.gender+"</td>";
                             table += "<td>"+value.age+"</td>";
                             table += "<td>"+value.status_name+"</td>";
                             table += "<td>"+value.phone+"</td>";
                             table += "<td>"+value.benefit_name+"</td>";
                             table += "<td>"+value.remarks+"</td></tr>";
                        });

                        	table += "<th>Complete Name</th>";
                            table += "<th>Address</th>";
                            table += "<th>Occupation</th>";
                            table += "<th>Gender</th>";
                            table += "<th>Age</th>";
                            table += "<th>Beneficiaries Status</th>";
                            table += "<th>Contact No.</th>";
                            table += "<th>Benefits Status</th>";
                            table += "<th>Remarks</th></tr>";

                        table += "</table>";

                         //$("#tableAppend").html(table);
                          win = window.open('','Print','width=1000,height=1000,visible=none');
                          win.document.write(table);
                          
                         //printDiv(table);
                         win.print();

                         win.history.back();
            		}
            	});
            });

        });
    </script>

    <script src="assets/js/plugin/datatables/datatables.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#residenttable').DataTable();
        });
    </script>

</body>
</html>