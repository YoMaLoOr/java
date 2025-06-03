package introduccion02;

import java.util.Scanner;

public class MayorDeTres {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int n1, n2, n3, mayor;

        System.out.println("Introduce un valor: ");
        n1 = sc.nextInt();

        System.out.println("Introduce un valor: ");
        n2 = sc.nextInt();

        System.out.println("Introduce un valor: ");
        n3 = sc.nextInt();

        if (n1 > n2 && n1 > n3)
            mayor = n1;
        else
            if (n2 > n3)
                mayor = n2;
            else
                mayor = n3;

        System.out.println("El mayor \"valor\" es: " + mayor);
    }
}
