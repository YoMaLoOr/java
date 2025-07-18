package com.cursogetafe.jpa.ejemplo01mapeosimple;

import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "persona")
public class Persona implements Serializable{
    
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int idPersona;
    private String apellidos;
    private String apodo;
    private String nombre;
    private String dni;

    public Persona() {
    }

    public Persona(int idPersona, String apellidos, String apodo, String nombre) {
        super();
        this.idPersona = idPersona;
        this.apellidos = apellidos;
        this.nombre = nombre;
    }

    public int getIdPersona() {
        return this.idPersona;
    }

    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
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

    public String getNombre() {
        return this.nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDni() {
        return this.dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public Persona idPersona(int idPersona) {
        setIdPersona(idPersona);
        return this;
    }

    public Persona apellidos(String apellidos) {
        setApellidos(apellidos);
        return this;
    }

    public Persona apodo(String apodo) {
        setApodo(apodo);
        return this;
    }

    public Persona nombre(String nombre) {
        setNombre(nombre);
        return this;
    }

    public Persona dni(String dni) {
        setDni(dni);
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (o == null)
            return false;
        if (!(o instanceof Persona)) {
            return false;
        }
        Persona persona = (Persona) o;
        return idPersona == persona.idPersona;
    }

    @Override
    public int hashCode() {
        return Objects.hash(idPersona, apellidos, apodo, nombre, dni);
    }

    @Override
    public String toString() {
        return "{" +
            " idPersona='" + getIdPersona() + "'" +
            ", apellidos='" + getApellidos() + "'" +
            ", apodo='" + getApodo() + "'" +
            ", nombre='" + getNombre() + "'" +
            ", dni='" + getDni() + "'" +
            "}";
    }
    
}
