package com.cursogetafe.springdata.persistencia;

import com.cursogetafe.springdata.modelo.Alumno;
import com.cursogetafe.springdata.modelo.Asignatura;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AlumnoDao extends JpaRepository<Alumno, Integer> {
}
