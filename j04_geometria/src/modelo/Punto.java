package src.modelo;

public class Punto implements Dibujable{
    private double centroMasaX;
    private double centroMasaY;

    public Punto(double centroMasaX, double centroMasaY) {
        this.centroMasaX = centroMasaX;
        this.centroMasaY = centroMasaY;
    }

    public double getCentroMasaX() {
        return this.centroMasaX;
    }

    public void setCentroMasaX(double centroMasaX) {
        this.centroMasaX = centroMasaX;
    }

    public double getCentroMasaY() {
        return this.centroMasaY;
    }

    public void setCentroMasaY(double centroMasaY) {
        this.centroMasaY = centroMasaY;
    }

    @Override
    public String toString() {
        return "{" +
            " centroMasaX='" + getCentroMasaX() + "'" +
            ", centroMasaY='" + getCentroMasaY() + "'" +
            "}";
    }

    @Override
    public boolean equals(Object otro){
        if(otro == null) return false;
        if(this == otro) return true;
        if(this.getClass() != otro.getClass()) return false;
        Punto otra = (Punto) otro;
        return this.centroMasaX == otra.centroMasaX && this.centroMasaY == otra.centroMasaY;
    }

    @Override
    public void dibujar() {
        System.out.println("Puntito");
    }

}
