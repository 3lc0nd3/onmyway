<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="co.com.elramireza.calls.model.UserFB" %>
<%
    SimpleDateFormat df = new SimpleDateFormat("MMMMMMM dd, yyyy");
    UserFB userFB = (UserFB) session.getAttribute("userFB");

        /**
         * ToDo ESTO NO DEBE IR ACA
         */

    String salir = request.getParameter("salir");
    if(salir != null){
        session.removeAttribute("userFB");
        userFB = null;
    }
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
        <br>
        <br>    
        <a href="ingreso.htm" class="small radius nice blue button">Ingreso con Facebook</a>
        <%
                String problema = request.getParameter("problema");
                if(problema!=null){
        %>
        <div class="alert-box error">
            Problema al ingresar FB...
            <a href="" class="close">&times;</a>
        </div>
        <%
                }
            } else { // SI HAY USUARIO
        %>
        <br>
        <TABLE BORDER="0">
            <TR>
                <TD>
                    <img src="https://graph.facebook.com/<%=userFB.getId()%>/picture"/>
                </TD>
                <TD >
                    <div style="color: #3b5998; font-weight: bold;"><%=userFB.getFirstName()%>
                    <br>
                    <%=userFB.getLastName()%></div>
                    <a href="inicio.htm?salir=out" class="small radius nice blue button">Salir</a>
                </TD>
            </tr>
        </TABLE>
        <%
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
