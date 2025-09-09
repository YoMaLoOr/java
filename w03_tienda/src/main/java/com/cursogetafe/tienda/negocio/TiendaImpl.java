package com.cursogetafe.tienda.negocio;

import com.cursogetafe.tienda.modelo.Fabricante;
import com.cursogetafe.tienda.modelo.Producto;
import com.cursogetafe.tienda.persistencia.FabricanteDAOImpl;
import com.cursogetafe.tienda.persistencia.FabricanteDao;
import com.cursogetafe.tienda.persistencia.ProductoDAOImpl;
import com.cursogetafe.tienda.persistencia.ProductoDao;

import java.text.Collator;
import java.util.Comparator;
import java.util.Locale;
import java.util.Set;
import java.util.TreeSet;

public class TiendaImpl implements Tienda {

    private ProductoDao pDao;
    private FabricanteDao fDao;

    public TiendaImpl(){
        pDao = new ProductoDAOImpl();
        fDao = new FabricanteDAOImpl();
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

    @Override
    public Set<Fabricante> getFabricantes() {
        Set<Fabricante> resul = new TreeSet<>(getComparatorFabricanteAlf());
        resul.addAll(fDao.findAll());
        return resul;
    }

    @Override
    public void crearProducto(Producto producto) {
        pDao.save(producto);
    }

    @Override
    public Fabricante getFabricante(int idFabricante) {
        return fDao.findById(idFabricante);
    }

    private Comparator<Producto> getComparatorProductoDesc(){
        return new Comparator<>() {
            @Override
            public int compare(Producto o1, Producto o2) {
                Collator col = Collator.getInstance(new Locale("es"));
                return col.compare(o1.getProducto(), o2.getProducto());
            }
        };
    }

    private Comparator<Fabricante> getComparatorFabricanteAlf(){
        Collator col = Collator.getInstance(new Locale("es"));
        return (f1,f2) -> col.compare(f1.getFabricante(), f2.getFabricante());
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
