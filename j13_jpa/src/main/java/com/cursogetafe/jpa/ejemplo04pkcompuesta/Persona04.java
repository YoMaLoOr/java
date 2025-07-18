package com.cursogetafe.jpa.ejemplo04pkcompuesta;
import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.IdClass;
import jakarta.persistence.Table;

@Entity
@Table(name="persona_03")
@IdClass(value=Dni.class)
public class Persona04 implements Serializable{

    @Id
    @Column(name="nrodoc")
    private int nroDoc;
    @Id
    @Column (name="letradoc")
    private char letraDoc;
    private String nombre;

    public Persona04() {
    }

    public Persona04(int nroDoc, char letraDoc, String nombre) {
        this.nroDoc = nroDoc;
        this.letraDoc = letraDoc;
        this.nombre = nombre;
    }

    public int getNroDoc() {
        return this.nroDoc;
    }

    public void setNroDoc(int nroDoc) {
        this.nroDoc = nroDoc;
    }

    public char getLetraDoc() {
        return this.letraDoc;
    }

    public void setLetraDoc(char letraDoc) {
        this.letraDoc = letraDoc;
    }

    public String getNombre() {
        return this.nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (o == null)
            return false;
        if (!(o instanceof Persona04)) {
            return false;
        }
        Persona04 persona04 = (Persona04) o;
        return nroDoc == persona04.nroDoc && Objects.equals(letraDoc, persona04.letraDoc);
    }

    @Override
    public int hashCode() {
        return Objects.hash(nroDoc, letraDoc);
    }

    @Override
    public String toString() {
        return "{" +
            " nroDoc='" + getNroDoc() + "'" +
            ", letraDoc='" + getLetraDoc() + "'" +
            ", nombre='" + getNombre() + "'" +
            "}";
    }
    
}
