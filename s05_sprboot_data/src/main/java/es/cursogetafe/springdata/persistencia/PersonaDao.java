package es.cursogetafe.springdata.persistencia;

import es.cursogetafe.springdata.modelo.Persona;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PersonaDao extends JpaRepository<Persona, Integer> {
}
