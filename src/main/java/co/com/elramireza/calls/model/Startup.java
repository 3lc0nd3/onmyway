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
 * Time: 3:02:23 PM
 */
@Entity
@Proxy(lazy = false)
@Table(catalog = "test", name = "startup")
public class Startup {
    private int idStartup;

    @Id
    @Column(name = "id_startup")
    public int getIdStartup() {
        return idStartup;
    }

    public void setIdStartup(int idStartup) {
        this.idStartup = idStartup;
    }

    private int idParticipanteCreador;

    @Basic
    @Column(name = "id_participante_creador")
    public int getIdParticipanteCreador() {
        return idParticipanteCreador;
    }

    public void setIdParticipanteCreador(int idParticipanteCreador) {
        this.idParticipanteCreador = idParticipanteCreador;
    }

    private String nombreStartup;

    @Basic
    @Column(name = "nombre_startup")
    public String getNombreStartup() {
        return nombreStartup;
    }

    public void setNombreStartup(String nombreStartup) {
        this.nombreStartup = nombreStartup;
    }

    private String bioStartup;

    @Basic
    @Column(name = "bio_startup")
    public String getBioStartup() {
        return bioStartup;
    }

    public void setBioStartup(String bioStartup) {
        this.bioStartup = bioStartup;
    }

    private String urlWebStartup;

    @Basic
    @Column(name = "url_web_startup")
    public String getUrlWebStartup() {
        return urlWebStartup;
    }

    public void setUrlWebStartup(String urlWebStartup) {
        this.urlWebStartup = urlWebStartup;
    }

    private String emailContactoStartup;

    @Basic
    @Column(name = "email_contacto_startup")
    public String getEmailContactoStartup() {
        return emailContactoStartup;
    }

    public void setEmailContactoStartup(String emailContactoStartup) {
        this.emailContactoStartup = emailContactoStartup;
    }

    private String logoStartup;

    @Basic
    @Column(name = "logo_startup")
    public String getLogoStartup() {
        return logoStartup;
    }

