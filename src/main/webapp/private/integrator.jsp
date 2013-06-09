<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="co.com.elramireza.calls.model.Categoria" %>
<%@ page import="co.com.elramireza.calls.model.Data" %>
<%@ page import="co.com.elramireza.calls.model.UserFB" %>
<jsp:useBean id="omwayManager" class="co.com.elramireza.calls.dao.OmwayDAO" scope="application"/>
<%
    UserFB userFB = new UserFB();
    userFB.setEmail("uncorreo@yopmail.com");
    userFB.setFirstName("Rosa Maria");
    userFB.setLastName("Perez");
    userFB.setId("1");
    session.setAttribute("userFB", userFB);
%>
<!DOCTYPE html>
<html lang="en">
<head>

    <title>Iluminanos</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="iluminanos denuncia tu alumbrado publico">
    <meta name="author" content="awerest - interactive agency">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet">
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/bootstrap-lightbox.min.css" rel="stylesheet">
    <link href="css/m-styles.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <%--<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>--%>
    <link rel="image_src" href="thumbnail.png">
    <link rel="icon" type="image/ico" href="favicon.ico">

</head>

<%
    SimpleDateFormat df = new SimpleDateFormat("HH:mm aa MMMMMMM dd, yyyy");
%>
<body data-spy="scroll" data-target=".navbar" data-offset='64' onLoad="$.stellar();">
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>
<!--start navigation-->
<div class="navbar navbar-fixed-top" id="navigation">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a href="#intro" class="brand"><img src="img/logo.png" alt=""></a>
            <div class="nav-collapse collapse">
                <ul class="nav pull-right">
                    <li><a href="#intro">Inicio</a></li>
                    <li><a href="#services-top">Cómo Participar</a></li>
                    <li><a href="#works-top">Qué hacemos</a></li>
                    <li><a href="#gallery-top">Reporte</a></li>
                    <li><a href="#team-top">Equipo</a></li>
                    <li><a href="#contact-top">Contacto</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<section id="intro">
    <div class="container">
        <div class="row">
            <div class="span8 offset2 margin25">
                <div id="carousel_fade_intro" class="carousel slide carousel-fade">
                    <div class="carousel-inner">
                        <div class="active item">
                            <h2>Tienes problemas en tu alumbrado público?</h2>
                        </div>
                        <div class="inactive item">
                            <h2>repórtalo acá</h2>
                        </div>
                        <%--<div class="inactive item">
                            <h2>or app landing page.</h2>
                        </div>
                        <div class="inactive item">
                            <h2>It's easy to customize</h2>
                        </div>
                        <div class="inactive item">
                            <h2>to fit any brand.</h2>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="fadeInUp delay animated hidden-phone" id="more">
        <a href="#services-top" class="m-btn a-btn blue big icn-only"><i class="icon-sort-down icon-3x pull-left"></i></a>
    </div>
</section>
<!--start services header-->
<section id="services-top">
    <!--start services-desktop header-->
    <section id="services-top-desktop"  class="visible-desktop" data-stellar-background-ratio="0.6" data-stellar-vertical-offset="20">
        <h1 style="text-shadow: 0.1em 0.1em #333" class="header">Colaborar?</h1>
        <h1 style="text-shadow: 0.1em 0.1em #333" class="header">Por supuesto</h1>
    </section>
    <!--start services-mobile header-->
    <section id="services-top-mobile" class="hidden-desktop">
        <h1 class="header">Services</h1>
        <p class="header">How awesome can it be?</p>
    </section>
