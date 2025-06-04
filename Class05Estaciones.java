
import java.util.Scanner;

public class Class05Estaciones {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String dato, season = "";
        int num;
        
        do { 
            System.out.println("1. Primavera");
            System.out.println("2. Verano");
            System.out.println("3. Otoño");
            System.out.println("4. Invierno");
            System.out.println("Introduce un numero para indicar la estacion en la que estás: ");
            dato = sc.next();
            num = Integer.parseInt(dato);
            switch (num) {
            case 1 ->
                season = "Primavera";
            case 2 ->
                season = "Verano";
            case 3 ->
                season = "Otoño";
            case 4 ->
                season = "Invierno";
            default ->
                System.out.println("El numero introducido es incorrecto.");
            }
        } while (num > 4 || num < 1);

        System.out.println("La estacion en la que te encuentras es: " + season);
    }    
}
