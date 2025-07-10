package excepciones;

import java.util.InputMismatchException;
import java.util.Scanner;

public class E02LecturaTeclado {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int edad = 0;
        System.out.print("Ingresa tu edad: ");
        try {
            edad = sc.nextInt();
        } catch (InputMismatchException e) {
            System.out.println("Matao.");
        }
        
        System.out.println(edad);
    }
}
