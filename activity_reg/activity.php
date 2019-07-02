<?php
header('Access-Control-Allow-Origin:*');
header("content-type:text/html;charset=utf-8");
$mysqli = new mysqli('localhost', 'root', '','act');

if ($mysqli->connect_error) {
    die('Connect Error (' . $mysqli->connect_errno . ') '
        . $mysqli->connect_error);
}
mysqli_set_charset($mysqli,'utf8');
$success = array('code'=> '200','result'=>'success');
$fail = array('code'=>'400','result'=>'fail');
$act_name = $_POST['act_name'];
$act_start_time = $_POST['act_start_time'];
$act_end_time = $_POST['act_end_time'];
$act_lat = $_POST['act_lat'];
$act_lng = $_POST['act_lng'];
$act_place = $_POST['act_place'];
$act_description=$_POST['act_description'];

$sql = mysqli_query($mysqli,"insert into act_ (act_name,act_start_time,act_end_time,act_place,act_lat,act_lng,act_description,act_creater) VALUES ('$act_name','$act_start_time','$act_end_time','$act_place','$act_lat','$act_lng','$act_description','admin')");
if ($sql){
    echo json_encode($success);
}else{
    echo json_encode($fail);
}

?>