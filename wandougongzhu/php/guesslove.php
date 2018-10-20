<?php
 require "conn.php";
 $guesslove=mysql_query("select * from guesslove");
 $arrdata=array();
 for($i=0;$i<mysql_num_rows($guesslove);$i++){
     $arrdata[$i]=mysql_fetch_array($guesslove,MYSQL_ASSOC);
 }
 echo json_encode($arrdata);
?>