</section>
<!--start services-->
<section id="services">
    <div class="container">
        <div class="row divide">
            <div class="span12">
                <ul class="thumbnails">
                    <li class="span4">
                        <div class="thumbnail">
                            <i class="icon-cogs"></i>
                            <h4>Es un servicio público</h4>
                            <span>HTML5 & CSS3 Valide Code</span>
                            <p>Aoccdrnig to a rscheearch at Cmabrigde Uinervtisy, it deosn't mttaer in waht oredr the ltteers
                                in a wrod are, the olny iprmoetnt tihng is taht the frist and lsat ltteer be at the rghit pclae.</p>
                        </div>
                    </li>
                    <li class="span4">
                        <div class="thumbnail">
                            <i class="icon-eye-open"></i>
                            <h4>Todos pagamos por ello</h4>
                            <span>Ultra Sharp Graphics</span>
                            <p>Aoccdrnig to a rscheearch at Cmabrigde Uinervtisy, it deosn't mttaer in waht oredr the ltteers
                                in a wrod are, the olny iprmoetnt tihng is taht the frist and lsat ltteer be at the rghit pclae.</p>
                        </div>
                    </li>
                    <li class="span4">
                        <div class="thumbnail">
                            <i class="icon-stethoscope"></i>
                            <h4>Mejoramos la calidad del Servicio</h4>
                            <span>It's Free and Always Will Be</span>
                            <p>Aoccdrnig to a rscheearch at Cmabrigde Uinervtisy, it deosn't mttaer in waht oredr the ltteers
                                in a wrod are, the olny iprmoetnt tihng is taht the frist and lsat ltteer be at the rghit pclae.</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>
<%--

<section id="hint1">
    <a href="http://fortawesome.github.com/Font-Awesome/" target="_blank"><strong>HEADS UP!</strong> Click here to check all <strong>249 icons</strong> that we integrated in this template</a>
</section>
--%>
<!--start works header-->
<section id="works-top">
    <!--start works-desktop header-->
    <section id="works-top-desktop" class="visible-desktop" data-stellar-background-ratio="0.6" data-stellar-vertical-offset="20">
        <h1 class="header">Consumimos la info pública</h1>
        <p class="header">
            * Informar a las instituciones públicas de los problemas
            <br>
            * Ejercer presión social para mejorar el servicio
            <br>
            * Medir eficiencia y calidad de los proveedores
            <br>
            * Comprometer a la sociedad en el cuidado de los bienes públicos
            <br>
        </p>
    </section>
    <!--start works-mobile header-->
    <section id="works-top-mobile" class="hidden-desktop">
        <h1 class="header">Consumimos la info pública</h1>
        <p class="header">
            * Informar a las instituciones públicas de los problemas
            <br>
            * Ejercer presión social para mejorar el servicio
            <br>
            * Medir eficiencia y calidad de los proveedores
            <br>
            * Comprometer a la sociedad en el cuidado de los bienes públicos
            <br>
        </p>
    </section>
