package ejercicios.ejercicios06;

public class Ejercicio05 {
    public static void main(String[] args) {
        int num = 11;
        System.out.println(cifraFibonacci(num));
    }

    public static int cifraFibonacci(int num){
        if (num <= 1)
            return num;
        return cifraFibonacci(num-1) + cifraFibonacci(num-2);
    }
}
