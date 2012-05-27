<html>
  <head>
    <script type="text/javascript" src="../jquery/jquery-1.4.4.min.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=false" type="text/javascript"></script>
    <script type="text/javascript" src="../gmap3.js"></script>
    <style>
      body{
        text-align:center;
      }
      .gmap3{
        margin: 20px auto;
        border: 1px dashed #C0C0C0;
        width: 500px;
        height: 500px;
      }
    </style>

    <script type="text/javascript">
  var map;
  function initialize() {
  var myLatlng = new google.maps.LatLng(46.198392,6.142296);

  var myOptions = {
     zoom: 8,
     center: myLatlng,
     mapTypeId: google.maps.MapTypeId.ROADMAP
     }
  map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

  var marker = new google.maps.Marker({
  draggable: true,
  position: myLatlng,
  map: map,
  title: "Your location"
  });

  google.maps.event.addListener(marker, 'dragend', function (event) {
    document.getElementById("latbox").value = this.getPosition().lat();
    document.getElementById("lngbox").value = this.getPosition().lng();
});

}
</script>

<body onLoad="initialize()">

  <div id="map_canvas" style="width:50%; height:50%"></div>

  <div id="latlong">
    <p>Latitude: <input size="20" type="text" id="latbox" name="lat" ></p>
    <p>Longitude: <input size="20" type="text" id="lngbox" name="lng" ></p>
  </div>

</body>
</html>