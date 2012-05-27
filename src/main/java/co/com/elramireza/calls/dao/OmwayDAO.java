package co.com.elramireza.calls.dao;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.directwebremoting.impl.LoginRequiredException;
import co.com.elramireza.calls.model.Data;
import co.com.elramireza.calls.model.Categoria;

import java.util.List;

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

    public int saveData(Data data){
        data.setIdUser(133);
        logger.debug("data.getIdCategoria() = " + data.getIdCategoria());
        data.setCategoriaByIdCategoria(getCategoria(data.getIdCategoria()));

        if(data.getTituloData().equals("")){
            throw new SecurityException("titulo vacio");
        } else if(data.getTextoData().equals("")){
            throw new SecurityException("detalle vacio");
        }

        getHibernateTemplate().save(data);

        return 1;
    }

}
