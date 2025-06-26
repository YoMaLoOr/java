package modelo;


public abstract class Figura {
    private double x;
    private double y;

    public Figura(double x, double y) {
        this.x = x;
        this.y = y;
    }

    public double getX() {
        return this.x;
    }

    public void setX(double x) {
        this.x = x;
    }

    public double getY() {
        return this.y;
    }

    public void setY(double y) {
        this.y = y;
    }
    
    @Override
    public boolean equals(Object otro){
        if(otro == null) return false;
        if(this == otro) return true;
        if(this.getClass() != otro.getClass()) return false;
        Figura otra = (Figura) otro;
        return this.x == otra.x && this.y == otra.y;
    }

    @Override
    public String toString() {
        return "{" +
            " x='" + getX() + "'" +
            ", y='" + getY() + "'" +
            "}";
    }
    public abstract double area();
    public abstract double perimetro();

    public static Punto centroMasas(Figura... figs){
        double cmx = 0, cmy =0, masa = 0;
        for (Figura fig : figs) {
            cmx += fig.area() * fig.getX();
            cmy += fig.area() * fig.getY();
            masa += fig.area();
        }
        return new Punto(cmx/masa, cmy/masa);
    }
}
