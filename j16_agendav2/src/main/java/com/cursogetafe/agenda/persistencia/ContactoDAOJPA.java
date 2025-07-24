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
        em.close();
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
        em.close();
    }

    @Override
    public boolean eliminar(int idContacto) {
        em = emf.createEntityManager();
        // Contacto eliminar = em.find(Contacto.class, idContacto);
        jpql = "select c from Contacto c where c.idContacto = ?1";
        TypedQuery<Contacto> q = em.createQuery(jpql, Contacto.class);
        q.setParameter(1, idContacto);
        Contacto c = q.getSingleResult();
        if (c != null) {
            try {
                em.getTransaction().begin();
                em.remove(c); //Para que funcione el eliminar, debe primero estar en estado new, por lo que no se le puede pasar simplemente el objeto, debes trabajarlo antes.
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
    public boolean eliminar(Contacto c) {
        return eliminar(c.getIdContacto());
    }
    
    @Override
    public Contacto buscar(int idContacto) {
        em = emf.createEntityManager();
        // Contacto buscado = em.find(Contacto.class, idContacto);
        //if(buscado != null){
        //  buscado.getTelefonos().size();
        //  buscado.getCorreos().size();
        //}
        jpql = "select c from Contacto c left join fetch c.telefonos left join fetch c.correos where c.idContacto = ?1";
        TypedQuery<Contacto> q = em.createQuery(jpql, Contacto.class);
        q.setParameter(1, idContacto);
        Contacto c = q.getSingleResultOrNull();
        em.close();
        return c;
    }

    @Override
    public Set<Contacto> buscar(String cadena) {
        em = emf.createEntityManager();
        Set<Contacto> resul = new HashSet<>();
        jpql = "select c from Contacto c join fetch c.telefonos left join fetch c.correos where c.nombre like :nom or c.apellidos like :nom or c.apodo like :nom";
        TypedQuery<Contacto> q = em.createQuery(jpql, Contacto.class);
        q.setParameter("nom", "%" + cadena + "%");
        resul.addAll(q.getResultList());
        em.close();
        return resul;
    }

    @Override
    public Set<Contacto> buscarTodos() {
        em = emf.createEntityManager();
        Set<Contacto> resul = new HashSet<>();
        jpql = "select c from Contacto c";
        TypedQuery<Contacto> q = em.createQuery(jpql, Contacto.class);
        resul.addAll(q.getResultList());
        em.close();
        return resul;
    }

}
