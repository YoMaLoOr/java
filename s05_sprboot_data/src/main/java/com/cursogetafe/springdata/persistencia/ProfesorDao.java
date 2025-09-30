package com.cursogetafe.springdata.persistencia;

import com.cursogetafe.springdata.modelo.Asignatura;
import com.cursogetafe.springdata.modelo.Profesor;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProfesorDao extends JpaRepository<Profesor, Integer> {
}
