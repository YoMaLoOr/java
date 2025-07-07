package ejercicios.ejercicios05;

public class Ejercicio05 {
    public static void main(String[] args){
    int num = 81;
    System.out.println("El numero amigable de " + num + " es " + Amigables(num));
    }

    public static int Amigables(int num){
        int resul = 1;
        for (int i = 2; i < Math.sqrt((double)num); i++) {
            if ((num%i)==0) {
                System.out.println(i);
                resul+=i+(num/i);
            }
        }
        if(EsCuadradoPerfecto(num) == true)
            resul+=Math.sqrt((double)num);

        return resul;
    }

    public static boolean EsCuadradoPerfecto(int num){
        int a = (int) Math.sqrt((double)num);
        return a*a == num;
    }
}
