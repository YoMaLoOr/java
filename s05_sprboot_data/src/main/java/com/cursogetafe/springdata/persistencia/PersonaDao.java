package com.cursogetafe.springdata.persistencia;

import com.cursogetafe.springdata.modelo.Asignatura;
import com.cursogetafe.springdata.modelo.Persona;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PersonaDao extends JpaRepository<Persona, Integer> {
}
