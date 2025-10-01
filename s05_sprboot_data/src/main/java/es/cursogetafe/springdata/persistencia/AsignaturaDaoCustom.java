package es.cursogetafe.springdata.persistencia;

import es.cursogetafe.springdata.modelo.Asignatura;

import java.util.Set;

public interface AsignaturaDaoCustom {

    Set<Asignatura> findByProfesor(String apellido);
}
