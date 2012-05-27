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
                        <h5>Fieldset Header H5</h5>
                        <p>This is a paragraph within a fieldset.</p>

                        <label for="fieldsetInput">Standard Input</label>
                        <input class="input-text" id="fieldsetInput" type="text">
                    </fieldset>
                </form>

            </div>
        </div>

        <div class="row">
            <div class="twelve columns">
                <hr />
            </div>
        </div>
        <div class="row">
            <div class="twelve columns">
                <div class="row"> <%-- <ARTICULO, POST, NOTICIA O PUBLICIDAD>--%>
                    <div class="two columns">
                        <img src="http://placehold.it/120x100" />
                    </div>
                    <div class="ten columns">
                        <h5><a href="">Art&iacute;culo nuevo 1</a></h5>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                            <br /><a href="#">Leer m&aacute;s &rarr;</a></p>
                    </div>
                </div> <%-- </ARTICULO, POST, NOTICIA O PUBLICIDAD> --%>

            </div>
        </div>
        <script type="text/javascript">
            initialize_map();
        </script>