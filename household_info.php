<?php 

 include 'server/server.php';
     
     $purok_info = array();


     $sql = "insert into history_log values(NULL,".$_POST['user_id'].",'".$_POST['user_name']."','".date('h:i a')."','".date('m/d/Y')."','".$_POST['user_name']." visited at Purok ".$_POST['purok']." in household no ".$_POST['household']." from Purok.');";

     $conn->query($sql);

     $query = $conn->query("select * from tblresident where purok ='".$_POST['purok']."' and household=".$_POST['household']);

     while ($r = mysqli_fetch_array($query)) {
           $purok_info[] = array(
           	     "firstname" => $r['firstname'],
           	     "lastname" => $r['lastname']
           );
     }
     
     echo json_encode($purok_info); 
?>