package es.cursosanblas.examen.modelo;

import jakarta.persistence.*;

import java.util.Set;

@Entity
@Table(name = "alumnos")
public class Alumno extends Persona{


    private String matricula;
    @Column(name = "anyo_inscripcion")
    private int anyoInscripcion;
    @ManyToMany(mappedBy="alumnos")
    private Set<Asignatura> asignaturas;

    public Alumno() {
    }

    public Alumno(int idPersona, String dni, String nombre, String apellido1, String apellido2, String telefono, String direccion, String ciudad, String matricula, int anyoInscripcion) {
        super(idPersona, dni, nombre, apellido1, apellido2, telefono, direccion, ciudad);
        this.matricula = matricula;
        this.anyoInscripcion = anyoInscripcion;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public int getAnyoInscripcion() {
        return anyoInscripcion;
    }

    public void setAnyoInscripcion(int anyoInscripcion) {
        this.anyoInscripcion = anyoInscripcion;
    }

    public Set<Asignatura> getAsignaturas() {
        return asignaturas;
    }

    public void setAsignaturas(Set<Asignatura> asignaturas) {
        this.asignaturas = asignaturas;
    }

    @Override
    public String toString() {
        return "Alumno{" +
                "idPersona=" + getIdPersona() + '\'' +
                ", matricula='" + matricula + '\'' +
                ", anyoInscripcion=" + anyoInscripcion +
                '}';
    }
}
