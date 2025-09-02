package com.cursogetafe.tienda.test;

import com.cursogetafe.tienda.config.Config;
import com.cursogetafe.tienda.modelo.Fabricantes;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

public class Prueba {
    public static void main(String[] args) {
        EntityManager em = Config.getEmf().createEntityManager();

        String jpql = "select f from Fabricantes f join fetch f.productos";

        TypedQuery<Fabricantes> q =em.createQuery(jpql, Fabricantes.class);

        q.getResultList().forEach(System.out::println);
    }

}
