package com.cursogetafe.tienda.persistencia;

import at.favre.lib.crypto.bcrypt.BCrypt;
import com.cursogetafe.tienda.config.Config;
import com.cursogetafe.tienda.excepciones.PersistenciaException;
import com.cursogetafe.tienda.modelo.Usuario;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.TypedQuery;

public class UsuarioDaoImpl implements UsuarioDao {

    private EntityManagerFactory emf;
    private String jpql;

    public UsuarioDaoImpl() {
        emf = Config.getEmf();
    }

    @Override
    public Usuario findById(int id) {
        EntityManager em = emf.createEntityManager();
        Usuario buscado = em.find(Usuario.class, id);
        em.close();
        return buscado;
    }

    @Override
    public boolean save(Usuario user) {
        boolean ok = false;
        String psw = BCrypt.withDefaults().hashToString(12, user.getPassword().toCharArray());
        user.setPassword(psw);
        EntityManager em = emf.createEntityManager();
        try(em){
            em.getTransaction().begin();
            em.merge(user);
            em.getTransaction().commit();
            ok = true;
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistenciaException(e);
        }
        return ok;
    }

    @Override
    public Usuario valida(String user, String psw) {
        Usuario buscado = null;
        EntityManager em = emf.createEntityManager();
        jpql = "select u from Usuario u where u.usuario = :usr";
        TypedQuery<Usuario> q = em.createQuery(jpql, Usuario.class);
        q.setParameter("usr", user);
        buscado = q.getSingleResultOrNull();
        if (buscado == null || !BCrypt.verifyer().verify(psw.toCharArray(), buscado.getPassword()).verified){
            buscado = null;
        }
        em.close();
        return buscado;
    }
}
