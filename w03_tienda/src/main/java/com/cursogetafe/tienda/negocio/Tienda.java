package com.cursogetafe.tienda.negocio;

import com.cursogetafe.tienda.modelo.Producto;

import java.util.Set;

public interface Tienda {

    /**
     * Devuelve todos los productos ordenados por su descripcion
     * @return un set de productos ordenados
     */
    Set<Producto> getProductos();
    /**
     * Devuelve todos los productos que contienen su descripcion
     * @param descripcion Descripcion de los productos a buscar
     * @return un set de productos ordenados
     */
    Set<Producto> getProductos(String descripcion);
}
