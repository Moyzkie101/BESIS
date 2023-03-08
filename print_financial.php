<?php 
  
  include 'server/server.php';
    if (isset($_POST))
    $result = $conn->query("SELECT r.national_id,r.firstname,r.middlename,r.lastname,r.alias,r.household,r.birthplace,r.birthdate,DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), r.birthdate)), '%Y') + 0 AS age,r.civilstatus,r.gender,r.purok,r.voterstatus,r.occupation,r.identified_as,r.phone,r.email,r.remarks, s.status_name, b.benefit_name FROM tblresident AS r LEFT JOIN status  as s ON r.stat_id = s.stat_id LEFT JOIN benefits_status as b ON r.benefit_id = b.benefit_id WHERE r.stat_id=".$_POST['id']);
 
    $financial = array();
	while($row = $result->fetch_assoc()){
		$financial[] = $row; 
	}

	echo json_encode($financial);

?>