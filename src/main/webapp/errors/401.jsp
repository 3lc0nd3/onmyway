<%
    String errorReason = request.getParameter("error_reason");
    if(errorReason != null){
        String error = request.getParameter("error");
        String description = request.getParameter("error_description");
        response.sendError(HttpServletResponse.SC_UNAUTHORIZED, description);
        System.out.println(errorReason);
        System.out.println(error);
        System.out.println(description);
%>
    <%=errorReason%>
<%
    } else {
%>
    no fue posible
<%
    }
%>