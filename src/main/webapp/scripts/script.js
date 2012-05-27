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
pos[0]=[4.699321,-74.043933];
pos[1]=[4.699497,-74.047205];
pos[2]=[4.696632,-74.046202];

function showPosition(p){

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
    //            var map = $('#map_canvas').gmap3('get');

    $('#map_canvas').gmap3({
        action:'addMarker',
        latLng:pos[0],
        infowindow:{
            options:{
                content: '<strong>jvParking cr 15a # 119-67</strong>'
            }
        }
    });

    var mark2 = $('#map_canvas').gmap3({
        action:'addMarker',
        latLng:pos[1],
        infowindow:{
            options:{
                content: '<strong>Aparcar cll 119 # 17a-78</strong>'
            }
        }
    });

    //            alert("mark2 = " + mark2);

    $('#map_canvas').gmap3({
        action:'addMarker',
        latLng:pos[2],
        infowindow:{
            options:{
                content: '<strong>City Parking cll 114a # 15b-85</strong>'
            }
        }
    });





    $('#map_canvas').gmap3({
        action:'addMarker',
        name:'marker',
        tag:'marker-1',
        latLng:[p.coords.latitude,p.coords.longitude],
        infowindow:{
            options:{
                content: 'yo!'
            }
        } ,
        events:{
            click: function(marker, event, data){
                //alert(data);
                for (var key in event) {
                    //                                alert(1);
                    if (event.hasOwnProperty(key)) {
                        alert("key = " + key);
                    }
                }

            }
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

function irMobileGMaps(i){
    var url = 'http://maps.google.com/maps?q='+pos[i];
    alert("Por favor use Google Maps");
    window.open(url,    "#");
}

function irMobileWaze(i){
    var url = 'waze://?ll='+pos[i]+'&z=6&navigate=yes';
        url = 'http://waze.to/?ll='+pos[i]+'&navigate=yes';
    window.open(url,"#");
}

