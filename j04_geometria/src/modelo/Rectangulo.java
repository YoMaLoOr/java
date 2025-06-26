package modelo;

public class Rectangulo extends Figura{
    private double lado1;
    private double lado2;

    public Rectangulo(double x, double y, double lado1, double lado2){
        super(x, y);
        this.lado1 = lado1;
        this.lado2 = lado2;
    }

    public double getLado1() {
        return this.lado1;
    }

    public void setLado1(double lado1) {
        this.lado1 = lado1;
    }

    public double getLado2() {
        return this.lado2;
    }

    public void setLado2(double lado2) {
        this.lado2 = lado2;
    }
    
    @Override
    public boolean equals(Object o){
        if(super.equals(o) == true){
            Rectangulo otro = (Rectangulo) o;
            return this.lado1 == otro.lado1 && this.lado2 == otro.lado2;
        }
        return false;
    }

    @Override
    public String toString() {
        return "[" +
            " lado1='" + getLado1() + "'" +
            ", lado2='" + getLado2() + "'" +
            "]";
    }

    @Override
    public double area(){
        double area = this.lado1*this.lado2;
        return area;
    }

    @Override
    public double perimetro(){
        double perimetro = 2*this.lado1+2*this.lado2;
        return perimetro;
    }
}
