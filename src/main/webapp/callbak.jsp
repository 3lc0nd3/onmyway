<%@ page import="co.com.elramireza.calls.fb.Facebook" %>
<%@ page import="java.net.URL" %>
<%@ page import="com.visural.common.IOUtil" %>
<%@ page import="org.json.JSONObject" %>
<%@ page import="co.com.elramireza.calls.model.UserFB" %><%

    String code = request.getParameter("code");
    System.out.println("code = " + code);
    if(code != null){
        String authURL = Facebook.getAuthURL(code);
        URL url = new URL(authURL);
        String result = Facebook.readURL(url);

        String accessToken = null;
        Integer expires = null;

        String[] pairs = result.split("&");
        for (String pair : pairs) {
            String[] kv = pair.split("=");
            if (kv.length != 2) {
                throw new RuntimeException("Unexpected auth response");
            } else {
                if (kv[0].equals("access_token")) {
                    accessToken = kv[1];
                }
                if (kv[0].equals("expires")) {
                    expires = Integer.valueOf(kv[1]);
                }
            }
        }

        System.out.println("accessToken = " + accessToken);
        System.out.println("expires = " + expires);

        if (accessToken != null && expires != null) {
            JSONObject resp = new JSONObject(
                IOUtil.urlToString(new URL("https://graph.facebook.com/me?access_token=" + accessToken))
            );
            String id = resp.getString("id");
            System.out.println("id = " + id);
            String firstName = resp.getString("first_name");
            System.out.println("firstName = " + firstName);
            String lastName = resp.getString("last_name");
            System.out.println("lastName = " + lastName);
            String email = resp.getString("email");
            System.out.println("email = " + email);

            // SESSION

            UserFB userFB = new UserFB();
            userFB.setId(id);
            userFB.setToken(accessToken);
            userFB.setFirstName(firstName);
            userFB.setLastName(lastName);
            userFB.setEmail(email);

            session.setAttribute("userFB", userFB);

%>

id: <%=id%>
<br>
fn: <%=firstName%>
<br>
ln: <%=lastName%>
<br>
email: <%=email%>
<br>

<%


            /*UserService us = UserService.get();
            us.authFacebookLogin(accessToken, expires);
            res.sendRedirect("http://www.onmydoorstep.com.au/");*/
        } else {
            throw new RuntimeException("Access token and expires not found");
        }

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