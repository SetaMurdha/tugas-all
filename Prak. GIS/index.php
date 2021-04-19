<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src='https://api.mapbox.com/mapbox-gl-js/v2.2.0/mapbox-gl.js'></script>
    <link href='https://api.mapbox.com/mapbox-gl-js/v2.2.0/mapbox-gl.css' rel='stylesheet' /> 

    <script src='https://api.mapbox.com/mapbox.js/v3.3.1/mapbox.js'></script>
    <link href='https://api.mapbox.com/mapbox.js/v3.3.1/mapbox.css' rel='stylesheet' /> 

    <script src='https://api.tiles.mapbox.com/mapbox-gl-js/v2.2.0/mapbox-gl.js'></script>
    <link href='https://api.tiles.mapbox.com/mapbox-gl-js/v2.2.0/mapbox-gl.css' rel='stylesheet' /> 
   
    <title>SIG</title>
  </head>
  <body>
    <center>
    <?php require "koneksi.php"?>
    <h1>Sistem Informasi Geografis</h1>
    <div id="map" style="height:450px;width:600px"></div>
    <?php
    $query="SELECT * FROM markers";
    $result=mysqli_query($conn,$query);
    ?>
    </center>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    <script>
    

      L.mapbox.accessToken = 'pk.eyJ1Ijoic2V0YTEyIiwiYSI6ImNrbmNhenl0aTB0cmoycG1pZHNpeTVveWkifQ.64dhXfC2kEBK0Red7zsDlg';
      var map = L.mapbox.map('map')
      .setView([106.0227,-6.5100],9)
      .addLayer(L.mapbox.styleLayer('mapbox://styles/mapbox/streets-v11'));
    

      var myLayer = L.mapbox.featureLayer().addTo(map);
      var geojson = {
        "type" : "FeatureCollection",
        "features" : [
          <?php
            while($row=mysqli_fetch_assoc($result)){
              $nama=$row['nama'];
              $long=$row['longitude'];
              $lat=$row['latitude'];
              echo "{'type':'Feature',
                'properties':{
                  'title' : '$nama',
                  'marker-color':'#f86767',
                  'marker-size':'large',
                  'marker-symbol':'star'
                },
                'geometry':{
                  'type':'Point',
                  'coordinates':['$long','$lat'],
                },
              },";
            }
          ?>
        ]
      };

      myLayer.setGeoJSON(geojson);
      myLayer.on('click',function(e){
        window.open(e.layer.feature.properties.url);
      });
    </script>

    </br></br>
<div class="container">
  <div class="row">
    <div class="col-4">
      <h2>Tambah Data Lokasi</h2> <br>
      <form method="POST" action="http://localhost/GIS/proses.php">
        <div class="mo-3">
          <label class="from-label">ID</label>
          <div class="col-sm-10">
            <input type="text" name="id" class="form-control form-control-sm">
          </div>
        </div>
        <div class="mo-3">
          <label class="form-label">Nama Lokasi</label>
          <div class="col-sm-10">
            <input type="text" name="nama" class="form-control form-control-sm">
          </div>
        </div>
        <div class="mo-3">
          <label class="form-label">Alamat</label>
          <div class="col-sm-10">
            <textarea name="alamat" class="form-control form-control-sm"></textarea>
          </div>
        </div>
        <div class="mo-3">
          <label class="form-label">Longitude</label>
          <div class="col-sm-10">
            <input type="text" name="lng" class="form-control form-control-sm">
          </div>
        </div>
        <div class="mb-3">
          <label class="form-label">Latitude</label>
          <div class="col-sm-10">
            <input type="text" name="lat" class="form-control form-control-sm">
          </div>
        </div>
        <div class="mb-3">
          <label class="form-label">Tipe</label>
          <div class="col-sm-10">
            <input type="text" name="tipe" class="form-control form-control-sm">
          </div>
        </div>
        <button type="submit" class="btn btn-success">SUBMIT</button>
      </form>
    </div>

    <div class="col-8">
</br></br> 
<table class = "table"> 
<tr> 
<th>ID</th> 
<th>Nama</th> 
<th>Alamat</th> 
<th>Longitude</th> 
<th>Latitude</th> 
<th>Tipe</th> 
<th>Action</th> 
</tr>

<?php $query1 = "SELECT * FROM markers";
$sql1 = mysqli_query($conn, $query1); 
while($row1=mysqli_fetch_array($sql1)) {
echo "<tr><th>" .$row1['id']."</th> 
<td>" .$row1['nama']."</td> 
<td>" .$row1['alamat']."</td> 
<td>" .$row1['longitude']."</td> 
<td>" .$row1['latitude']."</td> 
<td>" .$row1['tipe']."</td> 
<td> <a href='http://localhost/GIS/proses_delete.php?id_del=" .$row1['id']."'
  Class='btn btn-danger'>Delete</a></td>";
}
?>
</table>
</div> 
</div> 
</div>

    
</body>
</html>
