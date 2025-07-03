package src.ejercicios.ejercicios05;

public class Ejercicio02 {
    public static void main(String[] args) {

        int num1 = 99, num2 = 10;
        System.out.println("El primer numero es: " + num1 + ". El segundo numero es: " + num2);
        num1 += num2;
        num2 = num1 - num2;
        num1 -= num2;
        System.out.println("El primer numero ahora es: " + num1 + ". El segundo numero ahora es: " + num2);
    }
}
