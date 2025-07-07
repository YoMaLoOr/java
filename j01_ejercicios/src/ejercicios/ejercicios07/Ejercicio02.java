package ejercicios.ejercicios07;

import java.util.Scanner;

public class Ejercicio02 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Introduce una cadena: ");
        String data = sc.nextLine();
        System.out.println(data.toLowerCase().startsWith("h"));
    }

}
