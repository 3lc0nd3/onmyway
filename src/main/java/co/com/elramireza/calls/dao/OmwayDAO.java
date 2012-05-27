package co.com.elramireza.calls.dao;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.directwebremoting.impl.LoginRequiredException;
import org.directwebremoting.WebContextFactory;
import org.directwebremoting.WebContext;
import co.com.elramireza.calls.model.Data;
import co.com.elramireza.calls.model.Categoria;
import co.com.elramireza.calls.model.UserFB;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.sql.Timestamp;

/**
 * Created by Edward L. Ramirez A.
 * cel 300 554 3367
 * email elramireza@gmail.com
 * User: usuariox
 * Date: May 26, 2012
 * Time: 2:15:09 AM
 */
public class OmwayDAO extends HibernateDaoSupport {

    public Data getData(int id){
        return (Data) getHibernateTemplate().get(Data.class, id);
    }

    public List<Data> getDatas(){
        return getHibernateTemplate().find("from Data order by idData desc");
    }

    public List<Categoria> getCategorias(){
        return getHibernateTemplate().find("from Categoria order by textoCategoria ");
    }

    public Categoria getCategoria(int id){
        return (Categoria) getHibernateTemplate().get(Categoria.class, id);
    }

    /**
     * Guarda el POST mediante Ajax
     * @param data el objeto
     * @return 1 solo si se guardo
     */
    public int saveData(Data data){
        WebContext wctx = WebContextFactory.get();
        HttpSession session = wctx.getSession(true);
        UserFB userFB = (UserFB) session.getAttribute("userFB");
        logger.info("userFB = " + userFB);
        if(userFB == null){
            throw new SecurityException("Ingrese al Sistema");
        }
        data.setUserByIdUser(getUserFB(userFB));
        data.setFechaData(new Timestamp(System.currentTimeMillis()));
        data.setCategoriaByIdCategoria(getCategoria(data.getIdCategoria()));

        if(data.getTituloData().equals("")){
            throw new SecurityException("titulo vacio");
        } else if(data.getTextoData().equals("")){
            throw new SecurityException("detalle vacio");
        }

        getHibernateTemplate().save(data);

        return 1;
    }

    public UserFB getUserFB(UserFB userFB){
        UserFB userFBLocal = (UserFB) getHibernateTemplate().get(UserFB.class, userFB.getId());
        if(userFBLocal == null){
            saveUserFB(userFB);
        }
        return userFB;
    }

    public void saveUserFB(UserFB userFB){
        getHibernateTemplate().save(userFB);
    }

}
