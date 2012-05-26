package co.com.elramireza.calls.dao;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.dao.DataAccessException;
import org.directwebremoting.annotations.RemoteProxy;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.exception.ConstraintViolationException;

import java.util.List;
import static java.lang.String.format;

import co.com.elramireza.calls.model.*;

/**
 * Created by Edward L. Ramirez A.
 * cel 300 554 3367
 * email elramireza@gmail.com
 * User: usuariox
 * Date: Jul 28, 2011
 * Time: 6:52:29 PM
 */
@SuppressWarnings(value = "unchecked")
@Service
@RemoteProxy
public class CallsDAO extends HibernateDaoSupport{

    public Startup getStartup(int idStartup){

        Startup startup = (Startup) getHibernateTemplate().get(Startup.class, idStartup);

        if (startup != null) {
            startup.setParticipantesByStartup(getParticipantesFromStartup(idStartup));

            if (startup.getParticipantesByStartup()!= null) {
                for (ParticipanteStartup participante : startup.getParticipantesByStartup()) {
                    System.out.println("getNombreParticipante() = " + participante.getParticipanteByIdParticipante().getNombreParticipante()+"\tgetNombreRol() = " + participante.getRolByIdRol().getNombreRol());
                }
            }
        }
        return startup;
    }

    public List<ParticipanteStartup> getParticipantesFromStartup(int idStartup){
        return (List<ParticipanteStartup>) getHibernateTemplate().find(
                "from ParticipanteStartup where startupByIdStartup.idStartup = ?", idStartup
        );
    }

    public List<Participante> getParticipantesFromStartup_old(int idStartup){

        return getHibernateTemplate().find(
                "select distinct p from Participante p " +
                        "join p.startupsByIdParticipanteJoin s where s.idStartup = ?", idStartup
        );

    }

    public Participante getParticipante(int idParticipante){
        Participante participante = (Participante) getHibernateTemplate().get(Participante.class, idParticipante);
        if(participante != null){
            participante.setStartupsByIdParticipante(
                    getStartupsFromParticipante(idParticipante)
            );
        }
        return participante;
    }

    public List<ParticipanteStartup> getStartupsFromParticipante(int idParticipante){
        return (List<ParticipanteStartup>) getHibernateTemplate().find(
                "from ParticipanteStartup  where participanteByIdParticipante.idParticipante = ?", idParticipante
        );
    }

    public Rol getRol(int idRol){
        return (Rol) getHibernateTemplate().get(Rol.class, idRol);
    }

    /**
     * agrega un Participante a una startup
     * @param idParticipante p
     * @param idStartup s
     * @param idRol Si == 0 --> Participante(4) sino, idRol
     * @return lista de participantes en idStartup
     */
    public List<ParticipanteStartup> setParticipanteAStartup(int idParticipante,
                                                             int idStartup,
                                                             int idRol){

        ParticipanteStartup participanteStartup = new ParticipanteStartup();

        Participante participante = getParticipante(idParticipante);
        Startup startup = getStartup(idStartup);
        Rol rol;
        if(idRol == 0){
            rol = getRol(4);
        } else {
            rol = getRol(idRol);
        }

        participanteStartup.setParticipanteByIdParticipante(participante);
        participanteStartup.setStartupByIdStartup(startup);
        participanteStartup.setRolByIdRol(rol);

        try {
            getHibernateTemplate().save(participanteStartup);
            return getParticipantesFromStartup(idStartup);
        } catch (ConstraintViolationException e) {
            logger.debug(e.getMessage());
            return null;
        } catch (DataAccessException e) {
//            e.printStackTrace();
            logger.debug(e.getMessage());
            return null;
        } catch (Exception e) {
//            e.printStackTrace();
            logger.debug(e.getMessage());
            return null;
        }

    }

    
}
