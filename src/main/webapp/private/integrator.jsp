<!DOCTYPE html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
	<jsp:include page="../c_head_r.jsp"/>


    <BODY>
		<div class="container">
<%-- Integrador de componentes --%>
<%-- Define los componentes que tendra la visualzacion WEB --%>

            <jsp:include page="component/banner.jsp"/>

			<jsp:include page="component/menu.jsp"/>
<%-- Incluye el servicio pedido --%>

            <jsp:include page="../inicio.jsp"/>
<%
    String str2=""+request.getAttribute("ctrl_serv");
    System.out.println("str2 = " + str2);
%>
			<jsp:include page="<%=str2%>"/>

<%-- Ciera el componente todo --%>
		</div>
        <jsp:include page="../c_footer_r.jsp"/>    
	</BODY>
</HTML>