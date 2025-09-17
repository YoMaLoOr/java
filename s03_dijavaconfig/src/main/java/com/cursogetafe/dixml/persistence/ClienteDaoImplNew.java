package com.cursogetafe.dixml.persistence;

public class ClienteDaoImplNew implements ClienteDao{

    public ClienteDaoImplNew() {
    }

    @Override
    public String findById(int id) {
        return "Nuevo Dao de cliente" + id;
    }
}
