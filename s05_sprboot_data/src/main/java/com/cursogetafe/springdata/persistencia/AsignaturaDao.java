package com.cursogetafe.springdata.persistencia;

import com.cursogetafe.springdata.modelo.Asignatura;
import com.cursogetafe.springdata.modelo.Profesor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Set;

public interface AsignaturaDao extends JpaRepository<Asignatura, Integer> {

    @Query("select a from Asignatura a where a.profesor is null")
    Set<Asignatura> buscarSinProfesor();

    @Query("select a from Asignatura a where a.asignatura like %?1%")
    Set<Asignatura> buscarPorDescripcion(String desc);


    Set<Asignatura> findByProfesor(Profesor profe);
}
