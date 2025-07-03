package src.ejercicios.ejercicios05;

public class Ejercicio07 {
    public static void main(String[] args) {
        int num = 371;
        System.out.println(EsAmstrong(num));
    }

    public static boolean  EsAmstrong(int num){
        int aux, resul = 0, copy = num;
        //int cantDigitos = (int)(Math.log10(copy)) + 1;
        int cantDigitos = (Math.abs(num) + "").length();
        while(copy != 0){
            aux = copy%10;
            copy /=10;
            resul += Math.pow(aux, cantDigitos);
        }
        return num == resul;
    }
}
