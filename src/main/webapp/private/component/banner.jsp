<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="co.com.elramireza.calls.model.UserFB" %>
<%
    SimpleDateFormat df = new SimpleDateFormat("MMMMMMM dd, yyyy");
    UserFB userFB = (UserFB) session.getAttribute("userFB");
%>

<header class="row">
    <div class="two columns hide-on-phones">
        <img src="http://placehold.it/200x120&text=logo1" />
    </div>

    <div class="four columns show-on-phones hide-on-desktops">
        <img src="http://placehold.it/480x100&text=logoMobile" />
    </div>

    <div class="five columns">
        <h1 class="centered">On my way</h1>
        <h5 class="centered"><%=df.format(new Date())%></h5>
    </div>
    <div class="three columns">
        <%
            if(userFB == null){ // NO HAY USUARIO
        %>
            <a href="ingreso.htm" class="small radius nice blue button">Ingreso con Facebook</a>
        <%
            } else {

            }
        %>
    </div>
    <div class="two columns hide-on-phones">
        <img src="http://placehold.it/200x120&text=logo2" />
    </div>
</header>

      <%--  <header class="row show-on-phones">
            <div class="twelve columns">
                <img src="http://placehold.it/480x100&text=logoMobile" />

                <h1 class="centered">On my way</h1>

                <h5 class="centered"><%=df.format(new Date())%></h5>
			</div>
        </header>
--%>
