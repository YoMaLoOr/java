package com.cursogetafe.tienda.negocio;

import com.cursogetafe.tienda.modelo.Producto;
import com.cursogetafe.tienda.persistencia.ProductoDAOImpl;
import com.cursogetafe.tienda.persistencia.ProductoDao;

import java.text.Collator;
import java.util.Comparator;
import java.util.Locale;
import java.util.Set;
import java.util.TreeSet;

public class TiendaImpl implements Tienda {

    private ProductoDao pDao;

    public TiendaImpl(){
        pDao = new ProductoDAOImpl();
    }
    @Override
    public Set<Producto> getProductos() {
        Set<Producto> resul = new TreeSet<>(getComparatorProductoDesc());
        resul.addAll(pDao.findAll());
        return resul;
    }

    @Override
    public Set<Producto> getProductos(String descripcion) {
        Set<Producto> resul = new TreeSet<>(getComparatorProductoDesc());
        resul.addAll(pDao.findByDescripcion(descripcion));
        return resul;
    }

    private Comparator<Producto> getComparatorProductoDesc(){
        return new Comparator<Producto>() {
            @Override
            public int compare(Producto o1, Producto o2) {
                Collator col = Collator.getInstance(new Locale("es"));
                return col.compare(o1.getProducto(), o2.getProducto());
            }
        };
    }

    /*private Comparator<Producto> getComparatorProductoDescLambda(){
        Collator col = Collator.getInstance(new Locale("es"));
        return (Producto o1, Producto o2) -> col.compare(o1.getProducto(), o2.getProducto());
    }

    private Comparator<Producto> getComparatorProductoDescLambda2(){
        return (Producto o1, Producto o2) -> {
            Collator col = Collator.getInstance(new Locale("es"));
            return col.compare(o1.getProducto(), o2.getProducto());
        };
    }*/
}
