package com.cursogetafe.tienda.persistencia;

import com.cursogetafe.tienda.modelo.Producto;

import java.util.List;

public class ProductoDAOImpl implements ProductoDao{
    @Override
    public Producto findById(int idProducto) {
        return null;
    }

    @Override
    public List<Producto> findByDescripcion(String descripcion) {
        return List.of();
    }

    @Override
    public List<Producto> findAll() {
        return List.of();
    }

    @Override
    public void save(Producto p) {

    }
}
