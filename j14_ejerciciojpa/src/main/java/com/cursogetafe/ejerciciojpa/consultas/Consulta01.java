package com.cursogetafe.ejerciciojpa.consultas;

import java.util.List;

import com.cursogetafe.ejerciciojpa.config.Config;
import com.cursogetafe.ejerciciojpa.modelo.Cliente;

import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

public class Consulta01 {
    public static void main(String[] args) {
        EntityManager em = Config.getEmf().createEntityManager();

        String jpql = "select c from Cliente c";

        TypedQuery<Cliente> q = em.createQuery(jpql, Cliente.class);

        List<Cliente> clientes = q.getResultList();

        clientes.forEach(System.out::println);

        System.out.println("-----------------------------------------------------------");

        jpql = "select c.nroCliente from Cliente c";

        List<Integer> numeros = em.createQuery(jpql, Integer.class).getResultList();

        numeros.forEach(System.out::println);

        System.out.println("-----------------------------------------------------------");

        jpql = "select c.nroCliente, c.categoria from Cliente c";

        List<Object[]> lista = em.createQuery(jpql, Object[].class). getResultList();

        // for (Object[] elem : lista) {
        //     System.out.println(elem[0] + ": " + elem[1]);
        // }

        lista.forEach(c -> {System.out.println(c[0] + " : " + c[1]);});
    }
}
