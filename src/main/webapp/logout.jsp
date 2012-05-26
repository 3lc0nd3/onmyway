<%
    
    String urlLogout = "https://www.facebook.com/logout.php?next=" +
            "YOUR_REDIRECT_URL" +
            "&access_token=" +
            "USER_ACCESS_TOKEN" +
            "";
    response.sendRedirect();
%>