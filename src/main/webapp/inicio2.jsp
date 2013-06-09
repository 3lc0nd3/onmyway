<%@ page import="co.com.elramireza.calls.model.Categoria" %>
<%@ page import="java.util.List" %>
<%@ page import="co.com.elramireza.calls.model.Data" %>
<%@ page import="java.text.SimpleDateFormat" %>
<jsp:useBean id="omwayManager" class="co.com.elramireza.calls.dao.OmwayDAO" scope="application"/>
<%
    SimpleDateFormat df = new SimpleDateFormat("HH:mm aa MMMMMMM dd, yyyy");
%>
        <div class="row ">
            <div class="eight columns hide-on-phones">    <%--MAPA DESKTOP OR TABLET--%>
                
                <div id="map_canvas" style="width:100%; height:350px"></div>
                <div id="route"></div>
                <div style="display:none;" id="current">iniciando...</div>

                <h3><a href="#">On my way: Comenta lo que vez</a></h3>
                <p>Comparte con tus amigos los detalles simples de la vida durante tu recorrido.
                    Solo debes seleccionar la ubicaci&oacute;n en el mapa y comentar lo que desees compartir.
                    <br>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat...</p>
                <a href="#" class="small radius nice blue button">Leer m&aacute;s &rarr;</a>
            </div>  <%--FIN MAPA DESKTOP OR TABLET--%>
            
            <div class="four columns">

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

                        <a onclick="guardaData();" class="small radius nice blue button">Enviar</a>
                        <br>
                        <br>

                    </fieldset>
                </form>

                Desarrollado por
                <a href="https://twitter.com/#!/elramireza" target="s333">@elramireza</a>
                para el
                <a href="https://twitter.com/#!/search/%23DeveloperDay" target="1412122">#DeveloperDay</a>
                de
                <a href="https://twitter.com/#!/WayraCo" target="sa333">@WayraCo</a>
                <br>
                <br>
                Cel: 300-554-3367
                <br>
                Email: elramireza@gmail.com

            </div>
        </div>

        <div class="row">
            <div class="twelve columns">
                <hr />
            </div>
        </div>
        <div class="row">
            <div class="twelve columns">
<%
//    <POSTS>
    for (Data data: omwayManager.getDatas()){
%>
                <%-- <ARTICULO, POST, NOTICIA O PUBLICIDAD>--%>
                <div class="panel">
                    <div class="row">
                        <div class="two columns">
                            <img src="https://graph.facebook.com/<%=data.getUserByIdUser().getId()%>/picture"/>
                            <br>
                            <%=data.getUserByIdUser().getFirstName()%>
                            <%=data.getUserByIdUser().getLastName()%>
                        </div>
                        <div class="eight columns">
                            <h5><a ><%=data.getTituloData()%></a></h5>
                            <p>
                                <%=data.getTextoData()%>
                                <br>
                                <span class="round label"><%=df.format(data.getFechaData())%></span>
                                <%--<br /><a href="#">Leer m&aacute;s &rarr;</a>--%>
                            </p>
                        </div>
                              <%--  SOLO PARA DESKTOPS --%>
                        <div class="two columns hide-on-phones">
                            <a href="javascript:irGMaps(
                            <%=data.getLatData()%>,
                            <%=data.getLonData()%>,
                            '<%=data.getTituloData()%>',
                            '<%=data.getTextoData()%>',
                            '<%=data.getUserByIdUser().getFirstName()+"<br>"+data.getUserByIdUser().getLastName()%>',
                            '<%=data.getUserByIdUser().getId()%>');" class="small radius nice blue button">Maps &rarr;</a>
                        </div>
                        <%--  SOLO PARA MOVILES --%>
                        <div class="two columns hide-on-desktops">
                            <a href="javascript:irMobileGMaps(<%=data.getLatData()%>,<%=data.getLonData()%>);" class="small radius nice blue button">Ir Usando Google Maps &rarr;</a>
                        </div>
                    </div>
                </div>
                <%-- </ARTICULO, POST, NOTICIA O PUBLICIDAD> --%>
            <%-- PANEL --%>
<%
    } // </POSTS>
%>
            </div>
        </div>
        <script type="text/javascript">
            initialize_map();
        </script>