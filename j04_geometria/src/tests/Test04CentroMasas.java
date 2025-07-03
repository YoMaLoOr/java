package src.tests;
import src.modelo.*;

public class Test04CentroMasas {
    public static void main(String[] args) {
        Rectangulo r1 = new Rectangulo(15, 2, 3, 4);
        Circulo c1 = new Circulo(1, 20, 3);
        Rectangulo r2 = new Rectangulo(8, 3, 4, 5);
        Circulo c2 = new Circulo(19, 2, 4);
        Rectangulo r3 = new Rectangulo(3, -10, 1, 2);
        Circulo c3 = new Circulo(-12, 2, 2);
        Figura[] figs = {r1, r2, r3, c1, c2, c3};
        Punto p1 = Figura.centroMasas(figs);
        System.out.println("Cm("+p1.getCentroMasaX()+", "+p1.getCentroMasaY()+")");
    }
}
