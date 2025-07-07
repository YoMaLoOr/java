package ejercicios.ejercicios07;

import java.util.Scanner;

public class Ejercicio04 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
            System.out.println("Introduce una cadena: ");
            String data = sc.nextLine();
            System.out.println("Introduce un caracter: ");
            String letter = sc.nextLine();
            char type = letter.toLowerCase().charAt(0);
            System.out.println(data.toLowerCase().contains(type + ""));
    }
}
