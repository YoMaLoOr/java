package com.cursogetafe.tienda.modelo;

import jakarta.persistence.*;

import java.io.Serializable;
import java.util.Set;

@Entity
@Table(name = "fabricantes")
public class Fabricante implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_fabricante")
    private int idFabricante;
    private String fabricante;
    @OneToMany(mappedBy = "fabricante")
    private Set<Producto> productos;

    public Fabricante() {
    }

    public Fabricante(int idFabricante, String fabricante) {
        this.idFabricante = idFabricante;
        this.fabricante = fabricante;
    }

    public int getIdFabricante() {
        return idFabricante;
    }

    public void setIdFabricante(int idFabricante) {
        this.idFabricante = idFabricante;
    }

    public String getFabricante() {
        return fabricante;
    }

    public void setFabricante(String fabricante) {
        this.fabricante = fabricante;
    }

    public Set<Producto> getProductos() {
        return productos;
    }

    public void setProductos(Set<Producto> productos) {
        this.productos = productos;
    }

    @Override
    public String toString() {
        return "Fabricante{" +
                "idFabricante=" + idFabricante +
                ", fabricante='" + fabricante + '\'' +
                ", productos=" + productos +
                '}';
    }
}
