package ejercicios.ejercicios07;

import java.util.Scanner;

public class Ejercicio06 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Introduce una cadena: ");
        String data = sc.nextLine();
        System.out.println("Introduce que caracter quieres buscar: ");
        String letter = sc.nextLine();
        char type = letter.toLowerCase().charAt(0);
        System.out.println("El caracter aparece " + contarCaracter(data, type) + " veces.");
    }

    public static int contarCaracter(String texto, char caracter) {
        int contador = 0;
        for (int i = 0; i < texto.length(); i++) {
            if (texto.charAt(i) == caracter) {
                contador++;
            }
        }
        return contador;
    }
}
