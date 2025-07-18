package com.cursogetafe.jpa.ejemplo11muchosauno;

import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="partidos")
public class Partido implements Serializable{

    private static final long serialVersionUID = 1L; //Indica la version de la serializacion, para poder desserializarlo

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int idPartido;
    private String partido;
    @ManyToOne
    @JoinColumn(name="idcampo")
    private Campo campo;
    
    
    public Partido() {
    }
    
    public Partido(int idPartido, String partido, Campo campo) {
        this.idPartido = idPartido;
        this.partido = partido;
        this.campo = campo;
    }
    
    public int getIdPartido() {
        return this.idPartido;
    }
    
    public void setIdPartido(int idPartido) {
        this.idPartido = idPartido;
    }
    
    public String getPartido() {
        return this.partido;
    }
    
    public void setPartido(String partido) {
        this.partido = partido;
    }
    
    public Campo getCampo() {
        return this.campo;
    }
    
    public void setCampo(Campo campo) {
        this.campo = campo;
    }
    
    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (o == null)
            return false;
        if (!(o instanceof Partido)) {
            return false;
        }
        Partido parti = (Partido) o;
        return idPartido == parti.idPartido;
    }
    
    @Override
    public int hashCode() {
        return Objects.hash(idPartido);
    }
    
    @Override
    public String toString() {
        return "{" +
        " idPartido='" + getIdPartido() + "'" +
        ", partido='" + getPartido() + "'" +
        ", campo='" + getCampo() + "'" +
        "}";
    }
}