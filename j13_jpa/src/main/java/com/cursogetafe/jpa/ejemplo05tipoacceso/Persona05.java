package com.cursogetafe.jpa.ejemplo05tipoacceso;

import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;

@Entity
@Table(name = "persona")
public class Persona05 implements Serializable{
    
    
    private int idPersona;
    private String apellidos;
    private String apodo;
    private String nombre;
    private String dni;

    public Persona05() {
    }

    public Persona05(int idPersona, String apellidos, String apodo, String nombre) {
        super();
        this.idPersona = idPersona;
        this.apellidos = apellidos;
        this.nombre = nombre;
    }
    // Access properties
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    public int getIdPersona() {
        return this.idPersona;
    }

    public void setIdPersona(int idPersona) {
        System.out.println("setIdPersona()");
        this.idPersona = idPersona;
    }

    public String getApellidos() {
        return this.apellidos;
    }

    public void setApellidos(String apellidos) {
        System.out.println("setApellidos()");
        this.apellidos = apellidos;
    }

    public String getApodo() {
        return this.apodo;
    }

    public void setApodo(String apodo) {
        System.out.println("setApodo()");
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

    @Transient
    public String nombreCompleto(){
        return nombre + " " + apellidos;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (o == null)
            return false;
        if (!(o instanceof Persona05)) {
            return false;
        }
        Persona05 persona = (Persona05) o;
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
