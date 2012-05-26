package co.com.elramireza.calls.model;

import org.hibernate.annotations.Proxy;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Edward L. Ramirez A.
 * cel 300 554 3367
 * email elramireza@gmail.com
 * User: usuariox
 * Date: Mar 3, 2012
 * Time: 3:02:21 PM
 */
@Entity
@Proxy(lazy = false)
@Table(catalog = "test", name = "participante")
public class Participante {
    private int idParticipante;

    @Id
    @Column(name = "id_participante")
    public int getIdParticipante() {
        return idParticipante;
    }

    public void setIdParticipante(int idParticipante) {
        this.idParticipante = idParticipante;
    }

    private int idCertamen;

    @Basic
    @Column(name = "id_certamen")
    public int getIdCertamen() {
        return idCertamen;
    }

    public void setIdCertamen(int idCertamen) {
        this.idCertamen = idCertamen;
    }

    private int idRol;

    @Basic
    @Column(name = "id_rol")
    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    private int idEspecialidad;

    @Basic
    @Column(name = "id_especialidad")
    public int getIdEspecialidad() {
        return idEspecialidad;
    }

    public void setIdEspecialidad(int idEspecialidad) {
        this.idEspecialidad = idEspecialidad;
    }

    private String nombreParticipante;

    @Basic
    @Column(name = "nombre_participante")
    public String getNombreParticipante() {
        return nombreParticipante;
    }

    public void setNombreParticipante(String nombreParticipante) {
        this.nombreParticipante = nombreParticipante;
    }

    private String especialidadParticipante;

    @Basic
    @Column(name = "especialidad_participante")
    public String getEspecialidadParticipante() {
        return especialidadParticipante;
    }

    public void setEspecialidadParticipante(String especialidadParticipante) {
        this.especialidadParticipante = especialidadParticipante;
    }

    private String bioParticipante;

    @Basic
    @Column(name = "bio_participante")
    public String getBioParticipante() {
        return bioParticipante;
    }

    public void setBioParticipante(String bioParticipante) {
        this.bioParticipante = bioParticipante;
    }

    private String urlImagenParticipante;

    @Basic
    @Column(name = "url_imagen_participante")
    public String getUrlImagenParticipante() {
        return urlImagenParticipante;
    }

    public void setUrlImagenParticipante(String urlImagenParticipante) {
        this.urlImagenParticipante = urlImagenParticipante;
    }

    private String twitterParticipante;

    @Basic
    @Column(name = "twitter_participante")
    public String getTwitterParticipante() {
        return twitterParticipante;
    }

    public void setTwitterParticipante(String twitterParticipante) {
        this.twitterParticipante = twitterParticipante;
    }

    private String facebookParticipante;

    @Basic
    @Column(name = "facebook_participante")
    public String getFacebookParticipante() {
        return facebookParticipante;
    }

    public void setFacebookParticipante(String facebookParticipante) {
        this.facebookParticipante = facebookParticipante;
    }

    private String linkedinParticipante;

    @Basic
    @Column(name = "linkedin_participante")
    public String getLinkedinParticipante() {
        return linkedinParticipante;
    }

    public void setLinkedinParticipante(String linkedinParticipante) {
        this.linkedinParticipante = linkedinParticipante;
    }

    private Integer idStartup;

    @Basic
    @Column(name = "id_startup")
    public Integer getIdStartup() {
        return idStartup;
    }

    public void setIdStartup(Integer idStartup) {
        this.idStartup = idStartup;
    }

    private String emailParticipante;

    @Basic
    @Column(name = "email_participante")
    public String getEmailParticipante() {
        return emailParticipante;
    }

    public void setEmailParticipante(String emailParticipante) {
        this.emailParticipante = emailParticipante;
    }

    private String celularParticipante;

    @Basic
    @Column(name = "celular_participante")
    public String getCelularParticipante() {
        return celularParticipante;
    }

    public void setCelularParticipante(String celularParticipante) {
        this.celularParticipante = celularParticipante;
    }

    private String skypeParticipante;

    @Basic
    @Column(name = "skype_participante")
    public String getSkypeParticipante() {
        return skypeParticipante;
    }

    public void setSkypeParticipante(String skypeParticipante) {
        this.skypeParticipante = skypeParticipante;
    }

    private String password;

    @Basic
    @Column(name = "password")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    private Integer idStartupVoto1;

    @Basic
    @Column(name = "id_startup_voto1")
    public Integer getIdStartupVoto1() {
        return idStartupVoto1;
    }

    public void setIdStartupVoto1(Integer idStartupVoto1) {
        this.idStartupVoto1 = idStartupVoto1;
    }

    private Integer idStartupVoto2;

    @Basic
    @Column(name = "id_startup_voto2")
    public Integer getIdStartupVoto2() {
        return idStartupVoto2;
    }

    public void setIdStartupVoto2(Integer idStartupVoto2) {
        this.idStartupVoto2 = idStartupVoto2;
    }

    private Integer idStartupVoto3;

    @Basic
    @Column(name = "id_startup_voto3")
    public Integer getIdStartupVoto3() {
        return idStartupVoto3;
    }

    public void setIdStartupVoto3(Integer idStartupVoto3) {
        this.idStartupVoto3 = idStartupVoto3;
    }

    private List<Startup> startupsByIdParticipanteJoin;

    @ManyToMany()
    @JoinTable(catalog = "test", name = "participante_startup",
            joinColumns = @JoinColumn(name = "id_participante"),
            inverseJoinColumns = @JoinColumn(name = "id_startup"))
    
    public List<Startup> getStartupsByIdParticipanteJoin() {
        return startupsByIdParticipanteJoin;
    }

    public void setStartupsByIdParticipanteJoin(List<Startup> startupsByIdParticipanteJoin) {
        this.startupsByIdParticipanteJoin = startupsByIdParticipanteJoin;
    }


    private List<ParticipanteStartup> startupsByIdParticipante;

    @Transient
    public List<ParticipanteStartup> getStartupsByIdParticipante() {
        return startupsByIdParticipante;
    }

    public void setStartupsByIdParticipante(List<ParticipanteStartup> startupsByIdParticipante) {
        this.startupsByIdParticipante = startupsByIdParticipante;
    }
}
