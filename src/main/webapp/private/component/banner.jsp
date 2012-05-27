<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%
    SimpleDateFormat df = new SimpleDateFormat("MMMMMMM dd, yyyy");
%>

        <header class="row hide-on-phones">
                <div class="two columns">
                        <img src="http://placehold.it/200x120&text=logo1" />
                </div>
                <div class="eight columns">
                        <h1 class="centered">Parking</h1>
                        <h5 class="centered"><%=df.format(new Date())%></h5>
                </div>
                <div class="two columns">
                        <img src="http://placehold.it/200x120&text=logo2" />
                </div>
        </header>

        <header class="row show-on-phones">
            <div class="twelve columns">
                <img src="http://placehold.it/480x100&text=logoMobile" />

                <h1 class="centered">Parking</h1>

                <h5 class="centered"><%=df.format(new Date())%></h5>
			</div>
        </header>

