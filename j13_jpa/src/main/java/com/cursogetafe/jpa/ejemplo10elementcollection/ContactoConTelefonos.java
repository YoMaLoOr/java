package com.cursogetafe.jpa.ejemplo10elementcollection;
import java.io.Serializable;
import java.util.Objects;
import java.util.Set;

import jakarta.persistence.CollectionTable;
import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Table;

@Entity 
@Table(name="contacto")
public class ContactoConTelefonos implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int idContacto;
    private String nombre;
    private String apellidos;
    private String apodo;

    @ElementCollection(fetch= FetchType.EAGER) //En general no es una buena solucion
    @CollectionTable(name="telefonos", joinColumns={@JoinColumn(name="idcontacto")})
    @Column(name="telefono")
    private Set<String> telefonos;


    public ContactoConTelefonos() {
    }

    public ContactoConTelefonos(int idContacto, String nombre, String apellidos, String apodo, Set<String> telefonos) {
        this.idContacto = idContacto;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.apodo = apodo;
        this.telefonos = telefonos;
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

    public Set<String> getTelefonos() {
        return this.telefonos;
    }

    public void setTelefonos(Set<String> telefonos) {
        this.telefonos = telefonos;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (o == null)
            return false;
        if (!(o instanceof ContactoConTelefonos)) {
            return false;
        }
        ContactoConTelefonos contacto = (ContactoConTelefonos) o;
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
            ", telefonos='" + getTelefonos() + "'" +
            "}";
    }
    

}
