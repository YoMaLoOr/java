package com.cursogetafe.jpa.ejemplo02;

import com.cursogetafe.jpa.config.Config;

import jakarta.persistence.EntityManager;

public class Test01 {
    public static void main(String[] args) {

        try (EntityManager em = Config.getEmf().createEntityManager()) {
            Personas p = em.find(Personas.class, 7);
            System.out.println(p);
            
            Personas nuevo = new Personas(0, "Nuevo", "Huevote", "Persono");
            nuevo.setGenero(Genero.MASC);
            
            em.getTransaction().begin();
            em.persist(nuevo);
            em.getTransaction().commit();
        }
    }
}
