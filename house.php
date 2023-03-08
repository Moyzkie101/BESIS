<?php include 'server/server.php' ?>
<?php
    $query = "SELECT * FROM tbl_household ORDER BY `household` asc";
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
	<title>Barangay Household -  Barangay E-Services Information System</title>
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
								<h2 class="text-white fw-bold">Settings</h2>
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

                <div class="panel-header bg-primary-gradient">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex flex-wrap pb-2 justify-content-between">
                                        <div class="px-2 pb-2 pb-md-0 text-center">
                                            <!-- <img src="assets/uploads/<?= $brgy_logo ?>" class="img-fluid" width="100"> -->
                                        </div>
                                        <div class="px-2 pb-2 pb-md-0 text-center">
                                            <h2 class="fw-bold mt-3"><?= ucwords($brgy) ?></h2>
                                            <h4 class="fw-bold mt-3"><?= ucwords($town) ?>, <?= ucwords($province) ?> </h4>
                                        </div>

                                        <!--<div class="px-2 pb-2 pb-md-0 text-center">
                                            <img src="assets/img/brgy-logo.png" class="img-fluid" width="100" style="visibility:hidden;">
                                        </div>-->
                                            <div class="text-center">
                                           <!--  <img src="assets/uploads/<?= $city_logo ?>" class="img-fluid" width="100"> -->
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                    
                </div>
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-head-row">
                                        <div class="card-household"><b> All Household</b></div>
                                        <div class="card-tools">
                                            <a href="#add" data-toggle="modal" class="btn btn-info btn-border btn-round btn-sm">
                                                <i class="fa fa-plus"></i>
                                                Household Number
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Household No.</th>
                                                    <th scope="col">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php if(!empty($house)): ?>
                                                    <?php $no=1; foreach($house as $row): ?>
                                                    <tr>
                                                        <td><? $no; ?><?=  $row['household']; ?></td>
                                                        <td>
                                                            <div class="form-button-action">
                                                                <a type="button" href="#edit" data-toggle="modal" class="btn btn-link btn-primary" 
                                                                    household="Edit Household" onclick="editHousehold(this)" data-id="<?= $row['id'] ?>"data-household="<?= $row['household'] ?>" >
                                                                    <i class="fa fa-edit"></i>
                                                                </a>
                                                                <a type="button" data-toggle="tooltip" href="model/remove_houseno.php?id=<?= $row['id'] ?>" onclick="return confirm('Are you sure you want to delete this Household No.?');" 
                                                                    class="btn btn-link btn-danger" data-original-household="Remove">
                                                                    <i class="fa fa-times"></i>
                                                                </a>
                                                                <input type ="text" name = "try" id = "try" value = "<?= $row['id'] ?>" hidden>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <?php $no++; endforeach ?>
                                                <?php else: ?>
                                                    <tr>
                                                        <td colspan="3" class="text-center">No Available Data</td>
                                                    </tr>
                                                <?php endif ?>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                
                                                    <th scope="col">All Household</th>
                                                    <th scope="col">Action</th>
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
            <div class="modal" id="add" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-household" id="exampleModalLabel">Add Household Number</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        
                        <div class="modal-body">
                            <form method="POST" action="model/save_houseno.php" >
                                <div class="form-group">
                                    <label>Household Number</label>
                                    <input type="text" class="form-control" placeholder="Enter New Household Number" name="house" required>
                                </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Add</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-household" id="exampleModalLabel">Edit Household Number</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form method="POST" action="model/edit_houseno.php" >
                                <div class="form-group">
                                    <label for="position">Household Number</label>
                                    <input type="text" class="form-control" id="house" placeholder="Edit Household" name="house" required>
                                </div>
                            
                        </div>
                        <div class="modal-footer">
                        
                            <input type="text" id="id" name="id" value = "<?= $row['id']?>" >
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