
import java.util.ArrayList;

public class Class27NumeroNarcisista {
    public static void main(String[] args) {
        ArrayList<Integer> narcisistas = new ArrayList<Integer>();
        for (int i = 1; i <= 20000; i++){
            if (evaluarNarcisista(i) == true){
                narcisistas.add(i);
            }
        }
        //Recorremos todos los números narcisistas
        for (int narci: narcisistas){
            System.out.print(narci + ", ");
        }
        System.out.println("Fin de programa");
    }

    public static boolean evaluarNarcisista(int numero){
        String dato = String.valueOf(numero);
        int longitud = dato.length();
        int suma = 0;
        for (int i = 0; i < longitud; i++){
            char letra = dato.charAt(i);
            String aux = String.valueOf(letra);
            int valor = Integer.parseInt(aux);
            int operacion = (int) Math.pow(valor, longitud);
            suma += operacion;
        }
        if (suma == numero){
            return true;
        }else{
            return false;
        }
    }
}