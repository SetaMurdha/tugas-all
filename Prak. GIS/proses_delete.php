<?php
 require("koneksi.php");

 $id1 = $_REQUEST['id_del'];

 $query1 = "DELETE FROM markers Where id =" .$id1;
 $sql2 = mysqli_query($conn, $query1);

 header('Location: http://localhost/GIS/index.php');
 die();

 ?>