package ejercicios.ejercicios06;

public class Ejercicio01 {
    public static void main(String[] args) {
        int num = 7;
        System.out.println(Factorial(num));
    }

    public static int Factorial(int num){
        if(num==0)
            return 1;
        return num * Factorial(num-1);
    }
}
