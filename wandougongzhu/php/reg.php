<?php
require "conn.php";
if(isset($_POST['phone']) || isset($_POST['submit'])){
    $phonenum=@$_POST['phone'];
}else{
    exit('非法操作');
}
$query="select * from form where phone='$phonenum'";
$result=mysql_query($query);
if(mysql_fetch_array($result)){
    echo 'false';
}else{
    echo 'true';
}

if(isset($_POST['submit']) && $_POST['submit']=="注册"){
    $tel=$_POST['phone'];//username：表单的名称
    $pass=md5($_POST['pwd']);
    //添加语句
    $query="insert form(sid,phone,password,redate) values(null,'$tel','$pass',NOW())";
    mysql_query($query);
    header('location:http://10.31.162.112/wandoudongzhu/src/login.html');//页面的跳转
}
?>