package com.cursogetafe.agenda.persistencia;

import java.util.HashSet;
import java.util.Set;

import com.cursogetafe.agenda.config.Config;
import com.cursogetafe.agenda.modelo.Contacto;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.TypedQuery;

public class ContactoDAOJPA implements ContactoDao{

    private EntityManagerFactory emf;
    private EntityManager em; 
    private String jpql;

    public ContactoDAOJPA(){
        emf = Config.getEmf();
    }

    @Override
    public void insertar(Contacto c) {
        em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(c);
            em.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
        }
        
    }

    @Override
    public void actualizar(Contacto c) {
        em = emf.createEntityManager();

        try {
            em.getTransaction().begin();
            em.merge(c);
            em.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
        }
    }

    @Override
    public boolean eliminar(int idContacto) {
        em = emf.createEntityManager();
        jpql = "select c from Contacto c where c.idcontactos = ?1";
        TypedQuery<Contacto> q = em.createQuery(jpql, Contacto.class);
        q.setParameter(1, idContacto);
        Contacto c = q.getSingleResult();
        boolean resul;
        try {
            em.getTransaction().begin();
            em.remove(c);
            em.getTransaction().commit();
            resul = true;
        } catch (Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
            resul = false;
        }
        return resul;
    }

    @Override
    public boolean eliminar(Contacto c) {
        boolean resul;
        try {
            em.getTransaction().begin();
            em.remove(c);
            em.getTransaction().commit();
            resul = true;
        } catch (Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
            resul = false;
        }
        return resul;
    }

    @Override
    public Contacto buscar(int idContacto) {
        em = emf.createEntityManager();
        jpql = "select c from Contacto c where c.idcontactos = ?1";
        TypedQuery<Contacto> q = em.createQuery(jpql, Contacto.class);
        q.setParameter(1, idContacto);
        return q.getSingleResult();
    }

    @Override
    public Set<Contacto> buscar(String cadena) {
        em = emf.createEntityManager();
        Set<Contacto> resul = new HashSet<>();
        jpql = "select c from Contacto c where c.nombre like :nom";
        TypedQuery<Contacto> q = em.createQuery(jpql, Contacto.class);
        q.setParameter("nom", cadena);
        resul.addAll(q.getResultList());
        return resul;
    }

    @Override
    public Set<Contacto> buscarTodos() {
        em = emf.createEntityManager();
        Set<Contacto> resul = new HashSet<>();
        jpql = "select c from Contacto c";
        TypedQuery<Contacto> q = em.createQuery(jpql, Contacto.class);
        resul.addAll(q.getResultList());
        return resul;
    }

}
