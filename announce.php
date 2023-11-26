<?php include 'server/server.php' ?>

<?php
    $query = "SELECT * FROM tbl_announce ORDER BY `id`";
    $result = $conn->query($query);

    $purok = array();
	while($row = $result->fetch_assoc()){
		$purok[] = $row; 
	}
    
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<?php include 'templates/header.php' ?>
	<title>Annoucement -  BESIS</title>
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
								<h2 class="text-white fw-bold">Announcement</h2>
							</div>       
					</div>
				</div>
            </div>
				<div class="page-inner">
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

										<!-- <<div class="px-2 pb-2 pb-md-0 text-center">
											<img src="assets/img/brgy-logo.png" class="img-fluid" width="100" style="visibility:hidden;">
										</div> -->
                                            <div class="text-center">
										</div>                                        
									</div>
								</div>
							</div>
                            <?php if(isset($_SESSION['message'])): ?>
                                <div class="alert alert-<?php echo $_SESSION['success']; ?> <?= $_SESSION['success']=='danger' ? 'bg-danger text-light' : null ?>" role="alert">
                                    <?php echo $_SESSION['message']; ?>
                                </div>
                            <?php unset($_SESSION['message']); ?>
                            <?php endif ?>

                            <div class="card">
								<div class="card-header">
									<div class="card-head-row">
										<div class="card-title">Announcement</div>
										<div class="card-tools">	
                                            <a href="#add" data-toggle="modal" class="btn btn-info btn-border btn-round btn-sm">
                                                <i class="fas fa-plus"></i>
                                                Announcement
                                            </a>
										</div>
									</div>

									

								</div>
								<div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th scope="col">No.</th>
                                                    <th scope="col">Title</th>
                                                    <th scope="col">Details</th>
													<th scope="col">Picture</th>
                                                    <th scope="col">Options</th>

                                            </thead>
                                            <tbody>
                                                <?php if(!empty($purok)): ?>
                                                    <?php $no=1; foreach($purok as $row): ?>
                                                    <tr>
                                                        <td><?= $no ?></td>
                                                        <td><?= $row['title'] ?></td>
                                                        <td><?= $row['txt'] ?></td>
                                                        <td><img src="model/uploads/<?php echo $row['uploads']; ?>" width="50px" height="50px"></td>                                                        <td>
                                                            <div class="form-button-action">
                                                                <a type="button" href="#edit" data-toggle="modal" class="btn btn-link btn-primary" title="Edit Announce" onclick="editPurok(this)" data-title="<?= $row['title'] ?>" data-updates="<?= $row['updates'] ?>" 
                                                                     data-details="<?= $row['txt'] ?>" data-id="<?= $row['id'] ?>">
                                                                    <i class="fa fa-edit">
                                                                  </i>

                                                                </a>
                                                                
                                                            </div>
                                                            <div class="form-button-action">
                                                                <a href="model/remove_announcement.php?id=<?= $row['id'] ?>&filename=<?= $row['uploads'] ?>" type="button" data-toggle="tooltip" class="btn btn-link btn-danger" data-original-title="Remove Announce" onclick="return confirm('Are you sure you want to Delete this Announce?');">
                                                                    <i class="fa fa-trash">
                                                                        
                                                                    </i>
                                                                </a>
                                                            </div>
                                                            </td>
                                                    </tr>
                                                    <?php $no++; endforeach ?>
                                                <?php else: ?>
                                                    <tr>
                                                        <td colspan="4" class="text-center">No Available Data</td>
                                                    </tr>
                                                <?php endif ?>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th scope="col">No.</th>
                                                    <th scope="col">Title</th>
                                                    <th scope="col">Details</th>
                                                    <th scope="col">Picture</th>
                                                    <th scope="col">Options</th>
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

            <!-- Modal for  add-->
            <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Add Announcement</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form method="POST" action="model/save_announce.php" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label>Announcement Title</label>
                                    <input type="text" class="form-control" placeholder="Enter Announcement Title" name="title" required>
                                </div>
                                <div class="form-group">
                                    <label>Announcement Details</label>
                                    <textarea type="text" class="container form-control" placeholder="Enter Announcement" name="details" required maxlength="250"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Date</label>
                                    <input type="date" class="form-control" name="date" value="<?= date('Y-m-d'); ?>" required>
                                </div>
								<div class= "form-group">
                                    <div class="mb-3">
                                        <label for="formFile" class="form-label">Upload Image</label>
                                        <input class="form-control" id="formFile" type="file" name="fileUpload"/>
                                    </div>
                                </div> 
                                <div class= "form-group">
                                    <form method="_SESSION" action="" enctype="multipart/form-data">
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="happening">
                                            <label class="form-check-label" for="inlineRadio1" data-filter="happening">Happening</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                              <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="upcoming">
                                              <label class="form-check-label" for="inlineRadio2" data-filter="upcoming">Upcoming</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                              <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="expired">
                                              <label class="form-check-label" for="inlineRadio3" data-filter="expired">Previous</label>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <button class="btn btn-primary" type="submit" name="upload">POST</button>
                                        </div>
                                    </form>
                                </div> 
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal for Edit -->
            <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Edit Announcement</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form method="POST" action="model/edit_announcement.php" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label>Announcement Title</label>
                                    <input type="text" name="id" id="purok_id" hidden>
                                    <input type="text" id="title" class="form-control" placeholder="Enter Announcement Title" name="title" required>
                                </div>
                                <div class="form-group">
                                    <label>Announcement Details</label>
                                    <textarea type="text" class="container form-control" id="details" placeholder="Announce Something" name="details" required maxlength="250"></textarea>
                                </div>
                         	    <div id="form-group">
                             		<form method="_SESSION" action="" enctype="multipart/form-data">
                                        	<div class="form-group">
                                            	<input class="form-control" id="formFile" type="file" name="fileUpload" />
                                        	</div>
                                        	<div class= "form-group">
                                            	<div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="happening">
                                                <label class="form-check-label" for="inlineRadio1" data-filter="happening">Happening</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="upcoming">
                                                <label class="form-check-label" for="inlineRadio2" data-filter="upcoming">Upcoming</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="expired">
                                                <label class="form-check-label" for="inlineRadio3" data-filter="expired">Previous</label>
                                            </div>
                                        </div>
                                        <div id="display-image">
                            			</div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <button class="btn btn-primary" type="submit" name="upload">UPDATE</button>
                                        </div>
                                    </form>
                                </div>                     
                            </form>
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
</body>
</html>