package src.ejercicios.ejercicios06;

public class Ejercicio03 {
    public static void main(String[] args) {
            int num = 708909;
            System.out.println(cantDigitos(num));
        }

        public static int cantDigitos(int num){
            if(num==0)
                return 0;
            return 1 + cantDigitos(num/10);
        }
}