</section>
<!--start works-->
<section id="works">
    <div class="container">
        <div class="row divide">
            <div class="span12">
                <div id="carousel_vertical_slide" class="carousel slide vertical">
                    <div class="carousel-inner">
                        <div class="active item">
                            <img src="img/works/works_1.jpg" alt="">
                        </div>
                        <div class="inactive item">
                            <img src="img/works/works_2.jpg" alt="">
                        </div>
                    </div>
                    <button class="carousel-control left m-btn icn-only" href="#carousel_vertical_slide" data-slide="prev"><i class="icon-chevron-left"></i></button>
                    <button class="carousel-control right m-btn icn-only" href="#carousel_vertical_slide" data-slide="next"><i class="icon-chevron-right"></i></button>
                </div>
            </div>
            <div class="span8 offset2">
                <h1>Nuestra Tecnología</h1>
                <%--<h4>Works layout 1 + carousel with vertical slide effect</h4>
                <p class="center">Aoccdrnig to a rscheearch at Cmabrigde Uinervtisy, it deosn't mttaer in waht oredr the ltteers in a wrod are,
                    the olny iprmoetnt tihng is taht the frist and lsat ltteer be at the rghit pclae.
                    The rset can be a toatl mses and you can sitll raed it wouthit porbelm.
                    Tihs is bcuseae the huamn mnid deos not raed ervey lteter by istlef, but the wrod as a wlohe. Awesomeness, true story!</p>--%>
            </div>
        </div>
        <%--<div class="divider"></div>--%>
        <div class="row divide">
            <div class="span12">
                <div id="carousel_horizontal_slide" class="carousel slide horizontal">
                    <div class="carousel-inner">
                        <div class="active item">
                            <img src="img/works/works_3.jpg" alt="">
                        </div>
                        <div class="inactive item">
                            <img src="img/works/works_4.jpg" alt="">
                        </div>
                    </div>
                    <button class="carousel-control left m-btn icn-only" href="#carousel_horizontal_slide" data-slide="prev"><i class="icon-chevron-left"></i></button>
                    <button class="carousel-control right m-btn icn-only" href="#carousel_horizontal_slide" data-slide="next"><i class="icon-chevron-right"></i></button>
                </div>
                <h1>Disponible para todos los dispositivos</h1>
                <h4>Works layout 2 + carousel with horizontal slide effect</h4>
            </div>
            <div class="span7 offset1">
                <p>Aoccdrnig to a rscheearch at Cmabrigde Uinervtisy, it deosn't mttaer in waht oredr the ltteers in a wrod are,
                    the olny iprmoetnt tihng is taht the frist and lsat ltteer be at the rghit pclae.
                    The rset can be a toatl mses and you can sitll raed it wouthit porbelm.
                    Tihs is bcuseae the huamn mnid deos not raed ervey lteter by istlef, but the wrod as a wlohe. Awesomeness, true story!</p>
            </div>
            <div class="span2 offset1">
                <p><strong>Client:</strong> Themeforest<br>
                    <strong>Date:</strong> 21.02.1986
                    <a href="#" class="m-btn blue span2">View online</a>
            </div>
        </div>
        <div class="divider"></div>
        <div class="row divide">
            <div class="span12">
            </div>
            <div class="span7">
                <div id="carousel_fade" class="carousel slide carousel-fade">
                    <div class="carousel-inner">
                        <div class="active item">
                            <img src="img/works/works_5.jpg" alt="">
                        </div>
                        <div class="inactive item">
                            <img src="img/works/works_6.jpg" alt="">
                        </div>
                    </div>
                    <button class="carousel-control left m-btn icn-only" href="#carousel_fade" data-slide="prev"><i class="icon-chevron-left"></i></button>
                    <button class="carousel-control right m-btn icn-only" href="#carousel_fade" data-slide="next"><i class="icon-chevron-right"></i></button>
                </div>
            </div>
            <div class="span5 divide">
                <h1>Reporte para toma de decisiones</h1>
                <h4>Works layout 3 + carousel with fade effect</h4>
                <p>Aoccdrnig to a rscheearch at Cmabrigde Uinervtisy, it deosn't mttaer in waht oredr the ltteers in a wrod are,
                    the olny iprmoetnt tihng is taht the frist and lsat ltteer be at the rghit pclae.
                    The rset can be a toatl mses and you can sitll raed it wouthit porbelm.
                    Tihs is bcuseae the huamn mnid deos not raed ervey lteter by istlef, but the wrod as a wlohe. Awesomeness, true story!</p>
                <a href="#" class="m-btn blue pull-right">View online</a>
                <p><strong>Client:</strong> Themeforest<br>
                    <strong>Date:</strong> 21.02.1986
            </div>
        </div>
        <div class="divider"></div>
        <div class="row divide">
            <div class="span5 divide">
                <h1>Has seguimiento a tus reportes</h1>
                <h4>Works layout 3 + carousel with fade effect</h4>
                <p>Aoccdrnig to a rscheearch at Cmabrigde Uinervtisy, it deosn't mttaer in waht oredr the ltteers in a wrod are,
                    the olny iprmoetnt tihng is taht the frist and lsat ltteer be at the rghit pclae.
                    The rset can be a toatl mses and you can sitll raed it wouthit porbelm.
                    Tihs is bcuseae the huamn mnid deos not raed ervey lteter by istlef, but the wrod as a wlohe. Awesomeness, true story!</p>
                <a href="#" class="m-btn blue pull-right">View online</a>
                <p><strong>Client:</strong> Themeforest<br>
                    <strong>Date:</strong> 21.02.1986
            </div>
            <div class="span7">
                <div id="carousel_fade_2" class="carousel slide carousel-fade">
                    <div class="carousel-inner">
                        <div class="active item">
                            <img src="img/works/works_6.jpg" alt="">
                        </div>
                        <div class="inactive item">
                            <img src="img/works/works_5.jpg" alt="">
                        </div>
                    </div>
                    <button class="carousel-control left m-btn icn-only" href="#carousel_fade_2" data-slide="prev"><i class="icon-chevron-left"></i></button>
                    <button class="carousel-control right m-btn icn-only" href="#carousel_fade_2" data-slide="next"><i class="icon-chevron-right"></i></button>
                </div>
            </div>
        </div>
    </div>
