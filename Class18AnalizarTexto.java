
import java.util.Scanner;

public class Class18AnalizarTexto {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Introduzca un data");
        String data = sc.nextLine();
        int numLetras = 0;
        int numDigit = 0;
        int vowel = 0;
        int consonant = 0;
        int mayus = 0;
        for (int i = 0; i < data.length(); i++){
            char letter = data.charAt(i);
            if (Character.isDigit(letter) == true){
                numDigit += 1;
            }else if (Character.isLetter(letter) == true){
                numLetras += 1;
                if (Character.isUpperCase(letter) == true){
                    mayus += 1;
                }
                if (Character.toLowerCase(letter) == 'a'
                || Character.toLowerCase(letter) == 'e'
                || Character.toLowerCase(letter) == 'i'
                || Character.toLowerCase(letter) == 'o'
                || Character.toLowerCase(letter) == 'u'){
                    vowel += 1;
                }else{
                    consonant += 1;  
                }
            }
        }
        System.out.println("Número de letras: " + numLetras);
        System.out.println("Número de dígitos: " + numDigit);
        System.out.println("Mayúsculas: " + mayus);
        System.out.println("Vocales: " + vowel);
        System.out.println("Consonant: " + consonant);
    }
}
