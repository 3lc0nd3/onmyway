package co.com.elramireza.calls.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by Edward L. Ramirez A.
 * cel 300 554 3367
 * email elramireza@gmail.com
 * User: usuariox
 * Date: Mar 11, 2012
 * Time: 1:10:03 PM
 */
@Entity
@Table(name = "participante_startup")
public class ParticipanteStartup {

    private int idParticipanteStartup;

    @Id
    @GenericGenerator(name = "generator", strategy = "increment")
    @GeneratedValue(generator = "generator")
    @Column(name = "id_participante_startup")
    public int getIdParticipanteStartup() {
        return idParticipanteStartup;
    }

    public void setIdParticipanteStartup(int idParticipanteStartup) {
        this.idParticipanteStartup = idParticipanteStartup;
    }

    private Rol rolByIdRol;

    @ManyToOne
    @JoinColumn(name = "id_rol", referencedColumnName = "id_rol", nullable = false)
    public Rol getRolByIdRol() {
        return rolByIdRol;
    }

    public void setRolByIdRol(Rol rolByIdRol) {
        this.rolByIdRol = rolByIdRol;
    }

    private Participante participanteByIdParticipante;

    @ManyToOne
    @JoinColumn(name = "id_participante", referencedColumnName = "id_participante", nullable = false)
    public Participante getParticipanteByIdParticipante() {
        return participanteByIdParticipante;
    }

    public void setParticipanteByIdParticipante(Participante participanteByIdParticipante) {
        this.participanteByIdParticipante = participanteByIdParticipante;
    }

    private Startup startupByIdStartup;

    @ManyToOne
    @JoinColumn(name = "id_startup", referencedColumnName = "id_startup", nullable = false)
    public Startup getStartupByIdStartup() {
        return startupByIdStartup;
    }

    public void setStartupByIdStartup(Startup startupByIdStartup) {
        this.startupByIdStartup = startupByIdStartup;
    }
}
