var msgInfoWindow = 'Donde está el da&ntilde;o a reportar? &nbsp;';

function myTest(e){
    alert("e: "+e);
}

function initialize_map(){
    if(geo_position_js.init()) {
        document.getElementById('current').innerHTML="Receiving...";
        geo_position_js.getCurrentPosition(showPosition,function(){document.getElementById('current').innerHTML="Couldn't get location"},{enableHighAccuracy:true});
    }
    else {
        document.getElementById('current').innerHTML="Functionality not available";
    }


}

var myP;
var pos = new Array();

function showPosition(p){

    document.getElementById("latData").value = p.coords.latitude;
    document.getElementById("lonData").value = p.coords.longitude;

    myP = p;


    //            alert("p = " + p);

    jQuery("#map_canvas").gmap3({
        action: 'init',
        options:{
            center:[p.coords.latitude,p.coords.longitude],
            zoom:16,
            mapTypeId: google.maps.MapTypeId.HYBRID,
            mapTypeControl: true,
            mapTypeControlOptions: {
                style: google.maps.MapTypeControlStyle.DROPDOWN_MENU
            },
            navigationControl: true,
            scrollwheel: true,
            streetViewControl: true
        }

    });

    $('#map_canvas').gmap3({
        action:'addMarker',
        name:'marker',
        tag:'marker-1',
        latLng:[p.coords.latitude,p.coords.longitude],
        infowindow:{
            options:{
                content: msgInfoWindow
            }
        },
        options:{ draggable:true },
        events:{
            click: function(marker, event, data){
                //alert(data);
                for (var key in event) {
                    //                                alert(1);
                    if (event.hasOwnProperty(key)) {
//                        alert("key = " + key);
                    }
                }

            },

            dragend: function(marker){
//                alert("marker.getPosition() = " + marker.getPosition().lat());
                document.getElementById("latData").value = marker.getPosition().lat();
                document.getElementById("lonData").value = marker.getPosition().lng();
            }
        }
    });




}

function guardaData(){
    var data = {
        latData : null,
        lonData : null,
        tituloData: null,
        textoData: null,
        idCategoria: null
    };

    dwr.util.getValues(data);

    omwayRemoto.saveData(data, function(dats){
        if(dats==1){
            var currentDate = (new Date()).getTime();
            alert('Guardado con exito');
            window.location = "inicio.htm?r="+currentDate;
        }
    });
}

function removeMark(mark){

    $('#map_canvas').gmap3({
        action:'clear',
        name:'marker',
        tag:mark
    });
}


function removeRoute(mark){
    //    alert("true = " + true);
    $('#map_canvas').gmap3({
        action:'clear',
        name:'route',
        last:true
    });
}



function addRoute(r){
    $('#map_canvas').gmap3({
        action:'getRoute',
        name:'route',
        tag:'route-1',
        options:{
            origin:[myP.coords.latitude,myP.coords.longitude],
            destination: pos[r],
            travelMode: google.maps.DirectionsTravelMode.DRIVING
        },
        callback: function(results){
            if (!results) return;
            $(this).gmap3({
                action:'setDirections',
                options:{
                    preserveViewport: true,
                    draggable: true,
                    directions:results
                }
            });
        }
    });
}


function irGMaps(lat,lon, title, text, name, id){
    var msg = '<table border=0><tr><td>'+
              '<img src="https://graph.facebook.com/'+id+
              '/picture"/><br>'+
              name+'</td><td><b>'+title+'</b><br>'+text+'</td></tr></table>';

    removeMark('marker-1');

    $('#map_canvas').gmap3({
        action : 'addMarker',
        name:'marker',
        tag:'marker-1',
        lat: lat,
        lng: lon,
        infowindow:{
            options:{
                content: msg
            }
        } ,
        options:{ draggable:true },
        events:{
            dragend: function(marker){

                var infowindow = $(this).gmap3({
                    action : 'get', name : 'infowindow'
                });
                if (infowindow) {
                    infowindow.close();
                }
                
                $('#map_canvas').gmap3({
                    action:'addinfowindow',
                    anchor:marker,
                    options:{
                        content: msgInfoWindow}
                });

//                alert("marker.getPosition() = " + marker.getPosition().lat());
                document.getElementById("latData").value = marker.getPosition().lat();
                document.getElementById("lonData").value = marker.getPosition().lng();
            }
        }
    });

    
    $('#map_canvas').gmap3({
        action:'panTo',
        args:[new google.maps.LatLng(lat,lon)]
    });
}

function irMobileGMaps(lat, lon){
    var url = 'http://maps.google.com/maps?q='+lat+','+lon;
    alert("Por favor use Google Maps");
    window.open(url,    "#");
}


