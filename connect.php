<?php include 'server/server.php' ?>

<?php
	$firstName = $_POST['firstName'];
	$lastName = $_POST['lastName'];
    $gcontact = $_POST['gcontact'];
	$gender = $_POST['gender'];
	$ages = $_POST['age'];
	$formss = $_POST['forms'];
	$stat = "Pending";

	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
		$conne = "INSERT INTO tblrequest(`national_id`,`gcontact`, `fullname`, `age`, `gender`, `form`, `status`)
								values( '$lastName', '$gcontact', '$firstName', '$ages', '$gender', '$formss','$stat')";
		
		$result  = $conn->query($conne);
		
		header('Location: services.php');
		$stmt->close();
		$conn->close();
	}
?>