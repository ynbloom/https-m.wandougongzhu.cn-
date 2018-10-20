<?php
   include "conn.php";
   if(isset($_GET['sid'])){
    $sid=$_GET['sid'];
}
   $result=mysql_query("select * from fashon where f_sid='$sid'");
   
   $fashonarr=array();
   for ($i=0; $i <mysql_num_rows($result); $i++) { 
       $fashonarr[$i]=mysql_fetch_array($result,MYSQL_ASSOC);
   }
   echo json_encode($fashonarr);
?>