    public void setLogoStartup(String logoStartup) {
        this.logoStartup = logoStartup;
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

    private int votosStartup;

    @Basic
    @Column(name = "votos_startup")
    public int getVotosStartup() {
        return votosStartup;
    }

    public void setVotosStartup(int votosStartup) {
        this.votosStartup = votosStartup;
    }

    private String twitterStartup;

    @Basic
    @Column(name = "twitter_startup")
    public String getTwitterStartup() {
        return twitterStartup;
    }

    public void setTwitterStartup(String twitterStartup) {
        this.twitterStartup = twitterStartup;
    }

    private int popularTwitterStartupVotos;

    @Basic
    @Column(name = "popular_twitter_startup_votos")
    public int getPopularTwitterStartupVotos() {
        return popularTwitterStartupVotos;
    }

    public void setPopularTwitterStartupVotos(int popularTwitterStartupVotos) {
        this.popularTwitterStartupVotos = popularTwitterStartupVotos;
    }

    private String facebookStartup;

    @Basic
    @Column(name = "facebook_startup")
    public String getFacebookStartup() {
        return facebookStartup;
    }

    public void setFacebookStartup(String facebookStartup) {
        this.facebookStartup = facebookStartup;
    }

    private int popularFacebookStartupVotos;

    @Basic
    @Column(name = "popular_facebook_startup_votos")
    public int getPopularFacebookStartupVotos() {
        return popularFacebookStartupVotos;
    }

    public void setPopularFacebookStartupVotos(int popularFacebookStartupVotos) {
        this.popularFacebookStartupVotos = popularFacebookStartupVotos;
    }

    private int activaStartup;

    @Basic
    @Column(name = "activa_startup")
    public int getActivaStartup() {
        return activaStartup;
    }

    public void setActivaStartup(int activaStartup) {
        this.activaStartup = activaStartup;
    }

    private int posicion;

    @Basic
    @Column(name = "posicion")
    public int getPosicion() {
        return posicion;
    }

    public void setPosicion(int posicion) {
        this.posicion = posicion;
    }

    private String metaNombre1;

    @Basic
    @Column(name = "meta_nombre1")
    public String getMetaNombre1() {
        return metaNombre1;
    }

    public void setMetaNombre1(String metaNombre1) {
        this.metaNombre1 = metaNombre1;
    }

    private int metaValor1;

    @Basic
    @Column(name = "meta_valor1")
    public int getMetaValor1() {
        return metaValor1;
    }

    public void setMetaValor1(int metaValor1) {
        this.metaValor1 = metaValor1;
    }

    private String metaNombre2;

    @Basic
    @Column(name = "meta_nombre2")
    public String getMetaNombre2() {
        return metaNombre2;
    }

    public void setMetaNombre2(String metaNombre2) {
        this.metaNombre2 = metaNombre2;
    }

    private int metaValor2;

    @Basic
    @Column(name = "meta_valor2")
    public int getMetaValor2() {
        return metaValor2;
    }

    public void setMetaValor2(int metaValor2) {
        this.metaValor2 = metaValor2;
    }

    private String metaNombre3;

    @Basic
    @Column(name = "meta_nombre3")
    public String getMetaNombre3() {
        return metaNombre3;
    }

    public void setMetaNombre3(String metaNombre3) {
        this.metaNombre3 = metaNombre3;
    }

    private int metaValor3;

    @Basic
    @Column(name = "meta_valor3")
    public int getMetaValor3() {
        return metaValor3;
    }

    public void setMetaValor3(int metaValor3) {
        this.metaValor3 = metaValor3;
    }

    private String metaNombre4;

    @Basic
    @Column(name = "meta_nombre4")
    public String getMetaNombre4() {
        return metaNombre4;
    }

    public void setMetaNombre4(String metaNombre4) {
        this.metaNombre4 = metaNombre4;
    }

    private int metaValor4;

    @Basic
    @Column(name = "meta_valor4")
    public int getMetaValor4() {
        return metaValor4;
    }

    public void setMetaValor4(int metaValor4) {
        this.metaValor4 = metaValor4;
    }

    private String metaNombre5;

    @Basic
    @Column(name = "meta_nombre5")
    public String getMetaNombre5() {
        return metaNombre5;
    }

    public void setMetaNombre5(String metaNombre5) {
        this.metaNombre5 = metaNombre5;
    }

    private int metaValor5;

    @Basic
    @Column(name = "meta_valor5")
    public int getMetaValor5() {
        return metaValor5;
    }

    public void setMetaValor5(int metaValor5) {
        this.metaValor5 = metaValor5;
    }

    private String metaNombre6;

    @Basic
    @Column(name = "meta_nombre6")
    public String getMetaNombre6() {
        return metaNombre6;
    }

    public void setMetaNombre6(String metaNombre6) {
        this.metaNombre6 = metaNombre6;
    }

    private int metaValor6;

    @Basic
    @Column(name = "meta_valor6")
    public int getMetaValor6() {
        return metaValor6;
    }

    public void setMetaValor6(int metaValor6) {
        this.metaValor6 = metaValor6;
    }

    private String metaNombre7;

    @Basic
    @Column(name = "meta_nombre7")
    public String getMetaNombre7() {
        return metaNombre7;
    }

    public void setMetaNombre7(String metaNombre7) {
        this.metaNombre7 = metaNombre7;
    }

    private int metaValor7;

    @Basic
    @Column(name = "meta_valor7")
    public int getMetaValor7() {
        return metaValor7;
    }

    public void setMetaValor7(int metaValor7) {
        this.metaValor7 = metaValor7;
    }

    private double promedioStartup;

    @Basic
    @Column(name = "promedio_startup")
    public double getPromedioStartup() {
        return promedioStartup;
    }

    public void setPromedioStartup(double promedioStartup) {
        this.promedioStartup = promedioStartup;
    }


    private List<Participante> participantesByStartupJoin;

    @ManyToMany()
    @JoinTable(catalog = "test", name = "participante_startup",
            joinColumns = @JoinColumn(name = "id_startup"),
            inverseJoinColumns = @JoinColumn(name = "id_participante"))
    public List<Participante> getParticipantesByStartupJoin() {
        return participantesByStartupJoin;
    }

    public void setParticipantesByStartupJoin(List<Participante> participantesByStartupJoin) {
        this.participantesByStartupJoin = participantesByStartupJoin;
    }

    private List<ParticipanteStartup> participantesByStartup;

    @Transient
    public List<ParticipanteStartup> getParticipantesByStartup() {
        return participantesByStartup;
    }

    public void setParticipantesByStartup(List<ParticipanteStartup> participantesByStartup) {
        this.participantesByStartup = participantesByStartup;
    }
}
