
import java.util.Scanner;

public class Class06MayorTresNumeros {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String dato;
        int num1, num2, num3, mayor;

        System.out.println("Introduce un numero: ");
        dato = sc.next();
        num1 = Integer.parseInt(dato);
        System.out.println("Introduce un numero: ");
        dato = sc.next();
        num2 = Integer.parseInt(dato);
        System.out.println("Introduce un numero: ");
        dato = sc.next();
        num3 = Integer.parseInt(dato);

        if(num1 > num2 && num1 > num3)
            mayor = num1;
        else if(num2 > num3)
            mayor = num2;
        else
            mayor = num3;
        
        System.out.println("El numero mayor es: " + mayor);
    }
}
