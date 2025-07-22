package com.cursogetafe.ejerciciojpa.consultas;

import com.cursogetafe.ejerciciojpa.config.Config;
import com.cursogetafe.ejerciciojpa.modelo.ClienteDTO;

import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

public class Consulta08 {
    public static void main(String[] args) {
        EntityManager em = Config.getEmf().createEntityManager();

        String producto = "disco";

        String jpql = "select new ClienteDTO(c.idRol, c.persona.apellidos, c.nroCliente, c.categoria) from Cliente c join c.productos p where p.producto like ?1";
        //String jpql = "select c.idRol, p.apellidos, nroCliente, c.categoria from Cliente c join c.persona p";
        TypedQuery<ClienteDTO> q = em.createQuery(jpql, ClienteDTO.class);
        q.setParameter(1, "%" + producto + "%");

        q.getResultList().forEach(System.out::println);
    }

}
