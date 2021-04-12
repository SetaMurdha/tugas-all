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
</body>
</html>
