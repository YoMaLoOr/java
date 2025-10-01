package es.cursogetafe.springdata.modelo;

import jakarta.persistence.*;

@Entity
@Table(name = "profesores")
public class Profesor extends Persona{


    @Column(name = "nro_seg_social")
    private String nroSegSocial;

    public Profesor() {
    }

    public Profesor(int idPersona, String dni, String nombre, String apellido1, String apellido2, String telefono, String direccion, String ciudad, String nroSegSocial) {
        super(idPersona, dni, nombre, apellido1, apellido2, telefono, direccion, ciudad);
        this.nroSegSocial = nroSegSocial;
    }

    public String getNroSegSocial() {
        return nroSegSocial;
    }

    public void setNroSegSocial(String nroSegSocial) {
        this.nroSegSocial = nroSegSocial;
    }

    @Override
    public String toString() {
        return "Profesor{" +
                "idPersona=" + getIdPersona() +
                ", nroSegSocial='" + nroSegSocial + '\'' +
                '}';
    }
}
