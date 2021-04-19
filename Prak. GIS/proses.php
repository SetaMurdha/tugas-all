<?php
require("koneksi.php");
if($_POST['p'] = 'tambahData') {
    $id = $_POST['id']; 
    $nama = $_POST['nama']; 
    $alamat = $_POST['alamat']; 
    $longitude = $_POST['lng']; 
    $latitude = $_POST['lat']; 
    $tipe = $_POST['tipe'];
    $query = "INSERT INTO markers VALUES($id, '$nama', '$alamat', $longitude, $latitude, '$tipe')"; 
    $sql2 = mysqli_query($conn, $query);
    header('Location: http://localhost/GIS/index.php');
    die();
}
