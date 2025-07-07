package ejercicios.ejercicios07;

import java.util.Scanner;

public class Ejercicio05 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.println("Introduce un caracter: ");
        String letter = sc.nextLine();
        char type = letter.toLowerCase().charAt(0);
        System.out.println("Introduce cuantas veces quieres repetirlo: ");
        int num = sc.nextInt();
        repiteChars(type, num);
    }

    public static void repiteChars(char letter, int num){
        String data = "";
        for (int i = 1; i <= num; i++) {
            data = data.concat(letter + "");
        }
        System.out.println(data);
    }
}