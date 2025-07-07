package ejercicios.ejercicios07;

import java.util.Scanner;

public class Ejercicio03 {
    public static void main(String[] args) {
        Scanner sc =new Scanner(System.in);
        System.out.println("Introduce una cadena: ");
        String data = sc.nextLine();
        charPorLinea(data);
    }

    public static void charPorLinea(String cad){
        for (int i = 0; i < cad.length(); i++) {
            char elem = cad.charAt(i);
            System.out.println(elem);
        }
    }
}
