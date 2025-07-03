package src.tests;
import src.modelo.*;

public class Test01 {
    public static void main(String[] args) {
        Rectangulo r1 = new Rectangulo(1, 2, 3, 4);
        Circulo c1 = new Circulo(1, 2, 3);
        System.out.println(r1.toString());
        System.out.println(c1.toString());
    }
}