</section>
<%--<section id="hint2">--%>
    <%--<a href="http://twitter.github.com/bootstrap/base-css.html" target="_blank"><strong>Heads up!</strong> Click here to check all built-in shortcodes</a>--%>
<%--</section>--%>
<!--start gallery header-->
<section id="gallery-top">
    <!--start gallery-desktop header-->
    <section id="gallery-top-desktop" class="visible-desktop" data-stellar-background-ratio="0.6" data-stellar-vertical-offset="20">
        <h1 class="header">Reportar Ya!</h1>
        <p class="header">de forma fácil y segura</p>
    </section>
    <!--start gallery-mobile header-->
    <section id="gallery-top-mobile" class="hidden-desktop">
        <h1 class="header">Reportar Ya!</h1>
        <p class="header">de forma fácil y segura</p>
    </section>
</section>
<!--start gallery-->
<!--start thumbnails section-->
<section id="gallery">
    <div class="container">
        <div class="row divide">
            <div class="span8">
                <div id="map_canvas" style="width:100%; height:400px"></div>
                <div id="route"></div>
                <div style="display:none;" id="current">iniciando...</div>

                <h3><a href="#">Reporte Ciudadano</a></h3>

            </div>
            <div class="span4">
                <form name="registrar">
                    <fieldset>
                        <h5>Registrar:</h5>
                        <p>Eres libre para compartir tu experiencia.</p>

                        <label for="idCategoria">Categor&iacute;a</label>
                        <select id="idCategoria">
                            <%
                                for (Categoria categoria : omwayManager.getCategorias()) {
                            %>
                            <option value="<%=categoria.getIdCategoria()%>"><%=categoria.getTextoCategoria()%></option>
                            <%
                                }
                            %>
                        </select>

                        <label for="tituloData">T&iacute;tulo</label>
                        <input class="input-text" id="tituloData" type="text">

                        <label for="latData" class="hide-on-phones">Lat</label>
                        <input class="input-text hide-on-phones" id="latData" type="text" readonly>

                        <label for="lonData" class="hide-on-phones">Lon</label>
                        <input class="input-text hide-on-phones" id="lonData" type="text" readonly>

                        <label for="textoData">Detalle</label>
                        <textarea id="textoData"></textarea>
                        <br>
                        <br>
                        <a onclick="guardaData();" class="m-btn blue">Enviar</a>
                        <br>
                        <br>

                    </fieldset>
                </form>
            </div>
        </div>

        <div class="row divide">
            <div class="span12">
                <table border="1">

                <%
                    //    <POSTS>
                    for (Data data: omwayManager.getDatas()){
                %>
                <%-- <ARTICULO, POST, NOTICIA O PUBLICIDAD>--%>
                <tr>
                    <td>
                            <%--<img src="https://graph.facebook.com/<%=data.getUserByIdUser().getId()%>/picture"/>--%>
                            <%--<br>--%>
                            <%=data.getUserByIdUser().getFirstName()%>
                            <%=data.getUserByIdUser().getLastName()%>
                    </td>
                    <td>
                        <%=data.getCategoriaByIdCategoria().getTextoCategoria()%>
                    </td>
                    <td>
                            <h5><a ><%=data.getTituloData()%></a></h5>
                            <p>
                                <%=data.getTextoData()%>
                                <br>
                                <span class="round label"><%=df.format(data.getFechaData())%></span>
                                <%--<br /><a href="#">Leer m&aacute;s &rarr;</a>--%>
                            </p>
                    </td>
                        <%--  SOLO PARA DESKTOPS --%>
                    <td>
                        <a href="javascript:irGMaps(
                            <%=data.getLatData()%>,
                            <%=data.getLonData()%>,
                            '<%=data.getTituloData()%>',
                            '<%=data.getTextoData()%>',
                            '<%=data.getUserByIdUser().getFirstName()+"<br>"+data.getUserByIdUser().getLastName()%>',
                            '<%=data.getUserByIdUser().getId()%>');" class="m-btn blue">Maps &rarr;</a>
                    </td>
                        <%--  SOLO PARA MOVILES --%>
                        <%--<div class="two columns hide-on-desktops">
                            <a href="javascript:irMobileGMaps(<%=data.getLatData()%>,<%=data.getLonData()%>);" class="small radius nice blue button">Ir Usando Google Maps &rarr;</a>
                        </div>--%>

                </tr>
                <%-- </ARTICULO, POST, NOTICIA O PUBLICIDAD> --%>
                <%-- PANEL --%>
                <%
                    } // </POSTS>
                %>

                </table>
            </div>
        </div>

        <div class="row divide">
            <%--<div class="span8 offset2">
                <h1>Mockups included</h1>
                <p class="center">Aoccdrnig to a rscheearch at Cmabrigde Uinervtisy, it deosn't mttaer in waht oredr the ltteers in a wrod are,
                    the olny iprmoetnt tihng is taht the frist and lsat ltteer be at the rghit pclae.
                    The rset can be a toatl mses and you can sitll raed it wouthit porbelm.
                    Tihs is bcuseae the huamn mnid deos not raed ervey lteter by istlef, but the wrod as a wlohe. Awesomeness, true story!</p>
            </div>--%>
            <%--<div class="span12">
                <ul class="thumbnails">
                    <li class="span3">
                        <div class="thumbnail" data-thumb="tooltip" title="Click me" data-placement="top">
                            <a href="#gallery_1" data-toggle="lightbox">
                                <img src="img/gallery/gallery_1.jpg" alt="">
                            </a>
                        </div>
                    </li>
                    <li class="span3">
                        <div class="thumbnail" data-thumb="tooltip" title="Click me" data-placement="bottom">
                            <a href="#gallery_2" data-toggle="lightbox">
                                <img src="img/gallery/gallery_2.jpg" alt="">
                            </a>
                        </div>
                    </li>
                    <li class="span3">
                        <div class="thumbnail" data-thumb="tooltip" title="Click me" data-placement="top">
                            <a href="#gallery_3" data-toggle="lightbox">
                                <img src="img/gallery/gallery_3.jpg" alt="">
                            </a>
                        </div>
                    </li>
                    <li class="span3">
                        <div class="thumbnail" data-thumb="tooltip" title="Click me" data-placement="bottom">
                            <a href="#gallery_4" data-toggle="lightbox">
                                <img src="img/gallery/gallery_4.jpg" alt="">
                            </a>
                        </div>
                    </li>
                    <li class="span3">
                        <div class="thumbnail" data-thumb="tooltip" title="Click me" data-placement="top">
                            <a href="#gallery_5" data-toggle="lightbox">
                                <img src="img/gallery/gallery_5.jpg" alt="">
                            </a>
                        </div>
                    </li>
                    <li class="span3">
                        <div class="thumbnail" data-thumb="tooltip" title="Click me" data-placement="bottom">
                            <a href="#gallery_6" data-toggle="lightbox">
                                <img src="img/gallery/gallery_6.jpg" alt="">
                            </a>
                        </div>
                    </li>
                    <li class="span3">
                        <div class="thumbnail" data-thumb="tooltip" title="Click me" data-placement="top">
                            <a href="#gallery_7" data-toggle="lightbox">
                                <img src="img/gallery/gallery_7.jpg" alt="">
                            </a>
                        </div>
                    </li>
                    <li class="span3">
                        <div class="thumbnail" data-thumb="tooltip" title="Click me" data-placement="bottom">
                            <a href="#gallery_8" data-toggle="lightbox">
                                <img src="img/gallery/gallery_8.jpg" alt="">
                            </a>
                        </div>
                    </li>
                    <li class="span3">
                        <div class="thumbnail" data-thumb="tooltip" title="Click me" data-placement="top">
                            <a href="#gallery_9" data-toggle="lightbox">
                                <img src="img/gallery/gallery_9.jpg" alt="">
                            </a>
                        </div>
                    </li>
                    <li class="span3">
                        <div class="thumbnail" data-thumb="tooltip" title="Click me" data-placement="bottom">
                            <a href="#gallery_10" data-toggle="lightbox">
                                <img src="img/gallery/gallery_10.jpg" alt="">
                            </a>
                        </div>
                    </li>
                    <li class="span3">
                        <div class="thumbnail" data-thumb="tooltip" title="Click me" data-placement="top">
                            <a href="#gallery_11" data-toggle="lightbox">
                                <img src="img/gallery/gallery_11.jpg" alt="">
                            </a>
                        </div>
                    </li>
                    <li class="span3">
                        <div class="thumbnail" data-thumb="tooltip" title="Click me" data-placement="bottom">
                            <a href="#gallery_12" data-toggle="lightbox">
                                <img src="img/gallery/gallery_12.jpg" alt="">
                            </a>
                        </div>
                    </li>
                </ul>
            </div>--%>
        </div>
    </div>
