package com.cursogetafe.ejerciciojpa.consultas;

import java.util.List;

import com.cursogetafe.ejerciciojpa.config.Config;
import com.cursogetafe.ejerciciojpa.modelo.ClienteCategoria;

import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

public class Consulta06 {
    public static void main(String[] args) {

        cantClientesCategoria().forEach(System.out::println);
    }

    public static List<ClienteCategoria> cantClientesCategoria(){
        EntityManager em = Config.getEmf().createEntityManager();

        String jpql = "select new com.cursogetafe.ejerciciojpa.modelo.ClienteCategoria(count(c.idRol), c.categoria) from Cliente c group by c.categoria";
        TypedQuery<ClienteCategoria> q = em.createQuery(jpql, ClienteCategoria.class);

        return q.getResultList();
    }
}
