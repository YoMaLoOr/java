package com.cursogetafe.jpa.ejemplo04pkcompuesta;
import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name="persona_03")
public class Persona04B implements Serializable{

    @EmbeddedId
    private DniB dni;
    private String nombre;

    public Persona04B() {
    }

    public Persona04B(DniB dni, String nombre) {
        this.dni = dni;
        this.nombre = nombre;
    }

    public DniB getDni() {
        return this.dni;
    }

    public void setDni(DniB dni) {
        this.dni = dni;
    }

    public String getNombre() {
        return this.nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Persona04B dni(DniB dni) {
        setDni(dni);
        return this;
    }

    public Persona04B nombre(String nombre) {
        setNombre(nombre);
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof Persona04B)) {
            return false;
        }
        Persona04B persona04 = (Persona04B) o;
        return Objects.equals(dni, persona04.dni);
    }

    @Override
    public int hashCode() {
        return Objects.hash(dni);
    }

    @Override
    public String toString() {
        return "{" +
            " dni='" + getDni() + "'" +
            ", nombre='" + getNombre() + "'" +
            "}";
    }

    
    
}