</section>
<!--end thumbnails section-->
<!--start lightboxes-->
<div id="gallery_1" class="lightbox hide fade"  tabindex="-1" role="dialog" aria-hidden="true">
    <div class='lightbox-content'>
        <img src="img/gallery/gallery_1@2x.jpg" alt="">
    </div>
</div>
<div id="gallery_2" class="lightbox hide fade"  tabindex="-1" role="dialog" aria-hidden="true">
    <div class='lightbox-content'>
        <img src="img/gallery/gallery_2@2x.jpg" alt="">
    </div>
</div>
<div id="gallery_3" class="lightbox hide fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class='lightbox-content'>
        <img src="img/gallery/gallery_3@2x.jpg" alt="">
    </div>
</div>
<div id="gallery_4" class="lightbox hide fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class='lightbox-content'>
        <img src="img/gallery/gallery_4@2x.jpg" alt="">
    </div>
</div>
<div id="gallery_5" class="lightbox hide fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class='lightbox-content'>
        <img src="img/gallery/gallery_5@2x.jpg" alt="">
    </div>
</div>
<div id="gallery_6" class="lightbox hide fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class='lightbox-content'>
        <img src="img/gallery/gallery_6@2x.jpg" alt="">
    </div>
</div>
<div id="gallery_7" class="lightbox hide fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class='lightbox-content'>
        <img src="img/gallery/gallery_7@2x.jpg" alt="">
    </div>
