package com.objetos;

public class Mes {
    private String nombre;
    private int temperaturaMaxima;
    private int temperaturaMinima;

    public int getTemperaturaMinima() {
        return this.temperaturaMinima;
    }

    public void setTemperaturaMinima(int temperaturaMinima) {
        this.temperaturaMinima = temperaturaMinima;
    }

    public String getNombre() {
        return this.nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getTemperaturaMaxima() {
        return this.temperaturaMaxima;
    }

    public void setTemperaturaMaxima(int temperaturaMaxima) {
        this.temperaturaMaxima = temperaturaMaxima;
    }

    public double generarMediaMensual(){
        double media = (this.temperaturaMaxima + this.temperaturaMinima) / 2;
        return media;
    }

    @Override
    public String toString() {
        return this.nombre + ", Max: "
        + this.temperaturaMaxima
        + ", Min: "
        + this.temperaturaMinima
        + ", Avg: "
        + this.generarMediaMensual();
    }
}