<%@ page import="java.util.Iterator" %>
<%@ page import="co.com.elramireza.calls.model.UserFB" %>
                              <%
                                  System.out.println("HOLA INDEX");
                                  
response.sendRedirect("inicio.htm");
%>

<%
    UserFB userFB = (UserFB) session.getAttribute("userFB");
    if(userFB!= null){
%>

id: <%=userFB.getId()%>
<br>
fn: <%=userFB.getFirstName()%>
<br>
ln: <%=userFB.getLastName()%>
<br>
email: <%=userFB.getEmail()%>
<br>
<%
    } else {
%>
  <h1>
      no hay usuario en session
  </h1>
<%
    }

    System.out.println("");
    System.out.println("");
    System.out.println("");
    System.out.println("");
    System.out.println("");

    
%>