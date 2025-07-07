package ejercicios.ejercicios07;

import java.util.Scanner;

public class Ejercicio05 {
    public static void main(String[] args) {
        String data = "";
        Scanner sc = new Scanner(System.in);
        System.out.println("Introduce un caracter: ");
        String letter = sc.nextLine();
        char type = letter.toLowerCase().charAt(0);
        System.out.println("Introduce cuantas veces quieres repetirlo: ");
        int num = sc.nextInt();
        for (int i = 1; i <= num; i++) {
            data = data.concat(type + "");
        }
        System.out.println(data);
    }
}