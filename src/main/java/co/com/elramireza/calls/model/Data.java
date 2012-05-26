package co.com.elramireza.calls.model;

import javax.persistence.*;

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

    private int idUser;

    @Basic
    @Column(name = "id_user")
    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
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

    private int idCategoria;

    @Basic
    @Column(name = "id_categoria")
    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

}
