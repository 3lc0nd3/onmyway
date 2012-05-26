<%

    String code = request.getParameter("code");
    System.out.println("code = " + code);
    if(code != null){
                
    }

    String errorReason = request.getParameter("error_reason");
    if(errorReason != null){
        String error = request.getParameter("error");
        String description = request.getParameter("error_description");
//        response.sendError(HttpServletResponse.SC_UNAUTHORIZED, description);
        System.out.println(errorReason);
        System.out.println(error);
        System.out.println(description);
%>
<h1>Error al ingreso</h1>
<br>
Raz&oacute;n: <%=errorReason%>
<br>
Error: <%=error%>
<br>
Descripci&oacute;n: <%=description%>

<%
    }
%>