package com.cursogetafe.tienda.persistencia;

import com.cursogetafe.tienda.config.Config;
import com.cursogetafe.tienda.modelo.Producto;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.TypedQuery;

import java.util.LinkedList;
import java.util.List;

public class ProductoDAOImpl implements ProductoDao{


    private EntityManagerFactory emf;
    private String jpql;

    public ProductoDAOImpl(EntityManagerFactory emf) {this.emf = emf;}
    public ProductoDAOImpl() {emf = Config.getEmf();}

    @Override
    public Producto findById(int idProducto) {
        EntityManager em = emf.createEntityManager();
        jpql = "select p from Producto p where idProducto = ?1";
        TypedQuery<Producto> q = em.createQuery(jpql, Producto.class);
        q.setParameter(1, idProducto);
        Producto p = q.getSingleResultOrNull();
        em.close();
        return p;
    }

    @Override
    public List<Producto> findByDescripcion(String descripcion) {
        EntityManager em = emf.createEntityManager();
        jpql = "select p from Producto p where p.producto like :des";
        TypedQuery<Producto> q = em.createQuery(jpql, Producto.class);
        q.setParameter("des", "%" + descripcion + "%");
        List<Producto> resul = new LinkedList<>(q.getResultList());
        em.close();
        return resul ;
    }

    @Override
    public List<Producto> findAll() {
        EntityManager em = emf.createEntityManager();
        jpql = "select p from Producto p";
        TypedQuery<Producto> q = em.createQuery(jpql, Producto.class);
        List<Producto> resul = new LinkedList<>(q.getResultList());
        em.close();
        return resul;
    }

    @Override
    public void save(Producto p) {
        EntityManager em = emf.createEntityManager();
        try (em){
            em.getTransaction().begin();
            em.merge(p);
            em.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
        }
    }
}
