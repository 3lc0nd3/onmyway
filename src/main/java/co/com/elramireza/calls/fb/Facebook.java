package co.com.elramireza.calls.fb;

import java.io.InputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.URL;

/**
 * Created by Edward L. Ramirez A.
 * cel 300 554 3367
 * email elramireza@gmail.com
 * User: usuariox
 * Date: May 25, 2012
 * Time: 10:10:18 PM
 */
public class Facebook {
    // get these from your FB Dev App
    private static final String api_key = "test";
    private static final String secret = "f2d4b8b3dd97e69950174b757b0cba4d";
    private static final String client_id = "251218434898090";

    // set this to your servlet URL for the authentication servlet/filter
    private static final String redirect_uri = "http://p4s.co/onmyway/callbak.jsp";
    /// set this to the list of extended permissions you want
//    private static final String[] perms = new String[] {"publish_stream", "email"};
//    private static final String scope = "email,offline_access,user_about_me,user_birthday,read_friendlists";
    private static final String scope = "email,user_about_me,user_birthday,read_friendlists";

    public static String getAPIKey() {
        return api_key;
    }

    public static String getSecret() {
        return secret;
    }

    public static String getLoginRedirectURL() {
        return "https://graph.facebook.com/oauth/authorize?client_id=" +
                client_id + "&display=page&redirect_uri=" +
                redirect_uri+"&scope="+ scope;
    }

    public static String getAuthURL(String authCode) {
        return "https://graph.facebook.com/oauth/access_token?client_id=" +
                client_id+"&redirect_uri=" +
                redirect_uri+"&client_secret="+secret+"&code="+authCode;
    }

    public static String getScope(){
        return scope;
    }

    public static String getClientId(){
        return client_id;
    }

    public static String getRedirectUri(){
        return redirect_uri;
    }

    public static String readURL(URL url) throws IOException {
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            InputStream is = url.openStream();
            int r;
            while ((r = is.read()) != -1) {
                baos.write(r);
            }
            return new String(baos.toByteArray());
        }


}
