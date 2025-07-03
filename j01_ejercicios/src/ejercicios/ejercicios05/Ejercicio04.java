package src.ejercicios.ejercicios05;

public class Ejercicio04 {
    public static void main(String[] args) {
        int num = 33550336;
        System.out.println(NumeroPerfecto(num));
    }

    public static boolean NumeroPerfecto(int num){
        int resul = 1;
        for (int i = 2; i < Math.sqrt((double)num); i++) {
            if((num%i) == 0){
                resul+=i+(num/i);
            }
        }
        if(EsCuadradoPerfecto(num)==true)
            resul+= Math.sqrt((double)num);

        return resul == num;
    }

    public static boolean EsCuadradoPerfecto(int num){
        int a = (int) Math.sqrt((double)num);
        return a*a == num;
    }
}
