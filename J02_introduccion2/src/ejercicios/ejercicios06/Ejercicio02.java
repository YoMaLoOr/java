package ejercicios.ejercicios06;

public class Ejercicio02 {
    public static void main(String[] args) {
            int num = 3;
            System.out.println(SumaNums(num));
        }

        public static int SumaNums(int num){
            if(num==0)
                return 0;
            return num + SumaNums(num-1);
        }
}