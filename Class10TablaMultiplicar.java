
import java.util.Scanner;

public class Class10TablaMultiplicar {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Introduce el numero del que quieres ver la tabla: ");
        String data = sc.next();
        int num = Integer.parseInt(data);

        for (int i = 1; i <= 10; i++) {
            System.out.println(num + " * " + i + " = " + (num*i));
        }
    }
}
