
import java.util.Scanner;

public class Class02EjemploScanner {
    public static void main(String[] args) {
        Scanner sc =new Scanner(System.in);
        System.out.print("Introduzca su nombre: ");
        String name = sc.nextLine();
        System.out.print("Introduzca su edad: ");
        int age = sc.nextInt();
        System.out.println(name + " tiene " + age + " años. Sorprendente.");
    }
}
