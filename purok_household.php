<?php 

 include 'server/server.php';
     
     $household_no = array();
     $sql = "insert into history_log values(NULL,".$_POST['user_id'].",'".$_POST['user_name']."','".date('h:i a')."','".date('m/d/Y')."','".$_POST['user_name']." visited at Purok ".$_POST['purok']." from Purok.')";

     $conn->query($sql);

     $query = $conn->query("select * from tblresident where purok ='".$_POST['purok']."'");
     while ($r = mysqli_fetch_array($query)) {
           $household_no[] = $r['household'];
     }  
     
     echo json_encode(array_unique($household_no));
    
?>