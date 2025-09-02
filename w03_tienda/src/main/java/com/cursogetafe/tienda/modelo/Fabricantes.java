package com.cursogetafe.tienda.modelo;

import jakarta.persistence.*;

import java.io.Serializable;
import java.util.Set;

@Entity
@Table(name = "fabricantes")
public class Fabricantes implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_fabricante")
    private int idFabricante;
    private String fabricante;
    @OneToMany(mappedBy = "fabricante")
    private Set<Productos> productos;

    public Fabricantes() {
    }

    public Fabricantes(int idFabricante, String fabricante) {
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

    public Set<Productos> getProductos() {
        return productos;
    }

    public void setProductos(Set<Productos> productos) {
        this.productos = productos;
    }

    @Override
    public String toString() {
        return "Fabricantes{" +
                "idFabricante=" + idFabricante +
                ", fabricante='" + fabricante + '\'' +
                ", productos=" + productos +
                '}';
    }
}