</div>
<div id="gallery_8" class="lightbox hide fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class='lightbox-content'>
        <img src="img/gallery/gallery_8@2x.jpg" alt="">
    </div>
</div>
<div id="gallery_9" class="lightbox hide fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class='lightbox-content'>
        <img src="img/gallery/gallery_9@2x.jpg" alt="">
    </div>
</div>
<div id="gallery_10" class="lightbox hide fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class='lightbox-content'>
        <img src="img/gallery/gallery_10@2x.jpg" alt="">
    </div>
</div>
<div id="gallery_11" class="lightbox hide fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class='lightbox-content'>
        <img src="img/gallery/gallery_11@2x.jpg" alt="">
    </div>
</div>
<div id="gallery_12" class="lightbox hide fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class='lightbox-content'>
        <img src="img/gallery/gallery_12@2x.jpg" alt="">
    </div>
</div>
<!--end lightbox section-->
<section id="hint3">
    <a href="http://twitter.github.com/bootstrap/components.html" target="_blank"><strong>Heads up!</strong> Click here to check all built-in components</a>
</section>
<!--start team header-->
<section id="team-top">
    <!--start team-desktop header-->
    <section id="team-top-desktop" class="visible-desktop" data-stellar-background-ratio="0.6" data-stellar-vertical-offset="20">
        <h1 class="header">Team</h1>
        <p class="header">Coffees and Apple</p>
    </section>
    <!--start team-mobile header-->
    <section id="team-top-mobile" class="hidden-desktop">
        <h1 class="header">Team</h1>
        <p class="header">Coffees and Apple</p>
    </section>
