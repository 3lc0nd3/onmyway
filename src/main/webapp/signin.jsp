
<%

    String SCOPE = "email,offline_access,user_about_me,user_birthday,read_friendlists";
    String REDIRECT_URI = "http://p4s.co/onmyway/callbak.jsp";
    String CLIENT_ID = "251218434898090";
    String APP_SECRET = "f2d4b8b3dd97e69950174b757b0cba4d";
    String DIALOG_OAUTH = "https://www.facebook.com/dialog/oauth";
    String ACCESS_TOKEN = "https://graph.facebook.com/oauth/access_token";


    String s = DIALOG_OAUTH + "?client_id=" + CLIENT_ID +
            "&redirect_uri=" + REDIRECT_URI +
            "&scope=" + SCOPE;
    System.out.println("s = " + s);
    response.sendRedirect(s);

%>

<%--<%=DIALOG_OAUTH%>--%>