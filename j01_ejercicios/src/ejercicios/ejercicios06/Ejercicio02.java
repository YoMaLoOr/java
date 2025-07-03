package src.ejercicios.ejercicios06;

public class Ejercicio02 {
    public static void main(String[] args) {
            int num = 3;
            System.out.println(sumaNums(num));
        }

        public static int sumaNums(int num){
            if(num==0)
                return 0;
            return num + sumaNums(num-1);
        }
}