<head>

    <%-- FOUNDATION --%>

    <meta charset="utf-8" />

        <!-- Set the viewport width to device width for mobile -->
    <meta name="viewport" content="width=device-width" />    

    <!-- Included CSS Files -->
	<link rel="stylesheet" href="scripts/foundation/stylesheets/foundation.css">
	<link rel="stylesheet" href="scripts/foundation/stylesheets/app.css">
	<!--[if lt IE 9]>
		<link rel="stylesheet" href="stylesheets/ie.css">
	<![endif]-->    

    <script src="scripts/foundation/modernizr.foundation.js"></script>
	<%--<script src="scripts/foundation/foundation.js"></script>--%>
	<%--<script src="scripts/foundation/app.js"></script>--%>

    <!-- IE Fix for HTML5 Tags -->
	<!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->    

    <%-- END FOUNDATION --%>


    <link href="css/estilos20120224.css" type="text/css" rel="stylesheet">
    <%----%>


    <script type='text/javascript' src='scripts/jquery-1.7.1.js'></script>

    <%--<script type='text/javascript' src='scripts/jquery/sorter/jquery.tablesorter.min.js'></script>--%>
    <%--<link href="scripts/jquery/sorter/blue/style.css" rel="stylesheet" type="text/css">--%>

    <%--<script type="text/javascript" src="scripts/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>--%>
    <%--<link href="scripts/jquery/uiThemes/start/jquery-ui-1.8.16.custom.css" rel="stylesheet" type="text/css">--%>
    <%--<link href="scripts/jquery/uiThemes/le-frog/jquery-ui-1.8.17.custom.css" rel="stylesheet" type="text/css">--%>
    <%--<link href="scripts/jquery/uiThemes/le-frog/jquery-ui-1.8.17.custom.css" rel="stylesheet" type="text/css">--%>


    <script type='text/javascript' src='dwr/engine.js'></script>
    <script type='text/javascript' src='dwr/util.js'></script>
    <script type="text/javascript" src="scripts/script.js?t=<%=System.currentTimeMillis()%>"></script>

    <%--<script type="text/javascript" src="scripts/validation.js"></script>--%>
    <%--<link href="style/validation.css" rel="stylesheet" type="text/css" />--%>

    <script type='text/javascript' src='dwr/interface/omwayRemoto.js'></script>

    <%--FILE UPLOAD--%>
    <%--<script type='text/javascript' src='scripts/upload_photo_participante.js'> </script>--%>
    <%--<script type='text/javascript' src='scripts/upload_photo_startup.js'> </script>--%>


    <%--INTERPRETADOR AJAX--%>
    <%--<script type='text/javascript' src='scripts/interpretadorAjax.js'> </script>--%>

    <%--DROPDOWN MENU CON FOTO--%>
    <%--<link rel="stylesheet" type="text/css" href="scripts/jquery/msDropDawnMenu/msdropdown/dd.css" />--%>
    <%--<script type="text/javascript" src="scripts/jquery/msDropDawnMenu/msdropdown/js/jquery.dd.js"></script>--%>


    <%--    <POPULAR>--%>

    <%--<script type="text/javascript" src="scripts/jsPopular/general24.js?1.0"></script>--%>
    <!--DEFINE GLOBAL VARS-->
	<script type="text/javascript">
		var user_friends = new Array();
		var user_app_friends = new Array();
	</script>

    <%--    </POPULAR>--%>

    <%--MAPS--%>

    <script src="scripts/gps/geo.js" type="text/javascript" charset="utf-8"></script>

    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script src="scripts/gmap3.js" type="text/javascript" charset="utf-8"></script>

    <%--/MAPS--%>
    
    <TITLE>On my way</TITLE>


    <script type="text/javascript">
        window.history.forward();
        function noBack(){ window.history.forward(); }


        // UPLOAD MIENTRAS CONVIERTE
        var globalEstadoConversion = false;
        var archivoCargado = 0;


        // FB VERNEVIL

        var userIsLogged = false;
        var uid = "";

//        alert("true = " + true);


        //            alert("userIsLogged = " + userIsLogged);
        if (userIsLogged) {


            uid = user.id;

            var html = "Bienvenido<br>" + user.name + "<br />";
            html += "<img src=\"https://graph.facebook.com/"+user.id+"/picture\" />";
            html += "<br><input type=\"button\" value=\"LogOut\" id=\"btn-logout\"/>";
            ("#fb").html(html);

            jQuery("#btn-logout").click(function(){
                logoutToFacebook();
            });
        } else {

            var html = "";
            html += "<input type=\"button\" value=\"LogIn\" id=\"btn-login\"/>";
            jQuery("#fb").html(html);

            jQuery("#btn-login").click(function(){
                loginToFacebook(false);
            });
        }

//        dwr.util.setValue("fb", userIsLogged, { escapeHtml:false });


    </script>

    <style type="text/css">
        #header{
            background: url("http://www.rcskids.org/images/bg/home.jpg")
        }
    </style>
</head>
