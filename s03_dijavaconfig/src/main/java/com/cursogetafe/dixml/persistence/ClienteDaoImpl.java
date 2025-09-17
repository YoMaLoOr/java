package com.cursogetafe.dixml.persistence;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

//@Component("clienteDaoImpl") //Ese es el nombre por defecto, el nombre de la clase empezando con minus
@Repository("clienteDao")
public class ClienteDaoImpl implements ClienteDao{

    public ClienteDaoImpl() {
        System.out.println("Constructor ClienteDaoImpl()");
    }

    @Override
    public String findById(int id) {
        return "Este es el cliente con id " + id;
    }
}
