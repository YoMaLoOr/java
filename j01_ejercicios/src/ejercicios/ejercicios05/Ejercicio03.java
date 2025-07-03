package src.ejercicios.ejercicios05;

public class Ejercicio03 {
    public static void main(String[] args) {
        int num = 1234;
        System.out.println(SumaDigitos(num));
    }

    public static int SumaDigitos(int num){
        int aux, resul = 0;
        do {
            aux = num%10;
            num /= 10;
            resul += aux;
        } while (aux!=0);
        return resul;
    }
}
