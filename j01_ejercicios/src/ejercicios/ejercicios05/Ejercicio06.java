package src.ejercicios.ejercicios05;

public class Ejercicio06 {
    public static void main(String[] args) {
        TirarDado();
    }

    public static void TirarDado(){
        int tirada = (int) (Math.random()*6)+1;
        System.out.println(tirada);
    }
}
