<?php 

$server="localhost";
$username="root";
$password="";
$db="peta";

$con=mysqli_connect();
$db_=mysqli_select_db($con, $db);

if ($con-> connect_errno) {
	echo "Koneksi Error";
	exit();
}

 ?>