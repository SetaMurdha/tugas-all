<?php 

$server="localhost";
$username="root";
$password="";
$db="peta";

$conn=mysqli_connect();
$db_=mysqli_select_db($con, $db);

if ($conn-> connect_errno) {
	echo "Koneksi Error";
	exit();
}

 ?>