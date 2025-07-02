package modelo;

public class Circulo extends Figura implements Dibujable{
    private double radio;

    public Circulo(double x, double y, double radio) {
        super(x, y);
        this.radio = radio;
    }
    

    public double getRadio() {
        return this.radio;
    }

    public void setRadio(double radio) {
        this.radio = radio;
    }
    
    @Override
    public boolean equals(Object o){
        if(super.equals(o) == true){
            Circulo otro = (Circulo) o;
            return this.radio == otro.radio;
        }
        return false;
    }

    @Override
    public String toString() {
        return "[" +
            " radio='" + getRadio() + "'" +
            "]";
    }

    @Override
    public double area(){
        double area = Math.PI*Math.pow(this.radio, 2);
        return area;
    }
    
    @Override
    public double perimetro(){
        double perimetro = Math.PI*this.radio*2;
        return perimetro;
    }

    public double diametro(){
        double diametro = Math.PI*this.radio;
        return diametro;
    }

    @Override
    public void dibujar(){
        System.out.println("Circulito");
    }

}
