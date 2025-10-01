package es.cursogetafe.springdata.persistencia;

import es.cursogetafe.springdata.modelo.Asignatura;
import es.cursogetafe.springdata.modelo.Profesor;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.Set;

public class AsignaturaDaoCustomImpl implements AsignaturaDaoCustom{

    private EntityManager em;
    private ProfesorDao profDao;

    public EntityManager getEm() {
        return em;
    }

    @PersistenceContext
    public void setEm(EntityManager em) {
        this.em = em;
    }

    public ProfesorDao getProfDao() {
        return profDao;
    }

    @Autowired
    public void setProfDao(ProfesorDao profDao) {
        this.profDao = profDao;
    }

    @Override
    public Set<Asignatura> findByProfesor(String apellido) {
        Set<Profesor> profesores = profDao.findByApellidos(apellido);
        String jpql = "select a from Asignatura a where a.profesor in :profes";
        TypedQuery<Asignatura> q = em.createQuery(jpql, Asignatura.class).setParameter("profes", profesores);
        return new HashSet<Asignatura>(q.getResultList());
    }
}
