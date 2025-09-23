package es.cursosanblas.examen.persistencia;

import es.cursosanblas.examen.config.Config;
import es.cursosanblas.examen.modelo.Asignatura;
import es.cursosanblas.examen.modelo.Profesor;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.TypedQuery;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class AsignaturaDaoImpl implements AsignaturaDao{

    private EntityManagerFactory emf = Config.getEmf();
    private EntityManager em;
    private String jpql;

    @Override
    public boolean insertar(Asignatura asignatura) {
        boolean funciona = false;
        em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(asignatura);
            em.getTransaction().commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
            return false;
        }finally {
            em.close();
        }
    }

    @Override
    public boolean actualizar(Asignatura asignatura) {
        boolean funciona = false;
        em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.merge(asignatura);
            em.getTransaction().commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
            return false;
        }finally {
            em.close();
        }
    }

    @Override
    public boolean eliminar(Asignatura asignatura) {
        em = emf.createEntityManager();
        System.out.println(asignatura.getIdAsignatura());
        jpql = "select a from Asignatura a where a.idAsignatura = ?1";
        TypedQuery<Asignatura> q = em.createQuery(jpql, Asignatura.class);
        q.setParameter(1, asignatura.getIdAsignatura());
        Asignatura a = q.getSingleResultOrNull();
        if (a != null) {
            try {
                em.getTransaction().begin();
                em.remove(a);
                em.getTransaction().commit();
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                em.getTransaction().rollback();
                return false;
            } finally {
                em.close();
            }
        } else
            return false;
    }

    @Override
    public Asignatura buscar(int idAsignatura) {
        em = emf.createEntityManager();
        jpql = "select a from Asignatura a left join fetch a.alumnos  where a.idAsignatura = ?1";
        TypedQuery<Asignatura> q = em.createQuery(jpql, Asignatura.class);
        q.setParameter(1, idAsignatura);
        Asignatura a = q.getSingleResultOrNull();
        em.close();
        return a;
    }

    @Override
    public Set<Asignatura> buscarPorProfesor(Profesor profesor) {
        em = emf.createEntityManager();
        jpql = "select a from Asignatura a left join fetch a.alumnos where a.profesor.idPersona = ?1";
        TypedQuery<Asignatura> q = em.createQuery(jpql, Asignatura.class);
        q.setParameter(1, profesor.getIdPersona());
        Set<Asignatura> resul = new HashSet<>(q.getResultList());
        em.close();
        return resul;
    }

    @Override
    public Map<Integer, Asignatura> buscarTodas() {
        em = emf.createEntityManager();
        jpql = "select a from Asignatura a left join fetch a.alumnos";
        TypedQuery<Asignatura> q = em.createQuery(jpql, Asignatura.class);
        HashMap<Integer, Asignatura> resul = new HashMap<>();
        for(Asignatura asig : q.getResultList())
            resul.put(asig.getIdAsignatura(), asig);
        em.close();
        return resul;
    }

    @Override
    public Set<Asignatura> buscarSinProfesor() {
        em = emf.createEntityManager();
        jpql = "select a from Asignatura a left join fetch a.alumnos";
        TypedQuery<Asignatura> q = em.createQuery(jpql, Asignatura.class);
        Set<Asignatura> resul = new HashSet<>(q.getResultList());
        em.close();
        return resul;
    }
}
