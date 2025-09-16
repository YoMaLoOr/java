package com.cursogetafe.dixml.persistence;

public class ClienteDaoImplNew implements ClienteDao{

    @Override
    public String findById(int id) {
        return "Nuevo Dao de cliente" + id;
    }
}
