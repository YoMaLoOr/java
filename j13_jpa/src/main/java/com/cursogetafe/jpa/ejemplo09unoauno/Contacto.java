package com.cursogetafe.jpa.ejemplo09unoauno;
import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity 
@Table(name="contacto")
public class Contacto implements Serializable {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int idContacto;
    private String nombre;
    private String apellidos;
    private String apodo;

    @OneToOne
    @JoinColumn(name="iddomicilio")
    private Domicilio02 dom;

    public Contacto() {
    }

    public Contacto(int idContacto, String nombre, String apellidos, String apodo, Domicilio02 dom) {
        this.idContacto = idContacto;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.apodo = apodo;
        this.dom = dom;
    }

    public int getIdContacto() {
        return this.idContacto;
    }

    public void setIdContacto(int idContacto) {
        this.idContacto = idContacto;
    }

    public String getNombre() {
        return this.nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return this.apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getApodo() {
        return this.apodo;
    }

    public void setApodo(String apodo) {
        this.apodo = apodo;
    }

    public Domicilio02 getDom() {
        return this.dom;
    }

    public void setDom(Domicilio02 dom) {
        this.dom = dom;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (o == null)
            return false;
        if (!(o instanceof Contacto)) {
            return false;
        }
        Contacto contacto = (Contacto) o;
        return idContacto == contacto.idContacto;
    }

    @Override
    public int hashCode() {
        return Objects.hash(idContacto);
    }

    @Override
    public String toString() {
        return "{" +
            " idContacto='" + getIdContacto() + "'" +
            ", nombre='" + getNombre() + "'" +
            ", apellidos='" + getApellidos() + "'" +
            ", apodo='" + getApodo() + "'" +
            ", idDomicilio='" + getDom() + "'" +
            "}";
    }
    

}
