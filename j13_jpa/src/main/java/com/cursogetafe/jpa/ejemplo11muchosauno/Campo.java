package com.cursogetafe.jpa.ejemplo11muchosauno;

import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="campos")
public class Campo implements Serializable {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int idCampo;
    private String campo;
    private String direccion;
    

    public Campo() {
    }

    public Campo(int idCampo, String campo, String direccion) {
        this.idCampo = idCampo;
        this.campo = campo;
        this.direccion = direccion;
    }

    public int getIdCampo() {
        return this.idCampo;
    }

    public void setIdCampo(int idCampo) {
        this.idCampo = idCampo;
    }

    public String getCampo() {
        return this.campo;
    }

    public void setCampo(String campo) {
        this.campo = campo;
    }

    public String getDireccion() {
        return this.direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (o == null)
            return false;
        if (!(o instanceof Campo2)) {
            return false;
        }
        Campo camp = (Campo) o;
        return idCampo == camp.idCampo;
    }

    @Override
    public int hashCode() {
        return Objects.hash(idCampo);
    }

    @Override
    public String toString() {
        return "{" +
            " idCampo='" + getIdCampo() + "'" +
            ", campo='" + getCampo() + "'" +
            ", direccion='" + getDireccion() + "'" +
            "}";
    }
    
}
