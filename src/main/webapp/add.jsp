<%
    String client = request.getParameter("client");
    String gateway = request.getParameter("gateway");
    String email = request.getParameter("email");


    System.out.println("client = " + client + "\t gateway = " + gateway + "\t email = " + email);
%>