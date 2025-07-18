package com.cursogetafe.jpa.ejemplo02columnyenum;

import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;

@Entity
@Table(name = "personas")
public class Personas implements Serializable{
    
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id_persona")
    private int idPersona;
    @Column(name="p_apellidos")
    private String apellidos;
    @Column(name="p_apodo")
    private String apodo;
    @Column(name="p_nombre")
    private String nombre;
    @Column(name="p_dni")
    private String dni;
    @Enumerated(EnumType.STRING)
    @Column(name="p_sexo")
    private Genero genero;
    @Transient
    private String nombreYApellidos;

    public Personas() {
    }

    public Personas(int idPersona, String apellidos, String apodo, String nombre) {
        super();
        this.idPersona = idPersona;
        this.apellidos = apellidos;
        this.apodo = apodo;
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

    public Personas idPersona(int idPersona) {
        setIdPersona(idPersona);
        return this;
    }

    public Personas apellidos(String apellidos) {
        setApellidos(apellidos);
        return this;
    }

    public Personas apodo(String apodo) {
        setApodo(apodo);
        return this;
    }

    public Personas nombre(String nombre) {
        setNombre(nombre);
        return this;
    }

    public Personas dni(String dni) {
        setDni(dni);
        return this;
    }

    public Genero getGenero() {
        return this.genero;
    }

    public void setGenero(Genero genero) {
        this.genero = genero;
    }

    public String getNombreYApellidos() {
        return this.nombreYApellidos;
    }

    public void setNombreYApellidos(String nombreYApellidos) {
        this.nombreYApellidos = nombreYApellidos;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (o == null)
            return false;
        if (!(o instanceof Personas)) {
            return false;
        }
        Personas persona = (Personas) o;
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