</section>
<!--start team-->
<section id="team">
    <div class="container">
        <div class="row divide">
            <div class="span8 offset2">
                <h1>We are Awerest</h1>
                <p class="center">Aoccdrnig to a rscheearch at Cmabrigde Uinervtisy, it deosn't mttaer in waht oredr the ltteers in a wrod are,
                    the olny iprmoetnt tihng is taht the frist and lsat ltteer be at the rghit pclae.
                    The rset can be a toatl mses and you can sitll raed it wouthit porbelm.
                    Tihs is bcuseae the huamn mnid deos not raed ervey lteter by istlef, but the wrod as a wlohe. Awesomeness, true story!</p>
            </div>
            <div class="span12">
                <ul class="thumbnails">
                    <li class="span4">
                        <div class="thumbnail">
                            <%--<img src="img/team/team_1.jpg" alt="">--%>
                            <a href="http://p4s.co/P4Sp-edward_l._ramirez_av-p-87.html" target="_blank"><h4>Edward Ramirez</h4></a>
                            <span></span>
                            <p></p>
                        </div>
                    </li>
                    <li class="span4">
                        <div class="thumbnail">
                            <%--<img src="img/team/team_2.jpg" alt="">--%>
                            <h4>Jhon Jairo Martinez</h4>
                            <span></span>
                            <p></p>
                        </div>
                    </li>
                    <li class="span4">
                        <div class="thumbnail">
                            <%--<img src="img/team/team_3.jpg" alt="">--%>
                            <h4>Jorge Lozano</h4>
                            <span></span>
                            <p></p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>
<!--start contact header-->
<section id="contact-top">
    <!--start contact-desktop header-->
    <section id="contact-top-desktop" class="visible-desktop" data-stellar-background-ratio="0.6" data-stellar-vertical-offset="20">
        <h1 class="header">Contact</h1>
        <p class="header">Fill up our inbox, we like that</p>
    </section>
    <!--start contact-mobile header-->
    <section id="contact-top-mobile" class="hidden-desktop">
        <h1 class="header">Contact</h1>
        <p class="header">Fill up our inbox, we like that</p>
    </section>
