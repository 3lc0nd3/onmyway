package co.com.elramireza.calls.fb;

import com.visural.common.StringUtil;

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
    private static final String api_key = "MYAPIKEY";
    private static final String secret = "MYSECRETKEY";
    private static final String client_id = "MYCLIENTID";

    // set this to your servlet URL for the authentication servlet/filter
    private static final String redirect_uri = "http://www.onmydoorstep.com.au/fbauth";
    /// set this to the list of extended permissions you want
    private static final String[] perms = new String[] {"publish_stream", "email"};

    public static String getAPIKey() {
        return api_key;
    }

    public static String getSecret() {
        return secret;
    }

    public static String getLoginRedirectURL() {
        return "https://graph.facebook.com/oauth/authorize?client_id=" +
                client_id + "&display=page&redirect_uri=" +
                redirect_uri+"&scope="+ StringUtil.delimitObjectsToString(",", perms);
    }

    public static String getAuthURL(String authCode) {
        return "https://graph.facebook.com/oauth/access_token?client_id=" +
                client_id+"&redirect_uri=" +
                redirect_uri+"&client_secret="+secret+"&code="+authCode;
    }

}
