package ejercicios.ejercicios06;

public class Ejercicio05 {
    public static void main(String[] args) {
        int num = 11;
        System.out.println(CifraFibonacci(num));
    }

    public static int CifraFibonacci(int num){
        if (num <= 1)
            return num;
        return CifraFibonacci(num-1) + CifraFibonacci(num-2);
    }
}
