package tests;

import modelo.*;

public class Test03SumaAreas {

    public static double sumAreas(Figura... figs){
        var suma = 0.0;
        for (Figura fig : figs) {
            suma += fig.area();
        }
        return suma;
    }

    public static void main(String[] args) {
        Rectangulo r1 = new Rectangulo(1, 2, 3, 4);
        Circulo c1 = new Circulo(1, 2, 3);
        Rectangulo r2 = new Rectangulo(2, 3, 4, 5);
        Circulo c2 = new Circulo(1, 2, 4);
        Rectangulo r3 = new Rectangulo(3, 4, 1, 2);
        Circulo c3 = new Circulo(1, 2, 2);
        Figura[] figs = {r1, r2, r3, c1, c2, c3};
        double sumArea1 = sumAreas(figs);
        double sumArea2 = sumAreas(new Rectangulo(6, 7, 8, 9), new Circulo(3, 4, 6));
        System.out.println(sumArea1);
        System.out.println(sumArea2);
        Punto p1 = Figura.centroMasas(figs);
        System.out.println("Cm("+p1.getCentroMasaX()+", "+p1.getCentroMasaY()+")");
    }
}
