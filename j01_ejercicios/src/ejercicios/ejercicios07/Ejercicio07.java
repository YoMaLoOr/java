package ejercicios.ejercicios07;

import java.util.Scanner;

public class Ejercicio07 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Introduce una cadena: ");
        String text = sc.nextLine();
        System.out.println("Hay " + contarVocales(text) + " vocales.");
    }

    public static int contarVocales(String text){
        int cont = 0;
        for (int i = 0; i < text.length(); i++) {
            if (text.charAt(i) == 'a'|| text.charAt(i) == 'e' || text.charAt(i) == 'i' || text.charAt(i) == 'o' || text.charAt(i) == 'u')
                cont++;
        }
        return cont;
    }
}
