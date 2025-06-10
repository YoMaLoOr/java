
import java.util.Scanner;

public class Class17ValidarIsbn {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Introduce el ISBN que quieres comprobar: ");
        String data = sc.next();
        int acum = 0;
        if (data.length() == 10) {  
            for (int i = 0; i < data.length(); i++) {
                int num = Integer.parseInt(String.valueOf(data.charAt(i)));
                num = num * (i+1);
                acum += num;
            }
            if(acum%11 == 0)
                System.out.println("El ISBN introducido es correcto");
            else
                System.out.println("El ISBN introducido no es correcto.");
        }else
            System.out.println("La longitud del ISBN no es correcta");
    }
}
