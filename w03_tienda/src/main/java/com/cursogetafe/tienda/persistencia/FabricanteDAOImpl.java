package com.cursogetafe.tienda.persistencia;

import com.cursogetafe.tienda.config.Config;
import com.cursogetafe.tienda.modelo.Fabricante;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.TypedQuery;

import java.util.HashSet;
import java.util.Set;

public class FabricanteDAOImpl implements FabricanteDao{

    private EntityManagerFactory emf;
    private String jpql;

    public FabricanteDAOImpl(EntityManagerFactory emf) {this.emf = emf;}
    public FabricanteDAOImpl() {emf = Config.getEmf();}

    @Override
    public void save(Fabricante fabricante) {
        EntityManager em = emf.createEntityManager();
        try (em){
            em.getTransaction().begin();
            em.merge(fabricante);
            em.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
        }
    }

    @Override
    public Fabricante findByIdLazy(int idFabricante) {
        EntityManager em = emf.createEntityManager();
        jpql = "select f from Fabricante f where idFabricante = ?1";
        TypedQuery<Fabricante> q = em.createQuery(jpql, Fabricante.class);
        q.setParameter(1, idFabricante);
        Fabricante f = q.getSingleResultOrNull();
        em.close();
        return f;
    }

    @Override
    public Fabricante findById(int idFabricante) {
        EntityManager em = emf.createEntityManager();
        jpql = "select f from Fabricante f left join fetch f.productos where idFabricante = ?1";
        TypedQuery<Fabricante> q = em.createQuery(jpql, Fabricante.class);
        q.setParameter(1, idFabricante);
        Fabricante f = q.getSingleResultOrNull();
        em.close();
        return f;
    }

    @Override
    public Set<Fabricante> findOnlyActive() {
        EntityManager em = emf.createEntityManager();
        Set<Fabricante> resul = new HashSet<>();
        jpql = "select f from Fabricante f join f.productos p";
        TypedQuery<Fabricante> q = em.createQuery(jpql, Fabricante.class);
        resul.addAll(q.getResultList());
        em.close();
        return resul ;
    }

    @Override
    public Set<Fabricante> findAll() {
        EntityManager em = emf.createEntityManager();
        jpql = "select f from Fabricante f";
        TypedQuery<Fabricante> q = em.createQuery(jpql, Fabricante.class);
        Set<Fabricante> resul = new HashSet<>(q.getResultList());
        em.close();
        return resul;
    }
}
