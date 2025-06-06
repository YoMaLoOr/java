
import java.util.Scanner;

public class Class15SumarTextoNumeros {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Introduce los digitos consecutivos que quieres sumar: ");
        String data =sc.next();
        int acum = 0;

        for (int i = 0; i < data.length(); i++) {
            //int num = (int) data.charAt(i) - '0';
            int num = Integer.parseInt(String.valueOf(data.charAt(i)));
            acum += num;
        }
        System.out.println("La suma de los numeros introducidos es: " + acum);
    }
}
