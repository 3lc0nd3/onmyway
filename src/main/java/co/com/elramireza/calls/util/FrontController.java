package co.com.elramireza.calls.util;

import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;

import javax.servlet.ServletException;
import java.io.IOException;
import static java.lang.String.format;

/**
 * Created by elramireza
 * User: usuariox
 * Date: May 26, 2012
 * Time: 10:47:18 PM
 */
public class FrontController {
    public String getInclude(String page) throws ServletException, IOException {
        WebContext wctx = WebContextFactory.get();
        String url = format("/%s.jsp", page);
        return wctx.forwardToString(url);
    }
}
