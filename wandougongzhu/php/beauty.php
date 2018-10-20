<?php
require "conn.php";
//连接美妆馆数据
 $result=mysql_query("select * from beauty");

 $arrdata=array();
 for($i=0;$i<mysql_num_rows($result);$i++){
     $arrdata[$i]=mysql_fetch_array($result,MYSQL_ASSOC);
 }

 echo json_encode($arrdata);
?>