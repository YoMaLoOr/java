package introduccion02;

import java.util.Scanner;

public class MayorDeDos {

    public static void main(String[] args) {
        Scanner sc =new Scanner(System.in);
        int n1, n2, mayor;
        System.out.println("Ingresa primer valor: ");
        n1 = sc.nextInt();

        System.out.println("Ingresa segundo valor: ");
        n2 = sc.nextInt();

        if(n1 > n2)
            mayor = n1;
        else
            mayor = n2;

        // ese if es lo mismo que "mayor = n1> n2 ? n1 : n2;"

        System.out.println("el numero mas alto es: " + mayor);
    }
}
