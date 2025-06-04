
import java.util.Scanner;

public class Class06BMayorTresNumeros {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String dato;
        int num1, num2, num3, max, min, mid, suma;

        System.out.println("Introduce un numero: ");
        dato = sc.next();
        num1 = Integer.parseInt(dato);
        System.out.println("Introduce un numero: ");
        dato = sc.next();
        num2 = Integer.parseInt(dato);
        System.out.println("Introduce un numero: ");
        dato = sc.next();
        num3 = Integer.parseInt(dato);

        if(num1 > num2 && num1 > num3){
            max = num1;
            if(num2 > num3){
                mid = num2;
                min = num3;
            } else{
                mid = num3;
                min = num2;
            }
        } else if(num2 > num3){
            max = num2;
            if(num1 > num3){
                mid = num1;
                min = num3;
            } else{
                mid = num3;
                min = num1;
            }
        }else{
            max = num3;
            if(num1 > num2){
                mid = num1;
                min = num2;
            } else{
                mid = num2;
                min = num1;
            }
        }
        
        
        System.out.println("El numero mayor es: " + max);
        System.out.println("El numero intermedio es: " + mid);
        System.out.println("El numero menor es: " + min);
        //Otra forma de calcular el intermedio
        suma = num1+num2+num3;
        mid = suma-max-min;
        System.out.println("El numero intermedio es: " + mid);
    }
}
