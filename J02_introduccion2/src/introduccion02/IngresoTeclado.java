package introduccion02;

import java.util.Scanner;

public class IngresoTeclado {
    public static void main (String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Introduce tu nombre: ");
        String name = sc.nextLine();
        System.out.printf("Hola %s, ¿qué tal estás?".formatted(name));
    }
}
