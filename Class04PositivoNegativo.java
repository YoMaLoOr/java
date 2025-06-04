
import java.util.Scanner;

public class Class04PositivoNegativo {
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        String dato;
        int num;
        boolean isPos;
        System.out.print("Introduce un numero: ");
        dato = sc.next();
        num = Integer.parseInt(dato);
        if(num >= 0)
            isPos = true;
        else
            isPos = false;
        
        String resul = isPos ? "no" : "si";
        System.out.println("El numero introducido " + resul +" es negativo");
    }
}
