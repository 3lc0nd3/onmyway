<%@ page import="co.com.elramireza.calls.model.Categoria" %>
<%@ page import="java.util.List" %>
<%@ page import="co.com.elramireza.calls.model.Data" %>
<jsp:useBean id="omwayManager" class="co.com.elramireza.calls.dao.OmwayDAO" scope="application"/>
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

                        <%-- <PARA MOVILES> --%>
            <div class="eight columns show-on-phones">

                <%--<span class="[blue red green black white] [radius round] label">Added 01/19</span>--%>
                <hr />
                <%--<div class="panel">--%>
                    <h3>
                        Comentarios cerca
                    </h3>
                <%--</div>--%>
                <hr />
                        <%-- MOBILE      --%>

                <div class="panel">
                <h4>
                     cr 15a # 119-67
                </h4>
                <b>Tarifa</b>
                $85 / Minuto
                <br>
                <b>Cupos Disponibles</b>
                32
                <br>
                <b>Horario</b>
                <br>
                L-S 8:00 am. - 10:00 pm.<br>
                D   9:00 am. - 8:00 pm.

                <div class="row display">
                    <div class="six phone-two columns">
                        <a href="javascript:irMobileGMaps(0);" class="small radius nice blue button">Maps &rarr;</a>
                    </div>
                    <div class="six phone-two columns">
                        <a href="javascript:irMobileWaze(0)" class="small radius nice blue button">Waze &rarr;</a>
                    </div>
                </div>
                </div>
                <br>

                <hr />
            </div>  <%-- </PARA MOVILES> --%>
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

                        <label for="latData">Lat</label>
                        <input class="input-text" id="latData" type="text" readonly>

                        <label for="lonData">Lon</label>
                        <input class="input-text" id="lonData" type="text" readonly>

                        <label for="textoData">Detalle</label>
                        <textarea id="textoData"></textarea>

                        <a onclick="guardaData();" class="small radius nice blue button">Enviar</a>
                        <br>
                        <br>

                    </fieldset>
                </form>

            </div>
        </div>

        <div class="row">
            <div class="twelve columns">
                <hr />
            </div>
        </div>
        <div class="row hide-on-phones">
            <div class="twelve columns">

                <%
    for (Data data: omwayManager.getDatas()){
                %>
                <div class="row"> <%-- <ARTICULO, POST, NOTICIA O PUBLICIDAD>--%>
                    <div class="two columns">
                        <img src="http://placehold.it/120x100" />
                    </div>
                    <div class="ten columns">
                        <h5><a ><%=data.getTituloData()%></a></h5>
                        <p>
                            <%=data.getTextoData()%>
                            <%--<br /><a href="#">Leer m&aacute;s &rarr;</a>--%>
                        </p>
                    </div>
                </div> <%-- </ARTICULO, POST, NOTICIA O PUBLICIDAD> --%>
                <%
                    }
                %>

            </div>
        </div>
        <script type="text/javascript">
            initialize_map();
        </script>