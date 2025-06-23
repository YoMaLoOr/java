package modelo;

public class Rectangulo extends Figura{
    private double lado1;
    private double lado2;

    public Rectangulo(double lado1, double lado2, double x, double y){
        super(x, y);
        this.lado1 = lado1;
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
}
