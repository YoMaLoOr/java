import  com.objetos.*;

public class Conductor {
    public static void main(String[] args) {
        Coche car1 = new Coche();
        Deportivo depor = new Deportivo();
        car1.arrancar();
        depor.arrancar();
        for (int i = 0; i < 10; i++) {
            car1.acelerar();
            depor.acelerar();
        }
        System.out.println(car1.toString());
        System.out.println(depor.toString());
        depor.frenar();
        car1.frenar("Parar");
        System.out.println(car1.toString());
        System.out.println(depor.toString());
    }
    
}
