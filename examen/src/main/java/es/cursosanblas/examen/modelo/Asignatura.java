package es.cursosanblas.examen.modelo;

import jakarta.persistence.*;

import java.util.Objects;
import java.util.Set;

@Entity
@Table(name = "asignaturas")
public class Asignatura implements Comparable<Asignatura>{
    @Id
    @Column(name = "id_asignatura")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idAsignatura;
    private String asignatura;
    private int creditos;
    private String facultad;
    @ManyToOne
    @JoinColumn(name="fk_profesor")
    private Profesor profesor;
    @ManyToMany
    @JoinTable(name="matriculados",
            joinColumns=@JoinColumn(name="fk_asignatura"),
            inverseJoinColumns=@JoinColumn(name="fk_alumno"))
    private Set<Alumno> alumnos;

    public Asignatura() {
    }

    public Asignatura(String asignatura, int creditos, String facultad) {
        this.asignatura = asignatura;
        this.creditos = creditos;
        this.facultad = facultad;
    }

    public int getIdAsignatura() {
        return idAsignatura;
    }

    public void setIdAsignatura(int idAsignatura) {
        this.idAsignatura = idAsignatura;
    }

    public String getAsignatura() {
        return asignatura;
    }

    public void setAsignatura(String asignatura) {
        this.asignatura = asignatura;
    }

    public int getCreditos() {
        return creditos;
    }

    public void setCreditos(int creditos) {
        this.creditos = creditos;
    }

    public String getFacultad() {
        return facultad;
    }

    public void setFacultad(String facultad) {
        this.facultad = facultad;
    }

    public Profesor getProfesor() {
        return profesor;
    }

    public void setProfesor(Profesor profesor) {
        this.profesor = profesor;
    }

    public Set<Alumno> getAlumnos() {
        return alumnos;
    }

    public void setAlumnos(Set<Alumno> alumnos) {
        this.alumnos = alumnos;
    }

    @Override
    public boolean equals(Object o) {
        if (!(o instanceof Asignatura)) return false;
        Asignatura that = (Asignatura) o;
        return getIdAsignatura() == that.getIdAsignatura();
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(getIdAsignatura());
    }

    @Override
    public int compareTo(Asignatura o) {
        return this.idAsignatura - o.idAsignatura;
    }

    @Override
    public String toString() {
        return "Asignatura{" +
                "idAsignatura=" + idAsignatura +
                ", asignatura='" + asignatura + '\'' +
                ", creditos=" + creditos +
                ", facultad='" + facultad + '\'' +
                ", profesor=" + profesor +
                ", alumnos=" + alumnos +
                '}';
    }
}
