package com.cursogetafe.tienda.persistencia;

import com.cursogetafe.tienda.modelo.Usuario;

public interface UsuarioDao {

    Usuario findById(int id);

    boolean save(Usuario user);

    Usuario valida(String user, String psw);
}
