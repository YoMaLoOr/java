package ejercicios.ejercicios06;

public class Ejercicio06 {
    public static void main(String[] args) {
        int num = 3, cant = 4;
        System.out.println(calculaPotencia(num, cant));
    }

    public static int calculaPotencia(int num, int cant){
        if(cant <= 0)
            return 1;
        return num * calculaPotencia(num, cant- 1);
    }
}