</section>
<!--start contact-->
<section id="contact">
    <div class="container">
        <div class="row divide">
            <div class="span8">
                <div class="row">
                    <%--<form action="js/sendmail.php" method="post" id="contactForm">
                        <div class="span4">
                            <label>Name:</label>
                            <input type="text" name="name" value="" id="name" class="span4"/>
                        </div>
                        <div class="span4">
                            <label>Email:</label>
                            <input type="text" name="email" value="" id="email"  class="span4"/>
                        </div>
								<span class="honeypot">
									<label>Honeypot:</label>
									<input type="text" name="last" value="" id="last"/>
								</span>
                        <div class="span8">
                            <label>Message:</label>
                            <textarea rows="6" name="message" class="span8"></textarea>
                        </div>
                        <div class="span8">
                            <div class="message"><div class="alert"></div></div>
                            <input type="submit" value="Send" class="m-btn blue"/>
                        </div>
                    </form>--%>
                </div>
            </div>
            <!--start sidebar-->
            <div class="span4" id="address">
                <p>Bogotá Colombia</p>
                <p>
                    <a href="http://p4s.co" target="_blank">Partners for Startups</a>
                </p>
                <p>
                    <abbr title="Email">Email:</abbr> info@p4s.co
                </p>
            </div>
        </div>
    </div>
</section>
<!--start footer-->
<section id="footer">
    <div class="container">
        <div class="row divide">
            <!--logo and copyright-->
            <div class="span3">
                <a href="#intro" class="brand"><img src="img/logo.png" alt=""></a>
                <p>2013 © myway Inc.</p><br>
                <p>myway is product <br> of <a href="http://www.awerest.com" target="_blank">awerest</a></p><br>
            </div>
            <!--footer menu-->
            <div class="span2 offset4">
                <ul>
                    <li><h5>Menu</h5></li>
                    <li><a href="#intro">Home</a></li>
                    <li><a href="#services-top">Services</a></li>
                    <li><a href="#works-top">Works</a></li>
                    <li><a href="#gallery-top">Gallery</a></li>
                    <li><a href="#team-top">Team</a></li>
                </ul>
            </div>
            <!--link to social networks-->
            <div class="span2 offset1">
                <ul>
                    <li><h5>Social</h5></li>
                    <li><a class="facebook" href="http://www.facebook.com/awerest" target="_blank">Facebook</a></li>
                    <li><a class="twitter" href="http://www.twitter.com/awerest" target="_blank">Twitter</a></li>
                    <li><a class="google" href="https://plus.google.com/u/0/104533843132286032110/posts" target="_blank">Google+</a></li>
                    <li><a class="instagram" href="http://www.instagram.com/awerest" target="_blank">Instagram</a></li>
                    <li><a class="pinterest" href="http://www.pinterest.com/awerest" target="_blank">Pinterest</a></li>
                </ul>
            </div>
        </div>
    </div>
</section>
<!--latest jQuery-->
<script src="js/jquery-1.10.js"></script>
<!--main bootstrap js-->
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<!--custom js-->
<script src="js/custom.js" type="text/javascript"></script>
<!--preloader-->
<script type="text/javascript">
    $(window).load(function() {
        $("#status").fadeOut();
        $("#preloader").delay(350).fadeOut("slow");
    })
</script>
<!--retina support-->
<script src="js/retina.js" type="text/javascript"></script>
<!--smooth scroll on page-->
<script src="js/jquery.easing-1.3.pack.js" type="text/javascript"></script>
<!--custom scrollbar-->
<script src="js/jquery.nicescroll.min.js" type="text/javascript"></script>
<!--parallax-->
<script src="js/jquery.stellar.js" type="text/javascript"></script>
<!--contact-->
<script src="js/jquery.form.js"></script>
<!--gallery lightbox-->
<script src="js/bootstrap-lightbox.min.js"></script>



<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type="text/javascript" src="scripts/script.js?t=<%=System.currentTimeMillis()%>"></script>
<script type='text/javascript' src='dwr/interface/omwayRemoto.js'></script>

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


<script type="text/javascript">
    initialize_map();
</script>


<!--google analytics-->
<%--<script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'YOUR GOOGLE ANALYTICS CODE']);
    _gaq.push(['_trackPageview']);

    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
</script>--%>
</body>
</html>