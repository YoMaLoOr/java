package src.tests;
 
import src.modelo.*;


public class Test05Interface {
    public static void main(String[] args) {
        
        Circulo c =new Circulo(1, 2, 3);
        Cliente cli = new Cliente(0, "Pedro");
        Punto p = new Punto(0, 1);
        Cliente cli2 = new Cliente(1, "Laura");

        Rectangulo r = new Rectangulo(1, 2, 3, 4);

        procesaDibs(c, cli, p, cli2);
    }

    public static void procesaDibs(Dibujable... dibujables) {
        for (int i = 0; i < dibujables.length; i++) {
            dibujables[i].dibujar();
            
        }
    }
}
