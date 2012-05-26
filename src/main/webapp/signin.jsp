<%@ page import="co.com.elramireza.calls.fb.Facebook" %>
<%
    String DIALOG_OAUTH = "https://www.facebook.com/dialog/oauth";
    String ACCESS_TOKEN = "https://graph.facebook.com/oauth/access_token";

    String s = DIALOG_OAUTH + "?client_id=" + Facebook.getClientId() +
            "&redirect_uri=" + Facebook.getRedirectUri() +
            "&scope=" + Facebook.getScope();
    System.out.println("s = " + s);
    response.sendRedirect(s);

%>

<%--<%=DIALOG_OAUTH%>--%>