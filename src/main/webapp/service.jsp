<%@ page import="co.com.elramireza.calls.dao.CallsDAO" %>
<%@ page import="co.com.elramireza.calls.model.Client" %>
<%@ page import="co.com.elramireza.calls.model.Outbox" %>
<%@ page import="org.apache.log4j.Logger" %>
<%@ page import="java.util.Date" %>
<jsp:useBean id="callsManager" class="co.com.elramireza.calls.dao.CallsDAO" scope="application"/>
<%
    Logger logger  = Logger.getLogger(CallsDAO.class);

    /**
     * RECIVE LA LLAMADA PERDIDA
     */

    String client = request.getParameter("client");
    String gateway = request.getParameter("gateway");

    Client myClient = new Client();
    myClient.setClient(client);
    myClient.setGateway(gateway);

        /**
         * GUARDA AL CLIENTE
         */

        logger.debug("client.getClient() = " + myClient.getClient());
        logger.debug("client.getGateway() = " + myClient.getGateway());
        logger.debug("client.getEmail() = " + myClient.getEmail());
    callsManager.saveClient(myClient);


        /**
         * ENVIA EL MENSAJE PREGUNTADO EL EMAIL
         */


    Outbox outbox = new Outbox();
    outbox.setNumber(client);
    outbox.setText("Para formalizar el proceso, por favor responda este mensaje con su email");

    outbox.setPhone(1);
    outbox.setInsertdate(new Date());
    outbox.setProcessedDate(new Date());
    outbox.setNotBefore(new java.sql.Time(0, 1, 0));
    outbox.setNotAfter(new java.sql.Time(23, 59, 59));
    callsManager.saveOutbox(outbox);
    
%>