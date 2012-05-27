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

<%
    String str2=""+request.getAttribute("ctrl");
    str2 = "../"+str2;
    str2 += ".jsp";
    System.out.println("ctrl = " + str2);
%>
			<jsp:include page="<%=str2%>"/>

<%-- Ciera el componente todo --%>
		</div>
        <jsp:include page="../c_footer_r.jsp"/>
        <script type="text/javascript">

            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-32165424-1']);
            _gaq.push(['_trackPageview']);

            (function() {
                var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
            })();

        </script>
	</BODY>
</HTML>