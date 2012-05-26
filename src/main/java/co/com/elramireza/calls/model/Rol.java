package co.com.elramireza.calls.model;

import javax.persistence.*;

/**
 * Created by Edward L. Ramirez A.
 * cel 300 554 3367
 * email elramireza@gmail.com
 * User: usuariox
 * Date: Mar 11, 2012
 * Time: 1:07:45 PM
 */
@Entity
@Table(name = "rol")
public class Rol {
    private int idRol;

    @Id
    @Column(name = "id_rol")
    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    private String nombreRol;

    @Basic
    @Column(name = "nombre_rol")
    public String getNombreRol() {
        return nombreRol;
    }

    public void setNombreRol(String nombreRol) {
        this.nombreRol = nombreRol;
    }
}
