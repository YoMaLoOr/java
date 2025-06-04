
import java.util.Scanner;

public class Class03SumarNumeros {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String dato;
        int num1, num2, resul;

        System.out.print("Introduce un numero que quieras sumar: ");
        dato = sc.next();
        //casteamos de String a int
        num1 = Integer.parseInt(dato);
        System.out.print("Introduce el siguiente numero: ");
        num2 = sc.nextInt();

        resul = num1+num2;

        System.out.println("La suma de ambos numeros es: " + resul);
    }    
}
