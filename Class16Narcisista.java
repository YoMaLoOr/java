
import java.util.Scanner;

public class Class16Narcisista {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Escribe el numero que quieres comprobar: ");
        String data = sc.next();
        int acum = 0;

        for (int i = 0; i < data.length(); i++) {
            double  num = Integer.parseInt(String.valueOf(data.charAt(i)));
            num = Math.pow(num, (double) data.length());
            num = (int) num;
            acum += num;
        }
        if(acum == Integer.parseInt(data)){
            System.out.println("Este numero es narcisista.");
        }else
            System.out.println("Este numero no es narcisista.");
    }
}
