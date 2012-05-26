<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>Introduction to Ext: 222 Starter Page</title>

    <script type='text/javascript' src='dwr/engine.js'></script>
    <script type='text/javascript' src='dwr/util.js'></script>
    <script type='text/javascript' src='dwr/interface/callsRemoto.js'></script>



    <link href="css/main.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="scripts/jquery/jquery-1.6.4.js"></script>

    <script type="text/javascript" src="scripts/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>

    <link href="scripts/jquery/uiThemes/start/css/start/jquery-ui-1.8.16.custom.css" rel="stylesheet" type="text/css">

    <script>


        function getCiudades(){
            callsRemoto.getCiudades(dwr.util.getValue('tags'), function(data){
                alert(data);
            });
        }
        
        $(function() {
            var availableTags = [
                "ActionScript",
                "AppleScript",
                "Asp",
                "BASIC",
                "C",
                "C++",
                "Clojure",
                "COBOL",
                "ColdFusion",
                "Erlang",
                "Fortran",
                "Groovy",
                "Haskell",
                "Java",
                "JavaScript",
                "Lisp",
                "Perl",
                "PHP",
                "Python",
                "Ruby",
                "Scala",
                "Scheme"
            ];
            $( "#tags" ).autocomplete({
                source: availableTags
            });
        });
    </script>

</head>

<body>

<div class="demo">

<div class="ui-widget">
	<label for="tags">Tags: </label>
	<input id="tags" />
    <input type="button" value="getCiudades" onclick="getCiudades();">
</div>

<div class="ui-widget">
	<label for="tags2">Tags2: </label>
	<input id="tags2" />
    <input type="button" value="getCiudades" onclick="getCiudades();">
</div>

<div class="ui-widget">
	<label for="tags3">Tags3: </label>
	<input id="tags3" />
    <input type="button" value="getCiudades" onclick="getCiudades();">
</div>

</div><!-- End demo -->


<script type="text/javascript">
//    alert("$('#tags2') = " + $('#tags2'));

    /*$('#tags2').keyup(function(){
//        $('#tags').val($('#tags2').val());

        var val = $('#tags2').val() ;
        callsRemoto.getCiudades(val, function(data) {
            $('#tags2').autocomplete(data);
        });
    });*/

    $( "#tags2" ).autocomplete({
        source: function(request, response){
//            alert("request.term = " + request.term);
            callsRemoto.getCiudades(request.term, {
                callback: function(data){
//                    alert("data = " + data);
                    response(data);
                }
            });
        },
//        minLength: 0,
        autoFocus: true
    });



    $( "#tags3" ).autocomplete({
        source: function(request, response){
//            alert("request.term = " + request.term);
            callsRemoto.getCiudades2(request.term, {
                callback: function(data){
//                    alert("data = " + data);
                    response(data);
                }
            });
        },
        focus: function( event, ui ) {
            $( "#tags3" ).val( ui.item.nombreCiudad);
            return false;
        },
        select: function( event, ui ) {
            $( "#tags" ).val( ui.item.idCiudad);
            $( "#tags2" ).val( ui.item.nombreCiudad);
            return false;
        },
//        autoFocus: true,
        search: function( event, ui ) {
            $( "#tags" ).val( 'Buscando');
            $( "#tags2" ).val( '');
//            return false;
        },
        change: function(){
            if ($( "#tags2" ).val() == ''){
                $( "#tags" ).val( 'No hay Ciudad');
                $( "#tags2" ).val( '');
            } else {
//                $( "#tags" ).val( 'Buscando');
//                $( "#tags2" ).val( '');
            }
        }
    }).data( "autocomplete" )._renderItem = function( ul, item ) {
        return $( "<li></li>" )
                .data( "item.autocomplete", item )
                .append( "<a>" + item.idCiudad + "<br>" + item.nombreCiudad + "</a>" )
                .appendTo( ul );
    };


</script>

</body>

</html>
