package com.cursogetafe.ejerciciojpa.consultas;

import com.cursogetafe.ejerciciojpa.config.Config;
import com.cursogetafe.ejerciciojpa.modelo.Cliente;

import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

public class Consulta02 {
    public static void main(String[] args) {
        EntityManager em = Config.getEmf().createEntityManager();
        
        String categoria = "VIP";

        String jpql = "select c from Cliente c where c.categoria = :cat";
        TypedQuery<Cliente> q = em.createQuery(jpql, Cliente.class);
        q.setParameter("cat", categoria);

        q.getResultList().forEach(System.out::println);
    }

}
