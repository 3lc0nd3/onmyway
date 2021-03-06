package co.com.elramireza.calls.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by Edward L. Ramirez A.
 * cel 300 554 3367
 * email elramireza@gmail.com
 * User: usuariox
 * Date: May 26, 2012
 * Time: 2:17:35 AM
 */
@Entity
@Table(catalog = "onmyway", name = "data")
public class Data {
    private int idData;

    @Id
    @GenericGenerator(name = "generator", strategy = "increment")
    @GeneratedValue(generator = "generator")
    @Column(name = "id_data")
    public int getIdData() {
        return idData;
    }

    public void setIdData(int idData) {
        this.idData = idData;
    }

    private double latData;

    @Basic
    @Column(name = "lat_data")
    public double getLatData() {
        return latData;
    }

    public void setLatData(double latData) {
        this.latData = latData;
    }

    private double lonData;

    @Basic
    @Column(name = "lon_data")
    public double getLonData() {
        return lonData;
    }

    public void setLonData(double lonData) {
        this.lonData = lonData;
    }

    private Timestamp fechaData;

    @Basic
    @Column (name = "fecha_data")
    public Timestamp getFechaData() {
        return fechaData;
    }

    public void setFechaData(Timestamp fechaData) {
        this.fechaData = fechaData;
    }

    private String tituloData;

    @Basic
    @Column(name = "titulo_data")
    public String getTituloData() {
        return tituloData;
    }

    public void setTituloData(String tituloData) {
        this.tituloData = tituloData;
    }

    private String textoData;

    @Basic
    @Column(name = "texto_data")
    public String getTextoData() {
        return textoData;
    }

    public void setTextoData(String textoData) {
        this.textoData = textoData;
    }

    private Categoria categoriaByIdCategoria;

    @ManyToOne
    @JoinColumn(name = "id_categoria", referencedColumnName = "id_categoria", nullable = false)
    public Categoria getCategoriaByIdCategoria() {
        return categoriaByIdCategoria;
    }

    public void setCategoriaByIdCategoria(Categoria categoriaByIdCategoria) {
        this.categoriaByIdCategoria = categoriaByIdCategoria;
    }

    private UserFB userByIdUser;

    @ManyToOne
    @JoinColumn(name = "id_user", referencedColumnName = "id_user", nullable = false)
    public UserFB getUserByIdUser() {
        return userByIdUser;
    }

    public void setUserByIdUser(UserFB userByIdUser) {
        this.userByIdUser = userByIdUser;
    }

    private int idCategoria;

    @Transient
    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }
}
