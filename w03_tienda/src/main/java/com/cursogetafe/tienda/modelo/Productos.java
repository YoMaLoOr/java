package com.cursogetafe.tienda.modelo;

import jakarta.persistence.*;

import java.io.Serializable;

@Entity
@Table(name = "productos")
public class Productos implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_producto")
    private int idProducto;
    private String producto;
    private double precio;
    @ManyToOne
    @JoinColumn(name = "fk_fabricante")
    private Fabricantes fabricante;

    public Productos() {
    }

    public Productos(int idProducto, String producto, double precio, Fabricantes fabricante) {
        this.idProducto = idProducto;
        this.producto = producto;
        this.precio = precio;
        this.fabricante = fabricante;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public Fabricantes getFabricante() {
        return fabricante;
    }

    public void setFabricante(Fabricantes fabricante) {
        this.fabricante = fabricante;
    }

    @Override
    public String toString() {
        return "Productos{" +
                "idProducto=" + idProducto +
                ", producto='" + producto + '\'' +
                ", precio=" + precio +
                '}';
    }
}
