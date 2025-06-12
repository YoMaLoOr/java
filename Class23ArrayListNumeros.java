
import java.util.ArrayList;
import java.util.Scanner;

public class Class23ArrayListNumeros {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        ArrayList<Integer> coleccionNumeros = 
            new ArrayList<Integer>();
        int suma = 0;
        int numero = 0;
        while (numero != -1){
            System.out.println("Introduzca un número");
            String dato = sc.nextLine();
            numero = Integer.parseInt(dato);
            //PREGUNTAMOS SI EL NUMERO EXISTE EN NUESTRA
            //COLECCION
            if (coleccionNumeros.contains(numero)){
                System.out.println("El número está repetido...");
            }else{
                coleccionNumeros.add(numero);
            }
        }
        //ELIMINAMOS LA ULTIMA POSICION (-1)
        //QUE NOS SOBRA
        coleccionNumeros.remove(coleccionNumeros.size() - 1);
        System.out.println("Números introducidos: " 
            + coleccionNumeros.size());
        System.out.println("--------------");
        for (int num: coleccionNumeros){
            suma += num;
            System.out.println(num);
        }
        System.out.println("La suma de los números es: " + suma);
    }
}