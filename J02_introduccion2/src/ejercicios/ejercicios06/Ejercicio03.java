package ejercicios.ejercicios06;

public class Ejercicio03 {
    public static void main(String[] args) {
            int num = 708909;
            System.out.println(CantDigitos(num));
        }

        public static int CantDigitos(int num){
            if(num==0)
                return 0;
            return 1 + CantDigitos(num/10);
        }
}
