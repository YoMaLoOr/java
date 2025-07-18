package com.cursogetafe.jpa.ejemplo03insertables;

import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.AttributeOverride;
import jakarta.persistence.Column;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="persona_04")
public class Persona03 implements Serializable{

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int idPersona;
    private String apellidos;
    private String apodo;
    private String nombre;
    private String dni;
    @Embedded
    @AttributeOverride(name="tipoVia", column=@Column(name="tipovia"))
    @AttributeOverride(name="codigoPostal", column=@Column(name="codigopostal"))
    private Domicilio dom;

    public Persona03() {
    }

    public Persona03(int idPersona, String apellidos, String apodo, String nombre, String dni, Domicilio dom) {
        this.idPersona = idPersona;
        this.apellidos = apellidos;
        this.apodo = apodo;
        this.nombre = nombre;
        this.dni = dni;
        this.dom = dom;
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

    public Domicilio getDom() {
        return this.dom;
    }

    public void setDom(Domicilio dom) {
        this.dom = dom;
    }

    public Persona03 idPersona(int idPersona) {
        setIdPersona(idPersona);
        return this;
    }

    public Persona03 apellidos(String apellidos) {
        setApellidos(apellidos);
        return this;
    }

    public Persona03 apodo(String apodo) {
        setApodo(apodo);
        return this;
    }

    public Persona03 nombre(String nombre) {
        setNombre(nombre);
        return this;
    }

    public Persona03 dni(String dni) {
        setDni(dni);
        return this;
    }

    public Persona03 dom(Domicilio dom) {
        setDom(dom);
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if ( o == null)
            return false;
        if (!(o instanceof Persona03)) {
            return false;
        }
        Persona03 persona03 = (Persona03) o;
        return idPersona == persona03.idPersona ;
    }

    @Override
    public int hashCode() {
        return Objects.hash(idPersona, apellidos, apodo, nombre, dni, dom);
    }

    @Override
    public String toString() {
        return "{" +
            " idPersona='" + getIdPersona() + "'" +
            ", apellidos='" + getApellidos() + "'" +
            ", apodo='" + getApodo() + "'" +
            ", nombre='" + getNombre() + "'" +
            ", dni='" + getDni() + "'" +
            ", dom='" + getDom() + "'" +
            "}";
    }
    
}
