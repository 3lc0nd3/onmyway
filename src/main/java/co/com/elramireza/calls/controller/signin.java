package co.com.elramireza.calls.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.ModelMap;
import org.apache.commons.logging.LogFactory;
import org.apache.commons.logging.Log;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;


/**
 * Created by Edward L. Ramirez A.
 * cel 300 554 3367
 * email elramireza@gmail.com
 * User: usuariox
 * Date: May 26, 2012
 * Time: 12:35:24 PM
 */

@Controller
public class signin {

    protected final Log logger = LogFactory.getLog(getClass());

    @RequestMapping(value = "/ingreso.htm", method = RequestMethod.GET)
    public ModelAndView welcome() throws Exception {
        logger.info("@RequestMapping:/ingreso.htm");
        return new ModelAndView("signin");
    }

    @RequestMapping(value = "/salir.htm", method = RequestMethod.GET)
    public ModelAndView logut() throws Exception {
        logger.info("@RequestMapping:/salir.htm");
        return new ModelAndView("logout");
    }

    @RequestMapping(value = "/call.htm", method = RequestMethod.GET)
    public ModelAndView call(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setAttribute("ctrl", "call");
        logger.info("@RequestMapping:/call.htm");
        return new ModelAndView("callbak");
    }


}
