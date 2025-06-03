
import java.util.Scanner;

public class Class01Primitivos {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        //byte tiny = Byte.MAX_VALUE;
        //short small = Short.MAX_VALUE;
        int num = Integer.MAX_VALUE;
        long bigNum = Long.MAX_VALUE;
        double real = Double.MAX_VALUE;
        //float smallReal = Float.MAX_VALUE;

        //Ejemplo de casteo.
        int mayor = 15;
        byte menor = ((byte)mayor);
        System.out.println(menor);

        //Convertir a string
        String text = Integer.toString(num); 
        System.out.println(text);
        text = Long.toString(bigNum);
        System.out.println(text);
        text = Double.toString(real);
        System.out.println(text);

        //Guardar como String un primitivo

        String prueba = String.valueOf(num);
        System.out.println(prueba);

        //Convertir de String a primitivo

        prueba = "12";
        mayor = Integer.parseInt(prueba);
        System.out.println(mayor);



        prueba = sc.nextLine();
        System.out.println(prueba);
    }
}
