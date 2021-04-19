<?php 

$server="localhost";
$username="root";
$password="";
$db="peta";

$conn=mysqli_connect($server,$username,$password);
$db_=mysqli_select_db($conn, $db);

if ($conn-> connect_errno) {
	echo "Koneksi Error";
	exit();
}

 ?>