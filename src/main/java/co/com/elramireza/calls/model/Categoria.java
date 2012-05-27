package co.com.elramireza.calls.model;

import javax.persistence.*;

/**
 * Created by Edward L. Ramirez A.
 * cel 300 554 3367
 * email elramireza@gmail.com
 * User: usuariox
 * Date: May 27, 2012
 * Time: 12:36:52 AM
 */
@Entity
@Table(catalog = "onmyway", name = "categoria")
public class Categoria {

    private int idCategoria;

    @Id
    @Column(name = "id_categoria")
    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    private String textoCategoria;

    @Basic
    @Column(name = "texto_categoria")
    public String getTextoCategoria() {
        return textoCategoria;
    }

    public void setTextoCategoria(String textoCategoria) {
        this.textoCategoria = textoCategoria;
    }



}
