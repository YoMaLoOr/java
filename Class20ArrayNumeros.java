
import java.util.Scanner;

public class Class20ArrayNumeros {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int[] numeros = new int[8];
        int mayor = 0;
        int menor = 0;
        int media = 0;
        int suma = 0;
        for (int i = 0; i < numeros.length; i++){
            System.out.println("Introduzca número " + (i + 1));
            String dato = teclado.nextLine();
            int num = Integer.parseInt(dato);
            //almacenamos en el Array en cada posicion cada num
            numeros[i] = num;
        }
        System.out.println("Hemos finalizado la petición");
        //AHORA NOS CENTRAMOS EN NUESTRO ARRAY
        mayor = numeros[0];
        menor = numeros[0];
        for (int i = 0; i < numeros.length; i++){
            //ALMACENAMOS CADA NUMERO DEL ARRAY EN UNA VARIABLE
            int num = numeros[i];
            suma += num;
            mayor = Math.max(num, mayor);
            menor = Math.min(num, menor);
        }
        media = suma / numeros.length;
        System.out.println("Número mayor: " + mayor);
        System.out.println("Número menor: " + menor);
        System.out.println("Suma: " + suma);
        System.out.println("Media: " + media);
    }
}