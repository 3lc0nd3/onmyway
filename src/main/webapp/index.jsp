<%@ page import="co.com.elramireza.calls.model.Participante" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="co.com.elramireza.calls.model.Startup" %>
<%@ page import="org.springframework.orm.hibernate3.support.OpenSessionInViewFilter" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.Transaction" %>
<%@ page import="co.com.elramireza.calls.model.ParticipanteStartup" %>
<jsp:useBean id="callsManager" class="co.com.elramireza.calls.dao.CallsDAO" scope="application"/>

<%
    System.out.println("");
    System.out.println("");
    System.out.println("");
    System.out.println("");
    System.out.println("");
    System.out.println("");
    System.out.println("");
    System.out.println("callsManager = " + callsManager);

    Participante p = callsManager.getParticipante(5);

    System.out.println("p.getNombreParticipante() = " + p.getNombreParticipante());
    System.out.println("p.getStartupsByIdParticipante() = " + p.getStartupsByIdParticipante());

    for (int i = 0; i < p.getStartupsByIdParticipante().size(); i++) {
        ParticipanteStartup participanteStartup = p.getStartupsByIdParticipante().get(i);
%>
    <%=participanteStartup.getStartupByIdStartup().getIdStartup()%>
    <%=participanteStartup.getStartupByIdStartup().getNombreStartup()%>
    <br>
<%
    }
%>