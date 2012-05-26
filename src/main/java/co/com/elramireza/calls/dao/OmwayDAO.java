package co.com.elramireza.calls.dao;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import co.com.elramireza.calls.model.Data;

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

}
