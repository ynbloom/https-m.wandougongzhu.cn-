<?php
require "conn.php";
//连接时尚馆数据
$fashon=mysql_query("select * from fashon");
$arrdata=array();
for($i=0;$i<mysql_num_rows($fashon);$i++){
    $arrdata[$i]=mysql_fetch_array($fashon,MYSQL_ASSOC);
}
echo json_encode($arrdata);

?>
