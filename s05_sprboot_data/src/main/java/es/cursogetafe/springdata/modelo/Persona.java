package es.cursogetafe.springdata.modelo;

import jakarta.persistence.*;

import java.util.Objects;

@Entity
@Table(name = "personas")
@Inheritance(strategy = InheritanceType.JOINED)
public class Persona implements Comparable<Persona>{

    @Id
    @Column(name = "id_persona")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idPersona;
    private String dni;
    private String nombre;
    private String apellido1;
    private String apellido2;
    private String telefono;
    private String direccion;
    private String ciudad;

    public Persona() {
    }

    public Persona(int idPersona, String dni, String nombre, String apellido1, String apellido2, String telefono, String direccion, String ciudad) {
        this.idPersona = idPersona;
        this.dni = dni;
        this.nombre = nombre;
        this.apellido1 = apellido1;
        this.apellido2 = apellido2;
        this.telefono = telefono;
        this.direccion = direccion;
        this.ciudad = ciudad;
    }

    public int getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido1() {
        return apellido1;
    }

    public void setApellido1(String apellido1) {
        this.apellido1 = apellido1;
    }

    public String getApellido2() {
        return apellido2;
    }

    public void setApellido2(String apellido2) {
        this.apellido2 = apellido2;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    @Override
    public boolean equals(Object o) {
        if (!(o instanceof Persona)) return false;
        Persona persona = (Persona) o;
        return getIdPersona() == persona.getIdPersona();
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(getIdPersona());
    }

    @Override
    public int compareTo(Persona o) {
        return this.idPersona - o.idPersona;
    }

    @Override
    public String toString() {
        return "Persona{" +
                "idPersona=" + idPersona +
                ", dni='" + dni + '\'' +
                ", nombre='" + nombre + '\'' +
                ", apellido1='" + apellido1 + '\'' +
                ", apellido2='" + apellido2 + '\'' +
                ", telefono='" + telefono + '\'' +
                ", direccion='" + direccion + '\'' +
                ", ciudad='" + ciudad + '\'' +
                '}';
    }
}
