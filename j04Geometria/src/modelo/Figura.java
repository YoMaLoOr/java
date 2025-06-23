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
    
    public abstract double area();
    public abstract double perimetro();
    
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

}
